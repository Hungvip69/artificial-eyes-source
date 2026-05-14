.class final Lcom/google/android/gms/internal/vision/zzig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzld;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/vision/zzif;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/vision/zzif;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 6
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzif;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    iput-object p0, p1, Lcom/google/android/gms/internal/vision/zzif;->zzc:Lcom/google/android/gms/internal/vision/zzig;

    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzif;)Lcom/google/android/gms/internal/vision/zzig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzif;->zzc:Lcom/google/android/gms/internal/vision/zzig;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzif;->zzc:Lcom/google/android/gms/internal/vision/zzig;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzig;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzig;-><init>(Lcom/google/android/gms/internal/vision/zzif;)V

    return-object v0
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

    .line 722
    sget-object v0, Lcom/google/android/gms/internal/vision/zzij;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 740
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzf()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 738
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 737
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzm()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 736
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzt()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 735
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 734
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzr()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 732
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 731
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzg()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 730
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 729
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zze()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 728
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzi()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 727
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 726
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzp()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 725
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzd()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 724
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzk()Z

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

.method private final zza(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 23
    and-int/lit8 v0, v0, 0x7

    .line 24
    if-ne v0, p1, :cond_0

    .line 26
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 2
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

    .line 405
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 406
    and-int/lit8 v0, v0, 0x7

    .line 407
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 409
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjv;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 410
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjv;

    .line 411
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzjv;->zza(Lcom/google/android/gms/internal/vision/zzht;)V

    .line 412
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 413
    return-void

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result p1

    .line 415
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq p1, p2, :cond_1

    .line 416
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 417
    return-void

    .line 418
    :cond_1
    goto :goto_0

    .line 419
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzm()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzl()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    return-void

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 423
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_5

    .line 424
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 425
    return-void

    .line 426
    :cond_5
    goto :goto_1

    .line 408
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static zzb(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    .line 695
    return-void

    .line 694
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;
    .locals 4
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

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    iget v1, v1, Lcom/google/android/gms/internal/vision/zzif;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    iget v2, v2, Lcom/google/android/gms/internal/vision/zzif;->zzb:I

    if-ge v1, v2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzif;->zzc(I)I

    move-result v0

    .line 60
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzlc;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    iget v3, v2, Lcom/google/android/gms/internal/vision/zzif;->zza:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/vision/zzif;->zza:I

    .line 62
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzlc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 63
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzlc;->zzc(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzif;->zza(I)V

    .line 65
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    iget p2, p1, Lcom/google/android/gms/internal/vision/zzif;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/vision/zzif;->zza:I

    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd(I)V

    .line 67
    return-object v1

    .line 57
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjk;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzjk;-><init>(Ljava/lang/String;)V

    .line 58
    throw p1
.end method

.method private static zzc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    .line 743
    return-void

    .line 742
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0
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

    .line 68
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzc:I

    .line 69
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 70
    ushr-int/lit8 v1, v1, 0x3

    .line 71
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 72
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzc:I

    .line 73
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzlc;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 74
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzlc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 75
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzlc;->zzc(Ljava/lang/Object;)V

    .line 76
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 78
    nop

    .line 79
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzc:I

    .line 80
    return-object v1

    .line 77
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzc:I

    .line 82
    throw p1
.end method

.method private final zzd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 746
    return-void

    .line 745
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    if-eqz v0, :cond_0

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 13
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 16
    ushr-int/lit8 v0, v0, 0x3

    .line 17
    return v0

    .line 14
    :cond_2
    :goto_1
    const v0, 0x7fffffff

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

    .line 49
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

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

    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

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

    .line 97
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzin;

    if-eqz v0, :cond_3

    .line 98
    check-cast p1, Lcom/google/android/gms/internal/vision/zzin;

    .line 99
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 100
    and-int/lit8 v0, v0, 0x7

    .line 101
    packed-switch v0, :pswitch_data_0

    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(I)V

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzb()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzin;->zza(D)V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 107
    return-void

    .line 108
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzb()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzin;->zza(D)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 112
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 113
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 114
    return-void

    .line 115
    :cond_2
    goto :goto_0

    .line 117
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 118
    and-int/lit8 v0, v0, 0x7

    .line 119
    packed-switch v0, :pswitch_data_1

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(I)V

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzb()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 125
    return-void

    .line 126
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzb()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    return-void

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 130
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 131
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 132
    return-void

    .line 133
    :cond_6
    goto :goto_1

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
    .locals 2
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

    .line 427
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 428
    and-int/lit8 v0, v0, 0x7

    .line 429
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 431
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 432
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzc(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v1

    .line 436
    if-eq v1, v0, :cond_1

    .line 437
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 438
    return-void

    .line 439
    :cond_1
    goto :goto_0

    .line 434
    :cond_2
    :goto_1
    return-void

    .line 430
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
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

    .line 696
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 697
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzif;->zzc(I)I

    move-result v0

    .line 699
    iget-object v1, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzb:Ljava/lang/Object;

    .line 700
    iget-object v2, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzd:Ljava/lang/Object;

    .line 701
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zza()I

    move-result v3

    .line 702
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 703
    const-string v4, "Unable to parse map entry."

    packed-switch v3, :pswitch_data_0

    .line 710
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzc()Z

    move-result v3

    goto :goto_1

    .line 706
    :pswitch_0
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    iget-object v5, p2, Lcom/google/android/gms/internal/vision/zzkf;->zzd:Ljava/lang/Object;

    .line 707
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 708
    invoke-direct {p0, v3, v5, p3}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v2

    .line 709
    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzkf;->zza:Lcom/google/android/gms/internal/vision/zzml;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5}, Lcom/google/android/gms/internal/vision/zzig;->zza(Lcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    .line 705
    goto :goto_0

    .line 713
    :catch_0
    move-exception v3

    goto :goto_2

    .line 710
    :goto_1
    if-eqz v3, :cond_0

    .line 712
    goto :goto_0

    .line 711
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/vision/zzjk;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/vision/zzjk;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/zzjn; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    goto :goto_0

    .line 715
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/vision/zzjk;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/vision/zzjk;-><init>(Ljava/lang/String;)V

    throw p1

    .line 717
    :cond_2
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd(I)V

    .line 719
    return-void

    .line 720
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd(I)V

    .line 721
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

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

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

    .line 53
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzd(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

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

    .line 51
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzig;->zzd(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 2
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

    .line 135
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzja;

    if-eqz v0, :cond_3

    .line 136
    check-cast p1, Lcom/google/android/gms/internal/vision/zzja;

    .line 137
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 138
    and-int/lit8 v0, v0, 0x7

    .line 139
    sparse-switch v0, :sswitch_data_0

    .line 154
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 146
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzc()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzja;->zza(F)V

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 150
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_1

    .line 151
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 152
    return-void

    .line 153
    :cond_1
    goto :goto_0

    .line 140
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 141
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzc(I)V

    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzc()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzja;->zza(F)V

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 145
    return-void

    .line 155
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 156
    and-int/lit8 v0, v0, 0x7

    .line 157
    sparse-switch v0, :sswitch_data_1

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 164
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    return-void

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 168
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_5

    .line 169
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 170
    return-void

    .line 171
    :cond_5
    goto :goto_1

    .line 158
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 159
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzc(I)V

    .line 160
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 163
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
    .locals 2
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

    .line 440
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 441
    and-int/lit8 v0, v0, 0x7

    .line 442
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 444
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 445
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzig;->zzd(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    if-eqz v1, :cond_0

    goto :goto_1

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v1

    .line 449
    if-eq v1, v0, :cond_1

    .line 450
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 451
    return-void

    .line 452
    :cond_1
    goto :goto_0

    .line 447
    :cond_2
    :goto_1
    return-void

    .line 443
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
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

    .line 173
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 174
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 175
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 176
    and-int/lit8 v0, v0, 0x7

    .line 177
    packed-switch v0, :pswitch_data_0

    .line 192
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 178
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 182
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 183
    return-void

    .line 184
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 188
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 189
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 190
    return-void

    .line 191
    :cond_2
    goto :goto_0

    .line 193
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 194
    and-int/lit8 v0, v0, 0x7

    .line 195
    packed-switch v0, :pswitch_data_1

    .line 210
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 196
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 200
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 201
    return-void

    .line 202
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    return-void

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 206
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 207
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 208
    return-void

    .line 209
    :cond_6
    goto :goto_1

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzif;->zzb(I)Z

    move-result v0

    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzb()D

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

    .line 211
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 212
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 213
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 214
    and-int/lit8 v0, v0, 0x7

    .line 215
    packed-switch v0, :pswitch_data_0

    .line 230
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 219
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 220
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 221
    return-void

    .line 222
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 226
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 227
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 228
    return-void

    .line 229
    :cond_2
    goto :goto_0

    .line 231
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 232
    and-int/lit8 v0, v0, 0x7

    .line 233
    packed-switch v0, :pswitch_data_1

    .line 248
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 234
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 238
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 239
    return-void

    .line 240
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    return-void

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 244
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 245
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 246
    return-void

    .line 247
    :cond_6
    goto :goto_1

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

    .line 29
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzc()F

    move-result v0

    return v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 2
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

    .line 249
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 250
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 251
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 252
    and-int/lit8 v0, v0, 0x7

    .line 253
    packed-switch v0, :pswitch_data_0

    .line 268
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 254
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 257
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 258
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 259
    return-void

    .line 260
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzf()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 264
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 265
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 266
    return-void

    .line 267
    :cond_2
    goto :goto_0

    .line 269
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 270
    and-int/lit8 v0, v0, 0x7

    .line 271
    packed-switch v0, :pswitch_data_1

    .line 286
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 272
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 274
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 276
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 277
    return-void

    .line 278
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    return-void

    .line 281
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 282
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 283
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 284
    return-void

    .line 285
    :cond_6
    goto :goto_1

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

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzd()J

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

    .line 287
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 288
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 289
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 290
    and-int/lit8 v0, v0, 0x7

    .line 291
    packed-switch v0, :pswitch_data_0

    .line 306
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 293
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(I)V

    .line 294
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzg()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 297
    return-void

    .line 298
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzg()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 302
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 303
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 304
    return-void

    .line 305
    :cond_2
    goto :goto_0

    .line 307
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 308
    and-int/lit8 v0, v0, 0x7

    .line 309
    packed-switch v0, :pswitch_data_1

    .line 324
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 311
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(I)V

    .line 312
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 315
    return-void

    .line 316
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 318
    return-void

    .line 319
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 320
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 321
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 322
    return-void

    .line 323
    :cond_6
    goto :goto_1

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

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 2
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

    .line 325
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 326
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 327
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 328
    and-int/lit8 v0, v0, 0x7

    .line 329
    sparse-switch v0, :sswitch_data_0

    .line 344
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 336
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 340
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_1

    .line 341
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 342
    return-void

    .line 343
    :cond_1
    goto :goto_0

    .line 330
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 331
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzc(I)V

    .line 332
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 335
    return-void

    .line 345
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 346
    and-int/lit8 v0, v0, 0x7

    .line 347
    sparse-switch v0, :sswitch_data_1

    .line 362
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 354
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    return-void

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 358
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_5

    .line 359
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 360
    return-void

    .line 361
    :cond_5
    goto :goto_1

    .line 348
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 349
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzc(I)V

    .line 350
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 353
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

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
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

    .line 363
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhr;

    if-eqz v0, :cond_3

    .line 364
    check-cast p1, Lcom/google/android/gms/internal/vision/zzhr;

    .line 365
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 366
    and-int/lit8 v0, v0, 0x7

    .line 367
    packed-switch v0, :pswitch_data_0

    .line 382
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 368
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzi()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzhr;->zza(Z)V

    .line 371
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 372
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 373
    return-void

    .line 374
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzi()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzhr;->zza(Z)V

    .line 375
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 378
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 379
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 380
    return-void

    .line 381
    :cond_2
    goto :goto_0

    .line 383
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 384
    and-int/lit8 v0, v0, 0x7

    .line 385
    packed-switch v0, :pswitch_data_1

    .line 400
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 386
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 390
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 391
    return-void

    .line 392
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    return-void

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 396
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 397
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 398
    return-void

    .line 399
    :cond_6
    goto :goto_1

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

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzg()J

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

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/util/List;Z)V

    .line 402
    return-void
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzh()I

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

    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/util/List;Z)V

    .line 404
    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 2
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

    .line 453
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 454
    and-int/lit8 v0, v0, 0x7

    .line 455
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 457
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 461
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_1

    .line 462
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 463
    return-void

    .line 464
    :cond_1
    goto :goto_0

    .line 456
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzi()Z

    move-result v0

    return v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
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

    .line 465
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 466
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 467
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 468
    and-int/lit8 v0, v0, 0x7

    .line 469
    packed-switch v0, :pswitch_data_0

    .line 484
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 473
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 474
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 475
    return-void

    .line 476
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 477
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 480
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 481
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 482
    return-void

    .line 483
    :cond_2
    goto :goto_0

    .line 485
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 486
    and-int/lit8 v0, v0, 0x7

    .line 487
    packed-switch v0, :pswitch_data_1

    .line 502
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 488
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 492
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 493
    return-void

    .line 494
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 496
    return-void

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 498
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 499
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 500
    return-void

    .line 501
    :cond_6
    goto :goto_1

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

    .line 45
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 2
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

    .line 503
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 504
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 505
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 506
    and-int/lit8 v0, v0, 0x7

    .line 507
    packed-switch v0, :pswitch_data_0

    .line 522
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 508
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 511
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 512
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 513
    return-void

    .line 514
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 515
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 518
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 519
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 520
    return-void

    .line 521
    :cond_2
    goto :goto_0

    .line 523
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 524
    and-int/lit8 v0, v0, 0x7

    .line 525
    packed-switch v0, :pswitch_data_1

    .line 540
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 526
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 527
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 530
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 531
    return-void

    .line 532
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    return-void

    .line 535
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 536
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 537
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 538
    return-void

    .line 539
    :cond_6
    goto :goto_1

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzl()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v0

    return-object v0
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 2
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

    .line 541
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 542
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 543
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 544
    and-int/lit8 v0, v0, 0x7

    .line 545
    sparse-switch v0, :sswitch_data_0

    .line 560
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 552
    :goto_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzo()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 553
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 556
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_1

    .line 557
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 558
    return-void

    .line 559
    :cond_1
    goto :goto_0

    .line 546
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 547
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzc(I)V

    .line 548
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzo()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 550
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 551
    return-void

    .line 561
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 562
    and-int/lit8 v0, v0, 0x7

    .line 563
    sparse-switch v0, :sswitch_data_1

    .line 578
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 570
    :goto_1
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 572
    return-void

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 574
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_5

    .line 575
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 576
    return-void

    .line 577
    :cond_5
    goto :goto_1

    .line 564
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 565
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzc(I)V

    .line 566
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 569
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

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

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

    .line 579
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 580
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 581
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 582
    and-int/lit8 v0, v0, 0x7

    .line 583
    packed-switch v0, :pswitch_data_0

    .line 598
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 584
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 585
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(I)V

    .line 586
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 588
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 589
    return-void

    .line 590
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 591
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 594
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 595
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 596
    return-void

    .line 597
    :cond_2
    goto :goto_0

    .line 599
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 600
    and-int/lit8 v0, v0, 0x7

    .line 601
    packed-switch v0, :pswitch_data_1

    .line 616
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 602
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 603
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzig;->zzb(I)V

    .line 604
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 607
    return-void

    .line 608
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 610
    return-void

    .line 611
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 612
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 613
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 614
    return-void

    .line 615
    :cond_6
    goto :goto_1

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

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzn()I

    move-result v0

    return v0
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 2
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

    .line 617
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjd;

    if-eqz v0, :cond_3

    .line 618
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjd;

    .line 619
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 620
    and-int/lit8 v0, v0, 0x7

    .line 621
    packed-switch v0, :pswitch_data_0

    .line 636
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 622
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 623
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 625
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 626
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 627
    return-void

    .line 628
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 629
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 632
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 633
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 634
    return-void

    .line 635
    :cond_2
    goto :goto_0

    .line 637
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 638
    and-int/lit8 v0, v0, 0x7

    .line 639
    packed-switch v0, :pswitch_data_1

    .line 654
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 640
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 641
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 642
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 644
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 645
    return-void

    .line 646
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 648
    return-void

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 650
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 651
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 652
    return-void

    .line 653
    :cond_6
    goto :goto_1

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

    .line 89
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzo()I

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

    .line 655
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzjy;

    if-eqz v0, :cond_3

    .line 656
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjy;

    .line 657
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 658
    and-int/lit8 v0, v0, 0x7

    .line 659
    packed-switch v0, :pswitch_data_0

    .line 674
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 660
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 661
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzr()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 663
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 664
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 665
    return-void

    .line 666
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 667
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 670
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_2

    .line 671
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 672
    return-void

    .line 673
    :cond_2
    goto :goto_0

    .line 675
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    .line 676
    and-int/lit8 v0, v0, 0x7

    .line 677
    packed-switch v0, :pswitch_data_1

    .line 692
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzf()Lcom/google/android/gms/internal/vision/zzjn;

    move-result-object p1

    throw p1

    .line 678
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzm()I

    move-result v0

    .line 679
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 680
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 682
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzig;->zzd(I)V

    .line 683
    return-void

    .line 684
    :goto_1
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzr()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    return-void

    .line 687
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zza()I

    move-result v0

    .line 688
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzig;->zzb:I

    if-eq v0, v1, :cond_6

    .line 689
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zzd:I

    .line 690
    return-void

    .line 691
    :cond_6
    goto :goto_1

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

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzp()J

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

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzq()I

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

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzig;->zza(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzig;->zza:Lcom/google/android/gms/internal/vision/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzif;->zzr()J

    move-result-wide v0

    return-wide v0
.end method
