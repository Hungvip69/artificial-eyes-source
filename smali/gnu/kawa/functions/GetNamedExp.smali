.class Lgnu/kawa/functions/GetNamedExp;
.super Lgnu/expr/ApplyExp;
.source "CompileNamedPart.java"


# static fields
.field static final castDecl:Lgnu/expr/Declaration;

.field static final fieldDecl:Lgnu/expr/Declaration;

.field static final instanceOfDecl:Lgnu/expr/Declaration;

.field static final invokeDecl:Lgnu/expr/Declaration;

.field static final invokeStaticDecl:Lgnu/expr/Declaration;

.field static final makeDecl:Lgnu/expr/Declaration;

.field static final staticFieldDecl:Lgnu/expr/Declaration;


# instance fields
.field public combinedName:Ljava/lang/String;

.field kind:C

.field methods:[Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 478
    const-string v0, "field"

    const-string v1, "gnu.kawa.reflect.SlotGet"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->fieldDecl:Lgnu/expr/Declaration;

    .line 481
    const-string v0, "staticField"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->staticFieldDecl:Lgnu/expr/Declaration;

    .line 484
    const-string v0, "make"

    const-string v1, "gnu.kawa.reflect.Invoke"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    .line 487
    const-string v0, "invoke"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    .line 490
    const-string v0, "invokeStatic"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    .line 493
    const-string v0, "kawa.standard.Scheme"

    const-string v1, "instanceOf"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    .line 496
    const-string v0, "gnu.kawa.functions.Convert"

    const-string v1, "as"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 400
    sget-object v0, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    invoke-direct {p0, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 401
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 385
    .local v0, "env":Lgnu/mapping/Environment;
    iget-object v1, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 386
    .local v1, "sym":Lgnu/mapping/Symbol;
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 387
    .local v2, "unb":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 388
    .local v3, "property":Ljava/lang/Object;
    invoke-virtual {v0, v1, v3, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 389
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, v2, :cond_0

    .line 391
    invoke-virtual {p1, v4}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 392
    return-void

    .line 395
    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    .end local v2    # "unb":Ljava/lang/Object;
    .end local v3    # "property":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ApplyExp;->apply(Lgnu/mapping/CallContext;)V

    .line 396
    return-void
.end method

.method protected setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;
    .locals 1
    .param p1, "kind"    # C

    .line 411
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/functions/GetNamedExp;->type:Lgnu/bytecode/Type;

    .line 412
    iput-char p1, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    .line 413
    return-object p0
.end method

.method public side_effects()Z
    .locals 3

    .line 471
    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x53

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x43

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_1

    .line 474
    invoke-virtual {p0}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lgnu/expr/Expression;->side_effects()Z

    move-result v0

    return v0

    .line 475
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 472
    :cond_2
    :goto_0
    return v2
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 8
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;
    .param p3, "required"    # Lgnu/bytecode/Type;
    .param p4, "decl"    # Lgnu/expr/Declaration;

    .line 419
    invoke-virtual {p0}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 420
    .local v0, "pargs":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 421
    .local v2, "context":Lgnu/expr/Expression;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 423
    .local v3, "args":[Lgnu/expr/Expression;
    iget-char v4, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v4, :sswitch_data_0

    move-object v1, v7

    .line 460
    .local v1, "xargs":[Lgnu/expr/Expression;
    return-object p1

    .line 423
    .end local v1    # "xargs":[Lgnu/expr/Expression;
    :sswitch_0
    move-object v4, v7

    .line 453
    .local v4, "xargs":[Lgnu/expr/Expression;
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    .line 454
    array-length v7, v3

    add-int/2addr v7, v5

    new-array v4, v7, [Lgnu/expr/Expression;

    .line 455
    aput-object v2, v4, v1

    .line 456
    aget-object v7, v0, v6

    aput-object v7, v4, v6

    .line 457
    array-length v6, v3

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    goto :goto_0

    .line 423
    .end local v4    # "xargs":[Lgnu/expr/Expression;
    :sswitch_1
    move-object v4, v7

    .line 433
    .restart local v4    # "xargs":[Lgnu/expr/Expression;
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    .line 434
    array-length v5, v3

    add-int/2addr v5, v6

    new-array v4, v5, [Lgnu/expr/Expression;

    .line 435
    array-length v5, v3

    invoke-static {v3, v1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    aput-object v2, v4, v1

    .line 437
    goto :goto_0

    .line 426
    .end local v4    # "xargs":[Lgnu/expr/Expression;
    :sswitch_2
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    .line 427
    array-length v4, v3

    add-int/2addr v4, v5

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 428
    .restart local v4    # "xargs":[Lgnu/expr/Expression;
    aget-object v7, v0, v1

    aput-object v7, v4, v1

    .line 429
    aget-object v7, v0, v6

    aput-object v7, v4, v6

    .line 430
    array-length v6, v3

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    goto :goto_0

    .line 423
    .end local v4    # "xargs":[Lgnu/expr/Expression;
    :sswitch_3
    move-object v4, v7

    .line 439
    .restart local v4    # "xargs":[Lgnu/expr/Expression;
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    .line 440
    array-length v7, v3

    add-int/2addr v7, v6

    new-array v4, v7, [Lgnu/expr/Expression;

    .line 441
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    aget-object v5, v3, v1

    aput-object v5, v4, v1

    .line 443
    aput-object v2, v4, v6

    .line 444
    goto :goto_0

    .line 423
    .end local v4    # "xargs":[Lgnu/expr/Expression;
    :sswitch_4
    move-object v4, v7

    .line 446
    .restart local v4    # "xargs":[Lgnu/expr/Expression;
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    .line 447
    array-length v7, v3

    add-int/2addr v7, v6

    new-array v4, v7, [Lgnu/expr/Expression;

    .line 448
    array-length v7, v3

    sub-int/2addr v7, v6

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    aput-object v2, v4, v1

    .line 450
    aget-object v1, v3, v1

    aput-object v1, v4, v6

    .line 451
    nop

    .line 462
    :goto_0
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, p4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v1, v5, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 463
    .local v1, "result":Lgnu/expr/ApplyExp;
    invoke-virtual {v1, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 464
    invoke-virtual {p2, v1, p3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4d -> :sswitch_2
        0x4e -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method
