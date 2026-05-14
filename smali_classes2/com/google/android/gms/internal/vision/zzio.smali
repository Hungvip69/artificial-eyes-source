.class public Lcom/google/android/gms/internal/vision/zzio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzio$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Z

.field private static zzb:Z

.field private static volatile zzc:Lcom/google/android/gms/internal/vision/zzio;

.field private static volatile zzd:Lcom/google/android/gms/internal/vision/zzio;

.field private static final zze:Lcom/google/android/gms/internal/vision/zzio;


# instance fields
.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/vision/zzio$zza;",
            "Lcom/google/android/gms/internal/vision/zzjb$zze<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/vision/zzio;->zza:Z

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/vision/zzio;->zzb:Z

    .line 44
    new-instance v1, Lcom/google/android/gms/internal/vision/zzio;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzio;-><init>(Z)V

    sput-object v1, Lcom/google/android/gms/internal/vision/zzio;->zze:Lcom/google/android/gms/internal/vision/zzio;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzio;->zzf:Ljava/util/Map;

    .line 38
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzio;->zzf:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/vision/zzio;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzio;-><init>()V

    .line 2
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/vision/zzio;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzc:Lcom/google/android/gms/internal/vision/zzio;

    .line 4
    if-nez v0, :cond_1

    .line 5
    const-class v1, Lcom/google/android/gms/internal/vision/zzio;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzc:Lcom/google/android/gms/internal/vision/zzio;

    .line 7
    if-nez v0, :cond_0

    .line 8
    nop

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zze:Lcom/google/android/gms/internal/vision/zzio;

    sput-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzc:Lcom/google/android/gms/internal/vision/zzio;

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 11
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/vision/zzio;
    .locals 2

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/vision/zzio;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-object v0

    .line 15
    :cond_0
    const-class v0, Lcom/google/android/gms/internal/vision/zzio;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzio;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    .line 17
    if-eqz v1, :cond_1

    .line 18
    monitor-exit v0

    return-object v1

    .line 19
    :cond_1
    nop

    .line 20
    const-class v1, Lcom/google/android/gms/internal/vision/zzio;

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zziz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzio;

    move-result-object v1

    .line 21
    nop

    .line 22
    sput-object v1, Lcom/google/android/gms/internal/vision/zzio;->zzd:Lcom/google/android/gms/internal/vision/zzio;

    .line 23
    monitor-exit v0

    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/vision/zzkk;I)Lcom/google/android/gms/internal/vision/zzjb$zze;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/vision/zzkk;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/vision/zzjb$zze<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzio;->zzf:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzio$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzio$zza;-><init>(Ljava/lang/Object;I)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb$zze;

    .line 27
    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzjb$zze;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzjb$zze<",
            "**>;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzio;->zzf:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzio$zza;

    .line 29
    iget-object v2, p1, Lcom/google/android/gms/internal/vision/zzjb$zze;->zza:Lcom/google/android/gms/internal/vision/zzkk;

    .line 30
    nop

    .line 31
    iget-object v3, p1, Lcom/google/android/gms/internal/vision/zzjb$zze;->zzd:Lcom/google/android/gms/internal/vision/zzjb$zzf;

    .line 32
    iget v3, v3, Lcom/google/android/gms/internal/vision/zzjb$zzf;->zzb:I

    .line 33
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/vision/zzio$zza;-><init>(Ljava/lang/Object;I)V

    .line 34
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
