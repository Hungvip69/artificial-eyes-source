.class public final Lcom/google/android/gms/internal/vision/zzjb$zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzg"
.end annotation


# static fields
.field public static final enum zza:I

.field public static final enum zzb:I

.field public static final enum zzc:I

.field public static final enum zzd:I

.field public static final enum zze:I

.field public static final enum zzf:I

.field public static final enum zzg:I

.field private static final synthetic zzh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 2
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zza:I

    .line 3
    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzb:I

    .line 4
    const/4 v0, 0x3

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzc:I

    .line 5
    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzd:I

    .line 6
    const/4 v0, 0x5

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zze:I

    .line 7
    const/4 v0, 0x6

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzf:I

    .line 8
    const/4 v0, 0x7

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzg:I

    .line 9
    sget v1, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zza:I

    sget v2, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzb:I

    sget v3, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzc:I

    sget v4, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzd:I

    sget v5, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zze:I

    sget v6, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzf:I

    sget v7, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzg:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzh:[I

    return-void
.end method

.method public static zza()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzh:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
