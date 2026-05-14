.class final enum Lcom/google/android/gms/internal/vision/zzix;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzix;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/vision/zzix;

.field public static final enum zzb:Lcom/google/android/gms/internal/vision/zzix;

.field public static final enum zzc:Lcom/google/android/gms/internal/vision/zzix;

.field public static final enum zzd:Lcom/google/android/gms/internal/vision/zzix;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/vision/zzix;


# instance fields
.field private final zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/vision/zzix;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzix;->zza:Lcom/google/android/gms/internal/vision/zzix;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/vision/zzix;

    const-string v1, "VECTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzix;->zzb:Lcom/google/android/gms/internal/vision/zzix;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/vision/zzix;

    const-string v1, "PACKED_VECTOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzix;->zzc:Lcom/google/android/gms/internal/vision/zzix;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/vision/zzix;

    const-string v1, "MAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/vision/zzix;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzix;->zzd:Lcom/google/android/gms/internal/vision/zzix;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/vision/zzix;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzix;->zza:Lcom/google/android/gms/internal/vision/zzix;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/vision/zzix;->zzb:Lcom/google/android/gms/internal/vision/zzix;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/vision/zzix;->zzc:Lcom/google/android/gms/internal/vision/zzix;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/vision/zzix;->zzd:Lcom/google/android/gms/internal/vision/zzix;

    aput-object v1, v0, v5

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/vision/zzix;->zzf:[Lcom/google/android/gms/internal/vision/zzix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/vision/zzix;->zze:Z

    .line 4
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzix;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzix;->zzf:[Lcom/google/android/gms/internal/vision/zzix;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzix;

    return-object v0
.end method
