.class public Lkawa/standard/export;
.super Lkawa/lang/Syntax;
.source "export.java"


# static fields
.field public static final export:Lkawa/standard/export;

.field public static final module_export:Lkawa/standard/export;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lkawa/standard/export;

    invoke-direct {v0}, Lkawa/standard/export;-><init>()V

    sput-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    .line 9
    sget-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    const-string v1, "module-export"

    invoke-virtual {v0, v1}, Lkawa/standard/export;->setName(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lkawa/standard/export;

    invoke-direct {v0}, Lkawa/standard/export;-><init>()V

    sput-object v0, Lkawa/standard/export;->export:Lkawa/standard/export;

    .line 12
    sget-object v0, Lkawa/standard/export;->module_export:Lkawa/standard/export;

    const-string v1, "export"

    invoke-virtual {v0, v1}, Lkawa/standard/export;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 10
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 18
    .local v0, "list":Ljava/lang/Object;
    invoke-virtual {p4, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, "savePos":Ljava/lang/Object;
    :try_start_0
    instance-of v2, p3, Lgnu/expr/ModuleExp;

    const/4 v3, 0x1

    const/16 v4, 0x65

    if-eqz v2, :cond_7

    .line 22
    move-object v2, p3

    check-cast v2, Lgnu/expr/ModuleExp;

    const/16 v5, 0x4000

    invoke-virtual {v2, v5}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, "restSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v5, :cond_6

    .line 31
    invoke-virtual {p4, v0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_1
    instance-of v5, v0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_0

    .line 34
    move-object v5, v0

    check-cast v5, Lkawa/lang/SyntaxForm;

    move-object v2, v5

    .line 35
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 37
    :cond_0
    move-object v5, v2

    .line 38
    .local v5, "nameSyntax":Lkawa/lang/SyntaxForm;
    instance-of v6, v0, Lgnu/lists/Pair;

    if-eqz v6, :cond_5

    .line 40
    move-object v6, v0

    check-cast v6, Lgnu/lists/Pair;

    move-object p1, v6

    .line 41
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 42
    .local v6, "symbol":Ljava/lang/Object;
    :goto_2
    instance-of v7, v6, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_1

    .line 44
    move-object v7, v6

    check-cast v7, Lkawa/lang/SyntaxForm;

    move-object v5, v7

    .line 45
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    goto :goto_2

    .line 47
    :cond_1
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 49
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 50
    .local v7, "str":Ljava/lang/String;
    const-string v8, "namespace:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 52
    const-string v8, "\'namespace:\' prefix ignored"

    const/16 v9, 0x77

    invoke-virtual {p4, v9, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 53
    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 56
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_3

    instance-of v7, v6, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_5

    .line 59
    :cond_3
    nop

    .line 64
    invoke-virtual {p3, v6}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v7

    .line 65
    .local v7, "decl":Lgnu/expr/Declaration;
    const-wide/16 v8, 0x200

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 66
    invoke-static {v7, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 67
    :cond_4
    const-wide/16 v8, 0x400

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 68
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .line 69
    goto :goto_0

    .line 72
    .end local v6    # "symbol":Ljava/lang/Object;
    .end local v7    # "decl":Lgnu/expr/Declaration;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid syntax in \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lkawa/standard/export;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x27

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v4, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    nop

    .line 79
    invoke-virtual {p4, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    const/4 v3, 0x0

    return v3

    .line 75
    .end local v5    # "nameSyntax":Lkawa/lang/SyntaxForm;
    :cond_6
    nop

    .line 79
    invoke-virtual {p4, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return v3

    .line 25
    .end local v2    # "restSyntax":Lkawa/lang/SyntaxForm;
    :cond_7
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lkawa/standard/export;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' not at module level"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v4, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    nop

    .line 79
    invoke-virtual {p4, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return v3

    :catchall_0
    move-exception v2

    invoke-virtual {p4, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method
