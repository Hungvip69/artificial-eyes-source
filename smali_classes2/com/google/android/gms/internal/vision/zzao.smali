.class public final Lcom/google/android/gms/internal/vision/zzao;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-vision@@20.1.3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/zzao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/gms/internal/vision/zzab;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field private final zzd:[Lcom/google/android/gms/internal/vision/zzal;

.field private final zze:Lcom/google/android/gms/internal/vision/zzab;

.field private final zzf:F

.field private final zzg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/vision/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/vision/zzal;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzao;->zzd:[Lcom/google/android/gms/internal/vision/zzal;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzao;->zza:Lcom/google/android/gms/internal/vision/zzab;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzao;->zze:Lcom/google/android/gms/internal/vision/zzab;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzao;->zzb:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/vision/zzao;->zzf:F

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/vision/zzao;->zzc:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/vision/zzao;->zzg:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 10
    nop

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzao;->zzd:[Lcom/google/android/gms/internal/vision/zzal;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 13
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzao;->zza:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 14
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzao;->zze:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzao;->zzb:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    const/4 p2, 0x6

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzao;->zzf:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 17
    const/4 p2, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzao;->zzc:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzao;->zzg:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 20
    return-void
.end method
