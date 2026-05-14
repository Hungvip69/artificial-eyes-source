.class public final Lcom/google/api/client/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/Objects$ToStringHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 39
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/google/api/client/util/Objects$ToStringHelper;
    .locals 2
    .param p0, "self"    # Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/google/api/client/util/Objects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/util/Objects$ToStringHelper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
