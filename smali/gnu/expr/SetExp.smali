.class public Lgnu/expr/SetExp;
.super Lgnu/expr/AccessExp;
.source "SetExp.java"


# static fields
.field public static final BAD_SHORT:I = 0x10000

.field public static final DEFINING_FLAG:I = 0x2

.field public static final GLOBAL_FLAG:I = 0x4

.field public static final HAS_VALUE:I = 0x40

.field public static final PREFER_BINDING2:I = 0x8

.field public static final PROCEDURE:I = 0x10

.field public static final SET_IF_UNBOUND:I = 0x20


# instance fields
.field new_value:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "val"    # Lgnu/expr/Expression;

    .line 24
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 26
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "val"    # Lgnu/expr/Expression;

    .line 21
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    iput-object p1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    iput-object p2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-void
.end method

.method public static canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I
    .locals 14
    .param p0, "rhs"    # Lgnu/expr/Expression;
    .param p1, "target"    # Lgnu/expr/Declaration;

    .line 341
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 343
    .local v0, "var":Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v1, v2, :cond_6

    instance-of v1, p0, Lgnu/expr/ApplyExp;

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Lgnu/expr/ApplyExp;

    move-object v2, v1

    .local v2, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 348
    invoke-virtual {v2}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v1

    .line 349
    .local v1, "funcExp":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v3

    .line 351
    .local v3, "func":Ljava/lang/Object;
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    if-ne v3, v4, :cond_0

    .line 352
    const/4 v4, 0x1

    .local v4, "sign":I
    goto :goto_0

    .line 353
    .end local v4    # "sign":I
    :cond_0
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    if-ne v3, v4, :cond_6

    .line 354
    const/4 v4, -0x1

    .line 357
    .restart local v4    # "sign":I
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v5

    .line 358
    .local v5, "arg0":Lgnu/expr/Expression;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v6

    .line 359
    .local v6, "arg1":Lgnu/expr/Expression;
    instance-of v7, v5, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_1

    if-lez v4, :cond_1

    .line 361
    move-object v7, v6

    .line 362
    .local v7, "tmp":Lgnu/expr/Expression;
    move-object v6, v5

    .line 363
    move-object v5, v7

    .line 365
    .end local v7    # "tmp":Lgnu/expr/Expression;
    :cond_1
    nop

    instance-of v7, v5, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_6

    .line 367
    move-object v7, v5

    check-cast v7, Lgnu/expr/ReferenceExp;

    .line 368
    .local v7, "ref0":Lgnu/expr/ReferenceExp;
    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v8

    if-ne v8, p1, :cond_6

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 369
    goto :goto_2

    .line 370
    :cond_2
    invoke-virtual {v6}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v8

    .line 372
    .local v8, "value1":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_4

    .line 374
    move-object v9, v8

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 375
    .local v9, "val1":I
    if-gez v4, :cond_3

    .line 376
    neg-int v9, v9

    .line 377
    :cond_3
    int-to-short v10, v9

    if-ne v10, v9, :cond_6

    .line 378
    return v9

    .line 380
    .end local v9    # "val1":I
    :cond_4
    instance-of v9, v8, Lgnu/math/IntNum;

    if-eqz v9, :cond_6

    .line 382
    move-object v9, v8

    check-cast v9, Lgnu/math/IntNum;

    .line 383
    .local v9, "int1":Lgnu/math/IntNum;
    const/16 v10, 0x7fff

    .line 384
    .local v10, "hi":I
    neg-int v11, v10

    .line 385
    .local v11, "lo":I
    if-lez v4, :cond_5

    .line 386
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 388
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 389
    :goto_1
    int-to-long v12, v11

    invoke-static {v9, v12, v13}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v12

    if-ltz v12, :cond_6

    int-to-long v12, v10

    invoke-static {v9, v12, v13}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v12

    if-gtz v12, :cond_6

    .line 391
    invoke-virtual {v9}, Lgnu/math/IntNum;->intValue()I

    move-result v12

    mul-int v12, v12, v4

    return v12

    .line 395
    .end local v1    # "funcExp":Lgnu/expr/Expression;
    .end local v2    # "aexp":Lgnu/expr/ApplyExp;
    .end local v3    # "func":Ljava/lang/Object;
    .end local v4    # "sign":I
    .end local v5    # "arg0":Lgnu/expr/Expression;
    .end local v6    # "arg1":Lgnu/expr/Expression;
    .end local v7    # "ref0":Lgnu/expr/ReferenceExp;
    .end local v8    # "value1":Ljava/lang/Object;
    .end local v9    # "int1":Lgnu/math/IntNum;
    .end local v10    # "hi":I
    .end local v11    # "lo":I
    :cond_6
    :goto_2
    const/high16 v1, 0x10000

    return v1
.end method

.method public static makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 2
    .param p0, "decl"    # Lgnu/expr/Declaration;
    .param p1, "val"    # Lgnu/expr/Expression;

    .line 39
    new-instance v0, Lgnu/expr/SetExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 40
    .local v0, "sexp":Lgnu/expr/SetExp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 41
    return-object v0
.end method

.method public static makeDefinition(Ljava/lang/Object;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 2
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "val"    # Lgnu/expr/Expression;

    .line 32
    new-instance v0, Lgnu/expr/SetExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 33
    .local v0, "sexp":Lgnu/expr/SetExp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 89
    .local v0, "env":Lgnu/mapping/Environment;
    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 91
    .local v1, "sym":Lgnu/mapping/Symbol;
    :goto_0
    const/4 v2, 0x0

    .line 92
    .local v2, "property":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    .line 93
    .local v3, "language":Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v4

    .line 98
    .local v4, "loc":Lgnu/mapping/Location;
    invoke-virtual {v4}, Lgnu/mapping/Location;->isBound()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    iget-object v5, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v5, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    invoke-virtual {p1, v4}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 102
    :cond_3
    return-void

    .line 105
    .end local v4    # "loc":Lgnu/mapping/Location;
    :cond_4
    iget-object v4, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v4, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    .local v4, "new_val":Ljava/lang/Object;
    iget-object v5, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v5, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-nez v5, :cond_7

    .line 108
    iget-object v5, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    iget-object v6, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v6, v6, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v6}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v6

    aget-object v5, v5, v6

    .line 109
    .local v5, "evalFrame":[Ljava/lang/Object;
    iget-object v6, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v6}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 112
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 113
    iget-object v6, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v6, v6, Lgnu/expr/Declaration;->evalIndex:I

    invoke-static {v1}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v7

    aput-object v7, v5, v6

    .line 114
    :cond_5
    iget-object v6, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v6, v6, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v6, v5, v6

    check-cast v6, Lgnu/mapping/Location;

    .line 115
    .local v6, "loc":Lgnu/mapping/Location;
    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v6, v7}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 116
    .end local v6    # "loc":Lgnu/mapping/Location;
    goto :goto_1

    .line 118
    :cond_6
    iget-object v6, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v6, v6, Lgnu/expr/Declaration;->evalIndex:I

    aput-object v4, v5, v6

    .line 119
    .end local v5    # "evalFrame":[Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 127
    invoke-virtual {v0, v1, v2, v4}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_8
    invoke-virtual {v0, v1, v2, v4}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 134
    invoke-virtual {p1, v4}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 135
    :cond_9
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 12
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 139
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/LambdaExp;

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 146
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    instance-of v1, p2, Lgnu/expr/IgnoreTarget;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, "needValue":Z
    :goto_0
    const/4 v4, 0x0

    .line 159
    .local v4, "valuePushed":Z
    iget-object v5, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 160
    .local v5, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    .line 161
    .local v6, "declValue":Lgnu/expr/Expression;
    instance-of v7, v6, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_2

    iget-object v7, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v6

    check-cast v7, Lgnu/expr/LambdaExp;

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    if-ne v6, v7, :cond_2

    .line 167
    iget-object v2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/LambdaExp;

    invoke-virtual {v2, p1}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto/16 :goto_4

    .line 169
    :cond_2
    invoke-virtual {v5}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    iget-object v7, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v7

    if-nez v7, :cond_5

    .line 173
    invoke-virtual {v5}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-static {v5, v3, p1}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 175
    :cond_4
    if-eqz v1, :cond_1c

    .line 177
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p0, v2, p1, v3}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 178
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 183
    :cond_5
    move-object v7, p0

    .line 184
    .local v7, "access":Lgnu/expr/AccessExp;
    invoke-virtual {p0}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    .line 185
    .local v8, "owner":Lgnu/expr/Declaration;
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v9

    if-nez v9, :cond_9

    .line 187
    :goto_1
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 189
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    .line 190
    instance-of v9, v6, Lgnu/expr/ReferenceExp;

    if-nez v9, :cond_6

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    move-object v9, v6

    check-cast v9, Lgnu/expr/ReferenceExp;

    .line 193
    .local v9, "rexp":Lgnu/expr/ReferenceExp;
    iget-object v10, v9, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 194
    .local v10, "orig":Lgnu/expr/Declaration;
    if-nez v10, :cond_7

    .line 195
    goto :goto_2

    .line 196
    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v10}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 197
    goto :goto_2

    .line 198
    :cond_8
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    .line 199
    move-object v7, v9

    .line 200
    move-object v5, v10

    .line 201
    .end local v9    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v10    # "orig":Lgnu/expr/Declaration;
    goto :goto_1

    .line 203
    :cond_9
    :goto_2
    invoke-virtual {v5}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 204
    iget-object v2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_4

    .line 205
    :cond_a
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 207
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p0, v10, p1, v2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 209
    const-string v2, "gnu.mapping.IndirectableLocation"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 211
    .local v2, "locType":Lgnu/bytecode/ClassType;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 212
    iget-object v9, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, p1, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 213
    const-string v9, "setAlias"

    invoke-virtual {v2, v9, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 214
    .local v3, "meth":Lgnu/bytecode/Method;
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 215
    .end local v2    # "locType":Lgnu/bytecode/ClassType;
    .end local v3    # "meth":Lgnu/bytecode/Method;
    goto/16 :goto_4

    .line 216
    :cond_b
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 218
    sget-object v9, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, v7, v10, p1, v9}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 220
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 222
    if-eqz v1, :cond_c

    .line 224
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 225
    const/4 v4, 0x1

    .line 227
    :cond_c
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 228
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 229
    sget-object v9, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 230
    .local v9, "symLoc":Lgnu/bytecode/Variable;
    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 231
    sget-object v10, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v11, "isBound"

    invoke-virtual {v10, v11, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 233
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 234
    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 236
    .end local v9    # "symLoc":Lgnu/bytecode/Variable;
    :cond_d
    iget-object v2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    sget-object v9, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 237
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v2

    if-nez v2, :cond_e

    .line 239
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 240
    const/4 v2, 0x1

    move v4, v2

    .line 242
    :cond_e
    const-string v2, "set"

    .line 243
    .local v2, "setterName":Ljava/lang/String;
    sget-object v9, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v9, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 245
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 247
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 248
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 250
    .end local v2    # "setterName":Ljava/lang/String;
    :cond_f
    goto/16 :goto_4

    .line 251
    :cond_10
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 253
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 254
    .local v2, "type":Lgnu/bytecode/Type;
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v3

    .line 255
    .local v3, "var":Lgnu/bytecode/Variable;
    if-nez v3, :cond_11

    .line 256
    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 257
    :cond_11
    iget-object v9, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-static {v9, v5}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v9

    .line 258
    .local v9, "delta":I
    const/high16 v10, 0x10000

    if-eq v9, v10, :cond_12

    .line 260
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    int-to-short v11, v9

    invoke-virtual {v10, v3, v11}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 261
    if-eqz v1, :cond_14

    .line 263
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 264
    const/4 v4, 0x1

    goto :goto_3

    .line 269
    :cond_12
    iget-object v10, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v10, p1, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 270
    if-eqz v1, :cond_13

    .line 272
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 273
    const/4 v4, 0x1

    .line 275
    :cond_13
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 277
    .end local v3    # "var":Lgnu/bytecode/Variable;
    .end local v9    # "delta":I
    :cond_14
    :goto_3
    goto/16 :goto_4

    .line 278
    .end local v2    # "type":Lgnu/bytecode/Type;
    :cond_15
    iget-object v2, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_17

    iget-object v2, v5, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v2, :cond_17

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lgnu/expr/SetExp;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v2, Lgnu/expr/ClassExp;

    invoke-virtual {v2}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 282
    const-string v2, "set"

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "setName":Ljava/lang/String;
    iget-object v9, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v9, Lgnu/expr/ClassExp;

    .line 284
    .local v9, "cl":Lgnu/expr/ClassExp;
    iget-object v10, v9, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 285
    .local v3, "setter":Lgnu/bytecode/Method;
    invoke-virtual {v9, p1}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 286
    iget-object v10, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v10, p1, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 287
    if-eqz v1, :cond_16

    .line 289
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 290
    const/4 v4, 0x1

    .line 292
    :cond_16
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 293
    .end local v2    # "setName":Ljava/lang/String;
    .end local v3    # "setter":Lgnu/bytecode/Method;
    .end local v9    # "cl":Lgnu/expr/ClassExp;
    goto :goto_4

    .line 296
    :cond_17
    iget-object v2, v5, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 297
    .local v2, "field":Lgnu/bytecode/Field;
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v3

    if-nez v3, :cond_18

    .line 298
    invoke-virtual {v5, v8, p1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 299
    :cond_18
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 300
    .local v3, "type":Lgnu/bytecode/Type;
    iget-object v9, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v9, p1, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 301
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {p1, v9}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 302
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 304
    if-eqz v1, :cond_19

    .line 306
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 307
    const/4 v4, 0x1

    .line 309
    :cond_19
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_4

    .line 313
    :cond_1a
    if-eqz v1, :cond_1b

    .line 315
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 316
    const/4 v4, 0x1

    .line 318
    :cond_1b
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 323
    .end local v2    # "field":Lgnu/bytecode/Field;
    .end local v3    # "type":Lgnu/bytecode/Type;
    .end local v7    # "access":Lgnu/expr/AccessExp;
    .end local v8    # "owner":Lgnu/expr/Declaration;
    :cond_1c
    :goto_4
    if-eqz v1, :cond_1e

    if-eqz v4, :cond_1d

    goto :goto_5

    .line 324
    :cond_1d
    new-instance v2, Ljava/lang/Error;

    const-string v3, "SetExp.compile: not implemented - return value"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_1e
    :goto_5
    if-eqz v1, :cond_1f

    .line 327
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_6

    .line 329
    :cond_1f
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p1, v2, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 330
    :goto_6
    return-void
.end method

.method public final getHasValue()Z
    .locals 1

    .line 66
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getNewValue()Lgnu/expr/Expression;
    .locals 1

    .line 45
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final isDefining()Z
    .locals 1

    .line 56
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFuncDef()Z
    .locals 1

    .line 73
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSetIfUnbound()Z
    .locals 1

    .line 79
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 415
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(Define"

    goto :goto_0

    :cond_0
    const-string v0, "(Set"

    :goto_0
    const/4 v1, 0x2

    const-string v2, ")"

    invoke-virtual {p1, v0, v2, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 417
    invoke-virtual {p0, p1}, Lgnu/expr/SetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 418
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    const/16 v1, 0x2f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 420
    :cond_1
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 421
    iget-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 423
    :cond_2
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 426
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 428
    :cond_3
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 429
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 430
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public final setDefining(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 61
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    .line 62
    return-void
.end method

.method public final setFuncDef(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 76
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    return-void
.end method

.method public final setHasValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 69
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x40

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x41

    :goto_0
    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    return-void
.end method

.method public final setSetIfUnbound(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 82
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetExp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 406
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 411
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 412
    return-void
.end method
