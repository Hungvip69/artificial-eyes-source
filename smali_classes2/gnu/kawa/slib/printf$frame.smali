.class public Lgnu/kawa/slib/printf$frame;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n36#1,93:36\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field n:I

.field proc:Ljava/lang/Object;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x4004

    const/16 v3, 0xc

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:106"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method public static lambda1parseError()Ljava/lang/Boolean;
    .locals 1

    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, p2, p3, p4, p5}, Lgnu/kawa/slib/printf$frame;->lambda5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lambda2sign(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "cont"    # Ljava/lang/Object;

    .line 45
    const-string v0, "string-ref"

    .line 46
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget v2, p0, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    .line 47
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v1, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    const/4 v1, 0x0

    .line 48
    .local v0, "c":C
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, p1

    .local v1, "x":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    sget-object v4, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    .line 49
    .end local v1    # "x":Ljava/lang/Object;
    :goto_0
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v1, p2, p1, v2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "c":C
    :goto_1
    goto :goto_2

    .line 47
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame;
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "cont":Ljava/lang/Object;
    :catch_0
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 50
    .restart local p1    # "i":Ljava/lang/Object;
    .restart local p2    # "cont":Ljava/lang/Object;
    :cond_2
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_2
    return-object v1
.end method

.method public lambda3digits(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 51
    const-string v0, "substring"

    const-string v1, "string-ref"

    .line 52
    move-object v2, p1

    .line 53
    :goto_0
    sget-object v3, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget v4, p0, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    if-nez v3, :cond_2

    goto :goto_2

    .line 54
    :cond_0
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_5

    invoke-static {v3, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_2

    :cond_1
    sget-object v3, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_3
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    move-object v7, v2

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-static {v6, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {v3, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 52
    :goto_2
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 56
    :cond_2
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v3, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v6, :cond_3

    const-string p1, "0"

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_5
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_0

    invoke-static {v3, p1, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_3
    invoke-virtual {v1, p2, v2, p1}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x3

    invoke-direct {p2, p1, v0, v1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p2, v0, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 55
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 54
    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 53
    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "x"

    const/4 v1, -0x2

    invoke-direct {p2, p1, v0, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "cont"    # Ljava/lang/Object;

    .line 75
    new-instance v0, Lgnu/kawa/slib/printf$frame2;

    invoke-direct {v0}, Lgnu/kawa/slib/printf$frame2;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iput-object p2, v0, Lgnu/kawa/slib/printf$frame2;->cont:Ljava/lang/Object;

    .line 76
    nop

    .line 77
    nop

    .line 78
    iget-object v0, v0, Lgnu/kawa/slib/printf$frame2;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    .line 37
    move-object v1, p1

    .local v0, "cont":Ljava/lang/Object;
    .local v1, "i":Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 38
    :goto_0
    sget-object v4, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget v5, p0, Lgnu/kawa/slib/printf$frame;->n:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    .local v2, "x":Z
    move v2, v4

    const/4 v4, 0x2

    const-string v5, "string-ref"

    if-eqz v2, :cond_0

    sget-object v7, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    iget-object v8, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_1
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v9, v1

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 39
    .end local v0    # "cont":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    .end local v2    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame;
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "cont":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v5, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v5, v6, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 38
    .restart local v0    # "cont":Ljava/lang/Object;
    .restart local v1    # "i":Ljava/lang/Object;
    .restart local v2    # "x":Z
    .restart local p1    # "i":Ljava/lang/Object;
    .restart local p2    # "cont":Ljava/lang/Object;
    :cond_0
    if-eqz v2, :cond_5

    .line 40
    .end local v2    # "x":Z
    :goto_1
    iget-object v7, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_3
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v6, v1, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_4
    move-object v8, v6

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {v7, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    .local v2, "tmp":C
    move v2, v4

    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sget-object v7, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    invoke-virtual {v4, v5, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v6

    .local v4, "x":Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_1
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v3, "x":Ljava/lang/Object;
    move-object v3, v5

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v5, :cond_3

    goto :goto_2

    :cond_2
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_3

    .line 41
    .end local v3    # "x":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Object;
    :goto_2
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    invoke-virtual {v4, v1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 40
    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_4

    .line 42
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v3, v0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 43
    :cond_4
    invoke-static {}, Lgnu/kawa/slib/printf$frame;->lambda1parseError()Ljava/lang/Boolean;

    move-result-object v3

    .end local v2    # "tmp":C
    :goto_3
    goto :goto_4

    .line 40
    .end local v0    # "cont":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "cont":Ljava/lang/Object;
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v5, v4, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 44
    .restart local v0    # "cont":Ljava/lang/Object;
    .restart local v1    # "i":Ljava/lang/Object;
    .restart local p1    # "i":Ljava/lang/Object;
    .restart local p2    # "cont":Ljava/lang/Object;
    :cond_5
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2, v0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v0    # "cont":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    :goto_4
    return-object v3

    .line 38
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "cont":Ljava/lang/Object;
    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "x"

    const/4 v1, -0x2

    invoke-direct {p2, p1, v0, v1, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method lambda5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "sgn"    # Ljava/lang/Object;
    .param p3, "digs"    # Ljava/lang/Object;
    .param p4, "ex"    # Ljava/lang/Object;

    .line 106
    const-string v0, "string-ref"

    new-instance v1, Lgnu/kawa/slib/printf$frame0;

    invoke-direct {v1}, Lgnu/kawa/slib/printf$frame0;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/printf$frame0;->staticLink:Lgnu/kawa/slib/printf$frame;

    iput-object p2, v1, Lgnu/kawa/slib/printf$frame0;->sgn:Ljava/lang/Object;

    iput-object p3, v1, Lgnu/kawa/slib/printf$frame0;->digs:Ljava/lang/Object;

    iput-object p4, v1, Lgnu/kawa/slib/printf$frame0;->ex:Ljava/lang/Object;

    .line 107
    sget-object v2, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 108
    iget v3, p0, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    iget-object v3, v1, Lgnu/kawa/slib/printf$frame0;->sgn:Ljava/lang/Object;

    iget-object v4, v1, Lgnu/kawa/slib/printf$frame0;->digs:Ljava/lang/Object;

    iget-object v1, v1, Lgnu/kawa/slib/printf$frame0;->ex:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4, v1}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    const/4 v3, 0x1

    :try_start_0
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v4, 0x2

    :try_start_1
    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4

    invoke-static {v2, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sget-object v5, Lgnu/kawa/slib/printf;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static {v2, v5}, Lkawa/lib/lists;->memv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v5, :cond_1

    .line 110
    iget-object v0, v1, Lgnu/kawa/slib/printf$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/slib/printf$frame;->lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 116
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_2
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    move-object v6, p1

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {v5, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sget-object v4, Lgnu/kawa/slib/printf;->Lit4:Lgnu/text/Char;

    invoke-virtual {v2, v0, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_3

    .line 119
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_4
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    invoke-static {v0}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    .line 120
    iget-object v0, v1, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2

    .line 121
    iget-object v0, v1, Lgnu/kawa/slib/printf$frame0;->num:Ljava/lang/Object;

    :try_start_5
    check-cast v0, Lgnu/math/Complex;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {v0}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, v1, Lgnu/kawa/slib/printf$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-static {v0, v1}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 122
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame;
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "sgn":Ljava/lang/Object;
    .end local p3    # "digs":Ljava/lang/Object;
    .end local p4    # "ex":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "real-part"

    invoke-direct {p2, p1, p3, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 128
    .restart local p1    # "i":Ljava/lang/Object;
    .restart local p2    # "sgn":Ljava/lang/Object;
    .restart local p3    # "digs":Ljava/lang/Object;
    .restart local p4    # "ex":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lgnu/kawa/slib/printf$frame;->lambda1parseError()Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    goto :goto_1

    .line 119
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "sgn":Ljava/lang/Object;
    .end local p3    # "digs":Ljava/lang/Object;
    .end local p4    # "ex":Ljava/lang/Object;
    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "string->number"

    invoke-direct {p2, p1, p3, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 128
    .restart local p1    # "i":Ljava/lang/Object;
    .restart local p2    # "sgn":Ljava/lang/Object;
    .restart local p3    # "digs":Ljava/lang/Object;
    .restart local p4    # "ex":Ljava/lang/Object;
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v0

    .line 116
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "sgn":Ljava/lang/Object;
    .end local p3    # "digs":Ljava/lang/Object;
    .end local p4    # "ex":Ljava/lang/Object;
    :catch_2
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 109
    :catch_4
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 106
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x4

    iput p1, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
