package gnu.kawa.util;

/* JADX INFO: loaded from: classes.dex */
public class GeneralHashTable<K, V> extends AbstractHashTable<HashNode<K, V>, K, V> {
    public GeneralHashTable() {
    }

    public GeneralHashTable(int capacity) {
        super(capacity);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public int getEntryHashCode(HashNode<K, V> entry) {
        return entry.hash;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V> getEntryNext(HashNode<K, V> entry) {
        return entry.next;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public void setEntryNext(HashNode<K, V> entry, HashNode<K, V> next) {
        entry.next = next;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V>[] allocEntries(int n) {
        return new HashNode[n];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V> makeEntry(K key, int hash, V value) {
        HashNode<K, V> node = new HashNode<>(key, value);
        node.hash = hash;
        return node;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public HashNode<K, V> getNode(Object key) {
        return (HashNode) super.getNode(key);
    }
}
