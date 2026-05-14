.class public Lgnu/kawa/slib/printf$frame10;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n243#1,259:243\n*E\n"
.end annotation


# instance fields
.field alternate$Mnform:Ljava/lang/Object;

.field args:Ljava/lang/Object;

.field blank:Ljava/lang/Object;

.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field final lambda$Fn14:Lgnu/expr/ModuleMethod;

.field final lambda$Fn15:Lgnu/expr/ModuleMethod;

.field final lambda$Fn16:Lgnu/expr/ModuleMethod;

.field leading$Mn0s:Ljava/lang/Object;

.field left$Mnadjust:Ljava/lang/Object;

.field os:Ljava/lang/Object;

.field pad:Lgnu/mapping/Procedure;

.field pr:Ljava/lang/Object;

.field precision:Ljava/lang/Object;

.field signed:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/printf$frame9;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/printf;->Lit67:Lgnu/mapping/SimpleSymbol;

    const/16 v2, -0xfff

    const/16 v3, 0xf

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:472"

    const-string v4, "source-location"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:476"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:484"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:494"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 494
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda28(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 484
    :pswitch_1
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda27(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 476
    :pswitch_2
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda26(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    .line 472
    :pswitch_3
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/printf$frame10;->lambda25(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 256
    const/4 p1, 0x0

    aget-object v0, p2, p1

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    new-array v1, p1, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lambda22readFormatNumber()Ljava/lang/Object;
    .locals 9

    .line 243
    nop

    .line 244
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 245
    sget-object v1, Lgnu/kawa/slib/printf;->Lit66:Lgnu/text/Char;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 247
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v2

    .line 248
    .local v0, "ans":Ljava/lang/Object;
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    .line 249
    nop

    .end local v0    # "ans":Ljava/lang/Object;
    goto :goto_2

    .line 251
    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .local v0, "c":Ljava/lang/Object;
    sget-object v1, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .local v1, "accum":Ljava/lang/Object;
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .local v0, "accum":Ljava/lang/Object;
    .local v1, "c":Ljava/lang/Object;
    .local v2, "closureEnv":Lgnu/kawa/slib/printf$frame10;
    :goto_0
    move-object v2, p0

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    const/4 v4, 0x1

    :try_start_0
    check-cast v3, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    invoke-virtual {v3}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 252
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    invoke-virtual {v6, v0, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 253
    instance-of v7, v1, [Ljava/lang/Object;

    if-eqz v7, :cond_1

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    :goto_1
    invoke-static {v4}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/numbers;->string$To$Number(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v3

    goto :goto_0

    .line 254
    :cond_2
    nop

    .end local v0    # "accum":Ljava/lang/Object;
    .end local v1    # "c":Ljava/lang/Object;
    .end local v2    # "closureEnv":Lgnu/kawa/slib/printf$frame10;
    :goto_2
    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/printf$frame10;
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char-numeric?"

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "pre"    # Ljava/lang/Object;
    .param p2, "argsArray"    # [Ljava/lang/Object;

    .line 256
    const-string v0, "string-length"

    .line 0
    const/4 v1, 0x0

    .line 256
    .local v1, "strs":Lgnu/lists/LList;
    const/4 v2, 0x0

    invoke-static {p2, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v1

    .line 257
    const/4 v3, 0x1

    :try_start_0
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "len":Ljava/lang/Object;
    move-object v5, v1

    .line 259
    .local v5, "ss":Ljava/lang/Object;
    :goto_0
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v7, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_0

    invoke-static {p1, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    invoke-static {v5}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "make-string"

    if-eq v0, v6, :cond_1

    .line 262
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 265
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v0, v6, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_1
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v6, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static {v0, v6}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v0, v6, v3

    invoke-static {v6}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_1

    .end local v1    # "strs":Lgnu/lists/LList;
    .end local v4    # "len":Ljava/lang/Object;
    .end local v5    # "ss":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame10;
    .end local p1    # "pre":Ljava/lang/Object;
    .end local p2    # "argsArray":[Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local v1    # "strs":Lgnu/lists/LList;
    .restart local v4    # "len":Ljava/lang/Object;
    .restart local v5    # "ss":Ljava/lang/Object;
    .restart local p1    # "pre":Ljava/lang/Object;
    .restart local p2    # "argsArray":[Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_2

    .line 267
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 268
    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_2
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    sget-object v2, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {v0, v2}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {p1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_1

    .end local v1    # "strs":Lgnu/lists/LList;
    .end local v4    # "len":Ljava/lang/Object;
    .end local v5    # "ss":Ljava/lang/Object;
    .end local p1    # "pre":Ljava/lang/Object;
    .end local p2    # "argsArray":[Ljava/lang/Object;
    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 271
    .restart local v1    # "strs":Lgnu/lists/LList;
    .restart local v4    # "len":Ljava/lang/Object;
    .restart local v5    # "ss":Ljava/lang/Object;
    .restart local p1    # "pre":Ljava/lang/Object;
    .restart local p2    # "argsArray":[Ljava/lang/Object;
    :cond_2
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_3
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    sget-object v2, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-static {v0, v2}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v0, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    :goto_1
    nop

    .line 274
    .end local v4    # "len":Ljava/lang/Object;
    .end local v5    # "ss":Ljava/lang/Object;
    :goto_2
    return-object v0

    .line 271
    .end local v1    # "strs":Lgnu/lists/LList;
    .end local p1    # "pre":Ljava/lang/Object;
    .end local p2    # "argsArray":[Ljava/lang/Object;
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v7, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 274
    .restart local v1    # "strs":Lgnu/lists/LList;
    .restart local v4    # "len":Ljava/lang/Object;
    .restart local v5    # "ss":Ljava/lang/Object;
    .restart local p1    # "pre":Ljava/lang/Object;
    .restart local p2    # "argsArray":[Ljava/lang/Object;
    :cond_3
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_4
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-static {v7}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .end local v1    # "strs":Lgnu/lists/LList;
    .end local v4    # "len":Ljava/lang/Object;
    .end local v5    # "ss":Ljava/lang/Object;
    .end local p1    # "pre":Ljava/lang/Object;
    .end local p2    # "argsArray":[Ljava/lang/Object;
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 257
    :catch_4
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p2, v0, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 276
    const-string v0, "number->string"

    .line 277
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_b

    invoke-static {v1}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v1

    const-string v3, ""

    if-nez v1, :cond_2

    .line 278
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_1
    check-cast v1, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v1}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 280
    sget-object v4, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v4, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 279
    :cond_0
    if-eqz v1, :cond_1

    .line 281
    :goto_0
    move-object p1, v3

    :cond_1
    goto :goto_1

    .line 279
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "zero?"

    invoke-direct {p2, p1, p3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 282
    :cond_2
    :goto_1
    invoke-static {p1}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "0"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    :try_start_2
    check-cast p1, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p1}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :catch_1
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "symbol->string"

    invoke-direct {p3, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_3
    invoke-static {p1}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    :try_start_3
    check-cast p1, Ljava/lang/Number;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {p1, v0}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_4

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_3
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 284
    :cond_4
    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_a

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v0, v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    move-object p1, v4

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 285
    goto :goto_4

    .line 286
    :cond_8
    const-string p1, "1"

    :goto_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v0, :cond_9

    .line 287
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 288
    :cond_9
    invoke-static {v3, p1}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "string-length"

    if-eqz p3, :cond_a

    move-object p2, v3

    goto/16 :goto_6

    :cond_a
    sget-object p3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 289
    sget-object v1, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    :try_start_6
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_9

    invoke-static {v7, v6}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v7

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    invoke-virtual {p3, v1, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_b

    .line 290
    :try_start_7
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p2, v2, p1}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 291
    const-string p2, "-"

    goto :goto_6

    .line 290
    :catch_4
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_5
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "substring"

    invoke-direct {p3, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 291
    :cond_b
    iget-object p3, p0, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_c

    .line 292
    const-string p2, "+"

    goto :goto_6

    :cond_c
    iget-object p3, p0, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_d

    .line 293
    const-string p2, " "

    goto :goto_6

    :cond_d
    iget-object p3, p0, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_10

    .line 295
    sget-object p3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {p3, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_e

    .line 296
    goto :goto_5

    :cond_e
    sget-object p3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 295
    sget-object v1, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    invoke-virtual {p3, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, p3, :cond_f

    .line 297
    const-string v4, "0x"

    goto :goto_5

    .line 298
    :cond_f
    move-object v4, v3

    :goto_5
    move-object p2, v4

    goto :goto_6

    .line 299
    :cond_10
    move-object p2, v3

    .line 300
    :goto_6
    sget-object p3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 301
    :try_start_9
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_8

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {p3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_11

    .line 302
    sget-object p3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 303
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_a
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_7

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :try_start_b
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p3
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_6

    sget-object v0, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {p3, v0}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p2, p1, v0, v2, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 301
    :cond_11
    :goto_7
    new-array p3, v5, [Ljava/lang/Object;

    aput-object v3, p3, v6

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_8
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 289
    :catch_9
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "string-ref"

    invoke-direct {p3, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 284
    :catch_a
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "x"

    const/4 v1, -0x2

    invoke-direct {p3, p2, v0, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 277
    :catch_b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "negative?"

    invoke-direct {p2, p1, p3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method lambda25(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "s"    # Ljava/lang/Object;

    .line 472
    nop

    .line 473
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 474
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v1, v1, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 473
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame10;
    .end local p1    # "s":Ljava/lang/Object;
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-length"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda26(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "s"    # Ljava/lang/Object;

    .line 476
    const-string v0, "substring"

    .line 477
    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    const/4 v2, 0x0

    .local v1, "sl":Ljava/lang/Object;
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    const/4 v4, 0x1

    :try_start_0
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 478
    :try_start_1
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {v2}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    :try_start_2
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_3
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    goto :goto_0

    .end local v1    # "sl":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame10;
    .end local p1    # "s":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v0, v2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 480
    .restart local v1    # "sl":Ljava/lang/Object;
    .restart local p1    # "s":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 481
    :try_start_4
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {v0}, Lkawa/lib/numbers;->isPositive(Lgnu/math/RealNum;)Z

    move-result v0

    .end local v1    # "sl":Ljava/lang/Object;
    return v0

    .end local p1    # "s":Ljava/lang/Object;
    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "positive?"

    invoke-direct {v0, p1, v2, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 478
    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "negative?"

    invoke-direct {v0, p1, v2, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 477
    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-length"

    invoke-direct {v1, v0, v2, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda27(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "s"    # Ljava/lang/Object;

    .line 484
    nop

    .line 485
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    const/4 v2, 0x1

    :try_start_0
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 486
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v1, v1, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_1
    invoke-static {v0}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v1, v1, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 490
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iget-object v1, v1, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 487
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame10;
    .end local p1    # "s":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v3, "negative?"

    invoke-direct {v1, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 485
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v3, "string-length"

    invoke-direct {v1, v0, v3, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda28(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "s"    # Ljava/lang/Object;

    .line 494
    const-string v0, "substring"

    .line 495
    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    const/4 v2, 0x0

    .local v1, "sl":Ljava/lang/Object;
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    const/4 v4, 0x1

    :try_start_0
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {v2}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    :try_start_2
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v7, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_3
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v6, v5, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    invoke-static {v3}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    goto :goto_0

    .line 498
    .end local v1    # "sl":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame10;
    .end local p1    # "s":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v0, v2, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 499
    .restart local v1    # "sl":Ljava/lang/Object;
    .restart local p1    # "s":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p1, v2, v4

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 500
    :goto_0
    iput-object v1, p0, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 501
    :try_start_4
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {v0}, Lkawa/lib/numbers;->isPositive(Lgnu/math/RealNum;)Z

    move-result v0

    .end local v1    # "sl":Ljava/lang/Object;
    return v0

    .end local p1    # "s":Ljava/lang/Object;
    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "positive?"

    invoke-direct {v0, p1, v2, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 496
    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "negative?"

    invoke-direct {v0, p1, v2, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 495
    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-length"

    invoke-direct {v1, v0, v2, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 472
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 494
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 484
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 476
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 472
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 256
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x5

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
