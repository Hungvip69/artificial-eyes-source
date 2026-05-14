.class public Lgnu/expr/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field public static final LAST_MODIFIED_CACHE_TIME:J = 0x3e8L

.field static instance:Lgnu/expr/ModuleManager;


# instance fields
.field private compilationDirectory:Ljava/lang/String;

.field public lastModifiedCacheTime:J

.field modules:[Lgnu/expr/ModuleInfo;

.field numModules:I

.field packageInfoChain:Lgnu/expr/ModuleSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lgnu/expr/ModuleManager;

    invoke-direct {v0}, Lgnu/expr/ModuleManager;-><init>()V

    sput-object v0, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    return-void
.end method

.method private declared-synchronized add(Lgnu/expr/ModuleInfo;)V
    .locals 4
    .param p1, "info"    # Lgnu/expr/ModuleInfo;

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    if-nez v0, :cond_0

    .line 66
    const/16 v0, 0xa

    new-array v0, v0, [Lgnu/expr/ModuleInfo;

    iput-object v0, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    goto :goto_0

    .line 67
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    :cond_0
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I

    iget-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 69
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lgnu/expr/ModuleInfo;

    .line 70
    .local v0, "tmp":[Lgnu/expr/ModuleInfo;
    iget-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    iget v2, p0, Lgnu/expr/ModuleManager;->numModules:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v0, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    .line 73
    .end local v0    # "tmp":[Lgnu/expr/ModuleInfo;
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    iget v1, p0, Lgnu/expr/ModuleManager;->numModules:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/expr/ModuleManager;->numModules:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 64
    .end local p1    # "info":Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    .locals 3
    .param p0, "clas"    # Ljava/lang/Class;

    const-class v0, Lgnu/expr/ModuleManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-virtual {v1, p0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/ModuleInfo;

    .line 90
    .local v1, "info":Lgnu/expr/ModuleInfo;
    if-nez v1, :cond_0

    .line 92
    new-instance v2, Lgnu/expr/ModuleInfo;

    invoke-direct {v2}, Lgnu/expr/ModuleInfo;-><init>()V

    move-object v1, v2

    .line 93
    invoke-virtual {v1, p0}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit v0

    return-object v1

    .line 88
    .end local v1    # "info":Lgnu/expr/ModuleInfo;
    .end local p0    # "clas":Ljava/lang/Class;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lgnu/expr/ModuleManager;
    .locals 1

    .line 34
    sget-object v0, Lgnu/expr/ModuleManager;->instance:Lgnu/expr/ModuleManager;

    return-object v0
.end method

.method private declared-synchronized searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .param p1, "sourcePath"    # Ljava/lang/String;

    monitor-enter p0

    .line 115
    :try_start_0
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 117
    iget-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    aget-object v1, v1, v0

    .line 118
    .local v1, "info":Lgnu/expr/ModuleInfo;
    invoke-virtual {v1}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 119
    monitor-exit p0

    return-object v1

    .line 120
    .end local v1    # "info":Lgnu/expr/ModuleInfo;
    :cond_0
    goto :goto_0

    .line 121
    .end local v0    # "i":I
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 114
    .end local p1    # "sourcePath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 237
    .local v0, "set":Lgnu/expr/ModuleSet;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    iget-object v2, v0, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 240
    .local v2, "next":Lgnu/expr/ModuleSet;
    iput-object v1, v0, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 241
    move-object v0, v2

    .line 242
    .end local v2    # "next":Lgnu/expr/ModuleSet;
    goto :goto_0

    .line 243
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    :cond_0
    iput-object v1, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 245
    iput-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    .line 246
    const/4 v1, 0x0

    iput v1, p0, Lgnu/expr/ModuleManager;->numModules:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 235
    .end local v0    # "set":Lgnu/expr/ModuleSet;
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;
    .locals 6
    .param p1, "comp"    # Lgnu/expr/Compilation;

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 52
    .local v0, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 53
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "fileName":Ljava/lang/String;
    invoke-static {v2}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v3

    .line 55
    .local v3, "sourceAbsPath":Lgnu/text/Path;
    invoke-virtual {p0, v3, v2}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    .line 56
    .local v4, "info":Lgnu/expr/ModuleInfo;
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 57
    iput-object v0, v4, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 58
    iput-object v4, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 59
    iput-object p1, v4, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-object v4

    .line 50
    .end local v0    # "mexp":Lgnu/expr/ModuleExp;
    .end local v1    # "ctype":Lgnu/bytecode/ClassType;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "sourceAbsPath":Lgnu/text/Path;
    .end local v4    # "info":Lgnu/expr/ModuleInfo;
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    .end local p1    # "comp":Lgnu/expr/Compilation;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleManager;->searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    .line 101
    .local v0, "info":Lgnu/expr/ModuleInfo;
    if-eqz v0, :cond_0

    .line 102
    return-object v0

    .line 105
    :cond_0
    :try_start_0
    invoke-static {p1}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    .line 109
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public declared-synchronized findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .param p1, "sourceAbsPath"    # Lgnu/text/Path;
    .param p2, "sourcePath"    # Ljava/lang/String;

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "sourceAbsPathname":Ljava/lang/String;
    invoke-direct {p0, v0}, Lgnu/expr/ModuleManager;->searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    .line 129
    .local v1, "info":Lgnu/expr/ModuleInfo;
    if-nez v1, :cond_0

    .line 131
    new-instance v2, Lgnu/expr/ModuleInfo;

    invoke-direct {v2}, Lgnu/expr/ModuleInfo;-><init>()V

    move-object v1, v2

    .line 132
    iput-object p2, v1, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 133
    iput-object p1, v1, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 134
    iput-object v0, v1, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 135
    invoke-direct {p0, v1}, Lgnu/expr/ModuleManager;->add(Lgnu/expr/ModuleInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 126
    .end local v0    # "sourceAbsPathname":Ljava/lang/String;
    .end local v1    # "info":Lgnu/expr/ModuleInfo;
    .end local p1    # "sourceAbsPath":Lgnu/text/Path;
    .end local p2    # "sourcePath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 1
    .param p1, "sourcePath"    # Ljava/lang/String;

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-static {p1}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 142
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    .end local p1    # "sourcePath":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findWithURL(Ljava/net/URL;)Lgnu/expr/ModuleInfo;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-static {p1}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v0

    .line 148
    .local v0, "sourceAbsPath":Lgnu/text/Path;
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "sourcePath":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lgnu/expr/ModuleManager;->findWithSourcePath(Lgnu/text/Path;Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 146
    .end local v0    # "sourceAbsPath":Lgnu/text/Path;
    .end local v1    # "sourcePath":Ljava/lang/String;
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    .end local p1    # "url":Ljava/net/URL;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCompilationDirectory()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getModule(I)Lgnu/expr/ModuleInfo;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 46
    :try_start_0
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 46
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadPackageInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$ModulesMap$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "moduleSetClassName":Ljava/lang/String;
    iget-object v1, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .local v1, "set":Lgnu/expr/ModuleSet;
    :goto_0
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "setName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    nop

    .line 213
    .end local v2    # "setName":Ljava/lang/String;
    iget-object v2, v1, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    move-object v1, v2

    goto :goto_0

    .line 219
    .end local v1    # "set":Lgnu/expr/ModuleSet;
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    :cond_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 220
    .local v1, "setClass":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/ModuleSet;

    .line 222
    .local v2, "instance":Lgnu/expr/ModuleSet;
    iget-object v3, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    iput-object v3, v2, Lgnu/expr/ModuleSet;->next:Lgnu/expr/ModuleSet;

    .line 225
    iput-object v2, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    .line 226
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleSet;->register(Lgnu/expr/ModuleManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 210
    .end local v0    # "moduleSetClassName":Ljava/lang/String;
    .end local v1    # "setClass":Ljava/lang/Class;
    .end local v2    # "instance":Lgnu/expr/ModuleSet;
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "moduleClass"    # Ljava/lang/String;
    .param p2, "moduleSource"    # Ljava/lang/String;
    .param p3, "moduleUri"    # Ljava/lang/String;

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleManager;->searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 166
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 168
    .local v0, "sourcePath":Lgnu/text/Path;
    invoke-virtual {v0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v1

    .line 169
    .local v1, "sourceAbsPath":Lgnu/text/Path;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "sourceAbsPathname":Ljava/lang/String;
    invoke-direct {p0, v2}, Lgnu/expr/ModuleManager;->searchWithAbsSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_1

    .line 171
    monitor-exit p0

    return-void

    .line 172
    :cond_1
    :try_start_2
    new-instance v3, Lgnu/expr/ModuleInfo;

    invoke-direct {v3}, Lgnu/expr/ModuleInfo;-><init>()V

    .line 173
    .local v3, "info":Lgnu/expr/ModuleInfo;
    invoke-virtual {v0}, Lgnu/text/Path;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    iput-object v0, v3, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 176
    iput-object v2, v3, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 184
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    :cond_2
    :try_start_3
    iget-object v4, p0, Lgnu/expr/ModuleManager;->packageInfoChain:Lgnu/expr/ModuleSet;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 185
    .local v4, "setClass":Ljava/lang/Class;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "setClassName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 188
    .local v6, "setClassURL":Ljava/net/URL;
    invoke-static {v6}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v7

    invoke-virtual {v7, p2}, Lgnu/text/URLPath;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v7

    move-object v1, v7

    .line 189
    iput-object v1, v3, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    .end local v4    # "setClass":Ljava/lang/Class;
    .end local v5    # "setClassName":Ljava/lang/String;
    .end local v6    # "setClassURL":Ljava/net/URL;
    nop

    .line 197
    :goto_0
    :try_start_4
    invoke-virtual {v3, p1}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 198
    iput-object p2, v3, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 199
    iput-object p3, v3, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    .line 200
    invoke-direct {p0, v3}, Lgnu/expr/ModuleManager;->add(Lgnu/expr/ModuleInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v4

    .line 194
    .local v4, "ex":Ljava/lang/Throwable;
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "sourcePath":Lgnu/text/Path;
    .end local v1    # "sourceAbsPath":Lgnu/text/Path;
    .end local v2    # "sourceAbsPathname":Ljava/lang/String;
    .end local v3    # "info":Lgnu/expr/ModuleInfo;
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local p1    # "moduleClass":Ljava/lang/String;
    .end local p2    # "moduleSource":Ljava/lang/String;
    .end local p3    # "moduleUri":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized searchWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    monitor-enter p0

    .line 78
    :try_start_0
    iget v0, p0, Lgnu/expr/ModuleManager;->numModules:I

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 80
    iget-object v1, p0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    aget-object v1, v1, v0

    .line 81
    .local v1, "info":Lgnu/expr/ModuleInfo;
    invoke-virtual {v1}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 82
    monitor-exit p0

    return-object v1

    .line 83
    .end local v1    # "info":Lgnu/expr/ModuleInfo;
    :cond_0
    goto :goto_0

    .line 84
    .end local v0    # "i":I
    .end local p0    # "this":Lgnu/expr/ModuleManager;
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 77
    .end local p1    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setCompilationDirectory(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 17
    if-nez p1, :cond_0

    .line 18
    const-string p1, ""

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 20
    .local v0, "plen":I
    if-lez v0, :cond_1

    .line 22
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 23
    .local v1, "sep":C
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    .end local v1    # "sep":C
    :cond_1
    iput-object p1, p0, Lgnu/expr/ModuleManager;->compilationDirectory:Ljava/lang/String;

    .line 27
    return-void
.end method
