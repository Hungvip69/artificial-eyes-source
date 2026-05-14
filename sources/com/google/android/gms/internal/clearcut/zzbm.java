package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzbm extends zzbk {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzfu;
    private int zzfv;
    private int zzfw;
    private int zzfx;

    private zzbm(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzfx = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzfw = this.pos;
        this.zzfu = z;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbk
    public final int zzaf() {
        return this.pos - this.zzfw;
    }

    @Override // com.google.android.gms.internal.clearcut.zzbk
    public final int zzl(int i) throws zzco {
        if (i < 0) {
            throw new zzco("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int iZzaf = i + zzaf();
        int i2 = this.zzfx;
        if (iZzaf > i2) {
            throw zzco.zzbl();
        }
        this.zzfx = iZzaf;
        this.limit += this.zzfv;
        int i3 = this.limit - this.zzfw;
        if (i3 > this.zzfx) {
            this.zzfv = i3 - this.zzfx;
            this.limit -= this.zzfv;
        } else {
            this.zzfv = 0;
        }
        return i2;
    }
}
