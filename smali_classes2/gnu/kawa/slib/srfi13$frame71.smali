.class public Lgnu/kawa/slib/srfi13$frame71;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringPadRight$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame71"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1046#1,9:1046\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn161:Lgnu/expr/ModuleMethod;

.field final lambda$Fn162:Lgnu/expr/ModuleMethod;

.field n:Ljava/lang/Object;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x8a

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame71;->lambda$Fn161:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8b

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame71;->lambda$Fn162:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda163(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "n"    # Ljava/lang/Object;

    .line 1047
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .local v0, "x":Z
    if-eqz v0, :cond_1

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    .local v1, "x":Z
    move v1, v2

    if-eqz v1, :cond_0

    sget-object v2, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v1, v2

    .end local v1    # "x":Z
    :cond_0
    move v0, v1

    .end local v0    # "x":Z
    :cond_1
    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame71;->lambda161()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame71;->lambda162(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda161()Ljava/lang/Object;
    .locals 4

    .line 1046
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnpad$Mnright:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame71;->s:Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$rest:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame71;
    :catch_0
    move-exception v0

    const/16 v1, 0x416

    const/16 v2, 0x3a

    const-string v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {v0, v3, v1, v2}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0
.end method

.method lambda162(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .line 1047
    const-string v0, "%string-copy!"

    const-string v1, "%substring/shared"

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_7

    sget-object v4, Lgnu/kawa/slib/srfi13;->lambda$Fn163:Lgnu/expr/ModuleMethod;

    .line 1048
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/srfi13;->string$Mnpad$Mnright:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v3, v4, v5, v6}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v2, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 1050
    .local v2, "len":Ljava/lang/Object;
    sget-object v4, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v4, v5, :cond_0

    .line 1051
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame71;->s:Ljava/lang/Object;

    :try_start_1
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_3
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v0, v3, v1}, Lgnu/kawa/slib/srfi13;->$PcSubstring$SlShared(Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .end local v2    # "len":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame71;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v1, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1052
    .restart local v2    # "len":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame71;->n:Ljava/lang/Object;

    :try_start_4
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-static {v1, v4}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1053
    .local v1, "ans":Ljava/lang/CharSequence;
    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame71;->s:Ljava/lang/Object;

    :try_start_5
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    move-object v4, p1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    move-object v5, p2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_3

    invoke-static {v1, v7, v3, v4, v0}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1054
    move-object v0, v1

    .end local v1    # "ans":Ljava/lang/CharSequence;
    .end local v2    # "len":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1053
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_3
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_4
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1052
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p2, p1, v0, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1054
    :catch_7
    move-exception p1

    const/16 p2, 0x417

    const/4 v0, 0x7

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {p1, v1, p2, v0}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8a

    if-ne v0, v1, :cond_0

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x8b

    if-ne v0, v1, :cond_0

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
