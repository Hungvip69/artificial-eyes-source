package com.google.android.gms.internal.vision;

import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlb<E> extends zzhj<E> implements RandomAccess {
    private static final zzlb<Object> zza;
    private E[] zzb;
    private int zzc;

    public static <E> zzlb<E> zzd() {
        return (zzlb<E>) zza;
    }

    zzlb() {
        this(new Object[10], 0);
    }

    private zzlb(E[] eArr, int i) {
        this.zzb = eArr;
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e) {
        zzc();
        if (this.zzc == this.zzb.length) {
            this.zzb = (E[]) Arrays.copyOf(this.zzb, ((this.zzc * 3) / 2) + 1);
        }
        E[] eArr = this.zzb;
        int i = this.zzc;
        this.zzc = i + 1;
        eArr[i] = e;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zzc();
        if (i < 0 || i > this.zzc) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
        if (this.zzc < this.zzb.length) {
            System.arraycopy(this.zzb, i, this.zzb, i + 1, this.zzc - i);
        } else {
            E[] eArr = (E[]) new Object[((this.zzc * 3) / 2) + 1];
            System.arraycopy(this.zzb, 0, eArr, 0, i);
            System.arraycopy(this.zzb, i, eArr, i + 1, this.zzc - i);
            this.zzb = eArr;
        }
        this.zzb[i] = e;
        this.zzc++;
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        zzb(i);
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzc();
        zzb(i);
        E e = this.zzb[i];
        if (i < this.zzc - 1) {
            System.arraycopy(this.zzb, i + 1, this.zzb, i, (this.zzc - i) - 1);
        }
        this.zzc--;
        this.modCount++;
        return e;
    }

    @Override // com.google.android.gms.internal.vision.zzhj, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzc();
        zzb(i);
        E e2 = this.zzb[i];
        this.zzb[i] = e;
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    private final void zzb(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzc(i));
        }
    }

    private final String zzc(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.zzc).toString();
    }

    @Override // com.google.android.gms.internal.vision.zzjl
    public final /* synthetic */ zzjl zza(int i) {
        if (i < this.zzc) {
            throw new IllegalArgumentException();
        }
        return new zzlb(Arrays.copyOf(this.zzb, i), this.zzc);
    }

    static {
        zzlb<Object> zzlbVar = new zzlb<>(new Object[0], 0);
        zza = zzlbVar;
        zzlbVar.zzb();
    }
}
