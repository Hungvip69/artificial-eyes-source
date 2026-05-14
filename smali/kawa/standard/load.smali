.class public Lkawa/standard/load;
.super Lgnu/mapping/Procedure1;
.source "load.java"


# static fields
.field public static final load:Lkawa/standard/load;

.field public static final loadRelative:Lkawa/standard/load;


# instance fields
.field relative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lkawa/standard/load;

    const-string v1, "load"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->load:Lkawa/standard/load;

    .line 21
    new-instance v0, Lkawa/standard/load;

    const-string v1, "load-relative"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/load;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/load;->loadRelative:Lkawa/standard/load;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relative"    # Z

    .line 16
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 17
    iput-boolean p2, p0, Lkawa/standard/load;->relative:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkawa/standard/load;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Environment;

    .line 35
    .local v0, "env":Lgnu/mapping/Environment;
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    .line 36
    .local v1, "path":Lgnu/text/Path;
    iget-boolean v2, p0, Lkawa/standard/load;->relative:Z

    if-eqz v2, :cond_0

    .line 38
    sget-object v2, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/text/Path;

    .line 39
    .local v2, "curPath":Lgnu/text/Path;
    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {v2, v1}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v3

    move-object v1, v3

    .line 42
    .end local v2    # "curPath":Lgnu/text/Path;
    :cond_0
    invoke-virtual {v1}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Lkawa/Shell;->runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z

    .line 43
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 49
    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "path":Lgnu/text/Path;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Lgnu/text/SyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: errors while compiling \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\':\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "ex":Lgnu/text/SyntaxException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
