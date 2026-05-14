.class public final Lcom/google/android/gms/internal/vision/zzab;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-vision@@20.1.3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/zzab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/vision/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzab;->zza:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzab;->zzb:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzab;->zzc:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/vision/zzab;->zzd:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/vision/zzab;->zze:F

    .line 7
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 8
    nop

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 10
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzab;->zza:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 11
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzab;->zzb:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 12
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzab;->zzc:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 13
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzab;->zzd:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 14
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzab;->zze:F

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 16
    return-void
.end method
