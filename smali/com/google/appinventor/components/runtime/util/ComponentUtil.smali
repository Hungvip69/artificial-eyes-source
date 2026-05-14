.class public final Lcom/google/appinventor/components/runtime/util/ComponentUtil;
.super Ljava/lang/Object;
.source "ComponentUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static filterComponentsOfType(Lgnu/mapping/Environment;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/Environment;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    .line 36
    .local v1, "iterator":Lgnu/mapping/LocationEnumeration;
    :goto_0
    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->next()Lgnu/mapping/Location;

    move-result-object v2

    .line 38
    .local v2, "loc":Lgnu/mapping/Location;
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v3

    .line 39
    .local v3, "maybeComponent":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v2    # "loc":Lgnu/mapping/Location;
    .end local v3    # "maybeComponent":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method
