.class public final Lcom/google/android/gms/internal/vision/zzah;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-vision@@20.1.3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/vision/zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:[Lcom/google/android/gms/internal/vision/zzao;

.field public final zzb:Lcom/google/android/gms/internal/vision/zzab;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Z

.field public final zzf:I

.field public final zzg:I

.field private final zzh:Lcom/google/android/gms/internal/vision/zzab;

.field private final zzi:Lcom/google/android/gms/internal/vision/zzab;

.field private final zzj:F

.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/vision/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/vision/zzao;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzah;->zza:[Lcom/google/android/gms/internal/vision/zzao;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzah;->zzb:Lcom/google/android/gms/internal/vision/zzab;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/vision/zzah;->zzh:Lcom/google/android/gms/internal/vision/zzab;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/vision/zzah;->zzi:Lcom/google/android/gms/internal/vision/zzab;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/vision/zzah;->zzc:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/vision/zzah;->zzj:F

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/vision/zzah;->zzd:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/google/android/gms/internal/vision/zzah;->zzk:I

    .line 10
    iput-boolean p9, p0, Lcom/google/android/gms/internal/vision/zzah;->zze:Z

    .line 11
    iput p10, p0, Lcom/google/android/gms/internal/vision/zzah;->zzf:I

    .line 12
    iput p11, p0, Lcom/google/android/gms/internal/vision/zzah;->zzg:I

    .line 13
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 14
    nop

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zza:[Lcom/google/android/gms/internal/vision/zzao;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 17
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->zzb:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->zzh:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 19
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzah;->zzi:Lcom/google/android/gms/internal/vision/zzab;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 20
    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zzc:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    const/4 p2, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zzj:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 22
    const/16 p2, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zzd:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    const/16 p2, 0x9

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zzk:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 24
    const/16 p2, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zze:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 25
    const/16 p2, 0xb

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zzf:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 26
    const/16 p2, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzah;->zzg:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 28
    return-void
.end method
