.class public Lkawa/standard/define_unit;
.super Lkawa/lang/Syntax;
.source "define_unit.java"


# static fields
.field public static final define_base_unit:Lkawa/standard/define_unit;

.field public static final define_unit:Lkawa/standard/define_unit;


# instance fields
.field base:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/standard/define_unit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_unit:Lkawa/standard/define_unit;

    .line 15
    sget-object v0, Lkawa/standard/define_unit;->define_unit:Lkawa/standard/define_unit;

    const-string v1, "define-unit"

    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/define_unit;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkawa/standard/define_unit;-><init>(Z)V

    sput-object v0, Lkawa/standard/define_unit;->define_base_unit:Lkawa/standard/define_unit;

    .line 17
    sget-object v0, Lkawa/standard/define_unit;->define_base_unit:Lkawa/standard/define_unit;

    const-string v1, "define-base-unit"

    invoke-virtual {v0, v1}, Lkawa/standard/define_unit;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "base"    # Z

    .line 23
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 24
    iput-boolean p1, p0, Lkawa/standard/define_unit;->base:Z

    .line 25
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 75
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 79
    .local v1, "value":Lgnu/expr/Expression;
    instance-of v2, v0, Lgnu/lists/Pair;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lgnu/lists/Pair;

    move-object v3, v2

    .local v3, "p1":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/expr/Declaration;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_0
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Declaration;

    .line 83
    .local v2, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/Symbol;

    .line 84
    .local v4, "symbol":Lgnu/mapping/Symbol;
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "unit":Ljava/lang/String;
    const-string v6, "gnu.math.Unit"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 86
    .local v6, "unitType":Lgnu/bytecode/ClassType;
    invoke-virtual {v2, v6}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 87
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v1, v7

    instance-of v7, v7, Lgnu/expr/QuoteExp;

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    move-object v7, v1

    check-cast v7, Lgnu/expr/QuoteExp;

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/math/Unit;

    if-eqz v7, :cond_1

    .line 89
    goto/16 :goto_0

    .line 90
    :cond_1
    iget-boolean v7, p0, Lkawa/standard/define_unit;->base:Z

    if-eqz v7, :cond_3

    .line 92
    const/4 v7, 0x0

    .line 93
    .local v7, "dimension":Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v10, :cond_2

    .line 95
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/lists/Pair;

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    :cond_2
    invoke-static {v5, v7}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v9

    .line 98
    .local v9, "bunit":Lgnu/math/BaseUnit;
    new-instance v10, Lgnu/expr/QuoteExp;

    invoke-direct {v10, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v1, v10

    .line 99
    .end local v7    # "dimension":Ljava/lang/String;
    .end local v9    # "bunit":Lgnu/math/BaseUnit;
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-nez v7, :cond_4

    .line 103
    const-string v7, "missing value for define-unit"

    invoke-virtual {p2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    return-object v7

    .line 104
    :cond_4
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    .line 105
    .local v7, "p2":Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v9}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    .line 107
    instance-of v9, v1, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    .local v10, "quantity":Ljava/lang/Object;
    instance-of v9, v9, Lgnu/math/Quantity;

    if-eqz v9, :cond_5

    .line 110
    new-instance v9, Lgnu/expr/QuoteExp;

    move-object v11, v10

    check-cast v11, Lgnu/math/Quantity;

    invoke-static {v5, v11}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v11

    invoke-direct {v9, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v1, v9

    goto :goto_0

    .line 114
    .end local v10    # "quantity":Ljava/lang/Object;
    :cond_5
    const/4 v9, 0x2

    new-array v9, v9, [Lgnu/expr/Expression;

    .line 115
    .local v9, "args":[Lgnu/expr/Expression;
    new-instance v10, Lgnu/expr/QuoteExp;

    invoke-direct {v10, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 116
    aput-object v1, v9, v8

    .line 117
    const-string v10, "make"

    invoke-static {v6, v10, v9}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v1

    .line 121
    .end local v7    # "p2":Lgnu/lists/Pair;
    .end local v9    # "args":[Lgnu/expr/Expression;
    :goto_0
    new-instance v7, Lgnu/expr/SetExp;

    invoke-direct {v7, v2, v1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 122
    .local v7, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {v7, v8}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 123
    invoke-virtual {v2, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 124
    return-object v7

    .line 81
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "p1":Lgnu/lists/Pair;
    .end local v4    # "symbol":Lgnu/mapping/Symbol;
    .end local v5    # "unit":Ljava/lang/String;
    .end local v6    # "unitType":Lgnu/bytecode/ClassType;
    .end local v7    # "sexp":Lgnu/expr/SetExp;
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid syntax for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lkawa/standard/define_unit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 9
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 30
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 33
    .local v0, "p":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 34
    .local v1, "q":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/SimpleSymbol;

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "name":Ljava/lang/String;
    sget-object v3, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v3, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 38
    .local v3, "sym":Lgnu/mapping/Symbol;
    const/16 v4, 0x77

    invoke-virtual {p3, v3, v4, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 39
    .local v4, "decl":Lgnu/expr/Declaration;
    invoke-virtual {p4, v4}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 40
    invoke-static {v4, v0}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 41
    const-wide/16 v5, 0x4000

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 42
    instance-of v5, p3, Lgnu/expr/ModuleExp;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {v4, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 44
    :cond_0
    const/4 v5, 0x0

    .line 45
    .local v5, "unit":Lgnu/math/Unit;
    iget-boolean v7, p0, Lkawa/standard/define_unit;->base:Z

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_1

    .line 46
    const/4 v7, 0x0

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v7}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v5

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_3

    .line 49
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 50
    .local v7, "v":Ljava/lang/Object;
    iget-boolean v8, p0, Lkawa/standard/define_unit;->base:Z

    if-eqz v8, :cond_2

    instance-of v8, v7, Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lgnu/math/BaseUnit;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/math/BaseUnit;

    move-result-object v5

    goto :goto_0

    .line 58
    :cond_2
    iget-boolean v8, p0, Lkawa/standard/define_unit;->base:Z

    if-nez v8, :cond_3

    instance-of v8, v7, Lgnu/math/Quantity;

    if-eqz v8, :cond_3

    .line 59
    move-object v8, v7

    check-cast v8, Lgnu/math/Quantity;

    invoke-static {v2, v8}, Lgnu/math/Unit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v5

    .line 61
    .end local v7    # "v":Ljava/lang/Object;
    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    .line 62
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-direct {v7, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 63
    :cond_4
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v4, v7}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    .line 64
    invoke-static {p1, p0, v0}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    return v6

    .line 69
    .end local v0    # "p":Lgnu/lists/Pair;
    .end local v1    # "q":Ljava/lang/Object;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "sym":Lgnu/mapping/Symbol;
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "unit":Lgnu/math/Unit;
    :cond_5
    const/16 v0, 0x65

    const-string v1, "missing name in define-unit"

    invoke-virtual {p4, v0, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method
