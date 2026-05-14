.class public Lgnu/kawa/slib/srfi37$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi37.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi37.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm\n+ 2 syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/syntax.scm\n*L\n90#1,28:90\n145#2:10000\n*E\n"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field index:Ljava/lang/Object;

.field final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field final lambda$Fn8:Lgnu/expr/ModuleMethod;

.field name:C

.field option:Ljava/lang/Object;

.field seeds:Ljava/lang/Object;

.field shorts:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/srfi37$frame;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x4

    const/16 v4, -0x1000

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame1;->lambda12()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame1;->lambda10()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi37$frame1;->lambda8()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame1;->lambda13$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame1;->lambda11$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi37$frame1;->lambda9$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method lambda10()Ljava/lang/Object;
    .locals 8

    .line 103
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    check-cast v1, Lgnu/kawa/slib/option$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 105
    iget-char v4, p0, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    .line 106
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 107
    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    const/4 v1, 0x1

    aput-object v3, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    const/4 v1, 0x3

    aput-object v5, v7, v1

    const/4 v1, 0x4

    aput-object v6, v7, v1

    invoke-virtual {v0, v7}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103
    .end local p0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_0
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-processor"

    invoke-direct {v3, v0, v4, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda11$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, "x":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 102
    nop

    .line 10000
    nop

    .line 102
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 108
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method lambda12()Ljava/lang/Object;
    .locals 7

    .line 111
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_0
    check-cast v1, Lgnu/kawa/slib/option$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 113
    iget-char v4, p0, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    .line 115
    iget-object v5, p0, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v3, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v6, v2

    const/4 v1, 0x4

    aput-object v5, v6, v1

    invoke-virtual {v0, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 111
    .end local p0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_0
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-processor"

    invoke-direct {v3, v0, v4, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda13$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, "x":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 110
    nop

    .line 10000
    nop

    .line 110
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 117
    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method lambda8()Ljava/lang/Object;
    .locals 11

    .line 91
    const-string v0, "substring"

    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_0
    check-cast v2, Lgnu/kawa/slib/option$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {v2}, Lgnu/kawa/slib/srfi37;->optionProcessor(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v2

    .line 92
    iget-object v4, p0, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 93
    iget-char v5, p0, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    .line 94
    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    const/4 v7, 0x1

    :try_start_1
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 96
    iget-object v9, p0, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x2

    :try_start_2
    move-object v10, v8

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v8, p0, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_3
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v8}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    invoke-static {v6, v0, v8}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v3

    aput-object v4, v8, v7

    aput-object v5, v8, v9

    const/4 v2, 0x3

    aput-object v0, v8, v2

    const/4 v0, 0x4

    aput-object v6, v8, v0

    invoke-virtual {v1, v8}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 97
    .end local p0    # "this":Lgnu/kawa/slib/srfi37$frame1;
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-length"

    invoke-direct {v1, v0, v2, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 96
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v9, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 95
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v7, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 91
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v4, "option-processor"

    invoke-direct {v1, v0, v4, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda9$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, "x":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 90
    nop

    .line 10000
    nop

    .line 90
    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
