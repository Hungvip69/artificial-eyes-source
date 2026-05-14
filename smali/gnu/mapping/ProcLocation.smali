.class public Lgnu/mapping/ProcLocation;
.super Lgnu/mapping/Location;
.source "ProcLocation.java"


# instance fields
.field args:[Ljava/lang/Object;

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    .line 16
    iput-object p2, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 23
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 29
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Error;
    throw v0

    .line 25
    .end local v0    # "ex":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public isBound()Z
    .locals 1

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    array-length v0, v0

    .line 42
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 43
    .local v1, "xargs":[Ljava/lang/Object;
    aput-object p1, v1, v0

    .line 44
    iget-object v2, p0, Lgnu/mapping/ProcLocation;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    :try_start_0
    iget-object v2, p0, Lgnu/mapping/ProcLocation;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->setN([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    nop

    .line 61
    return-void

    .line 57
    :catchall_0
    move-exception v2

    .line 59
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v3, Lgnu/mapping/WrappedException;

    invoke-direct {v3, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 53
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "ex":Ljava/lang/Error;
    throw v2

    .line 49
    .end local v2    # "ex":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 51
    .local v2, "ex":Ljava/lang/RuntimeException;
    throw v2
.end method
