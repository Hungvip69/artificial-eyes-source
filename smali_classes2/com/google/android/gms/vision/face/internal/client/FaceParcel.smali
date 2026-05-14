.class public Lcom/google/android/gms/vision/face/internal/client/FaceParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-vision@@20.1.3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/vision/face/internal/client/FaceParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:F

.field public final zzc:F

.field public final zzd:F

.field public final zze:F

.field public final zzf:F

.field public final zzg:F

.field public final zzh:F

.field public final zzi:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

.field public final zzj:F

.field public final zzk:F

.field public final zzl:F

.field public final zzm:[Lcom/google/android/gms/vision/face/internal/client/zza;

.field public final zzn:F

.field private final zzo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Lcom/google/android/gms/vision/face/internal/client/zza;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzo:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zza:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzb:F

    .line 5
    iput p4, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzc:F

    .line 6
    iput p5, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzd:F

    .line 7
    iput p6, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zze:F

    .line 8
    iput p7, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzf:F

    .line 9
    iput p8, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzg:F

    .line 10
    iput p9, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzh:F

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzi:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    .line 12
    iput p11, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzj:F

    .line 13
    iput p12, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzk:F

    .line 14
    iput p13, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzl:F

    .line 15
    iput-object p14, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzm:[Lcom/google/android/gms/vision/face/internal/client/zza;

    .line 16
    iput p15, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzn:F

    .line 17
    return-void
.end method

.method public constructor <init>(IIFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF)V
    .locals 17

    .line 18
    const/4 v0, 0x0

    new-array v15, v0, [Lcom/google/android/gms/vision/face/internal/client/zza;

    const/high16 v16, -0x40800000    # -1.0f

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;-><init>(IIFFFFFFF[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;FFF[Lcom/google/android/gms/vision/face/internal/client/zza;F)V

    .line 19
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 20
    nop

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 22
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzo:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 23
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zza:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 24
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzb:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 25
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzc:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 26
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzd:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 27
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zze:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 28
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzf:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 29
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzg:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzi:[Lcom/google/android/gms/vision/face/internal/client/LandmarkParcel;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 31
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzj:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 32
    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzk:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 33
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzl:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 34
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzm:[Lcom/google/android/gms/vision/face/internal/client/zza;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 35
    const/16 p2, 0xe

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzh:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 36
    const/16 p2, 0xf

    iget v1, p0, Lcom/google/android/gms/vision/face/internal/client/FaceParcel;->zzn:F

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 37
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 38
    return-void
.end method
