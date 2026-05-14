package com.google.common.collect;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
final class Hashing {
    private static final long C1 = -862048943;
    private static final long C2 = 461845907;
    private static final int MAX_TABLE_SIZE = 1073741824;

    private Hashing() {
    }

    static int smear(int hashCode) {
        return (int) (((long) Integer.rotateLeft((int) (((long) hashCode) * C1), 15)) * C2);
    }

    static int smearedHash(@NullableDecl Object o) {
        return smear(o == null ? 0 : o.hashCode());
    }

    static int closedTableSize(int expectedEntries, double loadFactor) {
        int expectedEntries2 = Math.max(expectedEntries, 2);
        int tableSize = Integer.highestOneBit(expectedEntries2);
        double d = tableSize;
        Double.isNaN(d);
        if (expectedEntries2 > ((int) (d * loadFactor))) {
            int tableSize2 = tableSize << 1;
            if (tableSize2 > 0) {
                return tableSize2;
            }
            return 1073741824;
        }
        return tableSize;
    }

    static boolean needsResizing(int size, int tableSize, double loadFactor) {
        double d = size;
        double d2 = tableSize;
        Double.isNaN(d2);
        return d > d2 * loadFactor && tableSize < 1073741824;
    }
}
