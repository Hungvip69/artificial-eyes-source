.class final Lcom/google/android/gms/internal/vision/zzko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzlc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/zzlc<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/vision/zzkk;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:[I

.field private final zzm:I

.field private final zzn:I

.field private final zzo:Lcom/google/android/gms/internal/vision/zzks;

.field private final zzp:Lcom/google/android/gms/internal/vision/zzju;

.field private final zzq:Lcom/google/android/gms/internal/vision/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzr:Lcom/google/android/gms/internal/vision/zziq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zziq<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzs:Lcom/google/android/gms/internal/vision/zzkh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4102
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/vision/zzko;->zza:[I

    .line 4103
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzma;->zzc()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzkk;ZZ[IIILcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/vision/zzkk;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/vision/zzks;",
            "Lcom/google/android/gms/internal/vision/zzju;",
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/zziq<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzkh;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzd:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zze:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzf:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/vision/zzjb;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzi:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/zzko;->zzj:Z

    .line 8
    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzkk;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzk:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/vision/zzko;->zzo:Lcom/google/android/gms/internal/vision/zzks;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzko;->zzg:Lcom/google/android/gms/internal/vision/zzkk;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 19
    return-void
.end method

.method private final zza(II)I
    .locals 1

    .line 4085
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzf:I

    if-gt p1, v0, :cond_0

    .line 4086
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(II)I

    move-result p1

    return p1

    .line 4087
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1158
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1159
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 3347
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    .line 3348
    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_8

    .line 3425
    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    .line 3426
    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    .line 3427
    nop

    .line 3428
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v2

    .line 3429
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3430
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 3431
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    .line 3432
    :cond_0
    const/4 v15, 0x0

    .line 3433
    :goto_0
    if-nez v15, :cond_1

    .line 3434
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    .line 3435
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3436
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3437
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_7

    .line 3421
    :pswitch_1
    if-nez v5, :cond_a

    .line 3422
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3423
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3424
    goto/16 :goto_7

    .line 3417
    :pswitch_2
    if-nez v5, :cond_a

    .line 3418
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3419
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3420
    goto/16 :goto_7

    .line 3408
    :pswitch_3
    if-nez v5, :cond_a

    .line 3409
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v3

    .line 3410
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3411
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v5

    .line 3412
    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/zzjg;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 3415
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    .line 3416
    move v2, v3

    goto/16 :goto_9

    .line 3413
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3414
    move v2, v3

    goto/16 :goto_7

    .line 3404
    :pswitch_4
    if-ne v5, v15, :cond_a

    .line 3405
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zze([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3406
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3407
    goto/16 :goto_7

    .line 3390
    :pswitch_5
    if-ne v5, v15, :cond_a

    .line 3391
    nop

    .line 3392
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v2

    .line 3393
    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3394
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 3395
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    .line 3396
    :cond_4
    const/4 v15, 0x0

    .line 3397
    :goto_2
    if-nez v15, :cond_5

    .line 3398
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 3399
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3400
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3401
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3402
    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3403
    goto/16 :goto_9

    .line 3377
    :pswitch_6
    if-ne v5, v15, :cond_a

    .line 3378
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3379
    iget v4, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3380
    if-nez v4, :cond_6

    .line 3381
    const-string v3, ""

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3382
    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 3383
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/vision/zzmd;->zza([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 3384
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzh()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3385
    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3386
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3387
    add-int/2addr v2, v4

    .line 3388
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3389
    goto/16 :goto_9

    .line 3373
    :pswitch_7
    if-nez v5, :cond_a

    .line 3374
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3375
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3376
    goto :goto_7

    .line 3369
    :pswitch_8
    if-ne v5, v7, :cond_a

    .line 3370
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3371
    add-int/lit8 v2, v4, 0x4

    .line 3372
    goto :goto_7

    .line 3365
    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 3366
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3367
    add-int/lit8 v2, v4, 0x8

    .line 3368
    goto :goto_7

    .line 3361
    :pswitch_a
    if-nez v5, :cond_a

    .line 3362
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3363
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3364
    goto :goto_7

    .line 3357
    :pswitch_b
    if-nez v5, :cond_a

    .line 3358
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3359
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3360
    goto :goto_7

    .line 3353
    :pswitch_c
    if-ne v5, v7, :cond_a

    .line 3354
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3355
    add-int/lit8 v2, v4, 0x4

    .line 3356
    goto :goto_7

    .line 3349
    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    .line 3350
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3351
    add-int/lit8 v2, v4, 0x8

    .line 3352
    nop

    .line 3438
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    .line 3439
    :cond_a
    :goto_8
    move v2, v4

    :goto_9
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzhn;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2969
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/vision/zzjl;

    .line 2970
    invoke-interface {v11}, Lcom/google/android/gms/internal/vision/zzjl;->zza()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_1

    .line 2971
    invoke-interface {v11}, Lcom/google/android/gms/internal/vision/zzjl;->size()I

    move-result v12

    .line 2972
    nop

    .line 2973
    if-nez v12, :cond_0

    const/16 v12, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v12, v13

    .line 2974
    :goto_0
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/vision/zzjl;->zza(I)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v11

    .line 2975
    sget-object v12, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2976
    :cond_1
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_19

    .line 3284
    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_3e

    .line 3285
    nop

    .line 3286
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 3287
    nop

    .line 3288
    nop

    .line 3289
    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    .line 3290
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3291
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3292
    :goto_1
    if-ge v4, v5, :cond_2

    .line 3293
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v8

    .line 3294
    iget v9, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v9, :cond_2

    .line 3295
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3296
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3297
    goto :goto_1

    .line 3298
    :cond_2
    nop

    .line 3299
    move v1, v4

    goto/16 :goto_1a

    .line 3259
    :pswitch_1
    if-ne v6, v10, :cond_5

    .line 3260
    nop

    .line 3261
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjy;

    .line 3262
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3263
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v2, v1

    .line 3264
    :goto_2
    if-ge v1, v2, :cond_3

    .line 3265
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3266
    iget-wide v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    goto :goto_2

    .line 3267
    :cond_3
    if-ne v1, v2, :cond_4

    .line 3269
    nop

    .line 3270
    goto/16 :goto_1a

    .line 3268
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3271
    :cond_5
    if-nez v6, :cond_3e

    .line 3272
    nop

    .line 3273
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjy;

    .line 3274
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3275
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 3276
    :goto_3
    if-ge v1, v5, :cond_6

    .line 3277
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3278
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_6

    .line 3279
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3280
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 3281
    goto :goto_3

    .line 3282
    :cond_6
    nop

    .line 3283
    goto/16 :goto_1a

    .line 3234
    :pswitch_2
    if-ne v6, v10, :cond_9

    .line 3235
    nop

    .line 3236
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjd;

    .line 3237
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3238
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v2, v1

    .line 3239
    :goto_4
    if-ge v1, v2, :cond_7

    .line 3240
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3241
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    goto :goto_4

    .line 3242
    :cond_7
    if-ne v1, v2, :cond_8

    .line 3244
    nop

    .line 3245
    goto/16 :goto_1a

    .line 3243
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3246
    :cond_9
    if-nez v6, :cond_3e

    .line 3247
    nop

    .line 3248
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjd;

    .line 3249
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3250
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 3251
    :goto_5
    if-ge v1, v5, :cond_a

    .line 3252
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3253
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_a

    .line 3254
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3255
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 3256
    goto :goto_5

    .line 3257
    :cond_a
    nop

    .line 3258
    goto/16 :goto_1a

    .line 3222
    :pswitch_3
    if-ne v6, v10, :cond_b

    .line 3223
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    goto :goto_6

    .line 3224
    :cond_b
    if-nez v6, :cond_3e

    .line 3225
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3226
    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    .line 3227
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzlx;->zza()Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    if-ne v3, v4, :cond_c

    .line 3228
    const/4 v3, 0x0

    .line 3229
    :cond_c
    nop

    .line 3230
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    .line 3231
    move/from16 v6, p6

    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/zzlx;

    .line 3232
    if-eqz v3, :cond_d

    .line 3233
    iput-object v3, v1, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    .line 3300
    :cond_d
    move v1, v2

    goto/16 :goto_1a

    .line 3193
    :pswitch_4
    if-ne v6, v10, :cond_3e

    .line 3194
    nop

    .line 3195
    nop

    .line 3196
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3197
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3198
    if-ltz v4, :cond_14

    .line 3200
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_13

    .line 3202
    if-nez v4, :cond_e

    .line 3203
    sget-object v4, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3204
    :cond_e
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/zzht;->zza([BII)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3205
    add-int/2addr v1, v4

    .line 3206
    :goto_7
    if-ge v1, v5, :cond_12

    .line 3207
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3208
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_12

    .line 3209
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3210
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3211
    if-ltz v4, :cond_11

    .line 3213
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_10

    .line 3215
    if-nez v4, :cond_f

    .line 3216
    sget-object v4, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v11, v4}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 3217
    :cond_f
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/zzht;->zza([BII)Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3218
    add-int/2addr v1, v4

    .line 3219
    goto :goto_7

    .line 3214
    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3212
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3220
    :cond_12
    nop

    .line 3221
    goto/16 :goto_1a

    .line 3201
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3199
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3189
    :pswitch_5
    if-ne v6, v10, :cond_3e

    .line 3190
    nop

    .line 3191
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 3192
    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    goto/16 :goto_1a

    .line 3131
    :pswitch_6
    if-ne v6, v10, :cond_3e

    .line 3132
    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    if-nez v6, :cond_1a

    .line 3133
    nop

    .line 3134
    nop

    .line 3135
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3136
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3137
    if-ltz v6, :cond_19

    .line 3139
    if-nez v6, :cond_15

    .line 3140
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3141
    :cond_15
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3142
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3143
    add-int/2addr v4, v6

    .line 3144
    :goto_8
    if-ge v4, v5, :cond_18

    .line 3145
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v6

    .line 3146
    iget v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v8, :cond_18

    .line 3147
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3148
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3149
    if-ltz v6, :cond_17

    .line 3151
    if-nez v6, :cond_16

    .line 3152
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 3153
    :cond_16
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3154
    invoke-interface {v11, v8}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3155
    add-int/2addr v4, v6

    .line 3156
    goto :goto_8

    .line 3150
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3157
    :cond_18
    nop

    .line 3158
    move v1, v4

    goto/16 :goto_1a

    .line 3138
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3159
    :cond_1a
    nop

    .line 3160
    nop

    .line 3161
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3162
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3163
    if-ltz v6, :cond_21

    .line 3165
    if-nez v6, :cond_1b

    .line 3166
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3167
    :cond_1b
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/vision/zzmd;->zza([BII)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 3169
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3170
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3171
    move v4, v8

    .line 3172
    :goto_9
    if-ge v4, v5, :cond_1f

    .line 3173
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v6

    .line 3174
    iget v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v8, :cond_1f

    .line 3175
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3176
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3177
    if-ltz v6, :cond_1e

    .line 3179
    if-nez v6, :cond_1c

    .line 3180
    invoke-interface {v11, v1}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3181
    :cond_1c
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/vision/zzmd;->zza([BII)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 3183
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 3184
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/vision/zzjl;->add(Ljava/lang/Object;)Z

    .line 3185
    nop

    .line 3186
    move v4, v8

    goto :goto_9

    .line 3182
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzh()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3178
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3187
    :cond_1f
    nop

    .line 3188
    move v1, v4

    goto/16 :goto_1a

    .line 3168
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzh()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3164
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzb()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3106
    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v10, :cond_25

    .line 3107
    nop

    .line 3108
    check-cast v11, Lcom/google/android/gms/internal/vision/zzhr;

    .line 3109
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3110
    iget v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v4, v2

    .line 3111
    :goto_a
    if-ge v2, v4, :cond_23

    .line 3112
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3113
    iget-wide v5, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_22

    const/4 v5, 0x1

    goto :goto_b

    :cond_22
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/vision/zzhr;->zza(Z)V

    goto :goto_a

    .line 3114
    :cond_23
    if-ne v2, v4, :cond_24

    .line 3116
    nop

    .line 3117
    move v1, v2

    goto/16 :goto_1a

    .line 3115
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3118
    :cond_25
    if-nez v6, :cond_3e

    .line 3119
    nop

    .line 3120
    check-cast v11, Lcom/google/android/gms/internal/vision/zzhr;

    .line 3121
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3122
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_26

    const/4 v6, 0x1

    goto :goto_c

    :cond_26
    const/4 v6, 0x0

    :goto_c
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/vision/zzhr;->zza(Z)V

    .line 3123
    :goto_d
    if-ge v4, v5, :cond_28

    .line 3124
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v6

    .line 3125
    iget v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v8, :cond_28

    .line 3126
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3127
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_27

    const/4 v6, 0x1

    goto :goto_e

    :cond_27
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/vision/zzhr;->zza(Z)V

    .line 3128
    goto :goto_d

    .line 3129
    :cond_28
    nop

    .line 3130
    move v1, v4

    goto/16 :goto_1a

    .line 3081
    :pswitch_8
    if-ne v6, v10, :cond_2b

    .line 3082
    nop

    .line 3083
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjd;

    .line 3084
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3085
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v2, v1

    .line 3086
    :goto_f
    if-ge v1, v2, :cond_29

    .line 3087
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 3088
    add-int/lit8 v1, v1, 0x4

    goto :goto_f

    .line 3089
    :cond_29
    if-ne v1, v2, :cond_2a

    .line 3091
    nop

    .line 3092
    goto/16 :goto_1a

    .line 3090
    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3093
    :cond_2b
    if-ne v6, v9, :cond_3e

    .line 3094
    nop

    .line 3095
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjd;

    .line 3096
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 3097
    add-int/lit8 v1, v4, 0x4

    .line 3098
    :goto_10
    if-ge v1, v5, :cond_2c

    .line 3099
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3100
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_2c

    .line 3101
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzjd;->zzc(I)V

    .line 3102
    add-int/lit8 v1, v4, 0x4

    .line 3103
    goto :goto_10

    .line 3104
    :cond_2c
    nop

    .line 3105
    goto/16 :goto_1a

    .line 3056
    :pswitch_9
    if-ne v6, v10, :cond_2f

    .line 3057
    nop

    .line 3058
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjy;

    .line 3059
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3060
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v2, v1

    .line 3061
    :goto_11
    if-ge v1, v2, :cond_2d

    .line 3062
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 3063
    add-int/lit8 v1, v1, 0x8

    goto :goto_11

    .line 3064
    :cond_2d
    if-ne v1, v2, :cond_2e

    .line 3066
    nop

    .line 3067
    goto/16 :goto_1a

    .line 3065
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3068
    :cond_2f
    if-ne v6, v13, :cond_3e

    .line 3069
    nop

    .line 3070
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjy;

    .line 3071
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 3072
    add-int/lit8 v1, v4, 0x8

    .line 3073
    :goto_12
    if-ge v1, v5, :cond_30

    .line 3074
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3075
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_30

    .line 3076
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 3077
    add-int/lit8 v1, v4, 0x8

    .line 3078
    goto :goto_12

    .line 3079
    :cond_30
    nop

    .line 3080
    goto/16 :goto_1a

    .line 3052
    :pswitch_a
    if-ne v6, v10, :cond_31

    .line 3053
    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    goto/16 :goto_1a

    .line 3054
    :cond_31
    if-nez v6, :cond_3e

    .line 3055
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    goto/16 :goto_1a

    .line 3027
    :pswitch_b
    if-ne v6, v10, :cond_34

    .line 3028
    nop

    .line 3029
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjy;

    .line 3030
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3031
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v2, v1

    .line 3032
    :goto_13
    if-ge v1, v2, :cond_32

    .line 3033
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3034
    iget-wide v4, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    goto :goto_13

    .line 3035
    :cond_32
    if-ne v1, v2, :cond_33

    .line 3037
    nop

    .line 3038
    goto/16 :goto_1a

    .line 3036
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3039
    :cond_34
    if-nez v6, :cond_3e

    .line 3040
    nop

    .line 3041
    check-cast v11, Lcom/google/android/gms/internal/vision/zzjy;

    .line 3042
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3043
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 3044
    :goto_14
    if-ge v1, v5, :cond_35

    .line 3045
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3046
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_35

    .line 3047
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3048
    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzjy;->zza(J)V

    .line 3049
    goto :goto_14

    .line 3050
    :cond_35
    nop

    .line 3051
    goto/16 :goto_1a

    .line 3002
    :pswitch_c
    if-ne v6, v10, :cond_38

    .line 3003
    nop

    .line 3004
    check-cast v11, Lcom/google/android/gms/internal/vision/zzja;

    .line 3005
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3006
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v2, v1

    .line 3007
    :goto_15
    if-ge v1, v2, :cond_36

    .line 3008
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/vision/zzja;->zza(F)V

    .line 3009
    add-int/lit8 v1, v1, 0x4

    goto :goto_15

    .line 3010
    :cond_36
    if-ne v1, v2, :cond_37

    .line 3012
    nop

    .line 3013
    goto/16 :goto_1a

    .line 3011
    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 3014
    :cond_38
    if-ne v6, v9, :cond_3e

    .line 3015
    nop

    .line 3016
    check-cast v11, Lcom/google/android/gms/internal/vision/zzja;

    .line 3017
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzja;->zza(F)V

    .line 3018
    add-int/lit8 v1, v4, 0x4

    .line 3019
    :goto_16
    if-ge v1, v5, :cond_39

    .line 3020
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 3021
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_39

    .line 3022
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zzja;->zza(F)V

    .line 3023
    add-int/lit8 v1, v4, 0x4

    .line 3024
    goto :goto_16

    .line 3025
    :cond_39
    nop

    .line 3026
    goto :goto_1a

    .line 2977
    :pswitch_d
    if-ne v6, v10, :cond_3c

    .line 2978
    nop

    .line 2979
    check-cast v11, Lcom/google/android/gms/internal/vision/zzin;

    .line 2980
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 2981
    iget v2, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    add-int/2addr v2, v1

    .line 2982
    :goto_17
    if-ge v1, v2, :cond_3a

    .line 2983
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/vision/zzin;->zza(D)V

    .line 2984
    add-int/lit8 v1, v1, 0x8

    goto :goto_17

    .line 2985
    :cond_3a
    if-ne v1, v2, :cond_3b

    .line 2987
    nop

    .line 2988
    goto :goto_1a

    .line 2986
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v1

    throw v1

    .line 2989
    :cond_3c
    if-ne v6, v13, :cond_3e

    .line 2990
    nop

    .line 2991
    check-cast v11, Lcom/google/android/gms/internal/vision/zzin;

    .line 2992
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzin;->zza(D)V

    .line 2993
    add-int/lit8 v1, v4, 0x8

    .line 2994
    :goto_18
    if-ge v1, v5, :cond_3d

    .line 2995
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v4

    .line 2996
    iget v6, v7, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    if-ne v2, v6, :cond_3d

    .line 2997
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/vision/zzin;->zza(D)V

    .line 2998
    add-int/lit8 v1, v4, 0x8

    .line 2999
    goto :goto_18

    .line 3000
    :cond_3d
    nop

    .line 3001
    goto :goto_1a

    .line 3300
    :cond_3e
    :goto_19
    move v1, v4

    :goto_1a
    return v1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzhn;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3301
    sget-object v0, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 3302
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/vision/zzko;->zzb(I)Ljava/lang/Object;

    move-result-object p5

    .line 3303
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3304
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zzd(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3305
    nop

    .line 3306
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/vision/zzkh;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3307
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3308
    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    .line 3309
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 3310
    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/vision/zzkh;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkf;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 3311
    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    .line 3312
    nop

    .line 3313
    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p3

    .line 3314
    iget p6, p8, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3315
    if-ltz p6, :cond_5

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_5

    .line 3317
    add-int/2addr p6, p3

    .line 3318
    iget-object p7, p1, Lcom/google/android/gms/internal/vision/zzkf;->zzb:Ljava/lang/Object;

    .line 3319
    iget-object v0, p1, Lcom/google/android/gms/internal/vision/zzkf;->zzd:Ljava/lang/Object;

    .line 3320
    :goto_0
    if-ge p3, p6, :cond_3

    .line 3321
    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    .line 3322
    if-gez p3, :cond_1

    .line 3323
    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v1

    .line 3324
    iget p3, p8, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    move v2, v1

    goto :goto_1

    .line 3322
    :cond_1
    move v2, v1

    .line 3325
    :goto_1
    ushr-int/lit8 v1, p3, 0x3

    .line 3326
    and-int/lit8 v3, p3, 0x7

    .line 3327
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 3333
    :pswitch_0
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzkf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzml;->zzb()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 3334
    iget-object v4, p1, Lcom/google/android/gms/internal/vision/zzkf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    iget-object p3, p1, Lcom/google/android/gms/internal/vision/zzkf;->zzd:Ljava/lang/Object;

    .line 3335
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 3336
    move-object v1, p2

    move v3, p4

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzko;->zza([BIILcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result p3

    .line 3337
    iget-object v0, p8, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3338
    goto :goto_0

    .line 3328
    :pswitch_1
    iget-object v1, p1, Lcom/google/android/gms/internal/vision/zzkf;->zza:Lcom/google/android/gms/internal/vision/zzml;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzml;->zzb()I

    move-result v1

    if-ne v3, v1, :cond_2

    .line 3329
    iget-object v4, p1, Lcom/google/android/gms/internal/vision/zzkf;->zza:Lcom/google/android/gms/internal/vision/zzml;

    .line 3330
    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/vision/zzko;->zza([BIILcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result p3

    .line 3331
    iget-object p7, p8, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3332
    goto :goto_0

    .line 3339
    :cond_2
    :goto_2
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p3

    .line 3340
    goto :goto_0

    .line 3341
    :cond_3
    if-ne p3, p6, :cond_4

    .line 3343
    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3344
    nop

    .line 3345
    return p6

    .line 3342
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

    throw p1

    .line 3316
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zza()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p1

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

.method private static zza([BIILcom/google/android/gms/internal/vision/zzml;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzhn;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/vision/zzml;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2932
    sget-object v0, Lcom/google/android/gms/internal/vision/zzkr;->zza:[I

    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    .line 2967
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2965
    :pswitch_0
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2966
    goto/16 :goto_1

    .line 2962
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2963
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2964
    goto/16 :goto_1

    .line 2959
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2960
    iget p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2961
    goto/16 :goto_1

    .line 2956
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object p3

    .line 2957
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2958
    goto :goto_1

    .line 2953
    :pswitch_4
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2954
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2955
    goto :goto_1

    .line 2950
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2951
    iget p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2952
    goto :goto_1

    .line 2947
    :pswitch_6
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2948
    add-int/lit8 p0, p1, 0x4

    .line 2949
    goto :goto_1

    .line 2944
    :pswitch_7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2945
    add-int/lit8 p0, p1, 0x8

    .line 2946
    goto :goto_1

    .line 2941
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2942
    add-int/lit8 p0, p1, 0x4

    .line 2943
    goto :goto_1

    .line 2938
    :pswitch_9
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2939
    add-int/lit8 p0, p1, 0x8

    .line 2940
    goto :goto_1

    .line 2936
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zze([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2937
    goto :goto_1

    .line 2933
    :pswitch_b
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result p0

    .line 2934
    iget-wide p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 2935
    nop

    .line 2968
    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzki;Lcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)Lcom/google/android/gms/internal/vision/zzko;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzki;",
            "Lcom/google/android/gms/internal/vision/zzks;",
            "Lcom/google/android/gms/internal/vision/zzju;",
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "**>;",
            "Lcom/google/android/gms/internal/vision/zziq<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzkh;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzko<",
            "TT;>;"
        }
    .end annotation

    .line 20
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/zzla;

    if-eqz v1, :cond_34

    .line 21
    check-cast v0, Lcom/google/android/gms/internal/vision/zzla;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzla;->zza()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/vision/zzkz;->zzb:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzla;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 25
    nop

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 27
    const v6, 0xd800

    if-lt v5, v6, :cond_1

    .line 28
    nop

    .line 29
    const/4 v5, 0x1

    .line 30
    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    .line 31
    nop

    .line 32
    move v5, v7

    goto :goto_1

    .line 27
    :cond_1
    const/4 v7, 0x1

    .line 33
    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 34
    if-lt v7, v6, :cond_4

    .line 35
    and-int/lit16 v7, v7, 0x1fff

    .line 36
    const/16 v9, 0xd

    .line 37
    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    .line 38
    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    .line 39
    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    .line 40
    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    .line 41
    :cond_4
    nop

    .line 42
    if-nez v7, :cond_5

    .line 43
    nop

    .line 44
    nop

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    sget-object v7, Lcom/google/android/gms/internal/vision/zzko;->zza:[I

    .line 50
    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_b

    .line 51
    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 52
    if-lt v5, v6, :cond_7

    .line 53
    and-int/lit16 v5, v5, 0x1fff

    .line 54
    const/16 v9, 0xd

    .line 55
    :goto_3
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    .line 56
    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    .line 57
    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    .line 58
    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    .line 59
    :cond_7
    nop

    .line 60
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 61
    if-lt v7, v6, :cond_9

    .line 62
    and-int/lit16 v7, v7, 0x1fff

    .line 63
    const/16 v10, 0xd

    .line 64
    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    .line 65
    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    .line 66
    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    .line 67
    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    .line 68
    :cond_9
    nop

    .line 69
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 70
    if-lt v9, v6, :cond_b

    .line 71
    and-int/lit16 v9, v9, 0x1fff

    .line 72
    const/16 v12, 0xd

    .line 73
    :goto_5
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    .line 74
    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    .line 75
    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    .line 76
    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    .line 77
    :cond_b
    nop

    .line 78
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 79
    if-lt v10, v6, :cond_d

    .line 80
    and-int/lit16 v10, v10, 0x1fff

    .line 81
    const/16 v13, 0xd

    .line 82
    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    .line 83
    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    .line 84
    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    .line 85
    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    .line 86
    :cond_d
    nop

    .line 87
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 88
    if-lt v12, v6, :cond_f

    .line 89
    and-int/lit16 v12, v12, 0x1fff

    .line 90
    const/16 v14, 0xd

    .line 91
    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    .line 92
    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    .line 93
    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    .line 94
    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    .line 95
    :cond_f
    nop

    .line 96
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 97
    if-lt v13, v6, :cond_11

    .line 98
    and-int/lit16 v13, v13, 0x1fff

    .line 99
    const/16 v15, 0xd

    .line 100
    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    .line 101
    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    .line 102
    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    .line 103
    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    .line 104
    :cond_11
    nop

    .line 105
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 106
    if-lt v14, v6, :cond_13

    .line 107
    and-int/lit16 v14, v14, 0x1fff

    .line 108
    const/16 v16, 0xd

    .line 109
    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    .line 110
    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    .line 111
    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    .line 112
    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    .line 113
    :cond_13
    nop

    .line 114
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 115
    if-lt v15, v6, :cond_15

    .line 116
    and-int/lit16 v15, v15, 0x1fff

    .line 117
    move/from16 v3, v16

    const/16 v16, 0xd

    .line 118
    :goto_a
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    .line 119
    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    .line 120
    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    .line 121
    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    .line 122
    :cond_15
    nop

    .line 123
    add-int v3, v15, v13

    add-int/2addr v3, v14

    new-array v3, v3, [I

    .line 124
    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v3

    move v3, v5

    move/from16 v5, v16

    .line 125
    :goto_b
    sget-object v8, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzla;->zze()[Ljava/lang/Object;

    move-result-object v16

    .line 127
    nop

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzla;->zzc()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 129
    mul-int/lit8 v4, v12, 0x3

    new-array v4, v4, [I

    .line 130
    const/16 v17, 0x1

    shl-int/lit8 v12, v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 131
    nop

    .line 132
    add-int v19, v15, v13

    .line 133
    move/from16 v21, v15

    move/from16 v22, v19

    const/4 v13, 0x0

    const/16 v20, 0x0

    .line 134
    :goto_c
    if-ge v5, v2, :cond_33

    .line 135
    add-int/lit8 v23, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 136
    move/from16 v24, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_17

    .line 137
    and-int/lit16 v5, v5, 0x1fff

    .line 138
    move/from16 v2, v23

    const/16 v23, 0xd

    .line 139
    :goto_d
    add-int/lit8 v25, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v26, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_16

    .line 140
    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v5, v2

    .line 141
    add-int/lit8 v23, v23, 0xd

    move/from16 v2, v25

    move/from16 v15, v26

    goto :goto_d

    .line 142
    :cond_16
    shl-int v2, v2, v23

    or-int/2addr v5, v2

    move/from16 v2, v25

    goto :goto_e

    .line 136
    :cond_17
    move/from16 v26, v15

    move/from16 v2, v23

    .line 143
    :goto_e
    nop

    .line 144
    add-int/lit8 v15, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 145
    move/from16 v23, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_19

    .line 146
    and-int/lit16 v2, v2, 0x1fff

    .line 147
    move/from16 v15, v23

    const/16 v23, 0xd

    .line 148
    :goto_f
    add-int/lit8 v25, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v27, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_18

    .line 149
    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v23

    or-int/2addr v2, v10

    .line 150
    add-int/lit8 v23, v23, 0xd

    move/from16 v15, v25

    move/from16 v10, v27

    goto :goto_f

    .line 151
    :cond_18
    shl-int v10, v15, v23

    or-int/2addr v2, v10

    move/from16 v15, v25

    goto :goto_10

    .line 145
    :cond_19
    move/from16 v27, v10

    move/from16 v15, v23

    .line 152
    :goto_10
    nop

    .line 153
    and-int/lit16 v10, v2, 0xff

    .line 154
    move/from16 v23, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    .line 155
    add-int/lit8 v9, v13, 0x1

    aput v20, v14, v13

    move v13, v9

    .line 156
    :cond_1a
    const/16 v9, 0x33

    move/from16 v28, v13

    if-lt v10, v9, :cond_22

    .line 157
    add-int/lit8 v9, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 158
    const v13, 0xd800

    if-lt v15, v13, :cond_1c

    .line 159
    and-int/lit16 v15, v15, 0x1fff

    .line 160
    const/16 v29, 0xd

    .line 161
    :goto_11
    add-int/lit8 v30, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v13, :cond_1b

    .line 162
    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v29

    or-int/2addr v15, v9

    .line 163
    add-int/lit8 v29, v29, 0xd

    move/from16 v9, v30

    const v13, 0xd800

    goto :goto_11

    .line 164
    :cond_1b
    shl-int v9, v9, v29

    or-int/2addr v15, v9

    move/from16 v9, v30

    .line 165
    :cond_1c
    nop

    .line 166
    add-int/lit8 v13, v10, -0x33

    .line 167
    move/from16 v29, v9

    const/16 v9, 0x9

    if-eq v13, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v13, v9, :cond_1d

    goto :goto_12

    .line 169
    :cond_1d
    const/16 v9, 0xc

    if-ne v13, v9, :cond_1e

    .line 170
    if-nez v11, :cond_1e

    .line 171
    div-int/lit8 v9, v20, 0x3

    const/4 v13, 0x1

    shl-int/2addr v9, v13

    add-int/2addr v9, v13

    add-int/lit8 v13, v7, 0x1

    aget-object v7, v16, v7

    aput-object v7, v12, v9

    move v7, v13

    const/4 v13, 0x1

    goto :goto_13

    .line 172
    :cond_1e
    const/4 v13, 0x1

    goto :goto_13

    .line 168
    :cond_1f
    :goto_12
    div-int/lit8 v9, v20, 0x3

    const/4 v13, 0x1

    shl-int/2addr v9, v13

    add-int/2addr v9, v13

    add-int/lit8 v17, v7, 0x1

    aget-object v7, v16, v7

    aput-object v7, v12, v9

    move/from16 v7, v17

    .line 172
    :goto_13
    shl-int/lit8 v9, v15, 0x1

    .line 173
    aget-object v13, v16, v9

    .line 174
    instance-of v15, v13, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_20

    .line 175
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 176
    :cond_20
    check-cast v13, Ljava/lang/String;

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 177
    aput-object v13, v16, v9

    .line 178
    :goto_14
    move-object/from16 v30, v4

    move/from16 v31, v5

    invoke-virtual {v8, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 179
    add-int/lit8 v9, v9, 0x1

    .line 180
    aget-object v4, v16, v9

    .line 181
    instance-of v13, v4, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_21

    .line 182
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 183
    :cond_21
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 184
    aput-object v4, v16, v9

    .line 185
    :goto_15
    move v9, v5

    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 186
    nop

    .line 187
    move/from16 v17, v3

    move v4, v5

    move v5, v9

    move/from16 v15, v29

    const/4 v13, 0x0

    goto/16 :goto_1f

    .line 188
    :cond_22
    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v4, v7, 0x1

    aget-object v5, v16, v7

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 189
    const/16 v7, 0x31

    const/16 v9, 0x9

    if-eq v10, v9, :cond_29

    const/16 v9, 0x11

    if-ne v10, v9, :cond_23

    const/4 v13, 0x1

    goto :goto_18

    .line 191
    :cond_23
    const/16 v9, 0x1b

    if-eq v10, v9, :cond_28

    if-ne v10, v7, :cond_24

    goto :goto_17

    .line 193
    :cond_24
    const/16 v9, 0xc

    if-eq v10, v9, :cond_27

    const/16 v9, 0x1e

    if-eq v10, v9, :cond_27

    const/16 v9, 0x2c

    if-ne v10, v9, :cond_25

    goto :goto_16

    .line 196
    :cond_25
    const/16 v9, 0x32

    if-ne v10, v9, :cond_2a

    .line 197
    add-int/lit8 v9, v21, 0x1

    aput v20, v14, v21

    .line 198
    div-int/lit8 v13, v20, 0x3

    const/16 v17, 0x1

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v21, v4, 0x1

    aget-object v4, v16, v4

    aput-object v4, v12, v13

    .line 199
    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_26

    .line 200
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v4, v21, 0x1

    aget-object v21, v16, v21

    aput-object v21, v12, v13

    move/from16 v21, v9

    goto :goto_19

    .line 199
    :cond_26
    move/from16 v4, v21

    move/from16 v21, v9

    goto :goto_19

    .line 194
    :cond_27
    :goto_16
    if-nez v11, :cond_2a

    .line 195
    div-int/lit8 v9, v20, 0x3

    const/4 v13, 0x1

    shl-int/2addr v9, v13

    add-int/2addr v9, v13

    add-int/lit8 v13, v4, 0x1

    aget-object v4, v16, v4

    aput-object v4, v12, v9

    move v4, v13

    goto :goto_19

    .line 192
    :cond_28
    :goto_17
    div-int/lit8 v9, v20, 0x3

    const/4 v13, 0x1

    shl-int/2addr v9, v13

    add-int/2addr v9, v13

    add-int/lit8 v17, v4, 0x1

    aget-object v4, v16, v4

    aput-object v4, v12, v9

    move/from16 v4, v17

    goto :goto_19

    .line 189
    :cond_29
    const/4 v13, 0x1

    .line 190
    :goto_18
    div-int/lit8 v9, v20, 0x3

    shl-int/2addr v9, v13

    add-int/2addr v9, v13

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v12, v9

    .line 201
    :cond_2a
    :goto_19
    move v9, v4

    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    .line 202
    and-int/lit16 v4, v2, 0x1000

    const/16 v13, 0x1000

    if-ne v4, v13, :cond_2f

    .line 203
    const/16 v4, 0x11

    if-gt v10, v4, :cond_2e

    .line 204
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 205
    const v15, 0xd800

    if-lt v13, v15, :cond_2c

    .line 206
    and-int/lit16 v13, v13, 0x1fff

    .line 207
    const/16 v18, 0xd

    .line 208
    :goto_1a
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v15, :cond_2b

    .line 209
    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v18

    or-int/2addr v13, v4

    .line 210
    add-int/lit8 v18, v18, 0xd

    move/from16 v4, v25

    goto :goto_1a

    .line 211
    :cond_2b
    shl-int v4, v4, v18

    or-int/2addr v13, v4

    goto :goto_1b

    .line 205
    :cond_2c
    move/from16 v25, v4

    .line 212
    :goto_1b
    nop

    .line 213
    const/4 v4, 0x1

    shl-int/lit8 v17, v3, 0x1

    div-int/lit8 v18, v13, 0x20

    add-int v17, v17, v18

    .line 214
    aget-object v4, v16, v17

    .line 215
    instance-of v15, v4, Ljava/lang/reflect/Field;

    if-eqz v15, :cond_2d

    .line 216
    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_1c

    .line 217
    :cond_2d
    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 218
    aput-object v4, v16, v17

    .line 219
    :goto_1c
    move/from16 v17, v3

    invoke-virtual {v8, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 220
    rem-int/lit8 v13, v13, 0x20

    .line 221
    move/from16 v15, v25

    const v3, 0xd800

    goto :goto_1e

    .line 203
    :cond_2e
    move/from16 v17, v3

    const v3, 0xd800

    goto :goto_1d

    .line 202
    :cond_2f
    move/from16 v17, v3

    const v3, 0xd800

    .line 222
    :goto_1d
    nop

    .line 223
    const v4, 0xfffff

    const/4 v13, 0x0

    .line 224
    :goto_1e
    const/16 v3, 0x12

    if-lt v10, v3, :cond_30

    if-gt v10, v7, :cond_30

    .line 225
    add-int/lit8 v3, v22, 0x1

    aput v5, v14, v22

    move/from16 v22, v3

    move v7, v9

    goto :goto_1f

    .line 226
    :cond_30
    move v7, v9

    :goto_1f
    add-int/lit8 v3, v20, 0x1

    aput v31, v30, v20

    .line 227
    add-int/lit8 v9, v3, 0x1

    .line 228
    move-object/from16 v20, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_31

    const/high16 v1, 0x20000000

    goto :goto_20

    :cond_31
    const/4 v1, 0x0

    .line 229
    :goto_20
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_21

    :cond_32
    const/4 v2, 0x0

    :goto_21
    or-int/2addr v1, v2

    shl-int/lit8 v2, v10, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v5

    aput v1, v30, v3

    .line 230
    add-int/lit8 v1, v9, 0x1

    shl-int/lit8 v2, v13, 0x14

    or-int/2addr v2, v4

    aput v2, v30, v9

    .line 231
    move v5, v15

    move/from16 v3, v17

    move/from16 v9, v23

    move/from16 v2, v24

    move/from16 v15, v26

    move/from16 v10, v27

    move/from16 v13, v28

    move-object/from16 v4, v30

    move-object/from16 v32, v20

    move/from16 v20, v1

    move-object/from16 v1, v32

    goto/16 :goto_c

    .line 232
    :cond_33
    move-object/from16 v30, v4

    move/from16 v23, v9

    move/from16 v27, v10

    move/from16 v26, v15

    new-instance v1, Lcom/google/android/gms/internal/vision/zzko;

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzla;->zzc()Lcom/google/android/gms/internal/vision/zzkk;

    move-result-object v10

    const/4 v0, 0x0

    move-object v5, v1

    move-object/from16 v6, v30

    move-object v7, v12

    move/from16 v8, v23

    move/from16 v9, v27

    move v12, v0

    move-object v13, v14

    move/from16 v14, v26

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/vision/zzko;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/zzkk;ZZ[IIILcom/google/android/gms/internal/vision/zzks;Lcom/google/android/gms/internal/vision/zzju;Lcom/google/android/gms/internal/vision/zzlu;Lcom/google/android/gms/internal/vision/zziq;Lcom/google/android/gms/internal/vision/zzkh;)V

    .line 234
    return-object v1

    .line 235
    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/vision/zzlr;

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzlr;->zza()I

    sget v0, Lcom/google/android/gms/internal/vision/zzkz;->zzb:I

    .line 237
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    goto :goto_23

    :goto_22
    throw v0

    :goto_23
    goto :goto_22
.end method

.method private final zza(I)Lcom/google/android/gms/internal/vision/zzlc;
    .locals 3

    .line 3440
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3441
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzd:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzlc;

    .line 3442
    if-eqz v0, :cond_0

    .line 3443
    return-object v0

    .line 3444
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzd:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3445
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzd:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 3446
    return-object v0
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/vision/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzjg;",
            "TUB;",
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3915
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 3916
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzko;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzkh;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkf;

    move-result-object p1

    .line 3917
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3918
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3919
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/vision/zzjg;->zza(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3920
    if-nez p5, :cond_0

    .line 3921
    invoke-virtual {p6}, Lcom/google/android/gms/internal/vision/zzlu;->zza()Ljava/lang/Object;

    move-result-object p5

    .line 3922
    :cond_0
    nop

    .line 3923
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzkc;->zza(Lcom/google/android/gms/internal/vision/zzkf;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 3924
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzht;->zzc(I)Lcom/google/android/gms/internal/vision/zzib;

    move-result-object v1

    .line 3925
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzib;->zzb()Lcom/google/android/gms/internal/vision/zzii;

    move-result-object v2

    .line 3926
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/vision/zzkc;->zza(Lcom/google/android/gms/internal/vision/zzii;Lcom/google/android/gms/internal/vision/zzkf;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3927
    nop

    .line 3930
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzib;->zza()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/vision/zzlu;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzht;)V

    .line 3931
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3928
    :catch_0
    move-exception p1

    .line 3929
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 3932
    :cond_1
    :goto_1
    goto :goto_0

    .line 3933
    :cond_2
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 3899
    nop

    .line 3900
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v3, v0, p2

    .line 3901
    nop

    .line 3902
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v0

    .line 3903
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 3904
    nop

    .line 3905
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 3906
    if-nez p1, :cond_0

    .line 3907
    return-object p3

    .line 3908
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v5

    .line 3909
    if-nez v5, :cond_1

    .line 3910
    return-object p3

    .line 3911
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzkh;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 3912
    nop

    .line 3913
    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/vision/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object p1

    .line 3914
    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 241
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    return-object v3

    .line 244
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found. Known fields are "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static zza(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1160
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4004
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4005
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/String;)V

    return-void

    .line 4006
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    .line 4007
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzlu<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/vision/zzmr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2412
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzlu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 2413
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzmr;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzmr;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2406
    if-eqz p3, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 2408
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/vision/zzko;->zzb(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/vision/zzkh;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkf;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 2409
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/vision/zzkh;->zzc(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2410
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzkf;Ljava/util/Map;)V

    .line 2411
    :cond_0
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzld;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4008
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzko;->zzf(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_0

    .line 4009
    nop

    .line 4010
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 4011
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzld;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 4012
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzi:Z

    if-eqz v0, :cond_1

    .line 4013
    nop

    .line 4014
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 4015
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzld;->zzl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 4016
    :cond_1
    nop

    .line 4017
    and-int/2addr p2, v1

    int-to-long v0, p2

    .line 4018
    invoke-interface {p3}, Lcom/google/android/gms/internal/vision/zzld;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4019
    return-void
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v0

    .line 540
    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 541
    nop

    .line 542
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    return-void

    .line 544
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 545
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 546
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 547
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 548
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 549
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 550
    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 551
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 552
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 553
    :cond_2
    return-void
.end method

.method private final zza(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 4032
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzko;->zze(I)I

    move-result v0

    .line 4033
    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    .line 4034
    const-wide/32 v4, 0xfffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_14

    .line 4035
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result p2

    .line 4036
    nop

    .line 4037
    and-int v0, p2, v1

    int-to-long v0, v0

    .line 4038
    nop

    .line 4039
    nop

    .line 4040
    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    .line 4041
    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 4065
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4064
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v7

    :cond_0
    return v6

    .line 4063
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v7

    :cond_1
    return v6

    .line 4062
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v7

    :cond_2
    return v6

    .line 4061
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v7

    :cond_3
    return v6

    .line 4060
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v7

    :cond_4
    return v6

    .line 4059
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v7

    :cond_5
    return v6

    .line 4058
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v7

    :cond_6
    return v6

    .line 4057
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/zzht;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v7

    :cond_7
    return v6

    .line 4056
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v7

    :cond_8
    return v6

    .line 4050
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 4051
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 4052
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v7

    :cond_9
    return v6

    .line 4053
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz p2, :cond_c

    .line 4054
    sget-object p2, Lcom/google/android/gms/internal/vision/zzht;->zza:Lcom/google/android/gms/internal/vision/zzht;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/zzht;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v7

    :cond_b
    return v6

    .line 4055
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4049
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 4048
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v7

    :cond_d
    return v6

    .line 4047
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v7

    :cond_e
    return v6

    .line 4046
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v7

    :cond_f
    return v6

    .line 4045
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v7

    :cond_10
    return v6

    .line 4044
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v7

    :cond_11
    return v6

    .line 4043
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v7

    :cond_12
    return v6

    .line 4042
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v7

    :cond_13
    return v6

    .line 4066
    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v7, p2

    .line 4067
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v7

    :cond_15
    return v6

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 4077
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzko;->zze(I)I

    move-result p3

    .line 4078
    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    .line 4029
    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 4030
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    .line 4031
    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzlc;)Z
    .locals 2

    .line 4000
    nop

    .line 4001
    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 4002
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 4003
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/zzlc;->zzd(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static zzb(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 4023
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final zzb(II)I
    .locals 4

    .line 4088
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 4089
    :goto_0
    if-gt p2, v0, :cond_2

    .line 4090
    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    .line 4091
    mul-int/lit8 v2, v1, 0x3

    .line 4092
    nop

    .line 4093
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v3, v3, v2

    .line 4094
    nop

    .line 4095
    if-ne p1, v3, :cond_0

    .line 4096
    return v2

    .line 4097
    :cond_0
    if-ge p1, v3, :cond_1

    .line 4098
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 4099
    :cond_1
    add-int/lit8 p2, v1, 0x1

    .line 4100
    goto :goto_0

    .line 4101
    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private final zzb(I)Ljava/lang/Object;
    .locals 1

    .line 3447
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzb(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 4068
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzko;->zze(I)I

    move-result p2

    .line 4069
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    .line 4070
    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4071
    return-void

    .line 4072
    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    .line 4073
    nop

    .line 4074
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 4075
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 4076
    return-void
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 4079
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzko;->zze(I)I

    move-result p3

    .line 4080
    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 4081
    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzmr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2080
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2081
    nop

    .line 2082
    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v3, :cond_0

    .line 2083
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object v3

    .line 2084
    nop

    .line 2085
    iget-object v5, v3, Lcom/google/android/gms/internal/vision/zziu;->zza:Lcom/google/android/gms/internal/vision/zzlh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vision/zzlh;->isEmpty()Z

    move-result v5

    .line 2086
    if-nez v5, :cond_0

    .line 2087
    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zziu;->zzd()Ljava/util/Iterator;

    move-result-object v3

    .line 2088
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    .line 2089
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    nop

    .line 2090
    nop

    .line 2091
    iget-object v6, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v6, v6

    .line 2092
    sget-object v7, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 2093
    const v8, 0xfffff

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_18

    .line 2094
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v13

    .line 2095
    nop

    .line 2096
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v14, v14, v10

    .line 2097
    nop

    .line 2098
    nop

    .line 2099
    const/high16 v15, 0xff00000

    and-int/2addr v15, v13

    ushr-int/lit8 v15, v15, 0x14

    .line 2100
    nop

    .line 2101
    nop

    .line 2102
    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    .line 2103
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v16, v10, 0x2

    aget v4, v4, v16

    .line 2104
    and-int v9, v4, v8

    .line 2105
    if-eq v9, v11, :cond_1

    .line 2106
    nop

    .line 2107
    int-to-long v11, v9

    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    .line 2108
    :cond_1
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_2

    .line 2102
    :cond_2
    const/4 v4, 0x0

    .line 2109
    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v14, :cond_4

    .line 2110
    iget-object v9, v0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzmr;Ljava/util/Map$Entry;)V

    .line 2111
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 2112
    :cond_4
    nop

    .line 2113
    and-int v9, v13, v8

    int-to-long v8, v9

    .line 2114
    nop

    .line 2115
    packed-switch v15, :pswitch_data_0

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2396
    :pswitch_0
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2397
    nop

    .line 2398
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    .line 2399
    invoke-interface {v2, v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2396
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2394
    :pswitch_1
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2395
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zze(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2394
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2392
    :pswitch_2
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2393
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzf(II)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2392
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2390
    :pswitch_3
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2391
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2390
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2388
    :pswitch_4
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2389
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(II)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2388
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2386
    :pswitch_5
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2387
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(II)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2386
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2384
    :pswitch_6
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2385
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zze(II)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2384
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2382
    :pswitch_7
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2383
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2382
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2378
    :pswitch_8
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2379
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2380
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 2381
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2378
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2376
    :pswitch_9
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2377
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2376
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2374
    :pswitch_a
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2375
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzf(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IZ)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2374
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2372
    :pswitch_b
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2373
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(II)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2372
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2370
    :pswitch_c
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2371
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2370
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2368
    :pswitch_d
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2369
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2368
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2366
    :pswitch_e
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2367
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2366
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2364
    :pswitch_f
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2365
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IJ)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2364
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2362
    :pswitch_10
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2363
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IF)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2362
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2360
    :pswitch_11
    invoke-direct {v0, v1, v14, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2361
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ID)V

    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2360
    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2358
    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzmr;ILjava/lang/Object;I)V

    .line 2359
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2350
    :pswitch_13
    nop

    .line 2351
    nop

    .line 2352
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2353
    nop

    .line 2354
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2355
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    .line 2356
    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 2357
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2344
    :pswitch_14
    nop

    .line 2345
    nop

    .line 2346
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2347
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2348
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2349
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2338
    :pswitch_15
    nop

    .line 2339
    nop

    .line 2340
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2341
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2342
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2343
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2332
    :pswitch_16
    nop

    .line 2333
    nop

    .line 2334
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2335
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2336
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2337
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2326
    :pswitch_17
    nop

    .line 2327
    nop

    .line 2328
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2329
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2330
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2331
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2320
    :pswitch_18
    nop

    .line 2321
    nop

    .line 2322
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2323
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2324
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2325
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2314
    :pswitch_19
    nop

    .line 2315
    nop

    .line 2316
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2317
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2318
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2319
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2308
    :pswitch_1a
    nop

    .line 2309
    nop

    .line 2310
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2311
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2312
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2313
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2302
    :pswitch_1b
    nop

    .line 2303
    nop

    .line 2304
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2305
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2306
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2307
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2296
    :pswitch_1c
    nop

    .line 2297
    nop

    .line 2298
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2299
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2300
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2301
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2290
    :pswitch_1d
    nop

    .line 2291
    nop

    .line 2292
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2293
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2294
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2295
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2284
    :pswitch_1e
    nop

    .line 2285
    nop

    .line 2286
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2287
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2288
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2289
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2278
    :pswitch_1f
    nop

    .line 2279
    nop

    .line 2280
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2281
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2282
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2283
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2272
    :pswitch_20
    nop

    .line 2273
    nop

    .line 2274
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2275
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2276
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2277
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2266
    :pswitch_21
    nop

    .line 2267
    nop

    .line 2268
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2269
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2270
    const/4 v9, 0x1

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2271
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2260
    :pswitch_22
    nop

    .line 2261
    nop

    .line 2262
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2263
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2264
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2265
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2254
    :pswitch_23
    nop

    .line 2255
    nop

    .line 2256
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2257
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2258
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2259
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2248
    :pswitch_24
    nop

    .line 2249
    nop

    .line 2250
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2251
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2252
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2253
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2242
    :pswitch_25
    nop

    .line 2243
    nop

    .line 2244
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2245
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2246
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2247
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2236
    :pswitch_26
    nop

    .line 2237
    nop

    .line 2238
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2239
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2240
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2241
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2230
    :pswitch_27
    nop

    .line 2231
    nop

    .line 2232
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2233
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2234
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2235
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2224
    :pswitch_28
    nop

    .line 2225
    nop

    .line 2226
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2227
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2228
    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 2229
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2216
    :pswitch_29
    nop

    .line 2217
    nop

    .line 2218
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2219
    nop

    .line 2220
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2221
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v9

    .line 2222
    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 2223
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2210
    :pswitch_2a
    nop

    .line 2211
    nop

    .line 2212
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2213
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2214
    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 2215
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2204
    :pswitch_2b
    nop

    .line 2205
    nop

    .line 2206
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2207
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2208
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2209
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2198
    :pswitch_2c
    nop

    .line 2199
    nop

    .line 2200
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2201
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2202
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2203
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2192
    :pswitch_2d
    nop

    .line 2193
    nop

    .line 2194
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2195
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2196
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2197
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2186
    :pswitch_2e
    nop

    .line 2187
    nop

    .line 2188
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2189
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2190
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2191
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2180
    :pswitch_2f
    nop

    .line 2181
    nop

    .line 2182
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2183
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2184
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2185
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2174
    :pswitch_30
    nop

    .line 2175
    nop

    .line 2176
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2177
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2178
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2179
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2168
    :pswitch_31
    nop

    .line 2169
    nop

    .line 2170
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2171
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2172
    const/4 v9, 0x0

    invoke-static {v4, v8, v2, v9}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2173
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2162
    :pswitch_32
    nop

    .line 2163
    nop

    .line 2164
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v10

    .line 2165
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2166
    const/4 v15, 0x0

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 2167
    goto/16 :goto_3

    .line 2158
    :pswitch_33
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2159
    nop

    .line 2160
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    .line 2161
    invoke-interface {v2, v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_3

    .line 2156
    :pswitch_34
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2157
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zze(IJ)V

    goto/16 :goto_3

    .line 2154
    :pswitch_35
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2155
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzf(II)V

    goto/16 :goto_3

    .line 2152
    :pswitch_36
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2153
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(IJ)V

    goto/16 :goto_3

    .line 2150
    :pswitch_37
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2151
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(II)V

    goto/16 :goto_3

    .line 2148
    :pswitch_38
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2149
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(II)V

    goto/16 :goto_3

    .line 2146
    :pswitch_39
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2147
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zze(II)V

    goto/16 :goto_3

    .line 2144
    :pswitch_3a
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2145
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzht;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_3

    .line 2140
    :pswitch_3b
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2141
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2142
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    invoke-interface {v2, v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 2143
    goto/16 :goto_3

    .line 2138
    :pswitch_3c
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2139
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto :goto_3

    .line 2134
    :pswitch_3d
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2135
    nop

    .line 2136
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result v4

    .line 2137
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IZ)V

    goto :goto_3

    .line 2132
    :pswitch_3e
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2133
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(II)V

    goto :goto_3

    .line 2130
    :pswitch_3f
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2131
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(IJ)V

    goto :goto_3

    .line 2128
    :pswitch_40
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2129
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    goto :goto_3

    .line 2126
    :pswitch_41
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2127
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(IJ)V

    goto :goto_3

    .line 2124
    :pswitch_42
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2125
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IJ)V

    goto :goto_3

    .line 2120
    :pswitch_43
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2121
    nop

    .line 2122
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result v4

    .line 2123
    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IF)V

    goto :goto_3

    .line 2116
    :pswitch_44
    const/4 v15, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 2117
    nop

    .line 2118
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 2119
    invoke-interface {v2, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ID)V

    .line 2400
    :cond_17
    :goto_3
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    .line 2401
    :cond_18
    :goto_4
    if-eqz v5, :cond_1a

    .line 2402
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzmr;Ljava/util/Map$Entry;)V

    .line 2403
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_4

    :cond_19
    const/4 v5, 0x0

    goto :goto_4

    .line 2404
    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 2405
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 554
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v0

    .line 555
    nop

    .line 556
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v1, v1, p3

    .line 557
    nop

    .line 558
    nop

    .line 559
    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 560
    nop

    .line 561
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    return-void

    .line 563
    :cond_0
    nop

    .line 564
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_1
    const/4 v0, 0x0

    .line 566
    :goto_0
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 567
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 568
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 569
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 571
    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 572
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 573
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 574
    :cond_3
    return-void
.end method

.method private static zzc(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 4024
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzc(I)Lcom/google/android/gms/internal/vision/zzjg;
    .locals 1

    .line 3448
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjg;

    return-object p1
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 4028
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzd(I)I
    .locals 1

    .line 4020
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static zzd(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 4025
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final zze(I)I
    .locals 1

    .line 4021
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 4026
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;
    .locals 2

    .line 2927
    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    .line 2928
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzlx;->zza()Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2929
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzlx;->zzb()Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v0

    .line 2930
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb;->zzb:Lcom/google/android/gms/internal/vision/zzlx;

    .line 2931
    :cond_0
    return-object v0
.end method

.method private static zzf(I)Z
    .locals 1

    .line 4022
    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 4027
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzg(I)I
    .locals 1

    .line 4082
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzf:I

    if-gt p1, v0, :cond_0

    .line 4083
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(II)I

    move-result p1

    return p1

    .line 4084
    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 346
    nop

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v0, v0

    .line 348
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 349
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v3

    .line 350
    nop

    .line 351
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v1

    .line 352
    nop

    .line 353
    nop

    .line 354
    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    .line 355
    nop

    .line 356
    nop

    .line 357
    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    .line 358
    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 447
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 449
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 445
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 446
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 443
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 441
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 439
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 437
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 435
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 436
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 433
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 429
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 431
    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 432
    goto/16 :goto_1

    .line 426
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    mul-int/lit8 v2, v2, 0x35

    .line 428
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 424
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzf(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 422
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 423
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 420
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 418
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 416
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 414
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 412
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 413
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 409
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    mul-int/lit8 v2, v2, 0x35

    .line 411
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 407
    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 408
    goto/16 :goto_1

    .line 405
    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 406
    goto/16 :goto_1

    .line 399
    :pswitch_14
    nop

    .line 400
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 401
    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 403
    :cond_0
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    .line 404
    goto/16 :goto_1

    .line 397
    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 398
    goto/16 :goto_1

    .line 395
    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 396
    goto/16 :goto_1

    .line 393
    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 394
    goto/16 :goto_1

    .line 391
    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 392
    goto/16 :goto_1

    .line 389
    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 390
    goto/16 :goto_1

    .line 387
    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 388
    goto/16 :goto_1

    .line 385
    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 386
    goto/16 :goto_1

    .line 379
    :pswitch_1c
    nop

    .line 380
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 381
    if-eqz v3, :cond_1

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    .line 383
    :cond_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    .line 384
    goto :goto_1

    .line 377
    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 378
    goto :goto_1

    .line 375
    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Z)I

    move-result v3

    add-int/2addr v2, v3

    .line 376
    goto :goto_1

    .line 373
    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 374
    goto :goto_1

    .line 371
    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 372
    goto :goto_1

    .line 369
    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    .line 370
    goto :goto_1

    .line 367
    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 368
    goto :goto_1

    .line 365
    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 366
    goto :goto_1

    .line 363
    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 364
    goto :goto_1

    .line 359
    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 360
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 361
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 362
    nop

    .line 450
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 451
    :cond_3
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 452
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_4

    .line 453
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zziu;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    .line 454
    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzhn;)I
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3449
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 3450
    nop

    .line 3451
    nop

    .line 3452
    nop

    .line 3453
    nop

    .line 3454
    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    .line 3455
    :goto_0
    if-ge v0, v13, :cond_2d

    .line 3456
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    .line 3457
    if-gez v0, :cond_0

    .line 3458
    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3459
    iget v3, v9, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    goto :goto_1

    .line 3457
    :cond_0
    move/from16 v30, v3

    move v3, v0

    move/from16 v0, v30

    .line 3460
    :goto_1
    ushr-int/lit8 v8, v3, 0x3

    .line 3461
    and-int/lit8 v7, v3, 0x7

    .line 3462
    const/4 v4, 0x3

    if-le v8, v1, :cond_1

    .line 3463
    div-int/2addr v2, v4

    invoke-direct {v15, v8, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(II)I

    move-result v1

    move v2, v1

    goto :goto_2

    .line 3464
    :cond_1
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/vision/zzko;->zzg(I)I

    move-result v1

    move v2, v1

    .line 3465
    :goto_2
    nop

    .line 3466
    const-wide/16 v19, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 3467
    move v2, v0

    move/from16 v27, v3

    move/from16 v22, v5

    move/from16 p3, v8

    move-object/from16 v29, v10

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v21, 0x0

    goto/16 :goto_e

    .line 3468
    :cond_2
    iget-object v4, v15, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v22, v2, 0x1

    aget v4, v4, v22

    .line 3469
    nop

    .line 3470
    const/high16 v22, 0xff00000

    and-int v22, v4, v22

    ushr-int/lit8 v1, v22, 0x14

    .line 3471
    nop

    .line 3472
    nop

    .line 3473
    move/from16 v22, v0

    const v17, 0xfffff

    and-int v0, v4, v17

    int-to-long v11, v0

    .line 3474
    nop

    .line 3475
    const/16 v0, 0x11

    move/from16 v24, v3

    if-gt v1, v0, :cond_19

    .line 3476
    iget-object v0, v15, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v25, v2, 0x2

    aget v0, v0, v25

    .line 3477
    ushr-int/lit8 v25, v0, 0x14

    const/16 v23, 0x1

    shl-int v25, v23, v25

    .line 3478
    const v13, 0xfffff

    and-int/2addr v0, v13

    .line 3479
    if-eq v0, v6, :cond_4

    .line 3480
    if-eq v6, v13, :cond_3

    .line 3481
    move/from16 v17, v4

    int-to-long v3, v6

    invoke-virtual {v10, v14, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 3480
    :cond_3
    move/from16 v17, v4

    .line 3482
    :goto_3
    nop

    .line 3483
    int-to-long v3, v0

    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v26, v0

    move v6, v5

    goto :goto_4

    .line 3479
    :cond_4
    move/from16 v17, v4

    move/from16 v26, v6

    move v6, v5

    .line 3484
    :goto_4
    const/4 v0, 0x5

    packed-switch v1, :pswitch_data_0

    move-object/from16 v12, p2

    move v11, v2

    move/from16 v4, v22

    move/from16 v13, v24

    const/4 v0, 0x1

    const/16 v18, -0x1

    const v21, 0xfffff

    goto/16 :goto_a

    .line 3567
    :pswitch_0
    const/4 v0, 0x3

    if-ne v7, v0, :cond_6

    .line 3568
    shl-int/lit8 v0, v8, 0x3

    or-int/lit8 v4, v0, 0x4

    .line 3569
    nop

    .line 3570
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3571
    move/from16 v5, v22

    move-object/from16 v1, p2

    move v7, v2

    move v2, v5

    move/from16 v5, v24

    move/from16 v3, p4

    const/16 v18, -0x1

    move v13, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3572
    and-int v1, v6, v25

    if-nez v1, :cond_5

    .line 3573
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3574
    :cond_5
    nop

    .line 3575
    invoke-virtual {v10, v14, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3576
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3577
    invoke-virtual {v10, v14, v11, v12, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3578
    :goto_5
    or-int v5, v6, v25

    .line 3579
    move-object/from16 v12, p2

    move/from16 v11, p5

    move v2, v7

    move v1, v8

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3567
    :cond_6
    move v7, v2

    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move v4, v5

    move v11, v7

    const/4 v0, 0x1

    const v21, 0xfffff

    goto/16 :goto_a

    .line 3560
    :pswitch_1
    move v4, v2

    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    if-nez v7, :cond_7

    .line 3561
    move-wide v2, v11

    move-object/from16 v12, p2

    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    .line 3562
    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    .line 3563
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v19

    .line 3564
    move-object v0, v10

    move-object/from16 v1, p1

    move v11, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3565
    or-int v5, v6, v25

    .line 3566
    move v0, v7

    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3560
    :cond_7
    move-object/from16 v12, p2

    move v11, v4

    move v4, v5

    const/4 v0, 0x1

    const v21, 0xfffff

    goto/16 :goto_a

    .line 3553
    :pswitch_2
    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    if-nez v7, :cond_8

    .line 3554
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3555
    iget v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3556
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v1

    .line 3557
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3558
    or-int v5, v6, v25

    .line 3559
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3553
    :cond_8
    move v4, v5

    const/4 v0, 0x1

    const v21, 0xfffff

    goto/16 :goto_a

    .line 3544
    :pswitch_3
    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    if-nez v7, :cond_b

    .line 3545
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3546
    iget v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3547
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v4

    .line 3548
    if-eqz v4, :cond_a

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/zzjg;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    .line 3551
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lcom/google/android/gms/internal/vision/zzlx;->zza(ILjava/lang/Object;)V

    .line 3552
    move v5, v6

    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3549
    :cond_a
    :goto_6
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3550
    or-int v5, v6, v25

    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3544
    :cond_b
    move v4, v5

    const/4 v0, 0x1

    const v21, 0xfffff

    goto/16 :goto_a

    .line 3539
    :pswitch_4
    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    const/4 v0, 0x2

    if-ne v7, v0, :cond_c

    .line 3540
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zze([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3541
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3542
    or-int v5, v6, v25

    .line 3543
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3539
    :cond_c
    move v4, v5

    const/4 v0, 0x1

    const v21, 0xfffff

    goto/16 :goto_a

    .line 3527
    :pswitch_5
    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    const/4 v0, 0x2

    if-ne v7, v0, :cond_e

    .line 3528
    nop

    .line 3529
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3530
    move/from16 v4, p4

    const v21, 0xfffff

    invoke-static {v0, v12, v5, v4, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3531
    and-int v1, v6, v25

    if-nez v1, :cond_d

    .line 3532
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 3533
    :cond_d
    nop

    .line 3534
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3535
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3536
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3537
    :goto_7
    or-int v5, v6, v25

    .line 3538
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v11, p5

    move v13, v4

    goto/16 :goto_0

    .line 3527
    :cond_e
    move/from16 v4, p4

    const v21, 0xfffff

    move v4, v5

    const/4 v0, 0x1

    goto/16 :goto_a

    .line 3520
    :pswitch_6
    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    const/4 v0, 0x2

    if-ne v7, v0, :cond_10

    .line 3521
    const/high16 v0, 0x20000000

    and-int v0, v17, v0

    if-nez v0, :cond_f

    .line 3522
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    goto :goto_8

    .line 3523
    :cond_f
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3524
    :goto_8
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3525
    or-int v5, v6, v25

    .line 3526
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v11, p5

    move v13, v4

    goto/16 :goto_0

    .line 3520
    :cond_10
    move v4, v5

    const/4 v0, 0x1

    goto/16 :goto_a

    .line 3515
    :pswitch_7
    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    if-nez v7, :cond_12

    .line 3516
    invoke-static {v12, v5, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3517
    move/from16 p3, v0

    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    cmp-long v5, v0, v19

    if-eqz v5, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    invoke-static {v14, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JZ)V

    .line 3518
    or-int v5, v6, v25

    .line 3519
    move/from16 v0, p3

    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v11, p5

    move v13, v4

    goto/16 :goto_0

    .line 3515
    :cond_12
    move v4, v5

    const/4 v0, 0x1

    goto/16 :goto_a

    .line 3510
    :pswitch_8
    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    if-ne v7, v0, :cond_13

    .line 3511
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3512
    add-int/lit8 v0, v5, 0x4

    .line 3513
    or-int v5, v6, v25

    .line 3514
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v11, p5

    move v13, v4

    goto/16 :goto_0

    .line 3510
    :cond_13
    move v4, v5

    const/4 v0, 0x1

    goto/16 :goto_a

    .line 3505
    :pswitch_9
    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    const/4 v0, 0x1

    if-ne v7, v0, :cond_14

    .line 3506
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move v7, v5

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3507
    add-int/lit8 v0, v7, 0x8

    .line 3508
    or-int v5, v6, v25

    .line 3509
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3505
    :cond_14
    move v7, v5

    move v4, v7

    const/4 v0, 0x1

    goto/16 :goto_a

    .line 3500
    :pswitch_a
    move/from16 v4, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    if-nez v7, :cond_15

    .line 3501
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3502
    iget v1, v9, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3503
    or-int v5, v6, v25

    .line 3504
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3500
    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 3495
    :pswitch_b
    move/from16 v4, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    if-nez v7, :cond_16

    .line 3496
    invoke-static {v12, v4, v9}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v7

    .line 3497
    iget-wide v4, v9, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3498
    or-int v5, v6, v25

    .line 3499
    move v0, v7

    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3495
    :cond_16
    const/4 v0, 0x1

    goto :goto_a

    .line 3490
    :pswitch_c
    move/from16 v4, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    if-ne v7, v0, :cond_17

    .line 3491
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JF)V

    .line 3492
    add-int/lit8 v0, v4, 0x4

    .line 3493
    or-int v5, v6, v25

    .line 3494
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3490
    :cond_17
    const/4 v0, 0x1

    goto :goto_a

    .line 3485
    :pswitch_d
    move/from16 v4, v22

    move/from16 v13, v24

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    const/4 v0, 0x1

    if-ne v7, v0, :cond_18

    .line 3486
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JD)V

    .line 3487
    add-int/lit8 v0, v4, 0x8

    .line 3488
    or-int v5, v6, v25

    .line 3489
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3580
    :cond_18
    :goto_a
    move v2, v4

    move/from16 v22, v6

    move/from16 p3, v8

    move-object/from16 v29, v10

    move/from16 v21, v11

    move/from16 v27, v13

    move/from16 v6, v26

    const/16 v17, 0x1

    goto/16 :goto_e

    :cond_19
    move/from16 v17, v4

    move/from16 v4, v22

    move/from16 v13, v24

    const/4 v0, 0x1

    const/16 v18, -0x1

    const v21, 0xfffff

    move-wide/from16 v30, v11

    move-object/from16 v12, p2

    move v11, v2

    move-wide/from16 v2, v30

    const/16 v0, 0x1b

    if-ne v1, v0, :cond_1d

    .line 3581
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1c

    .line 3582
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjl;

    .line 3583
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjl;->zza()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 3584
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjl;->size()I

    move-result v1

    .line 3585
    nop

    .line 3586
    if-nez v1, :cond_1a

    const/16 v1, 0xa

    goto :goto_b

    :cond_1a
    shl-int/lit8 v1, v1, 0x1

    .line 3587
    :goto_b
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(I)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v0

    .line 3588
    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v0

    goto :goto_c

    .line 3583
    :cond_1b
    move-object v7, v0

    .line 3589
    :goto_c
    nop

    .line 3590
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3591
    move v1, v13

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v7

    move/from16 v26, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3592
    move v1, v8

    move v2, v11

    move v3, v13

    move/from16 v5, v22

    move/from16 v6, v26

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    .line 3581
    :cond_1c
    move/from16 v22, v5

    move/from16 v26, v6

    move v15, v4

    move/from16 p3, v8

    move-object/from16 v29, v10

    move/from16 v21, v11

    move/from16 v27, v13

    const/16 v17, 0x1

    goto/16 :goto_d

    .line 3593
    :cond_1d
    move/from16 v22, v5

    move/from16 v26, v6

    const/16 v0, 0x31

    if-gt v1, v0, :cond_1f

    .line 3594
    nop

    .line 3595
    move/from16 v5, v17

    int-to-long v5, v5

    .line 3596
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-wide/from16 v24, v2

    move-object/from16 v2, p2

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v27, v5

    move v5, v13

    move v6, v8

    move/from16 p3, v8

    move v8, v11

    move-object/from16 v29, v10

    move-wide/from16 v9, v27

    move/from16 v21, v11

    move/from16 v11, v23

    move/from16 v27, v13

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3597
    if-ne v0, v15, :cond_1e

    .line 3598
    move v2, v0

    move/from16 v6, v26

    goto/16 :goto_e

    .line 3597
    :cond_1e
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v21

    move/from16 v5, v22

    move/from16 v6, v26

    move/from16 v3, v27

    move-object/from16 v10, v29

    goto/16 :goto_0

    .line 3598
    :cond_1f
    move/from16 v23, v1

    move-wide/from16 v24, v2

    move v15, v4

    move/from16 p3, v8

    move-object/from16 v29, v10

    move/from16 v21, v11

    move/from16 v27, v13

    move/from16 v5, v17

    const/16 v17, 0x1

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_22

    .line 3599
    const/4 v0, 0x2

    if-ne v7, v0, :cond_21

    .line 3600
    nop

    .line 3601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v21

    move-wide/from16 v6, v24

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3602
    if-ne v0, v15, :cond_20

    .line 3603
    move v2, v0

    move/from16 v6, v26

    goto :goto_e

    .line 3602
    :cond_20
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v21

    move/from16 v5, v22

    move/from16 v6, v26

    move/from16 v3, v27

    move-object/from16 v10, v29

    goto/16 :goto_0

    .line 3608
    :cond_21
    :goto_d
    move v2, v15

    move/from16 v6, v26

    goto :goto_e

    .line 3604
    :cond_22
    nop

    .line 3605
    nop

    .line 3606
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move v8, v5

    move/from16 v4, p4

    move/from16 v5, v27

    move/from16 v6, p3

    move-wide/from16 v10, v24

    move/from16 v12, v21

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3607
    if-ne v0, v15, :cond_2c

    move v2, v0

    move/from16 v6, v26

    .line 3608
    :goto_e
    move/from16 v7, p5

    move/from16 v8, v27

    if-ne v8, v7, :cond_24

    if-nez v7, :cond_23

    goto :goto_f

    :cond_23
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move v0, v2

    move v2, v6

    move v3, v8

    move/from16 v5, v22

    const/4 v1, 0x0

    move/from16 v6, p4

    goto/16 :goto_16

    .line 3609
    :cond_24
    :goto_f
    move-object/from16 v9, p0

    iget-boolean v0, v9, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_2b

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    .line 3610
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzio;->zzb()Lcom/google/android/gms/internal/vision/zzio;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    .line 3611
    iget-object v0, v9, Lcom/google/android/gms/internal/vision/zzko;->zzg:Lcom/google/android/gms/internal/vision/zzkk;

    .line 3612
    nop

    .line 3613
    iget-object v1, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    .line 3614
    move/from16 v11, p3

    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/vision/zzio;->zza(Lcom/google/android/gms/internal/vision/zzkk;I)Lcom/google/android/gms/internal/vision/zzjb$zze;

    move-result-object v12

    .line 3615
    if-nez v12, :cond_25

    .line 3616
    nop

    .line 3617
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    .line 3618
    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    goto/16 :goto_14

    .line 3619
    :cond_25
    move-object/from16 v13, p1

    move-object v0, v13

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zza()Lcom/google/android/gms/internal/vision/zziu;

    .line 3620
    nop

    .line 3621
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzjb$zzc;->zzc:Lcom/google/android/gms/internal/vision/zziu;

    .line 3622
    nop

    .line 3623
    iget-object v0, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 3624
    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzd:Z

    .line 3625
    nop

    .line 3626
    nop

    .line 3627
    nop

    .line 3628
    iget-object v0, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 3629
    iget-object v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 3630
    sget-object v1, Lcom/google/android/gms/internal/vision/zzml;->zzn:Lcom/google/android/gms/internal/vision/zzml;

    if-eq v0, v1, :cond_29

    .line 3643
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhk;->zza:[I

    .line 3644
    iget-object v1, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 3645
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 3646
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    const/4 v4, 0x0

    goto/16 :goto_11

    .line 3687
    :pswitch_e
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v0

    .line 3688
    iget-object v1, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzc:Lcom/google/android/gms/internal/vision/zzkk;

    .line 3689
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3690
    move-object/from16 v15, p2

    move/from16 v5, p4

    invoke-static {v0, v15, v2, v5, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3691
    iget-object v4, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3692
    move/from16 p3, v6

    move v6, v5

    goto/16 :goto_11

    .line 3680
    :pswitch_f
    move-object/from16 v15, p2

    move/from16 v5, p4

    shl-int/lit8 v0, v11, 0x3

    or-int/lit8 v4, v0, 0x4

    .line 3681
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v0

    .line 3682
    iget-object v1, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzc:Lcom/google/android/gms/internal/vision/zzkk;

    .line 3683
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3684
    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 p3, v6

    move v6, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3685
    iget-object v4, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3686
    goto/16 :goto_11

    .line 3677
    :pswitch_10
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3678
    iget-object v4, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3679
    goto/16 :goto_11

    .line 3668
    :pswitch_11
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zze([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3669
    iget-object v4, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3670
    goto/16 :goto_11

    .line 3693
    :pswitch_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3674
    :pswitch_13
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3675
    iget-wide v0, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3676
    goto/16 :goto_11

    .line 3671
    :pswitch_14
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3672
    iget v0, v10, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3673
    goto/16 :goto_11

    .line 3665
    :pswitch_15
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3666
    iget-wide v0, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    cmp-long v3, v0, v19

    if-eqz v3, :cond_26

    const/4 v1, 0x1

    goto :goto_10

    :cond_26
    const/4 v1, 0x0

    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3667
    goto/16 :goto_11

    .line 3662
    :pswitch_16
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3663
    add-int/lit8 v2, v2, 0x4

    .line 3664
    goto :goto_11

    .line 3659
    :pswitch_17
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3660
    add-int/lit8 v2, v2, 0x8

    .line 3661
    goto :goto_11

    .line 3656
    :pswitch_18
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3657
    iget v0, v10, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3658
    goto :goto_11

    .line 3653
    :pswitch_19
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v2

    .line 3654
    iget-wide v0, v10, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3655
    goto :goto_11

    .line 3650
    :pswitch_1a
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 3651
    add-int/lit8 v2, v2, 0x4

    .line 3652
    goto :goto_11

    .line 3647
    :pswitch_1b
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 3648
    add-int/lit8 v2, v2, 0x8

    .line 3649
    nop

    .line 3694
    :goto_11
    nop

    .line 3695
    iget-object v0, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzd:Z

    .line 3696
    if-eqz v0, :cond_27

    .line 3697
    iget-object v0, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {v14, v0, v4}, Lcom/google/android/gms/internal/vision/zziu;->zzb(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)V

    goto :goto_13

    .line 3698
    :cond_27
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhk;->zza:[I

    .line 3699
    iget-object v1, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 3700
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    .line 3701
    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzml;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_12

    .line 3702
    :pswitch_1c
    iget-object v0, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/vision/zziu;->zza(Lcom/google/android/gms/internal/vision/zziw;)Ljava/lang/Object;

    move-result-object v0

    .line 3703
    if-eqz v0, :cond_28

    .line 3704
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3705
    :cond_28
    :goto_12
    iget-object v0, v12, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    invoke-virtual {v14, v0, v4}, Lcom/google/android/gms/internal/vision/zziu;->zza(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)V

    .line 3706
    :goto_13
    move v0, v2

    .line 3707
    :goto_14
    move v3, v8

    move v1, v11

    move-object v14, v13

    move-object v12, v15

    move/from16 v2, v21

    move/from16 v5, v22

    move v13, v6

    move v11, v7

    move-object v15, v9

    move-object v9, v10

    move-object/from16 v10, v29

    move/from16 v6, p3

    goto/16 :goto_0

    .line 3631
    :cond_29
    move-object/from16 v15, p2

    invoke-static {v15, v2, v10}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    .line 3632
    nop

    .line 3633
    iget v0, v10, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    const/4 v1, 0x0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/zzjh;->zza(I)Lcom/google/android/gms/internal/vision/zzje;

    .line 3634
    throw v1

    .line 3610
    :cond_2a
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 v11, p3

    move/from16 p3, v6

    move/from16 v6, p4

    goto :goto_15

    .line 3609
    :cond_2b
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 v11, p3

    move-object/from16 v10, p6

    move/from16 p3, v6

    move/from16 v6, p4

    .line 3708
    :goto_15
    nop

    .line 3709
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    .line 3710
    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3711
    move v3, v8

    move v1, v11

    move-object v14, v13

    move-object v12, v15

    move/from16 v2, v21

    move/from16 v5, v22

    move v13, v6

    move v11, v7

    move-object v15, v9

    move-object v9, v10

    move-object/from16 v10, v29

    move/from16 v6, p3

    goto/16 :goto_0

    .line 3607
    :cond_2c
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 v11, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    move/from16 v8, v27

    move v3, v8

    move v1, v11

    move-object v14, v13

    move-object v12, v15

    move/from16 v2, v21

    move/from16 v5, v22

    move v13, v6

    move v11, v7

    move-object v15, v9

    move-object v9, v10

    move/from16 v6, v26

    move-object/from16 v10, v29

    goto/16 :goto_0

    .line 3455
    :cond_2d
    move/from16 v22, v5

    move/from16 v26, v6

    move-object/from16 v29, v10

    move v7, v11

    move v6, v13

    move-object v13, v14

    move-object v9, v15

    const/4 v1, 0x0

    move/from16 v2, v26

    .line 3712
    :goto_16
    const v4, 0xfffff

    if-eq v2, v4, :cond_2e

    .line 3713
    int-to-long v10, v2

    move-object/from16 v2, v29

    invoke-virtual {v2, v13, v10, v11, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3714
    :cond_2e
    nop

    .line 3715
    iget v2, v9, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    move-object v4, v1

    :goto_17
    iget v1, v9, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    if-ge v2, v1, :cond_2f

    .line 3716
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget v1, v1, v2

    iget-object v5, v9, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    .line 3717
    invoke-direct {v9, v13, v1, v4, v5}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/vision/zzlx;

    .line 3718
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3719
    :cond_2f
    if-eqz v4, :cond_30

    .line 3720
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    .line 3721
    invoke-virtual {v1, v13, v4}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3722
    :cond_30
    if-nez v7, :cond_32

    .line 3723
    if-ne v0, v6, :cond_31

    goto :goto_18

    .line 3724
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    .line 3725
    :cond_32
    if-gt v0, v6, :cond_33

    if-ne v3, v7, :cond_33

    .line 3727
    :goto_18
    return v0

    .line 3726
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzo:Lcom/google/android/gms/internal/vision/zzks;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzg:Lcom/google/android/gms/internal/vision/zzkk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzks;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;Lcom/google/android/gms/internal/vision/zzio;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzld;",
            "Lcom/google/android/gms/internal/vision/zzio;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2414
    if-eqz p3, :cond_1f

    .line 2416
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    iget-object v8, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    .line 2417
    nop

    .line 2418
    const/4 v9, 0x0

    move-object v0, v9

    move-object v10, v0

    .line 2419
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zza()I

    move-result v1

    .line 2420
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzko;->zzg(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2421
    if-gez v2, :cond_a

    .line 2422
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    .line 2423
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    if-ge p2, p3, :cond_1

    .line 2424
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget p3, p3, p2

    .line 2425
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2426
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2427
    :cond_1
    if-eqz v10, :cond_2

    .line 2428
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2429
    :cond_2
    return-void

    .line 2430
    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-nez v2, :cond_4

    .line 2431
    move-object v2, v9

    goto :goto_2

    .line 2432
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzg:Lcom/google/android/gms/internal/vision/zzkk;

    invoke-virtual {v8, p3, v2, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zzkk;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 2433
    :goto_2
    if-eqz v2, :cond_6

    .line 2434
    if-nez v0, :cond_5

    .line 2435
    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/vision/zziq;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object v0

    move-object v11, v0

    goto :goto_3

    .line 2434
    :cond_5
    move-object v11, v0

    .line 2436
    :goto_3
    nop

    .line 2437
    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-object v4, v11

    move-object v5, v10

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzld;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzio;Lcom/google/android/gms/internal/vision/zziu;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2438
    move-object v0, v11

    goto :goto_0

    .line 2439
    :cond_6
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/vision/zzlu;->zza(Lcom/google/android/gms/internal/vision/zzld;)Z

    .line 2440
    if-nez v10, :cond_7

    .line 2441
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2442
    :cond_7
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzlu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 2443
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    :goto_4
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    if-ge p2, p3, :cond_8

    .line 2444
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget p3, p3, p2

    .line 2445
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2446
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 2447
    :cond_8
    if-eqz v10, :cond_9

    .line 2448
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2449
    :cond_9
    return-void

    .line 2450
    :cond_a
    :try_start_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2451
    nop

    .line 2452
    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    .line 2453
    const v5, 0xfffff

    packed-switch v4, :pswitch_data_0

    .line 2896
    if-nez v10, :cond_15

    .line 2897
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/vision/zzlu;->zza()Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    .line 2889
    :pswitch_0
    nop

    .line 2890
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2891
    nop

    .line 2892
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/vision/zzld;->zzb(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v5

    .line 2893
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2894
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2895
    goto/16 :goto_0

    .line 2883
    :pswitch_1
    nop

    .line 2884
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2885
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2886
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2887
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2888
    goto/16 :goto_0

    .line 2877
    :pswitch_2
    nop

    .line 2878
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2879
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzs()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2880
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2881
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2882
    goto/16 :goto_0

    .line 2871
    :pswitch_3
    nop

    .line 2872
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2873
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzr()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2874
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2875
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2876
    goto/16 :goto_0

    .line 2865
    :pswitch_4
    nop

    .line 2866
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2867
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzq()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2868
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2869
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2870
    goto/16 :goto_0

    .line 2855
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzp()I

    move-result v4

    .line 2856
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v6

    .line 2857
    if-eqz v6, :cond_c

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/vision/zzjg;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    .line 2862
    :cond_b
    nop

    .line 2863
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/vision/zzle;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2864
    goto/16 :goto_0

    .line 2858
    :cond_c
    :goto_5
    nop

    .line 2859
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2860
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2861
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 2849
    :pswitch_6
    nop

    .line 2850
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2851
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2852
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2853
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2854
    goto/16 :goto_0

    .line 2844
    :pswitch_7
    nop

    .line 2845
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2846
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2847
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2848
    goto/16 :goto_0

    .line 2824
    :pswitch_8
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2825
    nop

    .line 2826
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2827
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 2828
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v6

    .line 2829
    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v6

    .line 2830
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2831
    nop

    .line 2832
    nop

    .line 2833
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2834
    goto :goto_6

    .line 2835
    :cond_d
    nop

    .line 2836
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2837
    nop

    .line 2838
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v5

    .line 2839
    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v5

    .line 2840
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2841
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2842
    :goto_6
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2843
    goto/16 :goto_0

    .line 2821
    :pswitch_9
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzld;)V

    .line 2822
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2823
    goto/16 :goto_0

    .line 2815
    :pswitch_a
    nop

    .line 2816
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2817
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzk()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2818
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2819
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2820
    goto/16 :goto_0

    .line 2809
    :pswitch_b
    nop

    .line 2810
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2811
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzj()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2812
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2813
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2814
    goto/16 :goto_0

    .line 2803
    :pswitch_c
    nop

    .line 2804
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2805
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzi()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2806
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2807
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2808
    goto/16 :goto_0

    .line 2797
    :pswitch_d
    nop

    .line 2798
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2799
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzh()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2800
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2801
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2802
    goto/16 :goto_0

    .line 2791
    :pswitch_e
    nop

    .line 2792
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2793
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzf()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2794
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2795
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2796
    goto/16 :goto_0

    .line 2785
    :pswitch_f
    nop

    .line 2786
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2787
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzg()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2788
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2789
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2790
    goto/16 :goto_0

    .line 2779
    :pswitch_10
    nop

    .line 2780
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2781
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zze()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 2782
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2783
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2784
    goto/16 :goto_0

    .line 2773
    :pswitch_11
    nop

    .line 2774
    and-int/2addr v3, v5

    int-to-long v3, v3

    .line 2775
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzd()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 2776
    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2777
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    .line 2778
    goto/16 :goto_0

    .line 2755
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(I)Ljava/lang/Object;

    move-result-object v1

    .line 2756
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v2

    .line 2757
    and-int/2addr v2, v5

    int-to-long v2, v2

    .line 2758
    nop

    .line 2759
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2760
    if-nez v4, :cond_e

    .line 2761
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2762
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 2763
    :cond_e
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/zzkh;->zzd(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2764
    nop

    .line 2765
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zzf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2766
    iget-object v6, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v6, v5, v4}, Lcom/google/android/gms/internal/vision/zzkh;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2767
    invoke-static {p1, v2, v3, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    .line 2768
    :cond_f
    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 2769
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/vision/zzkh;->zza(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 2770
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkf;

    move-result-object v1

    .line 2771
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/vision/zzkf;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 2772
    goto/16 :goto_0

    .line 2746
    :pswitch_13
    nop

    .line 2747
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2748
    nop

    .line 2749
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 2750
    nop

    .line 2751
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2752
    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2753
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzld;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 2754
    goto/16 :goto_0

    .line 2741
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2742
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2743
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2744
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzq(Ljava/util/List;)V

    .line 2745
    goto/16 :goto_0

    .line 2736
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2737
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2738
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2739
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzp(Ljava/util/List;)V

    .line 2740
    goto/16 :goto_0

    .line 2731
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2732
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2733
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2734
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzo(Ljava/util/List;)V

    .line 2735
    goto/16 :goto_0

    .line 2726
    :pswitch_17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2727
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2728
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2729
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzn(Ljava/util/List;)V

    .line 2730
    goto/16 :goto_0

    .line 2718
    :pswitch_18
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2719
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2720
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2721
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/vision/zzld;->zzm(Ljava/util/List;)V

    .line 2722
    nop

    .line 2723
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v2

    .line 2724
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2725
    goto/16 :goto_0

    .line 2713
    :pswitch_19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2714
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2715
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2716
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzl(Ljava/util/List;)V

    .line 2717
    goto/16 :goto_0

    .line 2708
    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2709
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2710
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2711
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzh(Ljava/util/List;)V

    .line 2712
    goto/16 :goto_0

    .line 2703
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2704
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2705
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2706
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzg(Ljava/util/List;)V

    .line 2707
    goto/16 :goto_0

    .line 2698
    :pswitch_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2699
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2700
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2701
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzf(Ljava/util/List;)V

    .line 2702
    goto/16 :goto_0

    .line 2693
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2694
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2695
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2696
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zze(Ljava/util/List;)V

    .line 2697
    goto/16 :goto_0

    .line 2688
    :pswitch_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2689
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2690
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2691
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzc(Ljava/util/List;)V

    .line 2692
    goto/16 :goto_0

    .line 2683
    :pswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2684
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2685
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2686
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzd(Ljava/util/List;)V

    .line 2687
    goto/16 :goto_0

    .line 2678
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2679
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2680
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2681
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzb(Ljava/util/List;)V

    .line 2682
    goto/16 :goto_0

    .line 2673
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2674
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2675
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2676
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zza(Ljava/util/List;)V

    .line 2677
    goto/16 :goto_0

    .line 2668
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2669
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2670
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2671
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzq(Ljava/util/List;)V

    .line 2672
    goto/16 :goto_0

    .line 2663
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2664
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2665
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2666
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzp(Ljava/util/List;)V

    .line 2667
    goto/16 :goto_0

    .line 2658
    :pswitch_24
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2659
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2660
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2661
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzo(Ljava/util/List;)V

    .line 2662
    goto/16 :goto_0

    .line 2653
    :pswitch_25
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2654
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2655
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2656
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzn(Ljava/util/List;)V

    .line 2657
    goto/16 :goto_0

    .line 2645
    :pswitch_26
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2646
    and-int/2addr v3, v5

    int-to-long v5, v3

    .line 2647
    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 2648
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/vision/zzld;->zzm(Ljava/util/List;)V

    .line 2649
    nop

    .line 2650
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v2

    .line 2651
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2652
    goto/16 :goto_0

    .line 2640
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2641
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2642
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2643
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzl(Ljava/util/List;)V

    .line 2644
    goto/16 :goto_0

    .line 2635
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2636
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2637
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2638
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzk(Ljava/util/List;)V

    .line 2639
    goto/16 :goto_0

    .line 2625
    :pswitch_29
    nop

    .line 2626
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 2627
    nop

    .line 2628
    nop

    .line 2629
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2630
    nop

    .line 2631
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2632
    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2633
    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)V

    .line 2634
    goto/16 :goto_0

    .line 2615
    :pswitch_2a
    nop

    .line 2616
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzko;->zzf(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2617
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2618
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2619
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2620
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzj(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2621
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2622
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2623
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzi(Ljava/util/List;)V

    .line 2624
    goto/16 :goto_0

    .line 2610
    :pswitch_2b
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2611
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2612
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2613
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzh(Ljava/util/List;)V

    .line 2614
    goto/16 :goto_0

    .line 2605
    :pswitch_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2606
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2607
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2608
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzg(Ljava/util/List;)V

    .line 2609
    goto/16 :goto_0

    .line 2600
    :pswitch_2d
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2601
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2602
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2603
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzf(Ljava/util/List;)V

    .line 2604
    goto/16 :goto_0

    .line 2595
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2596
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2597
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2598
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zze(Ljava/util/List;)V

    .line 2599
    goto/16 :goto_0

    .line 2590
    :pswitch_2f
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2591
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2592
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2593
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzc(Ljava/util/List;)V

    .line 2594
    goto/16 :goto_0

    .line 2585
    :pswitch_30
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2586
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2587
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2588
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzd(Ljava/util/List;)V

    .line 2589
    goto/16 :goto_0

    .line 2580
    :pswitch_31
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2581
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2582
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2583
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zzb(Ljava/util/List;)V

    .line 2584
    goto/16 :goto_0

    .line 2575
    :pswitch_32
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    .line 2576
    and-int v2, v3, v5

    int-to-long v2, v2

    .line 2577
    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 2578
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/vision/zzld;->zza(Ljava/util/List;)V

    .line 2579
    goto/16 :goto_0

    .line 2556
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2557
    nop

    .line 2558
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2559
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2560
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v2

    .line 2561
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/vision/zzld;->zzb(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v2

    .line 2562
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2563
    nop

    .line 2564
    nop

    .line 2565
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2566
    goto/16 :goto_0

    .line 2567
    :cond_11
    nop

    .line 2568
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2569
    nop

    .line 2570
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 2571
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzld;->zzb(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    .line 2572
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2573
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2574
    goto/16 :goto_0

    .line 2551
    :pswitch_34
    nop

    .line 2552
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2553
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzt()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 2554
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2555
    goto/16 :goto_0

    .line 2546
    :pswitch_35
    nop

    .line 2547
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2548
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzs()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 2549
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2550
    goto/16 :goto_0

    .line 2541
    :pswitch_36
    nop

    .line 2542
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2543
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzr()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 2544
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2545
    goto/16 :goto_0

    .line 2536
    :pswitch_37
    nop

    .line 2537
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2538
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzq()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 2539
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2540
    goto/16 :goto_0

    .line 2526
    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzp()I

    move-result v4

    .line 2527
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(I)Lcom/google/android/gms/internal/vision/zzjg;

    move-result-object v6

    .line 2528
    if-eqz v6, :cond_13

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/vision/zzjg;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_8

    .line 2533
    :cond_12
    nop

    .line 2534
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/vision/zzle;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2535
    goto/16 :goto_0

    .line 2529
    :cond_13
    :goto_8
    nop

    .line 2530
    and-int v1, v3, v5

    int-to-long v5, v1

    .line 2531
    invoke-static {p1, v5, v6, v4}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 2532
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 2521
    :pswitch_39
    nop

    .line 2522
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2523
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzo()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 2524
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2525
    goto/16 :goto_0

    .line 2516
    :pswitch_3a
    nop

    .line 2517
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2518
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzn()Lcom/google/android/gms/internal/vision/zzht;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2519
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2520
    goto/16 :goto_0

    .line 2497
    :pswitch_3b
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2498
    nop

    .line 2499
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2500
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2501
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v2

    .line 2502
    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v2

    .line 2503
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2504
    nop

    .line 2505
    nop

    .line 2506
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2507
    goto/16 :goto_0

    .line 2508
    :cond_14
    nop

    .line 2509
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2510
    nop

    .line 2511
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 2512
    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/vision/zzld;->zza(Lcom/google/android/gms/internal/vision/zzlc;Lcom/google/android/gms/internal/vision/zzio;)Ljava/lang/Object;

    move-result-object v1

    .line 2513
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2514
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2515
    goto/16 :goto_0

    .line 2494
    :pswitch_3c
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzld;)V

    .line 2495
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2496
    goto/16 :goto_0

    .line 2489
    :pswitch_3d
    nop

    .line 2490
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2491
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzk()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JZ)V

    .line 2492
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2493
    goto/16 :goto_0

    .line 2484
    :pswitch_3e
    nop

    .line 2485
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2486
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzj()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 2487
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2488
    goto/16 :goto_0

    .line 2479
    :pswitch_3f
    nop

    .line 2480
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2481
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzi()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 2482
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2483
    goto/16 :goto_0

    .line 2474
    :pswitch_40
    nop

    .line 2475
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2476
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzh()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 2477
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2478
    goto/16 :goto_0

    .line 2469
    :pswitch_41
    nop

    .line 2470
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2471
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzf()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 2472
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2473
    goto/16 :goto_0

    .line 2464
    :pswitch_42
    nop

    .line 2465
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2466
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzg()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 2467
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2468
    goto/16 :goto_0

    .line 2459
    :pswitch_43
    nop

    .line 2460
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2461
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zze()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JF)V

    .line 2462
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2463
    goto/16 :goto_0

    .line 2454
    :pswitch_44
    nop

    .line 2455
    and-int v1, v3, v5

    int-to-long v3, v1

    .line 2456
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzld;->zzd()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JD)V

    .line 2457
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 2458
    goto/16 :goto_0

    .line 2898
    :cond_15
    :goto_9
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzlu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;)Z

    move-result v1
    :try_end_3
    .catch Lcom/google/android/gms/internal/vision/zzjn; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_18

    .line 2899
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    if-ge p2, p3, :cond_16

    .line 2900
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget p3, p3, p2

    .line 2901
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2902
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 2903
    :cond_16
    if-eqz v10, :cond_17

    .line 2904
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2905
    :cond_17
    return-void

    .line 2906
    :cond_18
    goto/16 :goto_0

    .line 2907
    :catch_0
    move-exception v1

    .line 2908
    :try_start_4
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/vision/zzlu;->zza(Lcom/google/android/gms/internal/vision/zzld;)Z

    .line 2909
    if-nez v10, :cond_19

    .line 2910
    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    .line 2911
    :cond_19
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/vision/zzlu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzld;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_1c

    .line 2912
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    :goto_b
    iget p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    if-ge p2, p3, :cond_1a

    .line 2913
    iget-object p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget p3, p3, p2

    .line 2914
    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2915
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    .line 2916
    :cond_1a
    if-eqz v10, :cond_1b

    .line 2917
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2918
    :cond_1b
    return-void

    .line 2919
    :cond_1c
    goto/16 :goto_0

    .line 2920
    :catchall_0
    move-exception p2

    iget p3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    :goto_c
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    if-ge p3, v0, :cond_1d

    .line 2921
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget v0, v0, p3

    .line 2922
    invoke-direct {p0, p1, v0, v10, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlu;)Ljava/lang/Object;

    move-result-object v10

    .line 2923
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    .line 2924
    :cond_1d
    if-eqz v10, :cond_1e

    .line 2925
    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2926
    :cond_1e
    throw p2

    .line 2415
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_e

    :goto_d
    throw p1

    :goto_e
    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/vision/zzmr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1161
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzmr;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/vision/zzmq;->zzb:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 1162
    nop

    .line 1163
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 1164
    nop

    .line 1165
    nop

    .line 1166
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object v0

    .line 1168
    nop

    .line 1169
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/zziu;->zza:Lcom/google/android/gms/internal/vision/zzlh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzlh;->isEmpty()Z

    move-result v1

    .line 1170
    if-nez v1, :cond_0

    .line 1171
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zziu;->zze()Ljava/util/Iterator;

    move-result-object v0

    .line 1172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    .line 1173
    :cond_0
    move-object v0, v3

    move-object v1, v0

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 1174
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v8

    .line 1175
    nop

    .line 1176
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1177
    nop

    .line 1178
    :goto_2
    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 1179
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzmr;Ljava/util/Map$Entry;)V

    .line 1180
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    .line 1181
    :cond_2
    nop

    .line 1182
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    .line 1183
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 1608
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1609
    nop

    .line 1610
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1611
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1612
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v10

    .line 1613
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_3

    .line 1604
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1605
    nop

    .line 1606
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1607
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zze(IJ)V

    goto/16 :goto_3

    .line 1600
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1601
    nop

    .line 1602
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1603
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzf(II)V

    goto/16 :goto_3

    .line 1596
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1597
    nop

    .line 1598
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1599
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(IJ)V

    goto/16 :goto_3

    .line 1592
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1593
    nop

    .line 1594
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1595
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(II)V

    goto/16 :goto_3

    .line 1588
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1589
    nop

    .line 1590
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1591
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(II)V

    goto/16 :goto_3

    .line 1584
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1585
    nop

    .line 1586
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1587
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zze(II)V

    goto/16 :goto_3

    .line 1579
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1580
    nop

    .line 1581
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1582
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzht;

    .line 1583
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_3

    .line 1573
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1574
    nop

    .line 1575
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1576
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1577
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 1578
    goto/16 :goto_3

    .line 1569
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1570
    nop

    .line 1571
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1572
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_3

    .line 1565
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1566
    nop

    .line 1567
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1568
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzf(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IZ)V

    goto/16 :goto_3

    .line 1561
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1562
    nop

    .line 1563
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1564
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(II)V

    goto/16 :goto_3

    .line 1557
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1558
    nop

    .line 1559
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1560
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(IJ)V

    goto/16 :goto_3

    .line 1553
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1554
    nop

    .line 1555
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1556
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    goto/16 :goto_3

    .line 1549
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1550
    nop

    .line 1551
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1552
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(IJ)V

    goto/16 :goto_3

    .line 1545
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1546
    nop

    .line 1547
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1548
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IJ)V

    goto/16 :goto_3

    .line 1541
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1542
    nop

    .line 1543
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1544
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IF)V

    goto/16 :goto_3

    .line 1537
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1538
    nop

    .line 1539
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1540
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ID)V

    goto/16 :goto_3

    .line 1533
    :pswitch_12
    nop

    .line 1534
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1535
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzmr;ILjava/lang/Object;I)V

    .line 1536
    goto/16 :goto_3

    .line 1524
    :pswitch_13
    nop

    .line 1525
    nop

    .line 1526
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1527
    nop

    .line 1528
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1529
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1530
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v10

    .line 1531
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 1532
    goto/16 :goto_3

    .line 1516
    :pswitch_14
    nop

    .line 1517
    nop

    .line 1518
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1519
    nop

    .line 1520
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1521
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1522
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1523
    goto/16 :goto_3

    .line 1508
    :pswitch_15
    nop

    .line 1509
    nop

    .line 1510
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1511
    nop

    .line 1512
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1513
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1514
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1515
    goto/16 :goto_3

    .line 1500
    :pswitch_16
    nop

    .line 1501
    nop

    .line 1502
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1503
    nop

    .line 1504
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1505
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1506
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1507
    goto/16 :goto_3

    .line 1492
    :pswitch_17
    nop

    .line 1493
    nop

    .line 1494
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1495
    nop

    .line 1496
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1497
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1498
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1499
    goto/16 :goto_3

    .line 1484
    :pswitch_18
    nop

    .line 1485
    nop

    .line 1486
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1487
    nop

    .line 1488
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1489
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1490
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1491
    goto/16 :goto_3

    .line 1476
    :pswitch_19
    nop

    .line 1477
    nop

    .line 1478
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1479
    nop

    .line 1480
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1481
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1482
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1483
    goto/16 :goto_3

    .line 1468
    :pswitch_1a
    nop

    .line 1469
    nop

    .line 1470
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1471
    nop

    .line 1472
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1473
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1474
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1475
    goto/16 :goto_3

    .line 1460
    :pswitch_1b
    nop

    .line 1461
    nop

    .line 1462
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1463
    nop

    .line 1464
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1465
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1466
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1467
    goto/16 :goto_3

    .line 1452
    :pswitch_1c
    nop

    .line 1453
    nop

    .line 1454
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1455
    nop

    .line 1456
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1457
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1458
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1459
    goto/16 :goto_3

    .line 1444
    :pswitch_1d
    nop

    .line 1445
    nop

    .line 1446
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1447
    nop

    .line 1448
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1449
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1450
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1451
    goto/16 :goto_3

    .line 1436
    :pswitch_1e
    nop

    .line 1437
    nop

    .line 1438
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1439
    nop

    .line 1440
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1441
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1442
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1443
    goto/16 :goto_3

    .line 1428
    :pswitch_1f
    nop

    .line 1429
    nop

    .line 1430
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1431
    nop

    .line 1432
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1433
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1434
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1435
    goto/16 :goto_3

    .line 1420
    :pswitch_20
    nop

    .line 1421
    nop

    .line 1422
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1423
    nop

    .line 1424
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1425
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1426
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1427
    goto/16 :goto_3

    .line 1412
    :pswitch_21
    nop

    .line 1413
    nop

    .line 1414
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1415
    nop

    .line 1416
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1417
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1418
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1419
    goto/16 :goto_3

    .line 1404
    :pswitch_22
    nop

    .line 1405
    nop

    .line 1406
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1407
    nop

    .line 1408
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1409
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1410
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1411
    goto/16 :goto_3

    .line 1396
    :pswitch_23
    nop

    .line 1397
    nop

    .line 1398
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1399
    nop

    .line 1400
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1401
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1402
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1403
    goto/16 :goto_3

    .line 1388
    :pswitch_24
    nop

    .line 1389
    nop

    .line 1390
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1391
    nop

    .line 1392
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1393
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1394
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1395
    goto/16 :goto_3

    .line 1380
    :pswitch_25
    nop

    .line 1381
    nop

    .line 1382
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1383
    nop

    .line 1384
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1385
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1386
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1387
    goto/16 :goto_3

    .line 1372
    :pswitch_26
    nop

    .line 1373
    nop

    .line 1374
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1375
    nop

    .line 1376
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1377
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1378
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1379
    goto/16 :goto_3

    .line 1364
    :pswitch_27
    nop

    .line 1365
    nop

    .line 1366
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1367
    nop

    .line 1368
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1369
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1370
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1371
    goto/16 :goto_3

    .line 1356
    :pswitch_28
    nop

    .line 1357
    nop

    .line 1358
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1359
    nop

    .line 1360
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1361
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1362
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 1363
    goto/16 :goto_3

    .line 1347
    :pswitch_29
    nop

    .line 1348
    nop

    .line 1349
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1350
    nop

    .line 1351
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1352
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1353
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v10

    .line 1354
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 1355
    goto/16 :goto_3

    .line 1339
    :pswitch_2a
    nop

    .line 1340
    nop

    .line 1341
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1342
    nop

    .line 1343
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1344
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1345
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 1346
    goto/16 :goto_3

    .line 1331
    :pswitch_2b
    nop

    .line 1332
    nop

    .line 1333
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1334
    nop

    .line 1335
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1336
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1337
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1338
    goto/16 :goto_3

    .line 1323
    :pswitch_2c
    nop

    .line 1324
    nop

    .line 1325
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1326
    nop

    .line 1327
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1328
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1329
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1330
    goto/16 :goto_3

    .line 1315
    :pswitch_2d
    nop

    .line 1316
    nop

    .line 1317
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1318
    nop

    .line 1319
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1320
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1321
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1322
    goto/16 :goto_3

    .line 1307
    :pswitch_2e
    nop

    .line 1308
    nop

    .line 1309
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1310
    nop

    .line 1311
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1312
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1313
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1314
    goto/16 :goto_3

    .line 1299
    :pswitch_2f
    nop

    .line 1300
    nop

    .line 1301
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1302
    nop

    .line 1303
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1304
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1305
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1306
    goto/16 :goto_3

    .line 1291
    :pswitch_30
    nop

    .line 1292
    nop

    .line 1293
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1294
    nop

    .line 1295
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1296
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1297
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1298
    goto/16 :goto_3

    .line 1283
    :pswitch_31
    nop

    .line 1284
    nop

    .line 1285
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1286
    nop

    .line 1287
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1288
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1289
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1290
    goto/16 :goto_3

    .line 1275
    :pswitch_32
    nop

    .line 1276
    nop

    .line 1277
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v9, v9, v7

    .line 1278
    nop

    .line 1279
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1280
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1281
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1282
    goto/16 :goto_3

    .line 1269
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1270
    nop

    .line 1271
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1272
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1273
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v10

    .line 1274
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_3

    .line 1264
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1265
    nop

    .line 1266
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1267
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1268
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zze(IJ)V

    goto/16 :goto_3

    .line 1259
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1260
    nop

    .line 1261
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1262
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1263
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzf(II)V

    goto/16 :goto_3

    .line 1254
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1255
    nop

    .line 1256
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1257
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1258
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(IJ)V

    goto/16 :goto_3

    .line 1249
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1250
    nop

    .line 1251
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1252
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1253
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(II)V

    goto/16 :goto_3

    .line 1244
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1245
    nop

    .line 1246
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1247
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1248
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(II)V

    goto/16 :goto_3

    .line 1239
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1240
    nop

    .line 1241
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1242
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1243
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zze(II)V

    goto/16 :goto_3

    .line 1234
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1235
    nop

    .line 1236
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1237
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/zzht;

    .line 1238
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_3

    .line 1228
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1229
    nop

    .line 1230
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1231
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1232
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 1233
    goto/16 :goto_3

    .line 1224
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1225
    nop

    .line 1226
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1227
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_3

    .line 1219
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1220
    nop

    .line 1221
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1222
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result v8

    .line 1223
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IZ)V

    goto/16 :goto_3

    .line 1214
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1215
    nop

    .line 1216
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1217
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1218
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(II)V

    goto :goto_3

    .line 1209
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1210
    nop

    .line 1211
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1212
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1213
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(IJ)V

    goto :goto_3

    .line 1204
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1205
    nop

    .line 1206
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1207
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 1208
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    goto :goto_3

    .line 1199
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1200
    nop

    .line 1201
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1202
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1203
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(IJ)V

    goto :goto_3

    .line 1194
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1195
    nop

    .line 1196
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1197
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1198
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IJ)V

    goto :goto_3

    .line 1189
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1190
    nop

    .line 1191
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1192
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result v8

    .line 1193
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IF)V

    goto :goto_3

    .line 1184
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1185
    nop

    .line 1186
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1187
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1188
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ID)V

    .line 1614
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    .line 1615
    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 1616
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzmr;Ljava/util/Map$Entry;)V

    .line 1617
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    .line 1618
    :cond_6
    return-void

    .line 1619
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzj:Z

    if-eqz v0, :cond_f

    .line 1620
    nop

    .line 1621
    nop

    .line 1622
    nop

    .line 1623
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_8

    .line 1624
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object v0

    .line 1625
    nop

    .line 1626
    iget-object v1, v0, Lcom/google/android/gms/internal/vision/zziu;->zza:Lcom/google/android/gms/internal/vision/zzlh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzlh;->isEmpty()Z

    move-result v1

    .line 1627
    if-nez v1, :cond_8

    .line 1628
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zziu;->zzd()Ljava/util/Iterator;

    move-result-object v0

    .line 1629
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    .line 1630
    :cond_8
    move-object v0, v3

    move-object v1, v0

    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v7, v7

    .line 1631
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_c

    .line 1632
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v9

    .line 1633
    nop

    .line 1634
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1635
    nop

    .line 1636
    :goto_7
    if-eqz v1, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 1637
    iget-object v11, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzmr;Ljava/util/Map$Entry;)V

    .line 1638
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v1, v3

    goto :goto_7

    .line 1639
    :cond_a
    nop

    .line 1640
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    .line 1641
    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 2066
    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2067
    nop

    .line 2068
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2069
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2070
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v11

    .line 2071
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_8

    .line 2062
    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2063
    nop

    .line 2064
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2065
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zze(IJ)V

    goto/16 :goto_8

    .line 2058
    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2059
    nop

    .line 2060
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2061
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzf(II)V

    goto/16 :goto_8

    .line 2054
    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2055
    nop

    .line 2056
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2057
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(IJ)V

    goto/16 :goto_8

    .line 2050
    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2051
    nop

    .line 2052
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2053
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(II)V

    goto/16 :goto_8

    .line 2046
    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2047
    nop

    .line 2048
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2049
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(II)V

    goto/16 :goto_8

    .line 2042
    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2043
    nop

    .line 2044
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2045
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zze(II)V

    goto/16 :goto_8

    .line 2037
    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2038
    nop

    .line 2039
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2040
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/zzht;

    .line 2041
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_8

    .line 2031
    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2032
    nop

    .line 2033
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2034
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2035
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 2036
    goto/16 :goto_8

    .line 2027
    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2028
    nop

    .line 2029
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2030
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_8

    .line 2023
    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2024
    nop

    .line 2025
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2026
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzf(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IZ)V

    goto/16 :goto_8

    .line 2019
    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2020
    nop

    .line 2021
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2022
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(II)V

    goto/16 :goto_8

    .line 2015
    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2016
    nop

    .line 2017
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2018
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(IJ)V

    goto/16 :goto_8

    .line 2011
    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2012
    nop

    .line 2013
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2014
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    goto/16 :goto_8

    .line 2007
    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2008
    nop

    .line 2009
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2010
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(IJ)V

    goto/16 :goto_8

    .line 2003
    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2004
    nop

    .line 2005
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2006
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IJ)V

    goto/16 :goto_8

    .line 1999
    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2000
    nop

    .line 2001
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2002
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IF)V

    goto/16 :goto_8

    .line 1995
    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1996
    nop

    .line 1997
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1998
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ID)V

    goto/16 :goto_8

    .line 1991
    :pswitch_57
    nop

    .line 1992
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1993
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzmr;ILjava/lang/Object;I)V

    .line 1994
    goto/16 :goto_8

    .line 1982
    :pswitch_58
    nop

    .line 1983
    nop

    .line 1984
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1985
    nop

    .line 1986
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1987
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1988
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v11

    .line 1989
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 1990
    goto/16 :goto_8

    .line 1974
    :pswitch_59
    nop

    .line 1975
    nop

    .line 1976
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1977
    nop

    .line 1978
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1979
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1980
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1981
    goto/16 :goto_8

    .line 1966
    :pswitch_5a
    nop

    .line 1967
    nop

    .line 1968
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1969
    nop

    .line 1970
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1971
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1972
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1973
    goto/16 :goto_8

    .line 1958
    :pswitch_5b
    nop

    .line 1959
    nop

    .line 1960
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1961
    nop

    .line 1962
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1963
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1964
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1965
    goto/16 :goto_8

    .line 1950
    :pswitch_5c
    nop

    .line 1951
    nop

    .line 1952
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1953
    nop

    .line 1954
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1955
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1956
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1957
    goto/16 :goto_8

    .line 1942
    :pswitch_5d
    nop

    .line 1943
    nop

    .line 1944
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1945
    nop

    .line 1946
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1947
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1948
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1949
    goto/16 :goto_8

    .line 1934
    :pswitch_5e
    nop

    .line 1935
    nop

    .line 1936
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1937
    nop

    .line 1938
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1939
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1940
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1941
    goto/16 :goto_8

    .line 1926
    :pswitch_5f
    nop

    .line 1927
    nop

    .line 1928
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1929
    nop

    .line 1930
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1931
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1932
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1933
    goto/16 :goto_8

    .line 1918
    :pswitch_60
    nop

    .line 1919
    nop

    .line 1920
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1921
    nop

    .line 1922
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1923
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1924
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1925
    goto/16 :goto_8

    .line 1910
    :pswitch_61
    nop

    .line 1911
    nop

    .line 1912
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1913
    nop

    .line 1914
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1915
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1916
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1917
    goto/16 :goto_8

    .line 1902
    :pswitch_62
    nop

    .line 1903
    nop

    .line 1904
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1905
    nop

    .line 1906
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1907
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1908
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1909
    goto/16 :goto_8

    .line 1894
    :pswitch_63
    nop

    .line 1895
    nop

    .line 1896
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1897
    nop

    .line 1898
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1899
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1900
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1901
    goto/16 :goto_8

    .line 1886
    :pswitch_64
    nop

    .line 1887
    nop

    .line 1888
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1889
    nop

    .line 1890
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1891
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1892
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1893
    goto/16 :goto_8

    .line 1878
    :pswitch_65
    nop

    .line 1879
    nop

    .line 1880
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1881
    nop

    .line 1882
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1883
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1884
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1885
    goto/16 :goto_8

    .line 1870
    :pswitch_66
    nop

    .line 1871
    nop

    .line 1872
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1873
    nop

    .line 1874
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1875
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1876
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1877
    goto/16 :goto_8

    .line 1862
    :pswitch_67
    nop

    .line 1863
    nop

    .line 1864
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1865
    nop

    .line 1866
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1867
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1868
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1869
    goto/16 :goto_8

    .line 1854
    :pswitch_68
    nop

    .line 1855
    nop

    .line 1856
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1857
    nop

    .line 1858
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1859
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1860
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1861
    goto/16 :goto_8

    .line 1846
    :pswitch_69
    nop

    .line 1847
    nop

    .line 1848
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1849
    nop

    .line 1850
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1851
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1852
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1853
    goto/16 :goto_8

    .line 1838
    :pswitch_6a
    nop

    .line 1839
    nop

    .line 1840
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1841
    nop

    .line 1842
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1843
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1844
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1845
    goto/16 :goto_8

    .line 1830
    :pswitch_6b
    nop

    .line 1831
    nop

    .line 1832
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1833
    nop

    .line 1834
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1835
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1836
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1837
    goto/16 :goto_8

    .line 1822
    :pswitch_6c
    nop

    .line 1823
    nop

    .line 1824
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1825
    nop

    .line 1826
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1827
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1828
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1829
    goto/16 :goto_8

    .line 1814
    :pswitch_6d
    nop

    .line 1815
    nop

    .line 1816
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1817
    nop

    .line 1818
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1819
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1820
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 1821
    goto/16 :goto_8

    .line 1805
    :pswitch_6e
    nop

    .line 1806
    nop

    .line 1807
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1808
    nop

    .line 1809
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1810
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1811
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v11

    .line 1812
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 1813
    goto/16 :goto_8

    .line 1797
    :pswitch_6f
    nop

    .line 1798
    nop

    .line 1799
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1800
    nop

    .line 1801
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1802
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1803
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 1804
    goto/16 :goto_8

    .line 1789
    :pswitch_70
    nop

    .line 1790
    nop

    .line 1791
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1792
    nop

    .line 1793
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1794
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1795
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1796
    goto/16 :goto_8

    .line 1781
    :pswitch_71
    nop

    .line 1782
    nop

    .line 1783
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1784
    nop

    .line 1785
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1786
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1787
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1788
    goto/16 :goto_8

    .line 1773
    :pswitch_72
    nop

    .line 1774
    nop

    .line 1775
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1776
    nop

    .line 1777
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1778
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1779
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1780
    goto/16 :goto_8

    .line 1765
    :pswitch_73
    nop

    .line 1766
    nop

    .line 1767
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1768
    nop

    .line 1769
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1770
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1771
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1772
    goto/16 :goto_8

    .line 1757
    :pswitch_74
    nop

    .line 1758
    nop

    .line 1759
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1760
    nop

    .line 1761
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1762
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1763
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1764
    goto/16 :goto_8

    .line 1749
    :pswitch_75
    nop

    .line 1750
    nop

    .line 1751
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1752
    nop

    .line 1753
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1754
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1755
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1756
    goto/16 :goto_8

    .line 1741
    :pswitch_76
    nop

    .line 1742
    nop

    .line 1743
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1744
    nop

    .line 1745
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1746
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1747
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1748
    goto/16 :goto_8

    .line 1733
    :pswitch_77
    nop

    .line 1734
    nop

    .line 1735
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v10, v10, v8

    .line 1736
    nop

    .line 1737
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1738
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1739
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzmr;Z)V

    .line 1740
    goto/16 :goto_8

    .line 1727
    :pswitch_78
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1728
    nop

    .line 1729
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1730
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1731
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v11

    .line 1732
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    goto/16 :goto_8

    .line 1722
    :pswitch_79
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1723
    nop

    .line 1724
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1725
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1726
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zze(IJ)V

    goto/16 :goto_8

    .line 1717
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1718
    nop

    .line 1719
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1720
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1721
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzf(II)V

    goto/16 :goto_8

    .line 1712
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1713
    nop

    .line 1714
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1715
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1716
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(IJ)V

    goto/16 :goto_8

    .line 1707
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1708
    nop

    .line 1709
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1710
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1711
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(II)V

    goto/16 :goto_8

    .line 1702
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1703
    nop

    .line 1704
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1705
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1706
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzb(II)V

    goto/16 :goto_8

    .line 1697
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1698
    nop

    .line 1699
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1700
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1701
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zze(II)V

    goto/16 :goto_8

    .line 1692
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1693
    nop

    .line 1694
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1695
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/zzht;

    .line 1696
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILcom/google/android/gms/internal/vision/zzht;)V

    goto/16 :goto_8

    .line 1686
    :pswitch_80
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1687
    nop

    .line 1688
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1689
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1690
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)V

    .line 1691
    goto/16 :goto_8

    .line 1682
    :pswitch_81
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1683
    nop

    .line 1684
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1685
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    goto/16 :goto_8

    .line 1677
    :pswitch_82
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1678
    nop

    .line 1679
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1680
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result v9

    .line 1681
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IZ)V

    goto/16 :goto_8

    .line 1672
    :pswitch_83
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1673
    nop

    .line 1674
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1675
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1676
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(II)V

    goto :goto_8

    .line 1667
    :pswitch_84
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1668
    nop

    .line 1669
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1670
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1671
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zzd(IJ)V

    goto :goto_8

    .line 1662
    :pswitch_85
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1663
    nop

    .line 1664
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1665
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v9

    .line 1666
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(II)V

    goto :goto_8

    .line 1657
    :pswitch_86
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1658
    nop

    .line 1659
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1660
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1661
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zzc(IJ)V

    goto :goto_8

    .line 1652
    :pswitch_87
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1653
    nop

    .line 1654
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1655
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1656
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IJ)V

    goto :goto_8

    .line 1647
    :pswitch_88
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1648
    nop

    .line 1649
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1650
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result v9

    .line 1651
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/zzmr;->zza(IF)V

    goto :goto_8

    .line 1642
    :pswitch_89
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1643
    nop

    .line 1644
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1645
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1646
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/zzmr;->zza(ID)V

    .line 2072
    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    .line 2073
    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    .line 2074
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Lcom/google/android/gms/internal/vision/zzmr;Ljava/util/Map$Entry;)V

    .line 2075
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_9

    .line 2076
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 2077
    return-void

    .line 2078
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzmr;)V

    .line 2079
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzhn;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/vision/zzhn;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3728
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/vision/zzko;->zzj:Z

    if-eqz v0, :cond_1e

    .line 3729
    nop

    .line 3730
    sget-object v9, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 3731
    nop

    .line 3732
    nop

    .line 3733
    nop

    .line 3734
    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    .line 3735
    :goto_0
    if-ge v0, v13, :cond_1b

    .line 3736
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    .line 3737
    if-gez v0, :cond_0

    .line 3738
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3739
    iget v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    .line 3737
    :cond_0
    move/from16 v17, v0

    move v4, v3

    .line 3740
    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    .line 3741
    and-int/lit8 v3, v17, 0x7

    .line 3742
    if-le v5, v1, :cond_1

    .line 3743
    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/vision/zzko;->zza(II)I

    move-result v0

    move v2, v0

    goto :goto_2

    .line 3744
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/vision/zzko;->zzg(I)I

    move-result v0

    move v2, v0

    .line 3745
    :goto_2
    nop

    .line 3746
    if-ne v2, v10, :cond_2

    .line 3747
    move v2, v4

    move/from16 v20, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_c

    .line 3748
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    .line 3749
    nop

    .line 3750
    const/high16 v0, 0xff00000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x14

    .line 3751
    nop

    .line 3752
    nop

    .line 3753
    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    .line 3754
    nop

    .line 3755
    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_10

    .line 3756
    iget-object v10, v15, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v21, v2, 0x2

    aget v10, v10, v21

    .line 3757
    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    .line 3758
    const v13, 0xfffff

    and-int/2addr v10, v13

    .line 3759
    if-eq v10, v7, :cond_5

    .line 3760
    if-eq v7, v13, :cond_3

    .line 3761
    move/from16 v23, v1

    move/from16 v20, v2

    int-to-long v1, v7

    move-object/from16 v7, v19

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 3760
    :cond_3
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v7, v19

    .line 3762
    :goto_3
    if-eq v10, v13, :cond_4

    .line 3763
    int-to-long v1, v10

    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v6, v1

    .line 3764
    :cond_4
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_4

    .line 3759
    :cond_5
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v10, v19

    .line 3765
    :goto_4
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    goto/16 :goto_8

    .line 3837
    :pswitch_0
    if-nez v3, :cond_6

    .line 3838
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v17

    .line 3839
    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    .line 3840
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzif;->zza(J)J

    move-result-wide v4

    .line 3841
    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v20

    move-wide v2, v8

    move/from16 v20, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3842
    or-int v6, v6, v21

    .line 3843
    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3837
    :cond_6
    move/from16 v13, v20

    move/from16 v20, p3

    const v19, 0xfffff

    goto/16 :goto_8

    .line 3830
    :pswitch_1
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_7

    .line 3831
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3832
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    .line 3833
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzif;->zze(I)I

    move-result v1

    .line 3834
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3835
    or-int v6, v6, v21

    .line 3836
    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3830
    :cond_7
    const v19, 0xfffff

    goto/16 :goto_8

    .line 3825
    :pswitch_2
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_8

    .line 3826
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3827
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3828
    or-int v6, v6, v21

    .line 3829
    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3825
    :cond_8
    const v19, 0xfffff

    goto/16 :goto_8

    .line 3820
    :pswitch_3
    move/from16 v13, v20

    move/from16 v20, p3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    .line 3821
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zze([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3822
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3823
    or-int v6, v6, v21

    .line 3824
    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3820
    :cond_9
    const v19, 0xfffff

    goto/16 :goto_8

    .line 3808
    :pswitch_4
    move/from16 v13, v20

    move/from16 v20, p3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_b

    .line 3809
    nop

    .line 3810
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3811
    move/from16 v2, p4

    const v19, 0xfffff

    invoke-static {v0, v12, v4, v2, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;[BIILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3812
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 3813
    if-nez v1, :cond_a

    .line 3814
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 3815
    :cond_a
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    .line 3816
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/zzjf;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3817
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3818
    :goto_5
    or-int v6, v6, v21

    .line 3819
    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 3808
    :cond_b
    move/from16 v2, p4

    const v19, 0xfffff

    goto/16 :goto_8

    .line 3801
    :pswitch_5
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_f

    .line 3802
    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_c

    .line 3803
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    goto :goto_6

    .line 3804
    :cond_c
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3805
    :goto_6
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzc:Ljava/lang/Object;

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3806
    or-int v6, v6, v21

    .line 3807
    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 3796
    :pswitch_6
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_f

    .line 3797
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3798
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    :goto_7
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JZ)V

    .line 3799
    or-int v6, v6, v21

    .line 3800
    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 3791
    :pswitch_7
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_f

    .line 3792
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3793
    add-int/lit8 v0, v4, 0x4

    .line 3794
    or-int v6, v6, v21

    .line 3795
    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 3786
    :pswitch_8
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_e

    .line 3787
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3788
    add-int/lit8 v0, v8, 0x8

    .line 3789
    or-int v6, v6, v21

    .line 3790
    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3786
    :cond_e
    move v8, v4

    goto/16 :goto_8

    .line 3781
    :pswitch_9
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_f

    .line 3782
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zza([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3783
    iget v1, v11, Lcom/google/android/gms/internal/vision/zzhn;->zza:I

    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3784
    or-int v6, v6, v21

    .line 3785
    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3776
    :pswitch_a
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_f

    .line 3777
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/zzhl;->zzb([BILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v17

    .line 3778
    iget-wide v4, v11, Lcom/google/android/gms/internal/vision/zzhn;->zzb:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 3779
    or-int v6, v6, v21

    .line 3780
    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3771
    :pswitch_b
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_f

    .line 3772
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzd([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JF)V

    .line 3773
    add-int/lit8 v0, v4, 0x4

    .line 3774
    or-int v6, v6, v21

    .line 3775
    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3766
    :pswitch_c
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_f

    .line 3767
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/zzhl;->zzc([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JD)V

    .line 3768
    add-int/lit8 v0, v4, 0x8

    .line 3769
    or-int v6, v6, v21

    .line 3770
    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3844
    :cond_f
    :goto_8
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_c

    :cond_10
    move/from16 v20, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v19

    const v19, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_14

    .line 3845
    const/4 v0, 0x2

    if-ne v3, v0, :cond_13

    .line 3846
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjl;

    .line 3847
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjl;->zza()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3848
    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjl;->size()I

    move-result v1

    .line 3849
    nop

    .line 3850
    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_9

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    .line 3851
    :goto_9
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->zza(I)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v0

    .line 3852
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v0

    goto :goto_a

    .line 3847
    :cond_12
    move-object v5, v0

    .line 3853
    :goto_a
    nop

    .line 3854
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    .line 3855
    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzhl;->zza(Lcom/google/android/gms/internal/vision/zzlc;I[BIILcom/google/android/gms/internal/vision/zzjl;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3856
    move v6, v8

    move-object v9, v10

    move v2, v13

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    .line 3845
    :cond_13
    move v8, v6

    move v15, v4

    move/from16 v25, v7

    move/from16 v24, v8

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_b

    .line 3857
    :cond_14
    const/16 v1, 0x31

    if-gt v0, v1, :cond_16

    .line 3858
    nop

    .line 3859
    move/from16 v1, v23

    int-to-long v1, v1

    .line 3860
    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v19, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3861
    if-ne v0, v15, :cond_15

    .line 3862
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_c

    .line 3861
    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    .line 3862
    :cond_16
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v19, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_19

    .line 3863
    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_18

    .line 3864
    nop

    .line 3865
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3866
    if-ne v0, v15, :cond_17

    .line 3867
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_c

    .line 3866
    :cond_17
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    .line 3872
    :cond_18
    :goto_b
    move v2, v15

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_c

    .line 3868
    :cond_19
    move/from16 v7, p3

    .line 3869
    nop

    .line 3870
    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v20

    move-wide/from16 v10, v26

    move/from16 v12, v19

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3871
    if-ne v0, v15, :cond_1a

    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    .line 3872
    :goto_c
    nop

    .line 3873
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzlx;

    move-result-object v4

    .line 3874
    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzhl;->zza(I[BIILcom/google/android/gms/internal/vision/zzlx;Lcom/google/android/gms/internal/vision/zzhn;)I

    move-result v0

    .line 3875
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    .line 3871
    :cond_1a
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    .line 3876
    :cond_1b
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_1c

    .line 3877
    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 3878
    :cond_1c
    move/from16 v4, p4

    if-ne v0, v4, :cond_1d

    .line 3880
    return-void

    .line 3879
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->zzg()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object v0

    throw v0

    .line 3881
    :cond_1e
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzhn;)I

    .line 3882
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v0, v0

    .line 250
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_15

    .line 251
    nop

    .line 252
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v4

    .line 253
    nop

    .line 254
    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    .line 255
    nop

    .line 256
    nop

    .line 257
    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    .line 258
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 325
    :pswitch_0
    nop

    .line 326
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/vision/zzko;->zze(I)I

    move-result v4

    .line 327
    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v8

    .line 328
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 329
    nop

    .line 330
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 331
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_0
    nop

    .line 332
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 322
    :pswitch_1
    nop

    .line 323
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 324
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 319
    :pswitch_2
    nop

    .line 320
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 321
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 315
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 317
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_1
    nop

    .line 318
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 312
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_2
    nop

    .line 314
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 309
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_3
    nop

    .line 311
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 306
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_4
    nop

    .line 308
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 303
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 304
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_5
    nop

    .line 305
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 300
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 301
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_6
    nop

    .line 302
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 297
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 298
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_7
    nop

    .line 299
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 293
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 294
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_8
    nop

    .line 296
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 289
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 290
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 291
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_9
    nop

    .line 292
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 285
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 286
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 287
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    :cond_a
    nop

    .line 288
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 282
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 283
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_b
    nop

    .line 284
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 279
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 280
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_c
    nop

    .line 281
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 276
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 277
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_d
    nop

    .line 278
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 273
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 274
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_e
    nop

    .line 275
    const/4 v3, 0x0

    goto :goto_2

    .line 270
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 271
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_f
    nop

    .line 272
    const/4 v3, 0x0

    goto :goto_2

    .line 267
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 268
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_10
    nop

    .line 269
    const/4 v3, 0x0

    goto :goto_2

    .line 263
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 264
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 265
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_13

    :cond_11
    nop

    .line 266
    const/4 v3, 0x0

    goto :goto_2

    .line 259
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/zzko;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 260
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 261
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_13

    :cond_12
    nop

    .line 262
    const/4 v3, 0x0

    goto :goto_2

    .line 333
    :cond_13
    :goto_1
    nop

    .line 334
    :goto_2
    if-nez v3, :cond_14

    .line 335
    return v1

    .line 336
    :cond_14
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 337
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/zzlu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 340
    return v1

    .line 341
    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_17

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object p2

    .line 344
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zziu;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 345
    :cond_17
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzko;->zzj:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    .line 576
    sget-object v2, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 577
    nop

    .line 578
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4

    .line 579
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v14

    .line 580
    nop

    .line 581
    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 582
    nop

    .line 583
    nop

    .line 584
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v3, v3, v12

    .line 585
    nop

    .line 586
    nop

    .line 587
    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 588
    nop

    .line 589
    sget-object v14, Lcom/google/android/gms/internal/vision/zziv;->zza:Lcom/google/android/gms/internal/vision/zziv;

    .line 590
    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/zziv;->zza()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/vision/zziv;->zzb:Lcom/google/android/gms/internal/vision/zziv;

    .line 591
    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/zziv;->zza()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 592
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    goto :goto_1

    .line 593
    :cond_0
    nop

    .line 594
    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_2

    .line 841
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 842
    nop

    .line 843
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzkk;

    .line 844
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v6

    .line 845
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 839
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 840
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzf(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 837
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 838
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzh(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 835
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 836
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzii;->zzh(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 833
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 834
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzii;->zzj(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 831
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 832
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzk(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 829
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 830
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 825
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 826
    nop

    .line 827
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzht;

    .line 828
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 821
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 822
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 823
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    add-int/2addr v13, v3

    .line 824
    goto/16 :goto_2

    .line 815
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 816
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 817
    instance-of v6, v5, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v6, :cond_1

    .line 818
    check-cast v5, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 819
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    .line 820
    goto/16 :goto_2

    .line 813
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 814
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 811
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 812
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzii;->zzi(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 809
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 810
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzii;->zzg(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 807
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 808
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzf(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 805
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 806
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zze(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 803
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 804
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzd(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 801
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 802
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 799
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 800
    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ID)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 795
    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 796
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzb(I)Ljava/lang/Object;

    move-result-object v6

    .line 797
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzkh;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v13, v3

    .line 798
    goto/16 :goto_2

    .line 791
    :pswitch_13
    nop

    .line 792
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v6

    .line 793
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    add-int/2addr v13, v3

    .line 794
    goto/16 :goto_2

    .line 784
    :pswitch_14
    nop

    .line 785
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 786
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzc(Ljava/util/List;)I

    move-result v5

    .line 787
    if-lez v5, :cond_3

    .line 788
    nop

    .line 789
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 790
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 777
    :pswitch_15
    nop

    .line 778
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 779
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzg(Ljava/util/List;)I

    move-result v5

    .line 780
    if-lez v5, :cond_3

    .line 781
    nop

    .line 782
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 783
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 770
    :pswitch_16
    nop

    .line 771
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 772
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzi(Ljava/util/List;)I

    move-result v5

    .line 773
    if-lez v5, :cond_3

    .line 774
    nop

    .line 775
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 776
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 763
    :pswitch_17
    nop

    .line 764
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 765
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzh(Ljava/util/List;)I

    move-result v5

    .line 766
    if-lez v5, :cond_3

    .line 767
    nop

    .line 768
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 769
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 756
    :pswitch_18
    nop

    .line 757
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 758
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzd(Ljava/util/List;)I

    move-result v5

    .line 759
    if-lez v5, :cond_3

    .line 760
    nop

    .line 761
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 762
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 749
    :pswitch_19
    nop

    .line 750
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 751
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzf(Ljava/util/List;)I

    move-result v5

    .line 752
    if-lez v5, :cond_3

    .line 753
    nop

    .line 754
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 755
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 742
    :pswitch_1a
    nop

    .line 743
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 744
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzj(Ljava/util/List;)I

    move-result v5

    .line 745
    if-lez v5, :cond_3

    .line 746
    nop

    .line 747
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 748
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 735
    :pswitch_1b
    nop

    .line 736
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 737
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzh(Ljava/util/List;)I

    move-result v5

    .line 738
    if-lez v5, :cond_3

    .line 739
    nop

    .line 740
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 741
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 728
    :pswitch_1c
    nop

    .line 729
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 730
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzi(Ljava/util/List;)I

    move-result v5

    .line 731
    if-lez v5, :cond_3

    .line 732
    nop

    .line 733
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 734
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 721
    :pswitch_1d
    nop

    .line 722
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 723
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zze(Ljava/util/List;)I

    move-result v5

    .line 724
    if-lez v5, :cond_3

    .line 725
    nop

    .line 726
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 727
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 714
    :pswitch_1e
    nop

    .line 715
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 716
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzb(Ljava/util/List;)I

    move-result v5

    .line 717
    if-lez v5, :cond_3

    .line 718
    nop

    .line 719
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 720
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 707
    :pswitch_1f
    nop

    .line 708
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 709
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/util/List;)I

    move-result v5

    .line 710
    if-lez v5, :cond_3

    .line 711
    nop

    .line 712
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 713
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 700
    :pswitch_20
    nop

    .line 701
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 702
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzh(Ljava/util/List;)I

    move-result v5

    .line 703
    if-lez v5, :cond_3

    .line 704
    nop

    .line 705
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 706
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 693
    :pswitch_21
    nop

    .line 694
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 695
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzle;->zzi(Ljava/util/List;)I

    move-result v5

    .line 696
    if-lez v5, :cond_3

    .line 697
    nop

    .line 698
    invoke-static {v3}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v3

    .line 699
    invoke-static {v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 690
    :pswitch_22
    nop

    .line 691
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 692
    goto/16 :goto_2

    .line 686
    :pswitch_23
    nop

    .line 687
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 688
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 689
    goto/16 :goto_2

    .line 684
    :pswitch_24
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 685
    goto/16 :goto_2

    .line 682
    :pswitch_25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 683
    goto/16 :goto_2

    .line 678
    :pswitch_26
    nop

    .line 679
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 680
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 681
    goto/16 :goto_2

    .line 674
    :pswitch_27
    nop

    .line 675
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 676
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 677
    goto/16 :goto_2

    .line 670
    :pswitch_28
    nop

    .line 671
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 672
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    .line 673
    goto/16 :goto_2

    .line 666
    :pswitch_29
    nop

    .line 667
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v6

    .line 668
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    add-int/2addr v13, v3

    .line 669
    goto/16 :goto_2

    .line 664
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    .line 665
    goto/16 :goto_2

    .line 662
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 663
    goto/16 :goto_2

    .line 660
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 661
    goto/16 :goto_2

    .line 658
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 659
    goto/16 :goto_2

    .line 654
    :pswitch_2e
    nop

    .line 655
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 656
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 657
    goto/16 :goto_2

    .line 651
    :pswitch_2f
    nop

    .line 652
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 653
    goto/16 :goto_2

    .line 648
    :pswitch_30
    nop

    .line 649
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 650
    goto/16 :goto_2

    .line 646
    :pswitch_31
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 647
    goto/16 :goto_2

    .line 644
    :pswitch_32
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    .line 645
    goto/16 :goto_2

    .line 639
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 640
    nop

    .line 641
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzkk;

    .line 642
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v6

    .line 643
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 636
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 637
    nop

    .line 638
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzf(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 634
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 635
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzh(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 632
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 633
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzii;->zzh(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 630
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 631
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzii;->zzj(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 628
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 629
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzk(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 626
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 627
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzg(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 622
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 623
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/zzht;

    .line 624
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    add-int/2addr v13, v3

    .line 625
    goto/16 :goto_2

    .line 618
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 619
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 620
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v3

    add-int/2addr v13, v3

    .line 621
    goto/16 :goto_2

    .line 612
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 613
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 614
    instance-of v6, v5, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v6, :cond_2

    .line 615
    check-cast v5, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_2

    .line 616
    :cond_2
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    .line 617
    goto/16 :goto_2

    .line 610
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 611
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 608
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 609
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzii;->zzi(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 606
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 607
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/zzii;->zzg(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 604
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 605
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/zzii;->zzf(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 601
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 602
    nop

    .line 603
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zze(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 599
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 600
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzd(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 597
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 598
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_2

    .line 595
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 596
    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ID)I

    move-result v3

    add-int/2addr v13, v3

    .line 846
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 847
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    .line 848
    return v13

    .line 849
    :cond_5
    nop

    .line 850
    sget-object v2, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    .line 851
    nop

    .line 852
    nop

    .line 853
    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v12, 0x0

    :goto_3
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v13, v13

    if-ge v3, v13, :cond_3c

    .line 854
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v13

    .line 855
    nop

    .line 856
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v14, v14, v3

    .line 857
    nop

    .line 858
    nop

    .line 859
    const/high16 v15, 0xff00000

    and-int v16, v13, v15

    ushr-int/lit8 v15, v16, 0x14

    .line 860
    nop

    .line 861
    nop

    .line 862
    const/16 v4, 0x11

    if-gt v15, v4, :cond_7

    .line 863
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v18, v3, 0x2

    aget v4, v4, v18

    .line 864
    and-int v11, v4, v7

    .line 865
    ushr-int/lit8 v4, v4, 0x14

    shl-int v4, v8, v4

    .line 866
    if-eq v11, v6, :cond_6

    .line 867
    nop

    .line 868
    int-to-long v8, v11

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v12, v6

    move v6, v11

    .line 869
    :cond_6
    goto :goto_4

    .line 862
    :cond_7
    const/4 v4, 0x0

    .line 870
    :goto_4
    nop

    .line 871
    and-int v8, v13, v7

    int-to-long v8, v8

    .line 872
    nop

    .line 873
    packed-switch v15, :pswitch_data_1

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1137
    :pswitch_45
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1138
    nop

    .line 1139
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzkk;

    .line 1140
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    .line 1141
    invoke-static {v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1137
    :cond_8
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1135
    :pswitch_46
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1136
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzf(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1135
    :cond_9
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1133
    :pswitch_47
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1134
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzh(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1133
    :cond_a
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1131
    :pswitch_48
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1132
    const-wide/16 v8, 0x0

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzh(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1131
    :cond_b
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1129
    :pswitch_49
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1130
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzj(II)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1129
    :cond_c
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1127
    :pswitch_4a
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1128
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzk(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1127
    :cond_d
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1125
    :pswitch_4b
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1126
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1125
    :cond_e
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1121
    :pswitch_4c
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1122
    nop

    .line 1123
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzht;

    .line 1124
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1121
    :cond_f
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1117
    :pswitch_4d
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1118
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1119
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    invoke-static {v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v4

    add-int/2addr v5, v4

    .line 1120
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1117
    :cond_10
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1111
    :pswitch_4e
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1112
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1113
    instance-of v8, v4, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v8, :cond_11

    .line 1114
    check-cast v4, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1115
    :cond_11
    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 1116
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1111
    :cond_12
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1109
    :pswitch_4f
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1110
    const/4 v4, 0x1

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IZ)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1109
    :cond_13
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1107
    :pswitch_50
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1108
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzi(II)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1107
    :cond_14
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1105
    :pswitch_51
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1106
    const-wide/16 v8, 0x0

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzg(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1105
    :cond_15
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1103
    :pswitch_52
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1104
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zzd(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzf(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1103
    :cond_16
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1101
    :pswitch_53
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1102
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zze(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1101
    :cond_17
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1099
    :pswitch_54
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1100
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/zzko;->zze(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzd(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1099
    :cond_18
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1097
    :pswitch_55
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1098
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IF)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1097
    :cond_19
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1095
    :pswitch_56
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1096
    const-wide/16 v8, 0x0

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ID)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1095
    :cond_1a
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1091
    :pswitch_57
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 1092
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zzb(I)Ljava/lang/Object;

    move-result-object v9

    .line 1093
    invoke-interface {v4, v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzkh;->zza(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v5, v4

    .line 1094
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1086
    :pswitch_58
    nop

    .line 1087
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1088
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    .line 1089
    invoke-static {v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v4

    add-int/2addr v5, v4

    .line 1090
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1079
    :pswitch_59
    nop

    .line 1080
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1081
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzc(Ljava/util/List;)I

    move-result v4

    .line 1082
    if-lez v4, :cond_1b

    .line 1083
    nop

    .line 1084
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1085
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1082
    :cond_1b
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1072
    :pswitch_5a
    nop

    .line 1073
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1074
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzg(Ljava/util/List;)I

    move-result v4

    .line 1075
    if-lez v4, :cond_1c

    .line 1076
    nop

    .line 1077
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1078
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1075
    :cond_1c
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1065
    :pswitch_5b
    nop

    .line 1066
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1067
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzi(Ljava/util/List;)I

    move-result v4

    .line 1068
    if-lez v4, :cond_1d

    .line 1069
    nop

    .line 1070
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1071
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1068
    :cond_1d
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1058
    :pswitch_5c
    nop

    .line 1059
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1060
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzh(Ljava/util/List;)I

    move-result v4

    .line 1061
    if-lez v4, :cond_1e

    .line 1062
    nop

    .line 1063
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1064
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1061
    :cond_1e
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1051
    :pswitch_5d
    nop

    .line 1052
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1053
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzd(Ljava/util/List;)I

    move-result v4

    .line 1054
    if-lez v4, :cond_1f

    .line 1055
    nop

    .line 1056
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1057
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1054
    :cond_1f
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1044
    :pswitch_5e
    nop

    .line 1045
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1046
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzf(Ljava/util/List;)I

    move-result v4

    .line 1047
    if-lez v4, :cond_20

    .line 1048
    nop

    .line 1049
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1050
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1047
    :cond_20
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1037
    :pswitch_5f
    nop

    .line 1038
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1039
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzj(Ljava/util/List;)I

    move-result v4

    .line 1040
    if-lez v4, :cond_21

    .line 1041
    nop

    .line 1042
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1043
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1040
    :cond_21
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1030
    :pswitch_60
    nop

    .line 1031
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1032
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzh(Ljava/util/List;)I

    move-result v4

    .line 1033
    if-lez v4, :cond_22

    .line 1034
    nop

    .line 1035
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1036
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1033
    :cond_22
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1023
    :pswitch_61
    nop

    .line 1024
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1025
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzi(Ljava/util/List;)I

    move-result v4

    .line 1026
    if-lez v4, :cond_23

    .line 1027
    nop

    .line 1028
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1029
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1026
    :cond_23
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1016
    :pswitch_62
    nop

    .line 1017
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1018
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zze(Ljava/util/List;)I

    move-result v4

    .line 1019
    if-lez v4, :cond_24

    .line 1020
    nop

    .line 1021
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1022
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1019
    :cond_24
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1009
    :pswitch_63
    nop

    .line 1010
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1011
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzb(Ljava/util/List;)I

    move-result v4

    .line 1012
    if-lez v4, :cond_25

    .line 1013
    nop

    .line 1014
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1015
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1012
    :cond_25
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1002
    :pswitch_64
    nop

    .line 1003
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1004
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zza(Ljava/util/List;)I

    move-result v4

    .line 1005
    if-lez v4, :cond_26

    .line 1006
    nop

    .line 1007
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1008
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 1005
    :cond_26
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 995
    :pswitch_65
    nop

    .line 996
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 997
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzh(Ljava/util/List;)I

    move-result v4

    .line 998
    if-lez v4, :cond_27

    .line 999
    nop

    .line 1000
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 1001
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 998
    :cond_27
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 988
    :pswitch_66
    nop

    .line 989
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 990
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzle;->zzi(Ljava/util/List;)I

    move-result v4

    .line 991
    if-lez v4, :cond_28

    .line 992
    nop

    .line 993
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/zzii;->zze(I)I

    move-result v8

    .line 994
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 991
    :cond_28
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 984
    :pswitch_67
    nop

    .line 985
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 986
    const/4 v10, 0x0

    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzc(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 987
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 980
    :pswitch_68
    const/4 v10, 0x0

    .line 981
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 982
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzg(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 983
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 976
    :pswitch_69
    const/4 v10, 0x0

    .line 977
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 978
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 979
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 972
    :pswitch_6a
    const/4 v10, 0x0

    .line 973
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 974
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 975
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 968
    :pswitch_6b
    const/4 v10, 0x0

    .line 969
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 970
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzd(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 971
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 964
    :pswitch_6c
    const/4 v10, 0x0

    .line 965
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 966
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzf(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 967
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 960
    :pswitch_6d
    nop

    .line 961
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 962
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    .line 963
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 956
    :pswitch_6e
    nop

    .line 957
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    .line 958
    invoke-static {v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v4

    add-int/2addr v5, v4

    .line 959
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 953
    :pswitch_6f
    nop

    .line 954
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v4

    .line 955
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 949
    :pswitch_70
    nop

    .line 950
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 951
    const/4 v10, 0x0

    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzj(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 952
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 945
    :pswitch_71
    const/4 v10, 0x0

    .line 946
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 947
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 948
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 941
    :pswitch_72
    const/4 v10, 0x0

    .line 942
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 943
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 944
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 937
    :pswitch_73
    const/4 v10, 0x0

    .line 938
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 939
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zze(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 940
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 933
    :pswitch_74
    const/4 v10, 0x0

    .line 934
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 935
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzb(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 936
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 929
    :pswitch_75
    const/4 v10, 0x0

    .line 930
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 931
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 932
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 925
    :pswitch_76
    const/4 v10, 0x0

    .line 926
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 927
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzh(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 928
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 921
    :pswitch_77
    const/4 v10, 0x0

    .line 922
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 923
    invoke-static {v14, v4, v10}, Lcom/google/android/gms/internal/vision/zzle;->zzi(ILjava/util/List;Z)I

    move-result v4

    add-int/2addr v5, v4

    .line 924
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 916
    :pswitch_78
    and-int/2addr v4, v12

    if-eqz v4, :cond_29

    .line 917
    nop

    .line 918
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzkk;

    .line 919
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    .line 920
    invoke-static {v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 916
    :cond_29
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 914
    :pswitch_79
    and-int/2addr v4, v12

    if-eqz v4, :cond_2a

    .line 915
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzf(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 914
    :cond_2a
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 912
    :pswitch_7a
    and-int/2addr v4, v12

    if-eqz v4, :cond_2b

    .line 913
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzh(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 912
    :cond_2b
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 910
    :pswitch_7b
    and-int/2addr v4, v12

    if-eqz v4, :cond_2c

    .line 911
    const-wide/16 v8, 0x0

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzh(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 910
    :cond_2c
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 908
    :pswitch_7c
    and-int/2addr v4, v12

    if-eqz v4, :cond_2d

    .line 909
    const/4 v4, 0x0

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzj(II)I

    move-result v8

    add-int/2addr v5, v8

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 908
    :cond_2d
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 906
    :pswitch_7d
    and-int/2addr v4, v12

    if-eqz v4, :cond_2e

    .line 907
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzk(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 906
    :cond_2e
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 904
    :pswitch_7e
    and-int/2addr v4, v12

    if-eqz v4, :cond_2f

    .line 905
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzg(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 904
    :cond_2f
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 900
    :pswitch_7f
    and-int/2addr v4, v12

    if-eqz v4, :cond_30

    .line 901
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zzht;

    .line 902
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v4

    add-int/2addr v5, v4

    .line 903
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 900
    :cond_30
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 896
    :pswitch_80
    and-int/2addr v4, v12

    if-eqz v4, :cond_31

    .line 897
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 898
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v8

    invoke-static {v14, v4, v8}, Lcom/google/android/gms/internal/vision/zzle;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result v4

    add-int/2addr v5, v4

    .line 899
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 896
    :cond_31
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 890
    :pswitch_81
    and-int/2addr v4, v12

    if-eqz v4, :cond_33

    .line 891
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 892
    instance-of v8, v4, Lcom/google/android/gms/internal/vision/zzht;

    if-eqz v8, :cond_32

    .line 893
    check-cast v4, Lcom/google/android/gms/internal/vision/zzht;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 894
    :cond_32
    check-cast v4, Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 895
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 890
    :cond_33
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 888
    :pswitch_82
    and-int/2addr v4, v12

    if-eqz v4, :cond_34

    .line 889
    const/4 v10, 0x1

    invoke-static {v14, v10}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IZ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 888
    :cond_34
    const/4 v10, 0x1

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 886
    :pswitch_83
    const/4 v10, 0x1

    and-int/2addr v4, v12

    if-eqz v4, :cond_35

    .line 887
    const/4 v11, 0x0

    invoke-static {v14, v11}, Lcom/google/android/gms/internal/vision/zzii;->zzi(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 886
    :cond_35
    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v18, 0x0

    goto/16 :goto_5

    .line 884
    :pswitch_84
    const/4 v10, 0x1

    const/4 v11, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_36

    .line 885
    const-wide/16 v8, 0x0

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzg(IJ)I

    move-result v4

    add-int/2addr v5, v4

    move-wide/from16 v18, v8

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    .line 884
    :cond_36
    const-wide/16 v8, 0x0

    move-wide/from16 v18, v8

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    .line 882
    :pswitch_85
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_37

    .line 883
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/vision/zzii;->zzf(II)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    goto :goto_5

    .line 882
    :cond_37
    const-wide/16 v7, 0x0

    goto :goto_5

    .line 880
    :pswitch_86
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_38

    .line 881
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zze(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    goto :goto_5

    .line 880
    :cond_38
    const-wide/16 v7, 0x0

    goto :goto_5

    .line 878
    :pswitch_87
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_39

    .line 879
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/gms/internal/vision/zzii;->zzd(IJ)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    goto :goto_5

    .line 878
    :cond_39
    const-wide/16 v7, 0x0

    goto :goto_5

    .line 876
    :pswitch_88
    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_3a

    .line 877
    const/4 v8, 0x0

    invoke-static {v14, v8}, Lcom/google/android/gms/internal/vision/zzii;->zzb(IF)I

    move-result v4

    add-int/2addr v5, v4

    const-wide/16 v7, 0x0

    goto :goto_5

    .line 876
    :cond_3a
    const/4 v8, 0x0

    const-wide/16 v7, 0x0

    goto :goto_5

    .line 874
    :pswitch_89
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v18, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_3b

    .line 875
    const-wide/16 v7, 0x0

    invoke-static {v14, v7, v8}, Lcom/google/android/gms/internal/vision/zzii;->zzb(ID)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_5

    .line 874
    :cond_3b
    const-wide/16 v7, 0x0

    .line 1142
    :goto_5
    add-int/lit8 v3, v3, 0x3

    move-wide/from16 v9, v18

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 1143
    :cond_3c
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzko;->zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1144
    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v2, :cond_3f

    .line 1145
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object v1

    .line 1146
    nop

    .line 1147
    const/4 v2, 0x0

    :goto_6
    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zziu;->zza:Lcom/google/android/gms/internal/vision/zzlh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/zzlh;->zzc()I

    move-result v3

    if-ge v11, v3, :cond_3d

    .line 1148
    iget-object v3, v1, Lcom/google/android/gms/internal/vision/zziu;->zza:Lcom/google/android/gms/internal/vision/zzlh;

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/vision/zzlh;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 1149
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zziw;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzc(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1150
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1151
    :cond_3d
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zziu;->zza:Lcom/google/android/gms/internal/vision/zzlh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzlh;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1152
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/zziw;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/zziu;->zzc(Lcom/google/android/gms/internal/vision/zziw;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1153
    goto :goto_7

    .line 1154
    :cond_3e
    nop

    .line 1155
    add-int/2addr v5, v2

    .line 1156
    :cond_3f
    nop

    .line 1157
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 455
    if-eqz p2, :cond_3

    .line 457
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 458
    nop

    .line 459
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v1

    .line 460
    nop

    .line 461
    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 462
    nop

    .line 463
    nop

    .line 464
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v4, v4, v0

    .line 465
    nop

    .line 466
    nop

    .line 467
    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    .line 468
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 533
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 530
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 532
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 528
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 529
    goto/16 :goto_1

    .line 525
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 527
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 523
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzle;->zza(Lcom/google/android/gms/internal/vision/zzkh;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 524
    goto/16 :goto_1

    .line 521
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzju;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 522
    goto/16 :goto_1

    .line 519
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 520
    goto/16 :goto_1

    .line 516
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 518
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 513
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 515
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 510
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 512
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 507
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 504
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 501
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 498
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 496
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 497
    goto/16 :goto_1

    .line 493
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 490
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzc(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JZ)V

    .line 492
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 487
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 484
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 486
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 481
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JI)V

    .line 483
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 478
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 475
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzb(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JJ)V

    .line 477
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 472
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zzd(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JF)V

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    goto :goto_1

    .line 469
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zze(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JD)V

    .line 471
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzko;->zzb(Ljava/lang/Object;I)V

    .line 534
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzle;->zza(Lcom/google/android/gms/internal/vision/zzlu;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzle;->zza(Lcom/google/android/gms/internal/vision/zziq;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 538
    :cond_2
    return-void

    .line 456
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3883
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    if-ge v0, v1, :cond_1

    .line 3884
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v1

    .line 3885
    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3886
    nop

    .line 3887
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 3888
    if-eqz v3, :cond_0

    .line 3889
    iget-object v4, p0, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/vision/zzkh;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzma;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3890
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3891
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    array-length v0, v0

    .line 3892
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzko;->zzn:I

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3893
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzko;->zzp:Lcom/google/android/gms/internal/vision/zzju;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/zzju;->zzb(Ljava/lang/Object;J)V

    .line 3894
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3895
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzq:Lcom/google/android/gms/internal/vision/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzlu;->zzd(Ljava/lang/Object;)V

    .line 3896
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_3

    .line 3897
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zziq;->zzc(Ljava/lang/Object;)V

    .line 3898
    :cond_3
    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 3934
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 3935
    nop

    .line 3936
    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/vision/zzko;->zzm:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_a

    .line 3937
    iget-object v2, v6, Lcom/google/android/gms/internal/vision/zzko;->zzl:[I

    aget v12, v2, v10

    .line 3938
    nop

    .line 3939
    iget-object v2, v6, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    aget v13, v2, v12

    .line 3940
    nop

    .line 3941
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzd(I)I

    move-result v14

    .line 3942
    iget-object v2, v6, Lcom/google/android/gms/internal/vision/zzko;->zzc:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    .line 3943
    and-int v3, v2, v8

    .line 3944
    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    .line 3945
    if-eq v3, v0, :cond_1

    .line 3946
    nop

    .line 3947
    if-eq v3, v8, :cond_0

    .line 3948
    sget-object v0, Lcom/google/android/gms/internal/vision/zzko;->zzb:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_1

    .line 3947
    :cond_0
    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_1

    .line 3945
    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    .line 3949
    :goto_1
    nop

    .line 3950
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 3951
    :goto_2
    if-eqz v0, :cond_3

    .line 3952
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3953
    return v9

    .line 3954
    :cond_3
    nop

    .line 3955
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    .line 3956
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    .line 3974
    :sswitch_0
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3975
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzlc;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3976
    return v9

    .line 3977
    :sswitch_1
    nop

    .line 3978
    iget-object v0, v6, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    .line 3979
    and-int v1, v14, v8

    int-to-long v1, v1

    .line 3980
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zzc(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 3981
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3982
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/vision/zzko;->zzb(I)Ljava/lang/Object;

    move-result-object v1

    .line 3983
    iget-object v2, v6, Lcom/google/android/gms/internal/vision/zzko;->zzs:Lcom/google/android/gms/internal/vision/zzkh;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/zzkh;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzkf;

    move-result-object v1

    .line 3984
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/zzkf;->zzc:Lcom/google/android/gms/internal/vision/zzml;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzml;->zza()Lcom/google/android/gms/internal/vision/zzmo;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/vision/zzmo;->zzi:Lcom/google/android/gms/internal/vision/zzmo;

    if-ne v1, v2, :cond_6

    .line 3985
    nop

    .line 3986
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3987
    if-nez v1, :cond_4

    .line 3988
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzky;->zza()Lcom/google/android/gms/internal/vision/zzky;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/vision/zzky;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 3989
    :cond_4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/vision/zzlc;->zzd(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3990
    const/4 v11, 0x0

    goto :goto_4

    .line 3991
    :cond_5
    goto :goto_3

    .line 3992
    :cond_6
    nop

    .line 3993
    :goto_4
    if-nez v11, :cond_9

    .line 3994
    return v9

    .line 3960
    :sswitch_2
    nop

    .line 3961
    nop

    .line 3962
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 3963
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/vision/zzma;->zzf(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3964
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3965
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v1

    .line 3966
    const/4 v2, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 3967
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3968
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/vision/zzlc;->zzd(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3969
    const/4 v11, 0x0

    goto :goto_6

    .line 3970
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3971
    :cond_8
    nop

    .line 3972
    :goto_6
    if-nez v11, :cond_9

    .line 3973
    return v9

    .line 3957
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3958
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/vision/zzko;->zza(I)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/vision/zzko;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/zzlc;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3959
    return v9

    .line 3995
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 3996
    :cond_a
    iget-boolean v0, v6, Lcom/google/android/gms/internal/vision/zzko;->zzh:Z

    if-eqz v0, :cond_b

    .line 3997
    iget-object v0, v6, Lcom/google/android/gms/internal/vision/zzko;->zzr:Lcom/google/android/gms/internal/vision/zziq;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/zziq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zziu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zziu;->zzf()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3998
    return v9

    .line 3999
    :cond_b
    return v11

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0x11 -> :sswitch_3
        0x1b -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x3c -> :sswitch_0
        0x44 -> :sswitch_0
    .end sparse-switch
.end method
