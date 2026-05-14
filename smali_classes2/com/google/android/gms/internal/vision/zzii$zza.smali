.class final Lcom/google/android/gms/internal/vision/zzii$zza;
.super Lcom/google/android/gms/internal/vision/zzii;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private final zzd:I

.field private zze:I


# direct methods
.method constructor <init>([BII)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;-><init>(Lcom/google/android/gms/internal/vision/zzik;)V

    .line 2
    if-eqz p1, :cond_1

    .line 4
    or-int/lit8 p2, p3, 0x0

    array-length v0, p1

    sub-int/2addr v0, p3

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzc:I

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    .line 12
    return-void

    .line 5
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    array-length p1, p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    .line 7
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzc([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    return-void

    .line 150
    :catch_0
    move-exception p1

    .line 151
    new-instance p2, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 177
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 74
    :catch_0
    move-exception p1

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    if-ltz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    return-void

    .line 79
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzii;->zza(J)V

    .line 80
    return-void
.end method

.method public final zza(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    nop

    .line 14
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 16
    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->zza(J)V

    .line 28
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/vision/zzht;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->zza(Lcom/google/android/gms/internal/vision/zzht;)V

    .line 40
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/vision/zzkk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 58
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzc(II)V

    .line 59
    nop

    .line 60
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->zza(Lcom/google/android/gms/internal/vision/zzkk;)V

    .line 62
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 63
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 48
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzhf;->zzi()I

    move-result v0

    .line 50
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/vision/zzlc;->zzb(Ljava/lang/Object;)I

    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzhf;->zzb(I)V

    .line 53
    :cond_0
    nop

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zza:Lcom/google/android/gms/internal/vision/zzil;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzlc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 56
    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->zza(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final zza(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 33
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zza(B)V

    .line 34
    return-void
.end method

.method public final zza(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzii;->zzc()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzii;->zza()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    .line 122
    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 124
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 126
    ushr-long/2addr p1, v1

    goto :goto_0

    .line 127
    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    .line 129
    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    ushr-long/2addr p1, v1

    goto :goto_1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzht;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzht;->zza(Lcom/google/android/gms/internal/vision/zzhq;)V

    .line 43
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzkk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzkk;->zzm()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 70
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/zzkk;->zza(Lcom/google/android/gms/internal/vision/zzii;)V

    .line 71
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 156
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 157
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzii$zza;->zzg(I)I

    move-result v1

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzii$zza;->zzg(I)I

    move-result v2

    .line 159
    if-ne v2, v1, :cond_0

    .line 160
    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzii;->zza()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/vision/zzmd;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 162
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 163
    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 164
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 165
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 166
    return-void

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzmd;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 169
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzii;->zza()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzmd;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzmg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    return-void

    .line 175
    :catch_0
    move-exception p1

    .line 176
    new-instance v0, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 171
    :catch_1
    move-exception v1

    .line 172
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 173
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzii;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/vision/zzmg;)V

    .line 174
    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->zzc([BII)V

    .line 154
    return-void
.end method

.method public final zzb(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzii;->zzc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhi;->zza()Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzii;->zza()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    .line 84
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 86
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 88
    ushr-int/lit8 p1, p1, 0x7

    .line 89
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 91
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 93
    ushr-int/lit8 p1, p1, 0x7

    .line 94
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 96
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 98
    ushr-int/lit8 p1, p1, 0x7

    .line 99
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 101
    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    .line 103
    ushr-int/lit8 p1, p1, 0x7

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zzma;->zza([BJB)V

    return-void

    .line 105
    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 107
    return-void

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 110
    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->zza(I)V

    .line 19
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/vision/zzht;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 65
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzc(II)V

    .line 66
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    .line 67
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 68
    return-void
.end method

.method public final zzb([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 45
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzii$zza;->zzc([BII)V

    .line 46
    return-void
.end method

.method public final zzc(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 22
    return-void
.end method

.method public final zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->zzc(J)V

    .line 31
    return-void
.end method

.method public final zzc(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 144
    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzd(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 118
    :catch_0
    move-exception p1

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/vision/zzii$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zze:I

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzii$zza;->zzd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zze(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzii;->zza(II)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->zzd(I)V

    .line 25
    return-void
.end method
