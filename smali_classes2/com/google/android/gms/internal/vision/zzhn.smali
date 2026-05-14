.class final Lcom/google/android/gms/internal/vision/zzhn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/vision/zzio;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzio;->zzb()Lcom/google/android/gms/internal/vision/zzio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzhn;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    .line 3
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/vision/zzio;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzhn;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    .line 8
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
