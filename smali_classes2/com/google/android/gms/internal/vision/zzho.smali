.class final Lcom/google/android/gms/internal/vision/zzho;
.super Lcom/google/android/gms/internal/vision/zzhm;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# instance fields
.field private final zza:Z

.field private final zzb:[B

.field private zzc:I

.field private final zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 1
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzhm;-><init>(Lcom/google/android/gms/internal/vision/zzhp;)V

    .line 2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzho;->zza:Z

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzd:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 6
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzml;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhp;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 813
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 812
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzf()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 811
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 808
    :pswitch_2
    nop

    .line 809
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzho;->zza(Z)Ljava/lang/String;

    move-result-object p1

    .line 810
    return-object p1

    .line 807
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzt()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 806
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 805
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzr()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 804
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 803
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzho;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 802
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzg()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 801
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 800
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zze()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 799
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzi()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 798
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 797
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzp()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 796
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzd()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 795
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    return-object p1

    .line 794
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzk()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    const-string p1, ""

    return-object p1

    .line 77
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 78
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v2, v0

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzmd;->zza([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzh()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1

    .line 80
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    sget-object v3, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 81
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 82
    return-object p1
.end method

.method private final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 888
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 889
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 890
    return-void
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 468
    and-int/lit8 v0, v0, 0x7

    .line 469
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 471
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjv;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 472
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjv;

    .line 473
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzjv;->zza(Lcom/google/android/gms/internal/vision/zzht;)V

    .line 474
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 475
    return-void

    .line 476
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 477
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result p2

    .line 478
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq p2, v1, :cond_1

    .line 479
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 480
    return-void

    .line 481
    :cond_1
    goto :goto_0

    .line 482
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzho;->zza(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    return-void

    .line 485
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 486
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 487
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_4

    .line 488
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 489
    return-void

    .line 490
    :cond_4
    goto :goto_1

    .line 470
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final zzaa()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 879
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzac()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzab()I
    .locals 4

    .line 880
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 881
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    .line 882
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 883
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final zzac()J
    .locals 9

    .line 884
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 885
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    .line 886
    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 887
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzb(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 893
    return-void

    .line 892
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzlc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 89
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 90
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v2, v0

    .line 91
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 92
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzlc;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/vision/zzlc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 94
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/vision/zzlc;->zzc(Ljava/lang/Object;)V

    .line 95
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    .line 97
    nop

    .line 98
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 99
    return-object v0

    .line 96
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :catchall_0
    move-exception p1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 101
    throw p1
.end method

.method private final zzc(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 894
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 895
    and-int/lit8 v0, v0, 0x7

    .line 896
    if-ne v0, p1, :cond_0

    .line 898
    return-void

    .line 897
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzlc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    .line 107
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 108
    ushr-int/lit8 v1, v1, 0x3

    .line 109
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 110
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    .line 111
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzlc;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 112
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzlc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 113
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzlc;->zzc(Ljava/lang/Object;)V

    .line 114
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 116
    nop

    .line 117
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    .line 118
    return-object v1

    .line 115
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    .line 120
    throw p1
.end method

.method private final zzd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 900
    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    .line 902
    return-void

    .line 901
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
.end method

.method private final zze(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 904
    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    .line 906
    return-void

    .line 905
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
.end method

.method private final zzf(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ne v0, p1, :cond_0

    .line 909
    return-void

    .line 908
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
.end method

.method private final zzu()Z
    .locals 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzv()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 814
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 815
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-eq v1, v2, :cond_8

    .line 817
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    .line 818
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 819
    return v0

    .line 820
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    sub-int/2addr v1, v2

    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    .line 821
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzx()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 823
    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    .line 824
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 825
    xor-int/lit16 v0, v0, 0x3f80

    move v3, v2

    goto :goto_0

    .line 826
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    .line 827
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_0

    .line 828
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    .line 829
    shl-int/lit8 v3, v1, 0x1c

    xor-int/2addr v0, v3

    .line 830
    const v3, 0xfe03f80

    xor-int/2addr v0, v3

    .line 831
    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v1, v3

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-ltz v1, :cond_5

    goto :goto_0

    .line 832
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzc()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    .line 831
    :cond_6
    move v3, v2

    .line 833
    :cond_7
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 834
    return v0

    .line 816
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0
.end method

.method private final zzw()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 835
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 836
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    if-eq v1, v0, :cond_b

    .line 838
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    .line 839
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_0

    .line 840
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 841
    int-to-long v0, v0

    return-wide v0

    .line 842
    :cond_0
    iget v3, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 843
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzx()J

    move-result-wide v0

    return-wide v0

    .line 844
    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2

    .line 845
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    goto/16 :goto_0

    .line 846
    :cond_2
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_3

    .line 847
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move v3, v2

    goto/16 :goto_0

    .line 848
    :cond_3
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4

    .line 849
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_0

    .line 850
    :cond_4
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    .line 851
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v2, v4

    move-wide v9, v2

    move v3, v0

    move-wide v0, v9

    goto/16 :goto_0

    .line 852
    :cond_5
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 853
    const-wide v0, -0x7f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_0

    .line 854
    :cond_6
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_7

    .line 855
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v2, v4

    move-wide v9, v2

    move v3, v0

    move-wide v0, v9

    goto :goto_0

    .line 856
    :cond_7
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_8

    .line 857
    const-wide v0, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_0

    .line 858
    :cond_8
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    .line 859
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    .line 860
    cmp-long v6, v2, v4

    if-gez v6, :cond_a

    .line 861
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v7, v0, v4

    if-ltz v7, :cond_9

    move-wide v0, v2

    move v3, v6

    goto :goto_0

    .line 862
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzc()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    .line 860
    :cond_a
    move-wide v9, v2

    move v3, v0

    move-wide v0, v9

    .line 863
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 864
    return-wide v0

    .line 837
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0
.end method

.method private final zzx()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    nop

    .line 866
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 867
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzy()B

    move-result v3

    .line 868
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 869
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 870
    return-wide v0

    .line 871
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 872
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzc()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final zzy()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 873
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    if-eq v0, v1, :cond_0

    .line 875
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    aget-byte v0, v0, v1

    return v0

    .line 874
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0
.end method

.method private final zzz()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 877
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzab()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    if-ne v0, v2, :cond_1

    .line 12
    return v1

    .line 13
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 14
    ushr-int/lit8 v0, v0, 0x3

    .line 15
    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzlc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzho;->zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzho;->zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzin;

    if-eqz v0, :cond_3

    .line 144
    check-cast p1, Lcom/google/android/gms/internal/vision/zzin;

    .line 145
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 146
    and-int/lit8 v0, v0, 0x7

    .line 147
    packed-switch v0, :pswitch_data_0

    .line 162
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 149
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzd(I)V

    .line 150
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 151
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzac()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzin;->zza(D)V

    goto :goto_0

    .line 163
    :cond_0
    return-void

    .line 153
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzd()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzin;->zza(D)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 158
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 159
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 160
    return-void

    .line 161
    :cond_2
    goto :goto_1

    .line 164
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 165
    and-int/lit8 v0, v0, 0x7

    .line 166
    packed-switch v0, :pswitch_data_1

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 167
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 168
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzd(I)V

    .line 169
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 170
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 171
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzac()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    :cond_4
    return-void

    .line 172
    :goto_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzd()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 174
    return-void

    .line 175
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 176
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 177
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 178
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 179
    return-void

    .line 180
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzlc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 492
    and-int/lit8 v0, v0, 0x7

    .line 493
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 495
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 496
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzho;->zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    return-void

    .line 499
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 500
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v2

    .line 501
    if-eq v2, v0, :cond_1

    .line 502
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 503
    return-void

    .line 504
    :cond_1
    goto :goto_0

    .line 494
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/vision/zzkf;Lcom/google/android/gms/internal/vision/zzio;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzkf<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 765
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 766
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 767
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 768
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v2, v0

    .line 769
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 770
    :try_start_0
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzb:Ljava/lang/Object;

    .line 771
    iget-object v2, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzd:Ljava/lang/Object;

    .line 772
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zza()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    .line 774
    const-string v4, "Unable to parse map entry."

    packed-switch v3, :pswitch_data_0

    .line 781
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzc()Z

    move-result v3

    goto :goto_1

    .line 777
    :pswitch_0
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    iget-object v5, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzd:Ljava/lang/Object;

    .line 778
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 779
    invoke-direct {p0, v3, v5, p3}, Lcom/google/android/gms/internal/vision/zzho;->zza(Lcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v2

    .line 780
    goto :goto_0

    .line 775
    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzkf;->zza:Lcom/google/android/gms/internal/vision/zzml;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5}, Lcom/google/android/gms/internal/vision/zzho;->zza(Lcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v0

    .line 776
    goto :goto_0

    .line 784
    :catch_0
    move-exception v3

    goto :goto_2

    .line 781
    :goto_1
    if-eqz v3, :cond_0

    .line 783
    goto :goto_0

    .line 782
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/vision/zzjk;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/vision/zzjk;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/zzjn; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    goto :goto_0

    .line 786
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjk;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/vision/zzjk;-><init>(Ljava/lang/String;)V

    throw p1

    .line 788
    :cond_2
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 789
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 790
    return-void

    .line 791
    :catchall_0
    move-exception p1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    .line 792
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzlc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzho;->zzd(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzho;->zzd(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzja;

    if-eqz v0, :cond_3

    .line 184
    check-cast p1, Lcom/google/android/gms/internal/vision/zzja;

    .line 185
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 186
    and-int/lit8 v0, v0, 0x7

    .line 187
    sparse-switch v0, :sswitch_data_0

    .line 202
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 193
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zze()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzja;->zza(F)V

    .line 194
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 196
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 197
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 198
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_1

    .line 199
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 200
    return-void

    .line 201
    :cond_1
    goto :goto_0

    .line 188
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 189
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zze(I)V

    .line 190
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 191
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzab()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzja;->zza(F)V

    goto :goto_1

    .line 203
    :cond_2
    return-void

    .line 204
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 205
    and-int/lit8 v0, v0, 0x7

    .line 206
    sparse-switch v0, :sswitch_data_1

    .line 221
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 212
    :goto_2
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zze()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    return-void

    .line 215
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 216
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 217
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_5

    .line 218
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 219
    return-void

    .line 220
    :cond_5
    goto :goto_2

    .line 207
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zze(I)V

    .line 209
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 210
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_6

    .line 211
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzab()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 222
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzlc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 506
    and-int/lit8 v0, v0, 0x7

    .line 507
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 509
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 510
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzho;->zzd(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    return-void

    .line 513
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 514
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v2

    .line 515
    if-eq v2, v0, :cond_1

    .line 516
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 517
    return-void

    .line 518
    :cond_1
    goto :goto_0

    .line 508
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 224
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 225
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 226
    and-int/lit8 v0, v0, 0x7

    .line 227
    packed-switch v0, :pswitch_data_0

    .line 243
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 229
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 230
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 233
    return-void

    .line 234
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzf()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 235
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 238
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 239
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 240
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 241
    return-void

    .line 242
    :cond_2
    goto :goto_1

    .line 244
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 245
    and-int/lit8 v0, v0, 0x7

    .line 246
    packed-switch v0, :pswitch_data_1

    .line 262
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 247
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 248
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 249
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 250
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 251
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 252
    return-void

    .line 253
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzf()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    return-void

    .line 256
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 257
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 258
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 259
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 260
    return-void

    .line 261
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzc()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    .line 19
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 20
    and-int/lit8 v0, v0, 0x7

    .line 21
    const/4 v2, 0x4

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 54
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object v0

    throw v0

    .line 41
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzho;->zza(I)V

    .line 42
    return v3

    .line 43
    :pswitch_2
    nop

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    .line 45
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 46
    ushr-int/lit8 v1, v1, 0x3

    .line 47
    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v2

    .line 48
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zza()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    if-ne v1, v2, :cond_3

    .line 52
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzg:I

    .line 53
    return v3

    .line 51
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    .line 39
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zza(I)V

    .line 40
    return v3

    .line 37
    :pswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zza(I)V

    .line 38
    return v3

    .line 22
    :pswitch_5
    nop

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    sub-int/2addr v0, v2

    const/16 v2, 0xa

    if-lt v0, v2, :cond_5

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    .line 25
    iget v4, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 26
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_5

    .line 27
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v0, v4

    if-ltz v4, :cond_4

    .line 28
    iput v6, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 29
    goto :goto_2

    .line 30
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v4, v6

    goto :goto_0

    .line 31
    :cond_5
    nop

    .line 32
    nop

    :goto_1
    if-ge v1, v2, :cond_7

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzy()B

    move-result v0

    if-gez v0, :cond_6

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    :cond_6
    :goto_2
    return v3

    .line 35
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzc()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    .line 18
    :cond_8
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final zzd()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzaa()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 264
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 265
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 266
    and-int/lit8 v0, v0, 0x7

    .line 267
    packed-switch v0, :pswitch_data_0

    .line 283
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 268
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 269
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 270
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 273
    return-void

    .line 274
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzg()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 275
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    return-void

    .line 277
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 278
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 279
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 280
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 281
    return-void

    .line 282
    :cond_2
    goto :goto_1

    .line 284
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 285
    and-int/lit8 v0, v0, 0x7

    .line 286
    packed-switch v0, :pswitch_data_1

    .line 302
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 287
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 288
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 289
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 290
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 291
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 292
    return-void

    .line 293
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    return-void

    .line 296
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 297
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 298
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 299
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 300
    return-void

    .line 301
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zze()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 304
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 305
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 306
    and-int/lit8 v0, v0, 0x7

    .line 307
    packed-switch v0, :pswitch_data_0

    .line 323
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 308
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 309
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 310
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 313
    return-void

    .line 314
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 315
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    return-void

    .line 317
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 319
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 320
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 321
    return-void

    .line 322
    :cond_2
    goto :goto_1

    .line 324
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 325
    and-int/lit8 v0, v0, 0x7

    .line 326
    packed-switch v0, :pswitch_data_1

    .line 342
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 327
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 328
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 329
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 330
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 331
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 332
    return-void

    .line 333
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    return-void

    .line 336
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 337
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 338
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 339
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 340
    return-void

    .line 341
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzf()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 344
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 345
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 346
    and-int/lit8 v0, v0, 0x7

    .line 347
    packed-switch v0, :pswitch_data_0

    .line 362
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 348
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 349
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzd(I)V

    .line 350
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 351
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzac()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    goto :goto_0

    .line 363
    :cond_0
    return-void

    .line 353
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzi()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 354
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    return-void

    .line 356
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 357
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 358
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 359
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 360
    return-void

    .line 361
    :cond_2
    goto :goto_1

    .line 364
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 365
    and-int/lit8 v0, v0, 0x7

    .line 366
    packed-switch v0, :pswitch_data_1

    .line 381
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 367
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 368
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzd(I)V

    .line 369
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 370
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 371
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzac()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 382
    :cond_4
    return-void

    .line 372
    :goto_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzi()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    return-void

    .line 375
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 376
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 377
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 378
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 379
    return-void

    .line 380
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzg()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 384
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 385
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 386
    and-int/lit8 v0, v0, 0x7

    .line 387
    sparse-switch v0, :sswitch_data_0

    .line 402
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 393
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzj()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 394
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    return-void

    .line 396
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 397
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 398
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_1

    .line 399
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 400
    return-void

    .line 401
    :cond_1
    goto :goto_0

    .line 388
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 389
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zze(I)V

    .line 390
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 391
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_2

    .line 392
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzab()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_1

    .line 403
    :cond_2
    return-void

    .line 404
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 405
    and-int/lit8 v0, v0, 0x7

    .line 406
    sparse-switch v0, :sswitch_data_1

    .line 421
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 412
    :goto_2
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 414
    return-void

    .line 415
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 416
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 417
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_5

    .line 418
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 419
    return-void

    .line 420
    :cond_5
    goto :goto_2

    .line 407
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 408
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zze(I)V

    .line 409
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 410
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_6

    .line 411
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzab()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 422
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 424
    check-cast p1, Lcom/google/android/gms/internal/vision/zzhr;

    .line 425
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 426
    and-int/lit8 v0, v0, 0x7

    .line 427
    packed-switch v0, :pswitch_data_0

    .line 443
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 428
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 429
    iget v3, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v3, v0

    .line 430
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v3, :cond_1

    .line 431
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzhr;->zza(Z)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 433
    return-void

    .line 434
    :goto_2
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzk()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzhr;->zza(Z)V

    .line 435
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    return-void

    .line 437
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 438
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 439
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_3

    .line 440
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 441
    return-void

    .line 442
    :cond_3
    goto :goto_2

    .line 444
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 445
    and-int/lit8 v0, v0, 0x7

    .line 446
    packed-switch v0, :pswitch_data_1

    .line 462
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 447
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 448
    iget v3, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v3, v0

    .line 449
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v3, :cond_6

    .line 450
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 451
    :cond_6
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/vision/zzho;->zzf(I)V

    .line 452
    return-void

    .line 453
    :goto_5
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzk()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 455
    return-void

    .line 456
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 457
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 458
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_8

    .line 459
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 460
    return-void

    .line 461
    :cond_8
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzi()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzaa()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzho;->zza(Ljava/util/List;Z)V

    .line 464
    return-void
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzz()I

    move-result v0

    return v0
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzho;->zza(Ljava/util/List;Z)V

    .line 466
    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vision/zzht;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 520
    and-int/lit8 v0, v0, 0x7

    .line 521
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 523
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    return-void

    .line 526
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 527
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 528
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_1

    .line 529
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 530
    return-void

    .line 531
    :cond_1
    goto :goto_0

    .line 522
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final zzk()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zza(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 533
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 534
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 535
    and-int/lit8 v0, v0, 0x7

    .line 536
    packed-switch v0, :pswitch_data_0

    .line 550
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 537
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 538
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 539
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_0

    .line 551
    :cond_0
    return-void

    .line 541
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzo()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 542
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    return-void

    .line 544
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 545
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 546
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 547
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 548
    return-void

    .line 549
    :cond_2
    goto :goto_1

    .line 552
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 553
    and-int/lit8 v0, v0, 0x7

    .line 554
    packed-switch v0, :pswitch_data_1

    .line 568
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 555
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 556
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 557
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 558
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 569
    :cond_4
    return-void

    .line 559
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 561
    return-void

    .line 562
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 563
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 564
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 565
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 566
    return-void

    .line 567
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zza(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 571
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 572
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 573
    and-int/lit8 v0, v0, 0x7

    .line 574
    packed-switch v0, :pswitch_data_0

    .line 588
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 575
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 576
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 577
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_0

    .line 589
    :cond_0
    return-void

    .line 579
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 580
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    return-void

    .line 582
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 583
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 584
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 585
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 586
    return-void

    .line 587
    :cond_2
    goto :goto_1

    .line 590
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 591
    and-int/lit8 v0, v0, 0x7

    .line 592
    packed-switch v0, :pswitch_data_1

    .line 606
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 593
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 594
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 595
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 596
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 607
    :cond_4
    return-void

    .line 597
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    return-void

    .line 600
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 601
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 602
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 603
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 604
    return-void

    .line 605
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzn()Lcom/google/android/gms/internal/vision/zzht;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    return-object v0

    .line 125
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzb(I)V

    .line 126
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zza:Z

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/vision/zzht;->zzb([BII)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/vision/zzht;->zza([BII)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v1

    .line 129
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 130
    return-object v1
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 609
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 610
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 611
    and-int/lit8 v0, v0, 0x7

    .line 612
    sparse-switch v0, :sswitch_data_0

    .line 627
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 618
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 619
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    return-void

    .line 621
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 622
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 623
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_1

    .line 624
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 625
    return-void

    .line 626
    :cond_1
    goto :goto_0

    .line 613
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 614
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zze(I)V

    .line 615
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 616
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_2

    .line 617
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzab()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_1

    .line 628
    :cond_2
    return-void

    .line 629
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 630
    and-int/lit8 v0, v0, 0x7

    .line 631
    sparse-switch v0, :sswitch_data_1

    .line 646
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 637
    :goto_2
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    return-void

    .line 640
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 641
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 642
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_5

    .line 643
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 644
    return-void

    .line 645
    :cond_5
    goto :goto_2

    .line 632
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 633
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zze(I)V

    .line 634
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 635
    :goto_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_6

    .line 636
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzab()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 647
    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 132
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 649
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 650
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 651
    and-int/lit8 v0, v0, 0x7

    .line 652
    packed-switch v0, :pswitch_data_0

    .line 667
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 653
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 654
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzd(I)V

    .line 655
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 656
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzac()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    goto :goto_0

    .line 668
    :cond_0
    return-void

    .line 658
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 659
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    return-void

    .line 661
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 662
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 663
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 664
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 665
    return-void

    .line 666
    :cond_2
    goto :goto_1

    .line 669
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 670
    and-int/lit8 v0, v0, 0x7

    .line 671
    packed-switch v0, :pswitch_data_1

    .line 686
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 672
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 673
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzd(I)V

    .line 674
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 675
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 676
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzac()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 687
    :cond_4
    return-void

    .line 677
    :goto_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzr()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 679
    return-void

    .line 680
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 681
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 682
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 683
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 684
    return-void

    .line 685
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 689
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 690
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 691
    and-int/lit8 v0, v0, 0x7

    .line 692
    packed-switch v0, :pswitch_data_0

    .line 706
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 693
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 694
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 695
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_0

    .line 707
    :cond_0
    return-void

    .line 697
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzs()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 698
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    return-void

    .line 700
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 701
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 702
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 703
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 704
    return-void

    .line 705
    :cond_2
    goto :goto_1

    .line 708
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 709
    and-int/lit8 v0, v0, 0x7

    .line 710
    packed-switch v0, :pswitch_data_1

    .line 724
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 711
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 712
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 713
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 714
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 725
    :cond_4
    return-void

    .line 715
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 717
    return-void

    .line 718
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 719
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 720
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 721
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 722
    return-void

    .line 723
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzz()I

    move-result v0

    return v0
.end method

.method public final zzq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 727
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 728
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 729
    and-int/lit8 v0, v0, 0x7

    .line 730
    packed-switch v0, :pswitch_data_0

    .line 744
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 731
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 732
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 733
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    goto :goto_0

    .line 745
    :cond_0
    return-void

    .line 735
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 736
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    return-void

    .line 738
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 739
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 740
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_2

    .line 741
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 742
    return-void

    .line 743
    :cond_2
    goto :goto_1

    .line 746
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    .line 747
    and-int/lit8 v0, v0, 0x7

    .line 748
    packed-switch v0, :pswitch_data_1

    .line 762
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 749
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    .line 750
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    add-int/2addr v1, v0

    .line 751
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    if-ge v0, v1, :cond_4

    .line 752
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 763
    :cond_4
    return-void

    .line 753
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzu()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 755
    return-void

    .line 756
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 757
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v1

    .line 758
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzho;->zzf:I

    if-eq v1, v2, :cond_6

    .line 759
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzho;->zzc:I

    .line 760
    return-void

    .line 761
    :cond_6
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzr()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzaa()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzs()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzv()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v0

    return v0
.end method

.method public final zzt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzho;->zzc(I)V

    .line 142
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzho;->zzw()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method
