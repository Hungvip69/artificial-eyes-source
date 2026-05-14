.class public Lgnu/text/WriterManager;
.super Ljava/lang/Object;
.source "WriterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final instance:Lgnu/text/WriterManager;


# instance fields
.field first:Lgnu/text/WriterRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lgnu/text/WriterManager;

    invoke-direct {v0}, Lgnu/text/WriterManager;-><init>()V

    sput-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized register(Ljava/io/Writer;)Lgnu/text/WriterRef;
    .locals 3
    .param p1, "port"    # Ljava/io/Writer;

    monitor-enter p0

    .line 25
    :try_start_0
    new-instance v0, Lgnu/text/WriterRef;

    invoke-direct {v0, p1}, Lgnu/text/WriterRef;-><init>(Ljava/io/Writer;)V

    .line 26
    .local v0, "ref":Lgnu/text/WriterRef;
    iget-object v1, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    .line 27
    .local v1, "first":Lgnu/text/WriterRef;
    if-eqz v1, :cond_0

    .line 29
    iget-object v2, v1, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    iput-object v2, v0, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 30
    iput-object v0, v1, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 32
    .end local p0    # "this":Lgnu/text/WriterManager;
    :cond_0
    iput-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-object v0

    .line 24
    .end local v0    # "ref":Lgnu/text/WriterRef;
    .end local v1    # "first":Lgnu/text/WriterRef;
    .end local p1    # "port":Ljava/io/Writer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerShutdownHook()Z
    .locals 8

    .line 81
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 82
    .local v1, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 83
    .local v2, "rclass":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Thread;

    aput-object v5, v4, v0

    .line 84
    .local v4, "params":[Ljava/lang/Class;
    const-string v5, "addShutdownHook"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 86
    .local v5, "method":Ljava/lang/reflect/Method;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v0

    move-object v6, v7

    .line 87
    .local v6, "args":[Ljava/lang/Object;
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    return v3

    .line 90
    .end local v1    # "runtime":Ljava/lang/Runtime;
    .end local v2    # "rclass":Ljava/lang/Class;
    .end local v4    # "params":[Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    .local v0, "ref":Lgnu/text/WriterRef;
    :goto_0
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Lgnu/text/WriterRef;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .local v1, "port":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 63
    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    goto :goto_1

    .line 65
    .end local p0    # "this":Lgnu/text/WriterManager;
    :catch_0
    move-exception v2

    .line 56
    .end local v1    # "port":Ljava/lang/Object;
    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, v0, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    move-object v0, v1

    goto :goto_0

    .line 71
    .end local v0    # "ref":Lgnu/text/WriterRef;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 41
    if-nez p1, :cond_0

    .line 42
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/text/WriterRef;

    .line 44
    .local v0, "ref":Lgnu/text/WriterRef;
    iget-object v1, v0, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 45
    .local v1, "next":Lgnu/text/WriterRef;
    iget-object v2, v0, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 46
    .local v2, "prev":Lgnu/text/WriterRef;
    if-eqz v1, :cond_1

    .line 47
    iput-object v2, v1, Lgnu/text/WriterRef;->prev:Lgnu/text/WriterRef;

    .line 48
    .end local p0    # "this":Lgnu/text/WriterManager;
    :cond_1
    if-eqz v2, :cond_2

    .line 49
    iput-object v1, v2, Lgnu/text/WriterRef;->next:Lgnu/text/WriterRef;

    .line 50
    :cond_2
    iget-object v3, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;

    if-ne v0, v3, :cond_3

    .line 51
    iput-object v1, p0, Lgnu/text/WriterManager;->first:Lgnu/text/WriterRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_3
    monitor-exit p0

    return-void

    .line 40
    .end local v0    # "ref":Lgnu/text/WriterRef;
    .end local v1    # "next":Lgnu/text/WriterRef;
    .end local v2    # "prev":Lgnu/text/WriterRef;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
