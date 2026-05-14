.class public abstract Lgnu/expr/ModuleWithContext;
.super Lgnu/expr/ModuleBody;
.source "ModuleWithContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 166
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {p1, v0}, Lgnu/expr/ModuleMethod;->check0(Lgnu/mapping/CallContext;)V

    .line 167
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 173
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 174
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, v0}, Lgnu/expr/ModuleMethod;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 175
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 181
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 182
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, p3, v0}, Lgnu/expr/ModuleMethod;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 183
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 191
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, p3, p4, v0}, Lgnu/expr/ModuleMethod;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 192
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 199
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    .line 200
    .local v6, "ctx":Lgnu/mapping/CallContext;
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleMethod;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 201
    invoke-virtual {v6}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 208
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {p1, p2, v0}, Lgnu/expr/ModuleMethod;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 209
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 4
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 8
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 9
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 10
    .local v1, "min":I
    if-lez v1, :cond_0

    .line 11
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 12
    :cond_0
    const/4 v2, 0x0

    iput v2, p2, Lgnu/mapping/CallContext;->count:I

    .line 13
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 14
    if-gez v0, :cond_1

    .line 15
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, p2}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 16
    :cond_1
    iput v2, p2, Lgnu/mapping/CallContext;->next:I

    .line 17
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v3, p2, Lgnu/mapping/CallContext;->pc:I

    .line 18
    return v2
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 23
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 24
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 25
    .local v1, "min":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 26
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 27
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 29
    shr-int/lit8 v4, v0, 0xc

    .line 30
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 31
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 32
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 33
    iput v2, p3, Lgnu/mapping/CallContext;->count:I

    .line 34
    iput v2, p3, Lgnu/mapping/CallContext;->where:I

    .line 35
    iput v3, p3, Lgnu/mapping/CallContext;->next:I

    .line 36
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    .line 37
    return v3

    .line 39
    .end local v4    # "max":I
    :cond_2
    iput v3, p3, Lgnu/mapping/CallContext;->where:I

    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 41
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p3}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 47
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 48
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 49
    .local v1, "min":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 50
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 51
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 53
    shr-int/lit8 v4, v0, 0xc

    .line 54
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 55
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 56
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 57
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 58
    iput v2, p4, Lgnu/mapping/CallContext;->count:I

    .line 59
    const/16 v2, 0x21

    iput v2, p4, Lgnu/mapping/CallContext;->where:I

    .line 61
    iput v3, p4, Lgnu/mapping/CallContext;->next:I

    .line 62
    iput-object p0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    .line 63
    return v3

    .line 65
    .end local v4    # "max":I
    :cond_2
    iput v3, p4, Lgnu/mapping/CallContext;->where:I

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 67
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p4}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 73
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 74
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 75
    .local v1, "min":I
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 76
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 77
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 79
    shr-int/lit8 v4, v0, 0xc

    .line 80
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 81
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 82
    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 83
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 84
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 85
    iput v2, p5, Lgnu/mapping/CallContext;->count:I

    .line 86
    const/16 v2, 0x321

    iput v2, p5, Lgnu/mapping/CallContext;->where:I

    .line 89
    iput v3, p5, Lgnu/mapping/CallContext;->next:I

    .line 90
    iput-object p0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    .line 91
    return v3

    .line 93
    .end local v4    # "max":I
    :cond_2
    iput v3, p5, Lgnu/mapping/CallContext;->where:I

    .line 94
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    .line 95
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p5}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "ctx"    # Lgnu/mapping/CallContext;

    .line 101
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 102
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 103
    .local v1, "min":I
    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 104
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 105
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 107
    shr-int/lit8 v4, v0, 0xc

    .line 108
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 109
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 110
    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 111
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 112
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 113
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 114
    iput v2, p6, Lgnu/mapping/CallContext;->count:I

    .line 115
    const/16 v2, 0x4321

    iput v2, p6, Lgnu/mapping/CallContext;->where:I

    .line 119
    iput v3, p6, Lgnu/mapping/CallContext;->next:I

    .line 120
    iput-object p0, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    .line 121
    return v3

    .line 123
    .end local v4    # "max":I
    :cond_2
    iput v3, p6, Lgnu/mapping/CallContext;->where:I

    .line 124
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    .line 125
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p6}, Lgnu/expr/ModuleWithContext;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 130
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v11

    .line 131
    .local v11, "num":I
    and-int/lit16 v12, v11, 0xfff

    .line 132
    .local v12, "min":I
    array-length v0, v9

    if-ge v0, v12, :cond_0

    .line 133
    const/high16 v0, -0xf0000

    or-int/2addr v0, v12

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    if-ltz v11, :cond_1

    .line 136
    array-length v1, v9

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 149
    shr-int/lit8 v1, v11, 0xc

    .line 150
    .local v1, "max":I
    array-length v2, v9

    if-le v2, v1, :cond_1

    .line 151
    const/high16 v0, -0xe0000

    or-int/2addr v0, v1

    return v0

    .line 147
    .end local v1    # "max":I
    :pswitch_0
    aget-object v4, v9, v0

    aget-object v3, v9, v3

    aget-object v5, v9, v2

    const/4 v0, 0x3

    aget-object v6, v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleWithContext;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 145
    :pswitch_1
    aget-object v4, v9, v0

    aget-object v3, v9, v3

    aget-object v5, v9, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move-object v4, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleWithContext;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 143
    :pswitch_2
    aget-object v0, v9, v0

    aget-object v1, v9, v3

    invoke-virtual {p0, p1, v0, v1, v10}, Lgnu/expr/ModuleWithContext;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 141
    :pswitch_3
    aget-object v0, v9, v0

    invoke-virtual {p0, p1, v0, v10}, Lgnu/expr/ModuleWithContext;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 139
    :pswitch_4
    invoke-virtual {p0, p1, v10}, Lgnu/expr/ModuleWithContext;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 154
    :cond_1
    iput-object v9, v10, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 155
    array-length v1, v9

    iput v1, v10, Lgnu/mapping/CallContext;->count:I

    .line 156
    iput v0, v10, Lgnu/mapping/CallContext;->where:I

    .line 157
    iput v0, v10, Lgnu/mapping/CallContext;->next:I

    .line 158
    iput-object v7, v10, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iget v1, v8, Lgnu/expr/ModuleMethod;->selector:I

    iput v1, v10, Lgnu/mapping/CallContext;->pc:I

    .line 159
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
