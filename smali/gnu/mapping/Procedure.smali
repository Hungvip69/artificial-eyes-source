.class public abstract Lgnu/mapping/Procedure;
.super Lgnu/mapping/PropertySet;
.source "Procedure.java"


# static fields
.field public static final compilerKey:Lgnu/mapping/LazyPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/mapping/LazyPropertyKey<",
            "*>;"
        }
    .end annotation
.end field

.field private static final setterKey:Lgnu/mapping/Symbol;

.field private static final sourceLocationKey:Ljava/lang/String; = "source-location"

.field public static final validateApplyKey:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    .line 22
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "validate-apply"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    .line 27
    new-instance v0, Lgnu/mapping/LazyPropertyKey;

    const-string v1, "compiler"

    invoke-direct {v0, v1}, Lgnu/mapping/LazyPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->setName(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    iget v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 120
    iget v1, p1, Lgnu/mapping/CallContext;->where:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 124
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 144
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 140
    :pswitch_0
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 142
    goto :goto_0

    .line 136
    :pswitch_1
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 138
    goto :goto_0

    .line 133
    :pswitch_2
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 134
    goto :goto_0

    .line 130
    :pswitch_3
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 131
    goto :goto_0

    .line 127
    :pswitch_4
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object p0

    .line 128
    nop

    .line 148
    :goto_0
    invoke-virtual {p1, p0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 149
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)V
    .locals 2
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "argCount"    # I

    .line 92
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 93
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    if-ltz v0, :cond_0

    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 96
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-direct {v1, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1
.end method

.method public static maxArgs(I)I
    .locals 1
    .param p0, "num"    # I

    .line 82
    shr-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static minArgs(I)I
    .locals 1
    .param p0, "num"    # I

    .line 80
    and-int/lit16 v0, p0, 0xfff

    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 0
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    invoke-static {p0, p1}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    .line 114
    return-void
.end method

.method public abstract apply0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public check0(Lgnu/mapping/CallContext;)V
    .locals 2
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 319
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 320
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 324
    return-void

    .line 322
    :cond_0
    sget-object v1, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 329
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 330
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 335
    return-void

    .line 332
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 333
    .local v1, "args":[Ljava/lang/Object;
    invoke-static {v0, p0, v1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 340
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 341
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 346
    return-void

    .line 343
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 344
    .local v1, "args":[Ljava/lang/Object;
    invoke-static {v0, p0, v1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 351
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 352
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 357
    return-void

    .line 354
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    .line 355
    .local v1, "args":[Ljava/lang/Object;
    invoke-static {v0, p0, v1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 363
    invoke-virtual/range {p0 .. p5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 364
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 369
    return-void

    .line 366
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 367
    .local v1, "args":[Ljava/lang/Object;
    invoke-static {v0, p0, v1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 374
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 375
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 379
    return-void

    .line 377
    :cond_0
    invoke-static {v0, p0, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 434
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 4

    .line 383
    instance-of v0, p0, Lgnu/mapping/HasSetter;

    if-nez v0, :cond_1

    .line 385
    sget-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "setter":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_0

    .line 387
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Procedure;

    return-object v1

    .line 388
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "procedure \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has no setter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    .end local v0    # "setter":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 391
    .local v0, "num_args":I
    if-nez v0, :cond_2

    .line 392
    new-instance v1, Lgnu/mapping/Setter0;

    invoke-direct {v1, p0}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    return-object v1

    .line 393
    :cond_2
    const/16 v1, 0x1001

    if-ne v0, v1, :cond_3

    .line 394
    new-instance v1, Lgnu/mapping/Setter1;

    invoke-direct {v1, p0}, Lgnu/mapping/Setter1;-><init>(Lgnu/mapping/Procedure;)V

    return-object v1

    .line 395
    :cond_3
    new-instance v1, Lgnu/mapping/Setter;

    invoke-direct {v1, p0}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    return-object v1
.end method

.method public getSourceLocation()Ljava/lang/String;
    .locals 2

    .line 37
    const-string v0, "source-location"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isSideEffectFree()Z
    .locals 1

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 156
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 157
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    .line 158
    .local v1, "min":I
    if-lez v1, :cond_0

    .line 159
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 160
    :cond_0
    if-gez v0, :cond_1

    .line 161
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v2, p1}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 162
    :cond_1
    const/4 v2, 0x0

    iput v2, p1, Lgnu/mapping/CallContext;->count:I

    .line 163
    iput v2, p1, Lgnu/mapping/CallContext;->where:I

    .line 164
    iput v2, p1, Lgnu/mapping/CallContext;->next:I

    .line 165
    iput-object p0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 166
    return v2
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 174
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 175
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    .line 176
    .local v1, "min":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 177
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 178
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 180
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v4

    .line 181
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 182
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 183
    :cond_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 184
    iput v2, p2, Lgnu/mapping/CallContext;->count:I

    .line 185
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 186
    iput v3, p2, Lgnu/mapping/CallContext;->next:I

    .line 187
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 188
    return v3

    .line 190
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 191
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 199
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 200
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    .line 201
    .local v1, "min":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 202
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 203
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 205
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v4

    .line 206
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 207
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 208
    :cond_1
    iput-object p1, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 209
    iput-object p2, p3, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 210
    iput v2, p3, Lgnu/mapping/CallContext;->count:I

    .line 211
    const/16 v2, 0x21

    iput v2, p3, Lgnu/mapping/CallContext;->where:I

    .line 213
    iput v3, p3, Lgnu/mapping/CallContext;->next:I

    .line 214
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 215
    return v3

    .line 217
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 218
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v2, p3}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 226
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 227
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    .line 228
    .local v1, "min":I
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 229
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 230
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 232
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v4

    .line 233
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 234
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 235
    :cond_1
    iput-object p1, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 236
    iput-object p2, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 237
    iput-object p3, p4, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 238
    iput v2, p4, Lgnu/mapping/CallContext;->count:I

    .line 239
    const/16 v2, 0x321

    iput v2, p4, Lgnu/mapping/CallContext;->where:I

    .line 242
    iput v3, p4, Lgnu/mapping/CallContext;->next:I

    .line 243
    iput-object p0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 244
    return v3

    .line 246
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 247
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v2, p4}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 256
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 257
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    .line 258
    .local v1, "min":I
    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 259
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 260
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 262
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v4

    .line 263
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 264
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 265
    :cond_1
    iput-object p1, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 266
    iput-object p2, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 267
    iput-object p3, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 268
    iput-object p4, p5, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 269
    iput v2, p5, Lgnu/mapping/CallContext;->count:I

    .line 270
    const/16 v2, 0x4321

    iput v2, p5, Lgnu/mapping/CallContext;->where:I

    .line 274
    iput v3, p5, Lgnu/mapping/CallContext;->next:I

    .line 275
    iput-object p0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 276
    return v3

    .line 278
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 279
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v2, p5}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 12
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 284
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 285
    .local v0, "num":I
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    .line 286
    .local v1, "min":I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 287
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 288
    :cond_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 290
    array-length v3, p1

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 303
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v3

    .line 304
    .local v3, "max":I
    array-length v4, p1

    if-le v4, v3, :cond_1

    .line 305
    const/high16 v2, -0xe0000

    or-int/2addr v2, v3

    return v2

    .line 301
    .end local v3    # "max":I
    :pswitch_0
    aget-object v7, p1, v2

    aget-object v8, p1, v5

    aget-object v9, p1, v4

    const/4 v2, 0x3

    aget-object v10, p1, v2

    move-object v6, p0

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 299
    :pswitch_1
    aget-object v2, p1, v2

    aget-object v3, p1, v5

    aget-object v4, p1, v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 297
    :pswitch_2
    aget-object v2, p1, v2

    aget-object v3, p1, v5

    invoke-virtual {p0, v2, v3, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 295
    :pswitch_3
    aget-object v2, p1, v2

    invoke-virtual {p0, v2, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 293
    :pswitch_4
    invoke-virtual {p0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 308
    :cond_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 309
    array-length v3, p1

    iput v3, p2, Lgnu/mapping/CallContext;->count:I

    .line 310
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 311
    iput v2, p2, Lgnu/mapping/CallContext;->next:I

    .line 312
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 313
    return v2

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

.method public final maxArgs()I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    return v0
.end method

.method public final minArgs()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v0

    return v0
.end method

.method public numArgs()I
    .locals 1

    .line 77
    const/16 v0, -0x1000

    return v0
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public setSetter(Lgnu/mapping/Procedure;)V
    .locals 3
    .param p1, "setter"    # Lgnu/mapping/Procedure;

    .line 400
    instance-of v0, p0, Lgnu/mapping/HasSetter;

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    return-void

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procedure \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has builtin setter - cannot be modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSourceLocation(Ljava/lang/String;I)V
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "line"    # I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source-location"

    invoke-virtual {p0, v1, v0}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 439
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 440
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "#<procedure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "n":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSourceLocation()Ljava/lang/String;

    move-result-object v1

    .line 444
    :cond_0
    if-nez v1, :cond_1

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 446
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
