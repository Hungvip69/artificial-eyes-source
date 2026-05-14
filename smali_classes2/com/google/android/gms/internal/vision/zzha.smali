.class public final enum Lcom/google/android/gms/internal/vision/zzha;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzje;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzha;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzje;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzb:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzc:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzd:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zze:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzf:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzg:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzh:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzi:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzj:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzk:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzl:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzm:Lcom/google/android/gms/internal/vision/zzha;

.field private static final enum zzn:Lcom/google/android/gms/internal/vision/zzha;

.field private static final zzo:Lcom/google/android/gms/internal/vision/zzjh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjh<",
            "Lcom/google/android/gms/internal/vision/zzha;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzq:[Lcom/google/android/gms/internal/vision/zzha;


# instance fields
.field private final zzp:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "UNKNOWN_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zza:Lcom/google/android/gms/internal/vision/zzha;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "CONTACT_INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzb:Lcom/google/android/gms/internal/vision/zzha;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "EMAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzc:Lcom/google/android/gms/internal/vision/zzha;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "ISBN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzd:Lcom/google/android/gms/internal/vision/zzha;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "PHONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zze:Lcom/google/android/gms/internal/vision/zzha;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "PRODUCT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzf:Lcom/google/android/gms/internal/vision/zzha;

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "SMS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzg:Lcom/google/android/gms/internal/vision/zzha;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "TEXT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzh:Lcom/google/android/gms/internal/vision/zzha;

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "URL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzi:Lcom/google/android/gms/internal/vision/zzha;

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "WIFI"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzj:Lcom/google/android/gms/internal/vision/zzha;

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "GEO"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzk:Lcom/google/android/gms/internal/vision/zzha;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "CALENDAR_EVENT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzl:Lcom/google/android/gms/internal/vision/zzha;

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "DRIVER_LICENSE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzm:Lcom/google/android/gms/internal/vision/zzha;

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/vision/zzha;

    const-string v1, "BOARDING_PASS"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/gms/internal/vision/zzha;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzn:Lcom/google/android/gms/internal/vision/zzha;

    .line 47
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/android/gms/internal/vision/zzha;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zza:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzb:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzc:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzd:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zze:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzf:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzg:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzh:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzi:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzj:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzk:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzl:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzm:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/android/gms/internal/vision/zzha;->zzn:Lcom/google/android/gms/internal/vision/zzha;

    aput-object v1, v0, v15

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzq:[Lcom/google/android/gms/internal/vision/zzha;

    .line 49
    new-instance v0, Lcom/google/android/gms/internal/vision/zzhd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzhd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzo:Lcom/google/android/gms/internal/vision/zzjh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzha;->zzp:I

    .line 32
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzha;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzha;->zzq:[Lcom/google/android/gms/internal/vision/zzha;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzha;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzha;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/vision/zzha;
    .locals 0

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 18
    const/4 p0, 0x0

    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzn:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 16
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzm:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 15
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzl:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 14
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzk:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 13
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzj:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 12
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzi:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 11
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzh:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzg:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzf:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 8
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zze:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 7
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzd:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 6
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzc:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 5
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zzb:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    .line 4
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/zzha;->zza:Lcom/google/android/gms/internal/vision/zzha;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static zzb()Lcom/google/android/gms/internal/vision/zzjg;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/vision/zzhc;->zza:Lcom/google/android/gms/internal/vision/zzjg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzha;->zzp:I

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzha;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzha;->zzp:I

    return v0
.end method
