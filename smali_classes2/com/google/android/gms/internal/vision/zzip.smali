.class final Lcom/google/android/gms/internal/vision/zzip;
.super Lcom/google/android/gms/internal/vision/zziq;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zziq<",
        "Lcom/google/android/gms/internal/vision/zzjb$zzf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zziq;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 85
    nop

    .line 86
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 87
    iget p1, p1, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 88
    return p1
.end method

.method final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/zziu<",
            "Lcom/google/android/gms/internal/vision/zzjb$zzf;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zzkk;I)Ljava/lang/Object;
    .locals 0

    .line 304
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzio;->zza(Lcom/google/android/gms/internal/vision/zzkk;I)Lcom/google/android/gms/internal/vision/zzjb$zze;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzld;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zziu;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzld;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            "Lcom/google/android/gms/internal/vision/zziu<",
            "Lcom/google/android/gms/internal/vision/zzjb$zzf;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/vision/zzjb$zze;

    .line 8
    nop

    .line 9
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 10
    iget p6, p6, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 11
    nop

    .line 12
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 13
    iget-boolean p6, p6, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzd:Z

    .line 14
    nop

    .line 15
    nop

    .line 16
    nop

    .line 17
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 18
    iget-object p6, p6, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/vision/zzml;->zzn:Lcom/google/android/gms/internal/vision/zzml;

    const/4 v1, 0x0

    if-eq p6, v0, :cond_2

    .line 27
    sget-object p6, Lcom/google/android/gms/internal/vision/zzis;->zza:[I

    .line 28
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_0

    goto/16 :goto_0

    .line 66
    :pswitch_0
    nop

    .line 67
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzc:Lcom/google/android/gms/internal/vision/zzkk;

    .line 68
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 69
    invoke-interface {p1, p6, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    goto/16 :goto_0

    .line 61
    :pswitch_1
    nop

    .line 62
    iget-object p6, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzc:Lcom/google/android/gms/internal/vision/zzkk;

    .line 63
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 64
    invoke-interface {p1, p6, p3}, Lcom/google/android/gms/internal/vision/zzld;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    goto/16 :goto_0

    .line 59
    :pswitch_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzl()Ljava/lang/String;

    move-result-object v1

    .line 60
    goto/16 :goto_0

    .line 47
    :pswitch_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v1

    .line 48
    goto/16 :goto_0

    .line 71
    :pswitch_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :pswitch_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 58
    goto/16 :goto_0

    .line 55
    :pswitch_6
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzs()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    goto :goto_0

    .line 53
    :pswitch_7
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzr()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 54
    goto :goto_0

    .line 51
    :pswitch_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 52
    goto :goto_0

    .line 49
    :pswitch_9
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzo()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    goto :goto_0

    .line 45
    :pswitch_a
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzk()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 46
    goto :goto_0

    .line 43
    :pswitch_b
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzj()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    goto :goto_0

    .line 41
    :pswitch_c
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzi()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 42
    goto :goto_0

    .line 39
    :pswitch_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 40
    goto :goto_0

    .line 37
    :pswitch_e
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzf()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 38
    goto :goto_0

    .line 35
    :pswitch_f
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 36
    goto :goto_0

    .line 33
    :pswitch_10
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zze()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 34
    goto :goto_0

    .line 31
    :pswitch_11
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzd()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 32
    nop

    .line 72
    :goto_0
    nop

    .line 73
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzd:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {p4, p1, v1}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)V

    goto :goto_2

    .line 76
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/vision/zzis;->zza:[I

    .line 77
    iget-object p3, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 78
    iget-object p3, p3, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 79
    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 80
    :pswitch_12
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Lcom/google/android/gms/internal/vision/zziw;)Ljava/lang/Object;

    move-result-object p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    :cond_1
    :goto_1
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {p4, p1, v1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)V

    .line 84
    :goto_2
    return-object p5

    .line 20
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzld;->zzh()I

    move-result p1

    .line 21
    nop

    .line 22
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/vision/zzjh;->zza(I)Lcom/google/android/gms/internal/vision/zzje;

    .line 23
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzht;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zziu;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzht;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            "Lcom/google/android/gms/internal/vision/zziu<",
            "Lcom/google/android/gms/internal/vision/zzjb$zzf;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    check-cast p2, Lcom/google/android/gms/internal/vision/zzjb$zze;

    .line 312
    nop

    .line 313
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzc:Lcom/google/android/gms/internal/vision/zzkk;

    .line 314
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzkk;->zzq()Lcom/google/android/gms/internal/vision/zzkn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzkn;->zze()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v0

    .line 315
    nop

    .line 316
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result v1

    .line 317
    if-nez v1, :cond_0

    .line 318
    sget-object p1, Lcom/google/android/gms/internal/vision/zzjf;->zzb:[B

    goto :goto_0

    .line 319
    :cond_0
    new-array v2, v1, [B

    .line 320
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, v1}, Lcom/google/android/gms/internal/vision/zzht;->zza([BIII)V

    .line 321
    move-object p1, v2

    .line 322
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    new-instance v1, Lcom/google/android/gms/internal/vision/zzho;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/vision/zzho;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 326
    nop

    .line 327
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object p1

    .line 328
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p1

    invoke-interface {p1, v0, v1, p3}, Lcom/google/android/gms/internal/vision/zzlc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 329
    iget-object p1, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {p4, p1, v0}, Lcom/google/android/gms/internal/vision/zziu;->zza(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)V

    .line 330
    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/zzld;->zza()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_1

    .line 332
    return-void

    .line 331
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zze()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1

    .line 325
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Direct buffers not yet supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzld;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zziu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzld;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            "Lcom/google/android/gms/internal/vision/zziu<",
            "Lcom/google/android/gms/internal/vision/zzjb$zzf;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    check-cast p2, Lcom/google/android/gms/internal/vision/zzjb$zze;

    .line 306
    nop

    .line 307
    iget-object v0, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzc:Lcom/google/android/gms/internal/vision/zzkk;

    .line 308
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object p1

    .line 309
    iget-object p2, p2, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {p4, p2, p1}, Lcom/google/android/gms/internal/vision/zziu;->zza(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzmr;Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzmr;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    nop

    .line 90
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 91
    nop

    .line 92
    iget-boolean v1, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzd:Z

    .line 93
    if-eqz v1, :cond_2

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/vision/zzis;->zza:[I

    .line 95
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 214
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 215
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    nop

    .line 217
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 218
    nop

    .line 219
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 220
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 221
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_0

    .line 205
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 206
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    nop

    .line 208
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 209
    nop

    .line 210
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 211
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 212
    invoke-static {v0, p2, p1, v1}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 213
    :cond_0
    return-void

    .line 200
    :pswitch_2
    nop

    .line 201
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 202
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 203
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 204
    return-void

    .line 153
    :pswitch_3
    nop

    .line 154
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 155
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 156
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 157
    return-void

    .line 193
    :pswitch_4
    nop

    .line 194
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 195
    nop

    .line 196
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 197
    nop

    .line 198
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 199
    return-void

    .line 186
    :pswitch_5
    nop

    .line 187
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 188
    nop

    .line 189
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 190
    nop

    .line 191
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 192
    return-void

    .line 179
    :pswitch_6
    nop

    .line 180
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 181
    nop

    .line 182
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 183
    nop

    .line 184
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 185
    return-void

    .line 172
    :pswitch_7
    nop

    .line 173
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 174
    nop

    .line 175
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 176
    nop

    .line 177
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 178
    return-void

    .line 165
    :pswitch_8
    nop

    .line 166
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 167
    nop

    .line 168
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 169
    nop

    .line 170
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 171
    return-void

    .line 158
    :pswitch_9
    nop

    .line 159
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 160
    nop

    .line 161
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 162
    nop

    .line 163
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 164
    return-void

    .line 146
    :pswitch_a
    nop

    .line 147
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 148
    nop

    .line 149
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 150
    nop

    .line 151
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 152
    return-void

    .line 139
    :pswitch_b
    nop

    .line 140
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 141
    nop

    .line 142
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 143
    nop

    .line 144
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 145
    return-void

    .line 132
    :pswitch_c
    nop

    .line 133
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 134
    nop

    .line 135
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 136
    nop

    .line 137
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 138
    return-void

    .line 125
    :pswitch_d
    nop

    .line 126
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 127
    nop

    .line 128
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 129
    nop

    .line 130
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 131
    return-void

    .line 118
    :pswitch_e
    nop

    .line 119
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 120
    nop

    .line 121
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 122
    nop

    .line 123
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 124
    return-void

    .line 111
    :pswitch_f
    nop

    .line 112
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 113
    nop

    .line 114
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 115
    nop

    .line 116
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 117
    return-void

    .line 104
    :pswitch_10
    nop

    .line 105
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 106
    nop

    .line 107
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 108
    nop

    .line 109
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 110
    return-void

    .line 97
    :pswitch_11
    nop

    .line 98
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 99
    nop

    .line 100
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 101
    nop

    .line 102
    invoke-static {v0, p2, p1, v2}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 103
    return-void

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/vision/zzis;->zza:[I

    .line 224
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 297
    :pswitch_12
    nop

    .line 298
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 299
    nop

    .line 300
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 301
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p2

    .line 302
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_1

    .line 290
    :pswitch_13
    nop

    .line 291
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 292
    nop

    .line 293
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 294
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p2

    .line 295
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 296
    return-void

    .line 286
    :pswitch_14
    nop

    .line 287
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 288
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/String;)V

    .line 289
    return-void

    .line 258
    :pswitch_15
    nop

    .line 259
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 260
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    .line 261
    return-void

    .line 282
    :pswitch_16
    nop

    .line 283
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 284
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    .line 285
    return-void

    .line 278
    :pswitch_17
    nop

    .line 279
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 280
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzmr;->zze(IJ)V

    .line 281
    return-void

    .line 274
    :pswitch_18
    nop

    .line 275
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 276
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zzf(II)V

    .line 277
    return-void

    .line 270
    :pswitch_19
    nop

    .line 271
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 272
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(IJ)V

    .line 273
    return-void

    .line 266
    :pswitch_1a
    nop

    .line 267
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 268
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(II)V

    .line 269
    return-void

    .line 262
    :pswitch_1b
    nop

    .line 263
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 264
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zze(II)V

    .line 265
    return-void

    .line 254
    :pswitch_1c
    nop

    .line 255
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 256
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IZ)V

    .line 257
    return-void

    .line 250
    :pswitch_1d
    nop

    .line 251
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 252
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(II)V

    .line 253
    return-void

    .line 246
    :pswitch_1e
    nop

    .line 247
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 248
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(IJ)V

    .line 249
    return-void

    .line 242
    :pswitch_1f
    nop

    .line 243
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 244
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    .line 245
    return-void

    .line 238
    :pswitch_20
    nop

    .line 239
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 240
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(IJ)V

    .line 241
    return-void

    .line 234
    :pswitch_21
    nop

    .line 235
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 236
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IJ)V

    .line 237
    return-void

    .line 230
    :pswitch_22
    nop

    .line 231
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 232
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IF)V

    .line 233
    return-void

    .line 226
    :pswitch_23
    nop

    .line 227
    iget v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 228
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ID)V

    .line 229
    return-void

    .line 303
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzkk;)Z
    .locals 0

    .line 2
    instance-of p1, p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    return p1
.end method

.method final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/zziu<",
            "Lcom/google/android/gms/internal/vision/zzjb$zzf;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zza()Lcom/google/android/gms/internal/vision/zziu;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Ljava/lang/Object;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zziu;->zzb()V

    .line 6
    return-void
.end method
