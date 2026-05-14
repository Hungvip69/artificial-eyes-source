.class public Lgnu/kawa/functions/ApplyToArgs;
.super Lgnu/mapping/ProcedureN;
.source "ApplyToArgs.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Language;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "language"    # Lgnu/expr/Language;

    .line 124
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, Lgnu/kawa/functions/ApplyToArgs;->language:Lgnu/expr/Language;

    .line 126
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompilationHelpers:validateApplyToArgs"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/ApplyToArgs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 135
    .local v1, "proc":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/Procedure;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 137
    array-length v2, p1

    sub-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 138
    .local v2, "rargs":[Ljava/lang/Object;
    array-length v4, v2

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    move-object v0, v1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 141
    .end local v2    # "rargs":[Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Lgnu/bytecode/Type;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    instance-of v2, v1, Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    .line 154
    array-length v0, p1

    if-ne v0, v4, :cond_2

    .line 156
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 158
    .local v0, "index":I
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 155
    .end local v0    # "index":I
    :cond_2
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length v2, p1

    invoke-direct {v0, p0, v2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 163
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 164
    .local v2, "pclass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    array-length v0, p1

    if-ne v0, v4, :cond_4

    .line 168
    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 167
    :cond_4
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length v3, p1

    invoke-direct {v0, p0, v3}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    .line 170
    :cond_5
    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "procedure"

    invoke-direct {v3, p0, v0, v1, v4}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 144
    .end local v2    # "pclass":Ljava/lang/Class;
    :cond_6
    :goto_0
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 74
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 78
    :goto_0
    return-void
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 82
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 83
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2, p3}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 86
    :goto_0
    return-void
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 90
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2, p3, p4}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 94
    :goto_0
    return-void
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 99
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 103
    :goto_0
    return-void
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 107
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/ApplyToArgs;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 108
    .local v0, "code":I
    if-eqz v0, :cond_1

    .line 110
    move-object v1, p0

    .line 111
    .local v1, "proc":Lgnu/mapping/Procedure;
    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, p1, v2

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_0

    .line 113
    aget-object v3, p1, v2

    move-object v1, v3

    check-cast v1, Lgnu/mapping/Procedure;

    .line 114
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    .local v3, "xargs":[Ljava/lang/Object;
    array-length v5, v3

    invoke-static {p1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    move-object p1, v3

    .line 118
    .end local v3    # "xargs":[Ljava/lang/Object;
    :cond_0
    invoke-static {v0, v1, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 120
    .end local v1    # "proc":Lgnu/mapping/Procedure;
    :cond_1
    return-void
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 14
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 15
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 22
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 23
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2, p3}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 25
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 30
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2, p3, p4}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 33
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 39
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 42
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 47
    array-length v0, p1

    .line 48
    .local v0, "n":I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_0

    .line 50
    aget-object v2, p1, v1

    check-cast v2, Lgnu/mapping/Procedure;

    .line 51
    .local v2, "proc":Lgnu/mapping/Procedure;
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 64
    add-int/lit8 v3, v0, -0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    .local v3, "xargs":[Ljava/lang/Object;
    add-int/lit8 v4, v0, -0x1

    invoke-static {p1, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-virtual {v2, v3, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1

    .line 62
    .end local v3    # "xargs":[Ljava/lang/Object;
    :pswitch_0
    aget-object v1, p1, v5

    aget-object v5, p1, v4

    aget-object v6, p1, v3

    const/4 v3, 0x4

    aget-object v7, p1, v3

    move-object v3, v2

    move-object v4, v1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1

    .line 60
    :pswitch_1
    aget-object v1, p1, v5

    aget-object v4, p1, v4

    aget-object v3, p1, v3

    invoke-virtual {v2, v1, v4, v3, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1

    .line 58
    :pswitch_2
    aget-object v1, p1, v5

    aget-object v3, p1, v4

    invoke-virtual {v2, v1, v3, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1

    .line 56
    :pswitch_3
    aget-object v1, p1, v5

    invoke-virtual {v2, v1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1

    .line 54
    :pswitch_4
    invoke-virtual {v2, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v1

    return v1

    .line 69
    .end local v2    # "proc":Lgnu/mapping/Procedure;
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
