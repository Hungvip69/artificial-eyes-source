.class public final enum Lcom/google/android/gms/internal/vision/zzgz;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzje;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzgz;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzje;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzb:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzc:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzd:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zze:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzf:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzg:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzh:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzi:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzj:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzk:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzl:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzm:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzn:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzo:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final enum zzp:Lcom/google/android/gms/internal/vision/zzgz;

.field private static final zzq:Lcom/google/android/gms/internal/vision/zzjh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjh<",
            "Lcom/google/android/gms/internal/vision/zzgz;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/vision/zzgz;


# instance fields
.field private final zzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zza:Lcom/google/android/gms/internal/vision/zzgz;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "CODE_128"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzb:Lcom/google/android/gms/internal/vision/zzgz;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "CODE_39"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzc:Lcom/google/android/gms/internal/vision/zzgz;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "CODE_93"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzd:Lcom/google/android/gms/internal/vision/zzgz;

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "CODABAR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zze:Lcom/google/android/gms/internal/vision/zzgz;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "DATA_MATRIX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzf:Lcom/google/android/gms/internal/vision/zzgz;

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "EAN_13"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzg:Lcom/google/android/gms/internal/vision/zzgz;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "EAN_8"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzh:Lcom/google/android/gms/internal/vision/zzgz;

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "ITF"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzi:Lcom/google/android/gms/internal/vision/zzgz;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "QR_CODE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzj:Lcom/google/android/gms/internal/vision/zzgz;

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "UPC_A"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzk:Lcom/google/android/gms/internal/vision/zzgz;

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "UPC_E"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzl:Lcom/google/android/gms/internal/vision/zzgz;

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "PDF417"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzm:Lcom/google/android/gms/internal/vision/zzgz;

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "AZTEC"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzn:Lcom/google/android/gms/internal/vision/zzgz;

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "DATABAR"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzo:Lcom/google/android/gms/internal/vision/zzgz;

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgz;

    const-string v1, "TEZ_CODE"

    const/16 v15, 0xf

    const/16 v14, 0x10

    invoke-direct {v0, v1, v15, v14}, Lcom/google/android/gms/internal/vision/zzgz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzp:Lcom/google/android/gms/internal/vision/zzgz;

    .line 51
    new-array v0, v14, [Lcom/google/android/gms/internal/vision/zzgz;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zza:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzb:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzc:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzd:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zze:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzf:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzg:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzh:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzi:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzj:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzk:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzl:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzm:Lcom/google/android/gms/internal/vision/zzgz;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzn:Lcom/google/android/gms/internal/vision/zzgz;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzo:Lcom/google/android/gms/internal/vision/zzgz;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzgz;->zzp:Lcom/google/android/gms/internal/vision/zzgz;

    aput-object v1, v0, v15

    .line 52
    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzs:[Lcom/google/android/gms/internal/vision/zzgz;

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/vision/zzgy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzgy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzq:Lcom/google/android/gms/internal/vision/zzjh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzgz;->zzr:I

    .line 34
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzgz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgz;->zzs:[Lcom/google/android/gms/internal/vision/zzgz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzgz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzgz;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/vision/zzgz;
    .locals 0

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 20
    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 19
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzp:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 18
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzo:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 17
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzn:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 16
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzm:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 15
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzl:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 14
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzk:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 13
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzj:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 12
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzi:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzh:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 10
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzg:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 9
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzf:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 8
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zze:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 7
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzd:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 6
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzc:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 5
    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zzb:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    .line 4
    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/vision/zzgz;->zza:Lcom/google/android/gms/internal/vision/zzgz;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/vision/zzjg;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhb;->zza:Lcom/google/android/gms/internal/vision/zzjg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzgz;->zzr:I

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzgz;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzgz;->zzr:I

    return v0
.end method
