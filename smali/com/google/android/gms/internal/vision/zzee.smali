.class public abstract Lcom/google/android/gms/internal/vision/zzee;
.super Lcom/google/android/gms/internal/vision/zzeb;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/vision/zzeb<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/vision/zzez;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzez<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 118
    new-instance v0, Lcom/google/android/gms/internal/vision/zzed;

    sget-object v1, Lcom/google/android/gms/internal/vision/zzep;->zza:Lcom/google/android/gms/internal/vision/zzee;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzed;-><init>(Lcom/google/android/gms/internal/vision/zzee;I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzee;->zza:Lcom/google/android/gms/internal/vision/zzez;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzeb;-><init>()V

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzee;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/vision/zzee<",
            "TE;>;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 3
    nop

    .line 4
    const/4 p0, 0x0

    :goto_0
    if-gtz p0, :cond_0

    .line 5
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/zzeq;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 6
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    nop

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzee;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/vision/zzee;

    move-result-object p0

    .line 9
    return-object p0
.end method

.method static zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzee;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/vision/zzee<",
            "TE;>;"
        }
    .end annotation

    .line 10
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/vision/zzee;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/vision/zzee;

    move-result-object p0

    return-object p0
.end method

.method static zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/vision/zzee;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/vision/zzee<",
            "TE;>;"
        }
    .end annotation

    .line 11
    if-nez p1, :cond_0

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/vision/zzep;->zza:Lcom/google/android/gms/internal/vision/zzee;

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzep;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzep;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/vision/zzee;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/vision/zzee<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzep;->zza:Lcom/google/android/gms/internal/vision/zzee;

    return-object v0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzee;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 79
    nop

    .line 80
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzde;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 81
    return v1

    .line 82
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 83
    check-cast p1, Ljava/util/List;

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 86
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    .line 87
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 88
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzcz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return v1

    .line 91
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    .line 92
    :goto_1
    if-ge v3, v0, :cond_3

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/zzee;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 96
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/zzcz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    nop

    .line 99
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 100
    nop

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->size()I

    move-result v0

    .line 102
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/vision/zzee;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 104
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 17
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_6

    .line 19
    nop

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 21
    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 22
    nop

    :goto_0
    if-ge v2, v1, :cond_2

    .line 23
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 24
    return v2

    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 26
    :cond_3
    nop

    :goto_1
    if-ge v2, v1, :cond_5

    .line 27
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 28
    return v2

    .line 29
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_5
    :goto_2
    nop

    .line 31
    return v0

    .line 32
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 33
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 34
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/vision/zzcz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 35
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    return p1

    .line 36
    :cond_8
    nop

    .line 37
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzeb;->zza()Lcom/google/android/gms/internal/vision/zzfa;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 38
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 39
    :cond_0
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_6

    .line 40
    nop

    .line 41
    if-nez p1, :cond_3

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 44
    return p1

    .line 45
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    .line 46
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 47
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    return v1

    .line 49
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 50
    :cond_5
    :goto_2
    nop

    .line 51
    return v0

    .line 52
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 53
    :cond_7
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 54
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/vision/zzcz;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 55
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    return p1

    .line 56
    :cond_8
    nop

    .line 57
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 115
    nop

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzee;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzez;

    .line 117
    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzde;->zzb(II)I

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object p1, Lcom/google/android/gms/internal/vision/zzee;->zza:Lcom/google/android/gms/internal/vision/zzez;

    return-object p1

    .line 113
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzed;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzed;-><init>(Lcom/google/android/gms/internal/vision/zzee;I)V

    .line 114
    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzee;->zza(II)Lcom/google/android/gms/internal/vision/zzee;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->size()I

    move-result v0

    .line 75
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    add-int v2, p2, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/zzee;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public zza(II)Lcom/google/android/gms/internal/vision/zzee;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/vision/zzee<",
            "TE;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzde;->zza(III)V

    .line 60
    sub-int/2addr p2, p1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 62
    return-object p0

    .line 63
    :cond_0
    if-nez p2, :cond_1

    .line 64
    sget-object p1, Lcom/google/android/gms/internal/vision/zzep;->zza:Lcom/google/android/gms/internal/vision/zzee;

    .line 65
    return-object p1

    .line 66
    :cond_1
    nop

    .line 67
    new-instance v0, Lcom/google/android/gms/internal/vision/zzeg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzeg;-><init>(Lcom/google/android/gms/internal/vision/zzee;II)V

    .line 68
    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/vision/zzfa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzfa<",
            "TE;>;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzee;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzez;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/vision/zzee;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/zzee<",
            "TE;>;"
        }
    .end annotation

    .line 73
    return-object p0
.end method
