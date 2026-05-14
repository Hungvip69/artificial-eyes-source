.class public Lkawa/standard/TracedProcedure;
.super Lgnu/mapping/ProcedureN;
.source "TracedProcedure.java"


# static fields
.field static curIndentSym:Lgnu/mapping/Symbol;

.field static indentationStep:I


# instance fields
.field enabled:Z

.field public proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x2

    sput v0, Lkawa/standard/TracedProcedure;->indentationStep:I

    .line 15
    const-string v0, "current-indentation"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 1
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "enable"    # Z

    .line 18
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 21
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lkawa/standard/TracedProcedure;->setName(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static doTrace(Lgnu/mapping/Procedure;Z)Lgnu/mapping/Procedure;
    .locals 1
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "enable"    # Z

    .line 114
    instance-of v0, p0, Lkawa/standard/TracedProcedure;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p0

    check-cast v0, Lkawa/standard/TracedProcedure;

    iput-boolean p1, v0, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 117
    return-object p0

    .line 120
    :cond_0
    new-instance v0, Lkawa/standard/TracedProcedure;

    invoke-direct {v0, p0, p1}, Lkawa/standard/TracedProcedure;-><init>(Lgnu/mapping/Procedure;Z)V

    return-object v0
.end method

.method static indent(ILjava/io/PrintWriter;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 43
    nop

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 44
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method static put(Ljava/lang/Object;Ljava/io/PrintWriter;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 30
    const/16 v0, 0x32

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "<caught "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 37
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 39
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v0, :cond_4

    .line 51
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 52
    .local v0, "env":Lgnu/mapping/Environment;
    sget-object v1, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v1

    .line 53
    .local v1, "curIndentLoc":Lgnu/mapping/Location;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "oldIndent":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/math/IntNum;

    if-nez v3, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "curIndent":I
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    .end local v3    # "curIndent":I
    :cond_0
    move-object v3, v2

    check-cast v3, Lgnu/math/IntNum;

    invoke-virtual {v3}, Lgnu/math/IntNum;->intValue()I

    move-result v3

    .line 62
    .restart local v3    # "curIndent":I
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v4

    .line 63
    .local v4, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 65
    const-string v5, "??"

    .line 68
    :cond_1
    invoke-static {v3, v4}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 69
    const-string v6, "call to "

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    array-length v6, p1

    .line 72
    .local v6, "len":I
    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 75
    if-lez v7, :cond_2

    .line 76
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 77
    :cond_2
    aget-object v8, p1, v7

    invoke-static {v8, v4}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 79
    .end local v7    # "i":I
    :cond_3
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    sget v7, Lkawa/standard/TracedProcedure;->indentationStep:I

    add-int/2addr v7, v3

    invoke-static {v7}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    .line 84
    .local v7, "newIndentation":Lgnu/math/IntNum;
    invoke-virtual {v1, v7}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 87
    .local v8, "save":Ljava/lang/Object;
    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v10, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .local v9, "result":Ljava/lang/Object;
    invoke-virtual {v1, v8}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    .line 98
    nop

    .line 101
    invoke-static {v3, v4}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 102
    const-string v10, "return from "

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string v10, " => "

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-static {v9, v4}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 107
    return-object v9

    .line 97
    .end local v9    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v10

    .restart local v9    # "result":Ljava/lang/Object;
    goto :goto_2

    .line 89
    .end local v9    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 91
    .restart local v9    # "result":Ljava/lang/Object;
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v3, v4}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "procedure "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " throws exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    nop

    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "curIndentLoc":Lgnu/mapping/Location;
    .end local v2    # "oldIndent":Ljava/lang/Object;
    .end local v3    # "curIndent":I
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "newIndentation":Lgnu/math/IntNum;
    .end local v8    # "save":Ljava/lang/Object;
    .end local v9    # "result":Ljava/lang/Object;
    .end local p1    # "args":[Ljava/lang/Object;
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Lgnu/mapping/Environment;
    .restart local v1    # "curIndentLoc":Lgnu/mapping/Location;
    .restart local v2    # "oldIndent":Ljava/lang/Object;
    .restart local v3    # "curIndent":I
    .restart local v4    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "len":I
    .restart local v7    # "newIndentation":Lgnu/math/IntNum;
    .restart local v8    # "save":Ljava/lang/Object;
    .restart local v9    # "result":Ljava/lang/Object;
    .restart local p1    # "args":[Ljava/lang/Object;
    :catchall_1
    move-exception v10

    :goto_2
    invoke-virtual {v1, v8}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    throw v10

    .line 109
    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "curIndentLoc":Lgnu/mapping/Location;
    .end local v2    # "oldIndent":Ljava/lang/Object;
    .end local v3    # "curIndent":I
    .end local v4    # "out":Ljava/io/PrintWriter;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "newIndentation":Lgnu/math/IntNum;
    .end local v8    # "save":Ljava/lang/Object;
    .end local v9    # "result":Ljava/lang/Object;
    :cond_4
    iget-object v0, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .line 125
    const-string v0, "#<procedure "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "n":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 128
    const-string v1, "<unnamed>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :goto_0
    iget-boolean v1, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v1, :cond_1

    const-string v1, ", traced>"

    goto :goto_1

    :cond_1
    const-string v1, ">"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    return-void
.end method
