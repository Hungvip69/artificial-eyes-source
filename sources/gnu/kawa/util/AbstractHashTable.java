package gnu.kawa.util;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractHashTable<Entry extends Map.Entry<K, V>, K, V> extends AbstractMap<K, V> {
    public static final int DEFAULT_INITIAL_SIZE = 64;
    protected int mask;
    protected int num_bindings;
    protected Entry[] table;

    protected abstract Entry[] allocEntries(int i);

    protected abstract int getEntryHashCode(Entry entry);

    protected abstract Entry getEntryNext(Entry entry);

    protected abstract Entry makeEntry(K k, int i, V v);

    protected abstract void setEntryNext(Entry entry, Entry entry2);

    public AbstractHashTable() {
        this(64);
    }

    public AbstractHashTable(int i) {
        int i2 = 4;
        while (i > (1 << i2)) {
            i2++;
        }
        int i3 = 1 << i2;
        this.table = (Entry[]) allocEntries(i3);
        this.mask = i3 - 1;
    }

    public int hash(Object key) {
        if (key == null) {
            return 0;
        }
        return key.hashCode();
    }

    protected int hashToIndex(int hash) {
        return this.mask & (hash ^ (hash >>> 15));
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected boolean matches(Object key, int hash, Entry node) {
        return getEntryHashCode(node) == hash && matches(node.getKey(), key);
    }

    protected boolean matches(K key1, Object key2) {
        return key1 == key2 || (key1 != null && key1.equals(key2));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object key) {
        return get(key, null);
    }

    public Entry getNode(Object obj) {
        int iHash = hash(obj);
        Entry entry = this.table[hashToIndex(iHash)];
        while (entry != null) {
            if (matches(obj, iHash, entry)) {
                return entry;
            }
            entry = (Entry) getEntryNext(entry);
        }
        return null;
    }

    public V get(Object obj, V v) {
        Map.Entry node = getNode(obj);
        return node == null ? v : (V) node.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void rehash() {
        Map.Entry[] entryArr = this.table;
        int length = entryArr.length;
        int i = length * 2;
        Entry[] entryArr2 = (Entry[]) allocEntries(i);
        this.table = entryArr2;
        this.mask = i - 1;
        int i2 = length;
        while (true) {
            i2--;
            if (i2 >= 0) {
                Map.Entry entryNext = entryArr[i2];
                if (entryNext != null && getEntryNext(entryNext) != null) {
                    Map.Entry entry = null;
                    do {
                        Map.Entry entry2 = entryNext;
                        entryNext = getEntryNext(entry2);
                        setEntryNext(entry2, entry);
                        entry = entry2;
                    } while (entryNext != null);
                    entryNext = entry;
                }
                Map.Entry entry3 = entryNext;
                while (entry3 != null) {
                    Map.Entry entryNext2 = getEntryNext(entry3);
                    int iHashToIndex = hashToIndex(getEntryHashCode(entry3));
                    setEntryNext(entry3, entryArr2[iHashToIndex]);
                    entryArr2[iHashToIndex] = entry3;
                    entry3 = entryNext2;
                }
            } else {
                return;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K key, V value) {
        return put(key, hash(key), value);
    }

    public V put(K k, int i, V v) {
        int iHashToIndex = hashToIndex(i);
        Entry entry = this.table[iHashToIndex];
        Map.Entry entryNext = entry;
        while (entryNext != null) {
            if (matches(k, i, entryNext)) {
                V v2 = (V) entryNext.getValue();
                entryNext.setValue(v);
                return v2;
            }
            entryNext = getEntryNext(entryNext);
        }
        int i2 = this.num_bindings + 1;
        this.num_bindings = i2;
        if (i2 >= this.table.length) {
            rehash();
            iHashToIndex = hashToIndex(i);
            entry = this.table[iHashToIndex];
        }
        Map.Entry entryMakeEntry = makeEntry(k, i, v);
        setEntryNext(entryMakeEntry, entry);
        ((Entry[]) this.table)[iHashToIndex] = entryMakeEntry;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        int iHash = hash(obj);
        int iHashToIndex = hashToIndex(iHash);
        Map.Entry entry = null;
        Map.Entry entry2 = this.table[iHashToIndex];
        while (entry2 != null) {
            Map.Entry entryNext = getEntryNext(entry2);
            if (matches(obj, iHash, entry2)) {
                if (entry == null) {
                    ((Entry[]) this.table)[iHashToIndex] = entryNext;
                } else {
                    setEntryNext(entry, entryNext);
                }
                this.num_bindings--;
                return (V) entry2.getValue();
            }
            entry = entry2;
            entry2 = entryNext;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Map.Entry[] entryArr = this.table;
        int i = entryArr.length;
        while (true) {
            i--;
            if (i >= 0) {
                Map.Entry entry = entryArr[i];
                while (entry != null) {
                    Map.Entry entryNext = getEntryNext(entry);
                    setEntryNext(entry, null);
                    entry = entryNext;
                }
                entryArr[i] = null;
            } else {
                this.num_bindings = 0;
                return;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.num_bindings;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return new AbstractEntrySet(this);
    }

    static class AbstractEntrySet<Entry extends Map.Entry<K, V>, K, V> extends AbstractSet<Entry> {
        AbstractHashTable<Entry, K, V> htable;

        public AbstractEntrySet(AbstractHashTable<Entry, K, V> htable) {
            this.htable = htable;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.htable.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Entry> iterator() {
            return (Iterator<Entry>) new Iterator<Entry>() { // from class: gnu.kawa.util.AbstractHashTable.AbstractEntrySet.1
                int curIndex = -1;
                Entry currentEntry;
                Entry nextEntry;
                int nextIndex;
                Entry previousEntry;

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.curIndex < 0) {
                        this.nextIndex = AbstractEntrySet.this.htable.table.length;
                        this.curIndex = this.nextIndex;
                        advance();
                    }
                    return this.nextEntry != null;
                }

                private void advance() {
                    while (this.nextEntry == null) {
                        int i = this.nextIndex - 1;
                        this.nextIndex = i;
                        if (i >= 0) {
                            this.nextEntry = AbstractEntrySet.this.htable.table[this.nextIndex];
                        } else {
                            return;
                        }
                    }
                }

                @Override // java.util.Iterator
                public Entry next() {
                    if (this.nextEntry == null) {
                        throw new NoSuchElementException();
                    }
                    this.previousEntry = this.currentEntry;
                    this.currentEntry = this.nextEntry;
                    this.curIndex = this.nextIndex;
                    this.nextEntry = (Entry) AbstractEntrySet.this.htable.getEntryNext(this.currentEntry);
                    advance();
                    return this.currentEntry;
                }

                @Override // java.util.Iterator
                public void remove() {
                    if (this.previousEntry == this.currentEntry) {
                        throw new IllegalStateException();
                    }
                    if (this.previousEntry == null) {
                        AbstractEntrySet.this.htable.table[this.curIndex] = this.nextEntry;
                    } else {
                        AbstractEntrySet.this.htable.setEntryNext(this.previousEntry, this.nextEntry);
                    }
                    AbstractHashTable<Entry, K, V> abstractHashTable = AbstractEntrySet.this.htable;
                    abstractHashTable.num_bindings--;
                    this.previousEntry = this.currentEntry;
                }
            };
        }
    }
}
