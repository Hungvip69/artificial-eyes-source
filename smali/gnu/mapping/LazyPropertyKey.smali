.class public Lgnu/mapping/LazyPropertyKey;
.super Lgnu/mapping/PropertyKey;
.source "LazyPropertyKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/mapping/PropertyKey<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    .local p0, "this":Lgnu/mapping/LazyPropertyKey;, "Lgnu/mapping/LazyPropertyKey<TT;>;"
    invoke-direct {p0, p1}, Lgnu/mapping/PropertyKey;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get(Lgnu/mapping/PropertySet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/mapping/PropertySet;",
            "TT;)TT;"
        }
    .end annotation

    .line 25
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 26
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 28
    check-cast p2, Ljava/lang/String;

    .line 29
    nop

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 32
    const-string v4, "lazy property "

    if-le v2, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_3

    .line 34
    nop

    .line 35
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 36
    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 46
    const/4 v6, 0x0

    if-nez v1, :cond_1

    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 52
    :cond_1
    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v0

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_1
    nop

    .line 60
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-object p2

    .line 56
    :catchall_0
    move-exception p1

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has specifier \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\" but there is no such "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez v1, :cond_2

    const-string v1, "field"

    goto :goto_2

    :cond_2
    const-string v1, "method"

    :goto_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 33
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " must have the form \"ClassName:fieldName\" or \"ClassName:staticMethodName\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_4
    return-object p2
.end method

.method public set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V
    .locals 0
    .param p1, "container"    # Lgnu/mapping/PropertySet;
    .param p2, "specifier"    # Ljava/lang/String;

    .line 68
    .local p0, "this":Lgnu/mapping/LazyPropertyKey;, "Lgnu/mapping/LazyPropertyKey<TT;>;"
    invoke-virtual {p1, p0, p2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
