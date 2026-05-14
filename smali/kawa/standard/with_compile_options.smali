.class public Lkawa/standard/with_compile_options;
.super Lkawa/lang/Syntax;
.source "with_compile_options.java"


# static fields
.field public static final with_compile_options:Lkawa/standard/with_compile_options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/with_compile_options;

    invoke-direct {v0}, Lkawa/standard/with_compile_options;-><init>()V

    sput-object v0, Lkawa/standard/with_compile_options;->with_compile_options:Lkawa/standard/with_compile_options;

    .line 11
    sget-object v0, Lkawa/standard/with_compile_options;->with_compile_options:Lkawa/standard/with_compile_options;

    const-string v1, "with-compile-options"

    invoke-virtual {v0, v1}, Lkawa/standard/with_compile_options;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 12
    .param p0, "form"    # Ljava/lang/Object;
    .param p1, "stack"    # Ljava/util/Stack;
    .param p2, "command"    # Lkawa/lang/Syntax;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "seenKey":Z
    iget-object v1, p3, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    .line 35
    .local v1, "options":Lgnu/text/Options;
    const/4 v2, 0x0

    .line 38
    .local v2, "syntax":Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v3, p0, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 40
    move-object v2, p0

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 41
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 43
    :cond_0
    instance-of v3, p0, Lgnu/lists/Pair;

    const/16 v4, 0x65

    if-nez v3, :cond_1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object v3, p0

    check-cast v3, Lgnu/lists/Pair;

    .line 46
    .local v3, "pair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 47
    .local v5, "pair_car":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/expr/Keyword;

    if-nez v6, :cond_3

    .line 48
    nop

    .line 97
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v5    # "pair_car":Ljava/lang/Object;
    :goto_1
    if-nez v0, :cond_2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no option keyword in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v4, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 99
    :cond_2
    invoke-static {p0, v2}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 49
    .restart local v3    # "pair":Lgnu/lists/Pair;
    .restart local v5    # "pair_car":Ljava/lang/Object;
    :cond_3
    move-object v6, v5

    check-cast v6, Lgnu/expr/Keyword;

    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "key":Ljava/lang/String;
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p3, v3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 54
    .local v7, "savePos":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object p0, v8

    .line 55
    :goto_2
    nop

    instance-of v8, p0, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_4

    .line 57
    move-object v8, p0

    check-cast v8, Lkawa/lang/SyntaxForm;

    move-object v2, v8

    .line 58
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    move-object p0, v8

    goto :goto_2

    .line 60
    :cond_4
    instance-of v8, p0, Lgnu/lists/Pair;

    if-nez v8, :cond_5

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "keyword "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not followed by value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v4, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 63
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p3, v7}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object v4

    .line 65
    :cond_5
    :try_start_1
    move-object v8, p0

    check-cast v8, Lgnu/lists/Pair;

    move-object v3, v8

    .line 66
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 67
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object p0, v9

    .line 68
    invoke-virtual {v1, v6}, Lgnu/text/Options;->getLocal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 69
    .local v9, "oldValue":Ljava/lang/Object;
    invoke-virtual {v1, v6}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v10

    if-nez v10, :cond_6

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown compile option: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x77

    invoke-virtual {p3, v10, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {p3, v7}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 74
    :cond_6
    :try_start_2
    instance-of v10, v8, Lgnu/lists/FString;

    if-eqz v10, :cond_7

    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_3

    .line 76
    :cond_7
    instance-of v10, v8, Ljava/lang/Boolean;

    if-nez v10, :cond_9

    instance-of v10, v8, Ljava/lang/Number;

    if-eqz v10, :cond_8

    .line 78
    goto :goto_3

    .line 81
    :cond_8
    const/4 v8, 0x0

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid literal value for key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v4, v10}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 84
    :cond_9
    :goto_3
    invoke-virtual {p3}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    invoke-virtual {v1, v6, v8, v4}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    .line 85
    if-eqz p1, :cond_a

    .line 87
    invoke-virtual {p1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "oldValue":Ljava/lang/Object;
    :cond_a
    invoke-virtual {p3, v7}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 95
    nop

    .line 96
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v5    # "pair_car":Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "savePos":Ljava/lang/Object;
    goto/16 :goto_0

    .line 94
    .restart local v3    # "pair":Lgnu/lists/Pair;
    .restart local v5    # "pair_car":Ljava/lang/Object;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "savePos":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    invoke-virtual {p3, v7}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_5

    :goto_4
    throw v4

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 106
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    move-object v2, v1

    .local v2, "p":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Stack;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 112
    .local v1, "stack":Ljava/util/Stack;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 113
    .local v3, "rest":Ljava/lang/Object;
    iget-object v4, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v4, v1}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    goto :goto_0

    .line 117
    .end local v1    # "stack":Ljava/util/Stack;
    .end local v2    # "p":Lgnu/lists/Pair;
    .end local v3    # "rest":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 118
    .restart local v1    # "stack":Ljava/util/Stack;
    invoke-static {v0, v1, p0, p2}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v3

    .line 123
    .restart local v3    # "rest":Ljava/lang/Object;
    :goto_0
    :try_start_0
    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    .line 125
    .local v2, "result":Lgnu/expr/Expression;
    instance-of v4, v2, Lgnu/expr/BeginExp;

    if-eqz v4, :cond_1

    .line 126
    move-object v4, v2

    check-cast v4, Lgnu/expr/BeginExp;

    .local v4, "bresult":Lgnu/expr/BeginExp;
    goto :goto_1

    .line 128
    .end local v4    # "bresult":Lgnu/expr/BeginExp;
    :cond_1
    new-instance v4, Lgnu/expr/BeginExp;

    const/4 v5, 0x1

    new-array v5, v5, [Lgnu/expr/Expression;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-direct {v4, v5}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    .line 129
    .restart local v4    # "bresult":Lgnu/expr/BeginExp;
    :goto_1
    invoke-virtual {v4, v1}, Lgnu/expr/BeginExp;->setCompileOptions(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    nop

    .line 134
    iget-object v5, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v5, v1}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    return-object v4

    .end local v2    # "result":Lgnu/expr/Expression;
    .end local v4    # "bresult":Lgnu/expr/BeginExp;
    :catchall_0
    move-exception v2

    iget-object v4, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v4, v1}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    throw v2
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 4
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 15
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 16
    .local v0, "stack":Ljava/util/Stack;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0, p0, p3}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    .local v1, "rest":Ljava/lang/Object;
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 21
    const/4 v2, 0x0

    invoke-virtual {p3, v1, p2, v2}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    .line 22
    return-void

    .line 24
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p3, v1, p2, v2}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v1

    .line 25
    new-instance v2, Lgnu/lists/Pair;

    invoke-direct {v2, v0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 26
    iget-object v2, p3, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v2, v0}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    .line 27
    iget-object v2, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3, v1}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
