.class public Lcom/google/android/gms/vision/face/FaceDetector$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision@@20.1.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/face/FaceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:I

.field private zzc:Z

.field private zzd:I

.field private zze:Z

.field private zzf:I

.field private zzg:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzb:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzc:Z

    .line 4
    iput v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzd:I

    .line 5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zze:Z

    .line 6
    iput v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzf:I

    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzg:F

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zza:Landroid/content/Context;

    .line 9
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/face/FaceDetector;
    .locals 3

    .line 31
    new-instance v0, Lcom/google/android/gms/vision/face/internal/client/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/vision/face/internal/client/zzf;-><init>()V

    .line 32
    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzf:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->zza:I

    .line 33
    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzb:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->zzb:I

    .line 34
    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzd:I

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->zzc:I

    .line 35
    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzc:Z

    iput-boolean v1, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->zzd:Z

    .line 36
    iget-boolean v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zze:Z

    iput-boolean v1, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->zze:Z

    .line 37
    iget v1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzg:F

    iput v1, v0, Lcom/google/android/gms/vision/face/internal/client/zzf;->zzf:F

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/vision/face/FaceDetector;->zza(Lcom/google/android/gms/vision/face/internal/client/zzf;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Lcom/google/android/gms/vision/face/internal/client/zzb;

    iget-object v2, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zza:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/vision/face/internal/client/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/zzf;)V

    .line 41
    new-instance v0, Lcom/google/android/gms/vision/face/FaceDetector;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/face/FaceDetector;-><init>(Lcom/google/android/gms/vision/face/internal/client/zzb;Lcom/google/android/gms/vision/face/zza;)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid build options"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassificationType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    .line 16
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid classification type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzd:I

    .line 19
    return-object p0
.end method

.method public setLandmarkType(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    .line 10
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid landmark type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzb:I

    .line 13
    return-object p0
.end method

.method public setMinFaceSize(F)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    .line 27
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 29
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzg:F

    .line 30
    return-object p0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid proportional face size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMode(I)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 3

    .line 22
    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :pswitch_0
    nop

    .line 25
    iput p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzf:I

    .line 26
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setProminentFaceOnly(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zzc:Z

    .line 15
    return-object p0
.end method

.method public setTrackingEnabled(Z)Lcom/google/android/gms/vision/face/FaceDetector$Builder;
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/vision/face/FaceDetector$Builder;->zze:Z

    .line 21
    return-object p0
.end method
