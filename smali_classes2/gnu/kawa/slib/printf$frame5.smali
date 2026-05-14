.class public Lgnu/kawa/slib/printf$frame5;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf$frame4;->lambda13(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n92#1,13:92\n*E\n"
.end annotation


# instance fields
.field fdigs:Ljava/lang/Object;

.field final lambda$Fn10:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/printf$frame4;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x2002

    const/4 v3, 0x6

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:92"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame5;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/printf$frame5;->lambda14(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda14(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Object;

    .line 92
    move-object/from16 v1, p0

    .line 93
    iget-object v0, v1, Lgnu/kawa/slib/printf$frame5;->staticLink:Lgnu/kawa/slib/printf$frame4;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame4;->idigs:Ljava/lang/Object;

    iget-object v2, v1, Lgnu/kawa/slib/printf$frame5;->fdigs:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v7, 0x1

    aput-object v0, v4, v7

    const/4 v8, 0x2

    aput-object v2, v4, v8

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    const/4 v2, 0x0

    .line 94
    .local v0, "digs":Lgnu/lists/FString;
    invoke-static {v0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v4, 0x0

    .line 95
    .local v2, "ndigs":I
    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    .line 96
    sget-object v9, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v10, v1, Lgnu/kawa/slib/printf$frame5;->staticLink:Lgnu/kawa/slib/printf$frame4;

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame4;->idigs:Ljava/lang/Object;

    :try_start_0
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v10}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, p2

    invoke-virtual {v9, v11, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 97
    .local v4, "j":Ljava/lang/Object;
    .local v9, "ex":Ljava/lang/Object;
    :goto_0
    sget-object v10, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v4, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-eq v10, v12, :cond_0

    .line 98
    sget-object v10, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v12, v1, Lgnu/kawa/slib/printf$frame5;->staticLink:Lgnu/kawa/slib/printf$frame4;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame2;->cont:Ljava/lang/Object;

    iget-object v15, v1, Lgnu/kawa/slib/printf$frame5;->staticLink:Lgnu/kawa/slib/printf$frame4;

    iget-object v15, v15, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v15, v15, Lgnu/kawa/slib/printf$frame3;->sgn:Ljava/lang/Object;

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v12, v14, v5

    aput-object p1, v14, v7

    aput-object v15, v14, v8

    aput-object v6, v14, v3

    sget-object v3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    aput-object v3, v14, v13

    invoke-virtual {v10, v14}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_0
    sget-object v10, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_1
    move-object v12, v4

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v12

    invoke-static {v12}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v12

    invoke-static {v10, v12}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 100
    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v10, v4, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v10, v9, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 102
    :cond_1
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, v1, Lgnu/kawa/slib/printf$frame5;->staticLink:Lgnu/kawa/slib/printf$frame4;

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame2;->cont:Ljava/lang/Object;

    iget-object v12, v1, Lgnu/kawa/slib/printf$frame5;->staticLink:Lgnu/kawa/slib/printf$frame4;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame3;->sgn:Ljava/lang/Object;

    .line 103
    sget-object v15, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v15, v4, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :try_start_2
    move-object v15, v13

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v13
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v0, v13, v2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v13

    .line 104
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v10, v14, v5

    aput-object p1, v14, v7

    aput-object v12, v14, v8

    aput-object v13, v14, v3

    const/4 v3, 0x4

    aput-object v9, v14, v3

    invoke-virtual {v6, v14}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v0    # "digs":Lgnu/lists/FString;
    .end local v2    # "ndigs":I
    .end local v4    # "j":Ljava/lang/Object;
    .end local v9    # "ex":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 103
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame5;
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "ex":Ljava/lang/Object;
    :catch_0
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "substring"

    invoke-direct {v2, v0, v3, v8, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 99
    :catch_1
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-ref"

    invoke-direct {v2, v0, v3, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 96
    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "string-length"

    invoke-direct {v0, v2, v3, v7, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 92
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
