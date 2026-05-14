.class public final Lcom/google/android/gms/internal/vision/zzbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzay;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/vision/zzbq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/SharedPreferences;

.field private final zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final zzd:Ljava/lang/Object;

.field private volatile zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vision/zzaz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzbq;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/vision/zzbt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzbt;-><init>(Lcom/google/android/gms/internal/vision/zzbq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzd:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzf:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzb:Landroid/content/SharedPreferences;

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzb:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    return-void
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/vision/zzbq;
    .locals 2

    .line 1
    nop

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzas;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "direct_boot:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzas;->zza(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    :goto_0
    if-nez v0, :cond_1

    .line 7
    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/vision/zzbq;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzbq;->zza:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/zzbq;

    .line 10
    if-nez v1, :cond_2

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/vision/zzbq;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzbq;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/vision/zzbq;-><init>(Landroid/content/SharedPreferences;)V

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/vision/zzbq;->zza:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    monitor-exit v0

    return-object v1

    .line 14
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static declared-synchronized zza()V
    .locals 4

    const-class v0, Lcom/google/android/gms/internal/vision/zzbq;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzbq;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/zzbq;

    .line 52
    iget-object v3, v2, Lcom/google/android/gms/internal/vision/zzbq;->zzb:Landroid/content/SharedPreferences;

    iget-object v2, v2, Lcom/google/android/gms/internal/vision/zzbq;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/vision/zzbq;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-void

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3

    .line 15
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 16
    :try_start_0
    const-string v1, "direct_boot:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 17
    nop

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzas;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 20
    :cond_0
    nop

    .line 21
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 24
    return-object p0

    .line 25
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 29
    throw p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzbq;->zze:Ljava/util/Map;

    .line 38
    if-nez v0, :cond_1

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzd:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzbq;->zze:Ljava/util/Map;

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzb:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 44
    iput-object v2, p0, Lcom/google/android/gms/internal/vision/zzbq;->zze:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    move-object v0, v2

    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 48
    throw p1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 50
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 56
    nop

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzd:Ljava/lang/Object;

    monitor-enter p1

    .line 58
    const/4 p2, 0x0

    :try_start_0
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzbq;->zze:Ljava/util/Map;

    .line 59
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzbi;->zza()V

    .line 60
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    nop

    .line 62
    monitor-enter p0

    .line 63
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzbq;->zzf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/zzaz;

    .line 64
    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/zzaz;->zza()V

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 60
    :catchall_1
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
