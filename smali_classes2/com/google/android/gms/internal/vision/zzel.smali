.class public final Lcom/google/android/gms/internal/vision/zzel;
.super Lcom/google/android/gms/internal/vision/zzek;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/vision/zzek<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzek;-><init>()V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/vision/zzem;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzem<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/vision/zzel;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4
    nop

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/vision/zzdz;->zza:Lcom/google/android/gms/internal/vision/zzdz;

    .line 7
    return-object v1

    .line 8
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/vision/zzei;

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/vision/zzei;-><init>(I)V

    .line 10
    nop

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 14
    nop

    .line 15
    instance-of v9, v5, Lcom/google/android/gms/internal/vision/zzej;

    if-eqz v9, :cond_1

    instance-of v9, v5, Ljava/util/SortedSet;

    if-nez v9, :cond_1

    .line 16
    move-object v9, v5

    check-cast v9, Lcom/google/android/gms/internal/vision/zzej;

    .line 17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/vision/zzeb;->zzf()Z

    move-result v10

    if-nez v10, :cond_1

    .line 18
    goto/16 :goto_6

    .line 19
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 20
    array-length v9, v5

    .line 21
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/internal/vision/zzej;->zza(I)I

    move-result v10

    .line 29
    new-array v14, v10, [Ljava/lang/Object;

    .line 30
    add-int/lit8 v15, v10, -0x1

    .line 31
    nop

    .line 32
    nop

    .line 33
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_2

    .line 24
    :pswitch_0
    aget-object v5, v5, v3

    .line 25
    nop

    .line 26
    new-instance v9, Lcom/google/android/gms/internal/vision/zzex;

    invoke-direct {v9, v5}, Lcom/google/android/gms/internal/vision/zzex;-><init>(Ljava/lang/Object;)V

    .line 27
    goto/16 :goto_6

    .line 22
    :pswitch_1
    sget-object v9, Lcom/google/android/gms/internal/vision/zzev;->zza:Lcom/google/android/gms/internal/vision/zzev;

    .line 23
    goto :goto_6

    .line 33
    :goto_2
    if-ge v11, v9, :cond_4

    .line 34
    aget-object v3, v5, v11

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/zzeq;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v16

    .line 36
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/vision/zzec;->zza(I)I

    move-result v17

    .line 37
    :goto_3
    and-int v18, v17, v15

    .line 38
    aget-object v7, v14, v18

    .line 39
    if-nez v7, :cond_2

    .line 40
    add-int/lit8 v7, v12, 0x1

    aput-object v3, v5, v12

    .line 41
    aput-object v3, v14, v18

    .line 42
    add-int v13, v13, v16

    .line 43
    move v12, v7

    goto :goto_4

    .line 44
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 45
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 46
    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 47
    :cond_4
    invoke-static {v5, v12, v9, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 48
    const/4 v3, 0x1

    if-ne v12, v3, :cond_5

    .line 49
    const/4 v3, 0x0

    aget-object v5, v5, v3

    .line 50
    new-instance v9, Lcom/google/android/gms/internal/vision/zzex;

    invoke-direct {v9, v5, v13}, Lcom/google/android/gms/internal/vision/zzex;-><init>(Ljava/lang/Object;I)V

    goto :goto_6

    .line 51
    :cond_5
    invoke-static {v12}, Lcom/google/android/gms/internal/vision/zzej;->zza(I)I

    move-result v3

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_6

    .line 52
    move v9, v12

    const/4 v3, 0x0

    goto :goto_1

    .line 53
    :cond_6
    array-length v3, v5

    .line 54
    shr-int/lit8 v6, v3, 0x1

    shr-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    if-ge v12, v6, :cond_7

    .line 55
    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    :cond_7
    nop

    .line 56
    :goto_5
    new-instance v9, Lcom/google/android/gms/internal/vision/zzev;

    move-object v11, v9

    move v3, v12

    move-object v12, v5

    move/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/internal/vision/zzev;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 57
    :goto_6
    nop

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/internal/vision/zzej;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 59
    nop

    .line 60
    iget v3, v2, Lcom/google/android/gms/internal/vision/zzei;->zzb:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 61
    shl-int/2addr v3, v5

    iget-object v5, v2, Lcom/google/android/gms/internal/vision/zzei;->zza:[Ljava/lang/Object;

    array-length v5, v5

    if-le v3, v5, :cond_b

    .line 62
    iget-object v5, v2, Lcom/google/android/gms/internal/vision/zzei;->zza:[Ljava/lang/Object;

    iget-object v6, v2, Lcom/google/android/gms/internal/vision/zzei;->zza:[Ljava/lang/Object;

    array-length v6, v6

    .line 63
    nop

    .line 64
    if-ltz v3, :cond_a

    .line 66
    shr-int/lit8 v7, v6, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 67
    if-ge v6, v3, :cond_8

    .line 68
    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    shl-int/lit8 v6, v3, 0x1

    .line 69
    :cond_8
    if-gez v6, :cond_9

    .line 70
    const v6, 0x7fffffff

    .line 71
    :cond_9
    nop

    .line 72
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/vision/zzei;->zza:[Ljava/lang/Object;

    .line 73
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/internal/vision/zzei;->zzc:Z

    goto :goto_7

    .line 65
    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot store more than MAX_VALUE elements"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 61
    :cond_b
    const/4 v3, 0x0

    .line 74
    :goto_7
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/vision/zzdq;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v5, v2, Lcom/google/android/gms/internal/vision/zzei;->zza:[Ljava/lang/Object;

    iget v6, v2, Lcom/google/android/gms/internal/vision/zzei;->zzb:I

    mul-int/lit8 v6, v6, 0x2

    aput-object v8, v5, v6

    .line 76
    iget-object v5, v2, Lcom/google/android/gms/internal/vision/zzei;->zza:[Ljava/lang/Object;

    iget v6, v2, Lcom/google/android/gms/internal/vision/zzei;->zzb:I

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aput-object v9, v5, v6

    .line 77
    iget v5, v2, Lcom/google/android/gms/internal/vision/zzei;->zzb:I

    add-int/2addr v5, v7

    iput v5, v2, Lcom/google/android/gms/internal/vision/zzei;->zzb:I

    .line 78
    invoke-virtual {v9}, Lcom/google/android/gms/internal/vision/zzej;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_8

    .line 58
    :cond_c
    const/4 v3, 0x0

    .line 79
    :goto_8
    goto/16 :goto_0

    .line 80
    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/vision/zzem;

    .line 81
    nop

    .line 82
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/android/gms/internal/vision/zzei;->zzc:Z

    .line 83
    iget v3, v2, Lcom/google/android/gms/internal/vision/zzei;->zzb:I

    iget-object v2, v2, Lcom/google/android/gms/internal/vision/zzei;->zza:[Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/zzes;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzes;

    move-result-object v2

    .line 84
    invoke-direct {v1, v2, v4, v6}, Lcom/google/android/gms/internal/vision/zzem;-><init>(Lcom/google/android/gms/internal/vision/zzef;ILjava/util/Comparator;)V

    .line 85
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
