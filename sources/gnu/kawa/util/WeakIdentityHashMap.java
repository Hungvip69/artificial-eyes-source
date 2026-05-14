package gnu.kawa.util;

import java.lang.ref.ReferenceQueue;

/* JADX INFO: loaded from: classes2.dex */
public class WeakIdentityHashMap<K, V> extends AbstractHashTable<WeakHashNode<K, V>, K, V> {
    ReferenceQueue<K> rqueue;

    public WeakIdentityHashMap() {
        super(64);
        this.rqueue = new ReferenceQueue<>();
    }

    public WeakIdentityHashMap(int capacity) {
        super(capacity);
        this.rqueue = new ReferenceQueue<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public int getEntryHashCode(WeakHashNode<K, V> entry) {
        return entry.hash;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public WeakHashNode<K, V> getEntryNext(WeakHashNode<K, V> entry) {
        return entry.next;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public void setEntryNext(WeakHashNode<K, V> entry, WeakHashNode<K, V> next) {
        entry.next = next;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public WeakHashNode<K, V>[] allocEntries(int n) {
        return new WeakHashNode[n];
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int hash(Object key) {
        return System.identityHashCode(key);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    protected boolean matches(K key1, Object key2) {
        return key1 == key2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public WeakHashNode<K, V> makeEntry(K key, int hash, V value) {
        WeakHashNode<K, V> node = new WeakHashNode<>(key, this.rqueue, hash);
        node.value = value;
        return node;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public V get(Object obj, V v) {
        cleanup();
        return (V) super.get(obj, v);
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public V put(K k, int i, V v) {
        cleanup();
        return (V) super.put(k, i, v);
    }

    @Override // gnu.kawa.util.AbstractHashTable, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        cleanup();
        return (V) super.remove(obj);
    }

    void cleanup() {
        AbstractWeakHashTable.cleanup(this, this.rqueue);
    }
}
