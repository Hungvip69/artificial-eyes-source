.class public Lkawa/lib/system;
.super Lgnu/expr/ModuleBody;
.source "system.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsystem.scm\nScheme\n*S Scheme\n*F\n+ 1 system.scm\n/u2/home/jis/ai2-kawa/kawa/lib/system.scm\n*L\n1#1,108:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/system;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final catch:Lgnu/expr/ModuleMethod;

.field public static command$Mnparse:Lgnu/mapping/Procedure;

.field public static final compile$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final make$Mnprocess:Lgnu/expr/ModuleMethod;

.field public static final open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

.field public static final process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

.field public static final system:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "process-command-line-assignments"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "catch"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "compile-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "tokenize-string-using-shell"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "tokenize-string-to-string-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "convert-list-to-string-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "convert-vector-to-string-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "system"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "open-input-pipe"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-process"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    new-instance v2, Lkawa/lib/system;

    invoke-direct {v2}, Lkawa/lib/system;-><init>()V

    sput-object v2, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v3, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    sget-object v4, Lkawa/lib/system;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x2002

    invoke-direct {v2, v3, v0, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/system;->make$Mnprocess:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/system;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x2

    const/16 v6, 0x1001

    invoke-direct {v0, v3, v4, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v4, Lkawa/lib/system;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v2, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->system:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v4, Lkawa/lib/system;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v2, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v4, Lkawa/lib/system;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v2, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v4, Lkawa/lib/system;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v2, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v4, Lkawa/lib/system;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v2, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v4, Lkawa/lib/system;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v2, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->compile$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/system;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3003

    const/16 v5, 0x9

    invoke-direct {v0, v3, v5, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->catch:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v4, Lkawa/lib/system;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v2, v4, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "thunk"    # Lgnu/mapping/Procedure;
    .param p2, "handler"    # Lgnu/mapping/Procedure;

    .line 102
    nop

    .line 103
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lkawa/lang/NamedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "ex":Lkawa/lang/NamedException;
    goto :goto_0

    .end local v0    # "ex":Lkawa/lang/NamedException;
    :catch_0
    move-exception v1

    .restart local v0    # "ex":Lkawa/lang/NamedException;
    move-object v0, v1

    .line 105
    invoke-virtual {v0, p0, p2}, Lkawa/lang/NamedException;->applyHandler(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "ex":Lkawa/lang/NamedException;
    :goto_0
    return-object v1
.end method

.method public static compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/lang/String;

    .line 86
    nop

    .line 89
    nop

    .line 90
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 89
    .local v0, "messages":Lgnu/text/SourceMessages;
    nop

    .line 92
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkawa/lang/CompileFile;->read(Ljava/lang/String;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;

    move-result-object v2

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v1, v2

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/expr/Compilation;->explicit:Z

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lgnu/expr/Compilation;->compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    .end local v0    # "messages":Lgnu/text/SourceMessages;
    .end local v1    # "comp":Lgnu/expr/Compilation;
    return-void

    .restart local v0    # "messages":Lgnu/text/SourceMessages;
    .restart local v1    # "comp":Lgnu/expr/Compilation;
    :cond_0
    new-instance v2, Lgnu/text/SyntaxException;

    invoke-direct {v2, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 95
    :cond_1
    new-instance v2, Lgnu/text/SyntaxException;

    invoke-direct {v2, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "lst"    # Ljava/lang/Object;

    .line 43
    nop

    .line 44
    :try_start_0
    move-object v0, p0

    check-cast v0, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v0}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v0

    const/4 v1, 0x0

    .line 45
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/String;

    move-object v2, p0

    .line 46
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v3, p0

    .local v3, "p":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 47
    :goto_0
    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    .end local v0    # "count":I
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/Object;
    return-object v1

    .line 48
    .restart local v0    # "count":I
    .restart local v1    # "arr":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/Object;
    :cond_0
    :try_start_1
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .local v4, "pp":Lgnu/lists/Pair;
    move-object v4, v5

    .line 49
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v1, v2

    .line 50
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "count":I
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/Object;
    .end local v4    # "pp":Lgnu/lists/Pair;
    .end local p0    # "lst":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "pp"

    const/4 v2, -0x2

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 44
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "length"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "vec"    # Ljava/lang/Object;

    .line 36
    const-string v0, "vector-ref"

    .line 37
    const/4 v1, 0x1

    :try_start_0
    move-object v2, p0

    check-cast v2, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v2}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v2

    const/4 v3, 0x0

    .line 38
    .local v2, "count":I
    new-array v3, v2, [Ljava/lang/String;

    move-object v4, p0

    .line 39
    .local v3, "arr":[Ljava/lang/String;
    sget-object v4, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    .local v4, "i":Ljava/lang/Object;
    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 41
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    :try_start_1
    move-object v6, p0

    check-cast v6, Lgnu/lists/FVector;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v7, v4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v6, v7}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    aput-object v6, v3, v5

    .line 39
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 41
    .end local v2    # "count":I
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v4    # "i":Ljava/lang/Object;
    .end local p0    # "vec":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v2, v0, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 40
    .restart local p0    # "vec":Ljava/lang/Object;
    :cond_1
    return-object v3

    .line 37
    .end local p0    # "vec":Ljava/lang/Object;
    :catch_2
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "vector-length"

    invoke-direct {v2, v0, v3, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public static makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;
    .locals 5
    .param p0, "args"    # Ljava/lang/Object;
    .param p1, "env"    # Ljava/lang/Object;

    .line 6
    const-string v0, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])"

    .line 7
    nop

    .line 8
    invoke-static {p0}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .local v3, "arargs":Ljava/lang/Object;
    goto :goto_0

    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_0
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {p0}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .restart local v3    # "arargs":Ljava/lang/Object;
    goto :goto_0

    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    sget-object v1, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .restart local v3    # "arargs":Ljava/lang/Object;
    goto :goto_0

    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 11
    move-object v3, v2

    move-object v1, p0

    .restart local v3    # "arargs":Ljava/lang/Object;
    goto :goto_0

    .line 12
    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "invalid arguments to make-process"

    invoke-static {v3, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .restart local v3    # "arargs":Ljava/lang/Object;
    :goto_0
    nop

    .line 7
    .end local v3    # "arargs":Ljava/lang/Object;
    .local v1, "arargs":Ljava/lang/Object;
    nop

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .local v2, "runtime":Ljava/lang/Runtime;
    move-object v2, v3

    :try_start_0
    move-object v3, v1

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v4, p1

    check-cast v4, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .end local v1    # "arargs":Ljava/lang/Object;
    .end local v2    # "runtime":Ljava/lang/Runtime;
    return-object v0

    .line 18
    .end local p0    # "args":Ljava/lang/Object;
    .end local p1    # "env":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p0, "command"    # Ljava/lang/Object;

    .line 21
    nop

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static processCommandLineAssignments()V
    .locals 0

    .line 107
    nop

    .line 108
    invoke-static {}, Lgnu/expr/ApplicationMainSupport;->processSetProperties()V

    return-void
.end method

.method public static system(Ljava/lang/Object;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/Object;

    .line 28
    nop

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    return v0
.end method

.method public static tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 52
    nop

    .line 53
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    nop

    .line 55
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    goto :goto_0

    .line 63
    :cond_0
    nop

    .line 53
    nop

    .line 65
    const/4 v0, 0x1

    :try_start_0
    move-object v1, p0

    check-cast v1, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    .line 53
    nop

    .line 66
    new-array v2, v1, [Ljava/lang/String;

    .line 67
    sub-int/2addr v1, v0

    .line 68
    :goto_1
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    return-object v2

    .line 69
    :cond_1
    :try_start_1
    check-cast p0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v2, v1

    .line 71
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "pp"

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 65
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "length"

    invoke-direct {v2, v1, v3, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public static tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/Object;

    .line 73
    nop

    .line 74
    nop

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 76
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "/bin/sh"

    aput-object v2, v0, v1

    .line 77
    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    .line 78
    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 79
    nop

    .end local v0    # "arr":[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 107
    invoke-static {}, Lkawa/lib/system;->processCommandLineAssignments()V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p2}, Lkawa/lib/system;->tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_1
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkawa/lib/system;->tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_3
    invoke-static {p2}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_4
    invoke-static {p2}, Lkawa/lib/system;->system(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_5
    invoke-static {p2}, Lkawa/lib/system;->openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lkawa/lib/system;->compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "compile-file"

    const/4 v1, 0x1

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 6
    :sswitch_1
    invoke-static {p2, p3}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "catch"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 102
    :try_start_0
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3, p4}, Lkawa/lib/system;->catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v0, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 107
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 21
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 73
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 52
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 43
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 36
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 28
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 21
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 86
    :sswitch_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_0
    const p1, -0xbffff

    return p1

    .line 6
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 102
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_0

    const p1, -0xbfffe

    return p1

    :cond_0
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1

    const p1, -0xbfffd

    return p1

    :cond_1
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 6
    nop

    .line 21
    nop

    .line 28
    nop

    .line 36
    nop

    .line 43
    nop

    .line 52
    nop

    .line 73
    nop

    .line 81
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    goto :goto_0

    :cond_0
    sget-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    :goto_0
    sput-object v1, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    .line 86
    nop

    .line 102
    nop

    .line 107
    return-void
.end method
