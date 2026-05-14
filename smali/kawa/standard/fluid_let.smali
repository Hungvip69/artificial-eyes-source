.class public Lkawa/standard/fluid_let;
.super Lkawa/lang/Syntax;
.source "fluid_let.java"


# static fields
.field public static final fluid_let:Lkawa/standard/fluid_let;


# instance fields
.field defaultInit:Lgnu/expr/Expression;

.field star:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/standard/fluid_let;

    invoke-direct {v0}, Lkawa/standard/fluid_let;-><init>()V

    sput-object v0, Lkawa/standard/fluid_let;->fluid_let:Lkawa/standard/fluid_let;

    .line 15
    sget-object v0, Lkawa/standard/fluid_let;->fluid_let:Lkawa/standard/fluid_let;

    const-string v1, "fluid-set"

    invoke-virtual {v0, v1}, Lkawa/standard/fluid_let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkawa/standard/fluid_let;->star:Z

    .line 33
    return-void
.end method

.method public constructor <init>(ZLgnu/expr/Expression;)V
    .locals 0
    .param p1, "star"    # Z
    .param p2, "defaultInit"    # Lgnu/expr/Expression;

    .line 25
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 26
    iput-boolean p1, p0, Lkawa/standard/fluid_let;->star:Z

    .line 27
    iput-object p2, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .line 28
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 12
    .param p1, "bindings"    # Ljava/lang/Object;
    .param p2, "body"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 45
    iget-boolean v0, p0, Lkawa/standard/fluid_let;->star:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v0

    .line 46
    .local v0, "decl_count":I
    :goto_0
    new-array v2, v0, [Lgnu/expr/Expression;

    .line 47
    .local v2, "inits":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/FluidLetExp;

    invoke-direct {v3, v2}, Lgnu/expr/FluidLetExp;-><init>([Lgnu/expr/Expression;)V

    .line 48
    .local v3, "let":Lgnu/expr/FluidLetExp;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_b

    .line 50
    move-object v5, p1

    check-cast v5, Lgnu/lists/Pair;

    .line 51
    .local v5, "bind_pair":Lgnu/lists/Pair;
    invoke-virtual {p3, v5}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 56
    .local v6, "savePos":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 57
    .local v7, "name":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_8

    instance-of v8, v7, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_1

    goto/16 :goto_3

    .line 61
    :cond_1
    instance-of v8, v7, Lgnu/lists/Pair;

    if-eqz v8, :cond_7

    move-object v8, v7

    check-cast v8, Lgnu/lists/Pair;

    move-object v9, v8

    .local v9, "binding":Lgnu/lists/Pair;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_2

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-nez v8, :cond_2

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_7

    .line 66
    :cond_2
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 67
    nop

    instance-of v8, v7, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_3

    .line 68
    move-object v8, v7

    check-cast v8, Lkawa/lang/SyntaxForm;

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .line 70
    :cond_3
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v8, v10, :cond_4

    .line 71
    iget-object v8, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .local v8, "value":Lgnu/expr/Expression;
    goto :goto_4

    .line 72
    .end local v8    # "value":Lgnu/expr/Expression;
    :cond_4
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_6

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    move-object v9, v8

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v10, :cond_5

    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p3, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    .restart local v8    # "value":Lgnu/expr/Expression;
    goto :goto_4

    .line 74
    .end local v8    # "value":Lgnu/expr/Expression;
    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad syntax for value of "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " in "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v1

    .line 80
    .end local v9    # "binding":Lgnu/lists/Pair;
    :cond_7
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/standard/fluid_let;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " syntax"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v1

    .line 59
    :cond_8
    :goto_3
    :try_start_2
    iget-object v8, p0, Lkawa/standard/fluid_let;->defaultInit:Lgnu/expr/Expression;

    .line 81
    .restart local v8    # "value":Lgnu/expr/Expression;
    :goto_4
    invoke-virtual {v3, v7}, Lgnu/expr/FluidLetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 82
    .local v9, "decl":Lgnu/expr/Declaration;
    iget-object v10, p3, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v10

    .line 83
    .local v10, "found":Lgnu/expr/Declaration;
    if-eqz v10, :cond_9

    .line 85
    invoke-virtual {v10, p3}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 86
    iput-object v10, v9, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 87
    invoke-virtual {v10, v1}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 88
    invoke-virtual {v10, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 90
    :cond_9
    invoke-virtual {v9, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 91
    invoke-virtual {v9, v1}, Lgnu/expr/Declaration;->setFluid(Z)V

    .line 92
    invoke-virtual {v9, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 93
    if-nez v8, :cond_a

    .line 94
    new-instance v11, Lgnu/expr/ReferenceExp;

    invoke-direct {v11, v7}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v8, v11

    .line 95
    :cond_a
    aput-object v8, v2, v4

    .line 96
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v11

    .line 101
    .end local v7    # "name":Ljava/lang/Object;
    .end local v8    # "value":Lgnu/expr/Expression;
    .end local v9    # "decl":Lgnu/expr/Declaration;
    .end local v10    # "found":Lgnu/expr/Declaration;
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 102
    nop

    .line 48
    .end local v5    # "bind_pair":Lgnu/lists/Pair;
    .end local v6    # "savePos":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 101
    .restart local v5    # "bind_pair":Lgnu/lists/Pair;
    .restart local v6    # "savePos":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v1

    .line 104
    .end local v4    # "i":I
    .end local v5    # "bind_pair":Lgnu/lists/Pair;
    .end local v6    # "savePos":Ljava/lang/Object;
    :cond_b
    invoke-virtual {p3, v3}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 105
    iget-boolean v1, p0, Lkawa/standard/fluid_let;->star:Z

    if-eqz v1, :cond_c

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v1, :cond_c

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, v3, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    goto :goto_5

    .line 108
    :cond_c
    invoke-virtual {p3, p2}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, v3, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    .line 109
    :goto_5
    invoke-virtual {p3, v3}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 110
    return-object v3
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 37
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "missing let arguments"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    .line 40
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Lkawa/standard/fluid_let;->rewrite(Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method
