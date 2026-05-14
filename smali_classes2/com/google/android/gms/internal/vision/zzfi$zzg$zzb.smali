.class public final enum Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzje;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzfi$zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzje;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

.field private static final enum zzc:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

.field private static final zzd:Lcom/google/android/gms/internal/vision/zzjh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjh<",
            "Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    const-string v1, "CLASSIFICATION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzc:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    const-string v1, "CLASSIFICATION_NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zza:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    const-string v1, "CLASSIFICATION_ALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzb:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzc:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zza:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzb:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    aput-object v1, v0, v4

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzf:[Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzfq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzd:Lcom/google/android/gms/internal/vision/zzjh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zze:I

    .line 21
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzf:[Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;
    .locals 0

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 7
    const/4 p0, 0x0

    return-object p0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzb:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    return-object p0

    .line 5
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zza:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zzc:Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/vision/zzjg;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfr;->zza:Lcom/google/android/gms/internal/vision/zzjg;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zze:I

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzg$zzb;->zze:I

    return v0
.end method
