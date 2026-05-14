.class public final Lcom/google/api/client/util/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cast(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 32
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
