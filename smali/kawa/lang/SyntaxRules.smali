.class public Lkawa/lang/SyntaxRules;
.super Lgnu/mapping/Procedure1;
.source "SyntaxRules.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field literal_identifiers:[Ljava/lang/Object;

.field maxVars:I

.field rules:[Lkawa/lang/SyntaxRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 22
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 25
    .param p1, "literal_identifiers"    # [Ljava/lang/Object;
    .param p2, "srules"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 35
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {p0 .. p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 36
    iput-object v8, v1, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 37
    invoke-static/range {p2 .. p2}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v2

    .line 38
    .local v2, "rules_count":I
    if-gez v2, :cond_0

    .line 40
    const/4 v2, 0x0

    .line 41
    const-string v3, "missing or invalid syntax-rules"

    invoke-virtual {v9, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move v10, v2

    goto :goto_0

    .line 38
    :cond_0
    move v10, v2

    .line 43
    .end local v2    # "rules_count":I
    .local v10, "rules_count":I
    :goto_0
    new-array v2, v10, [Lkawa/lang/SyntaxRule;

    iput-object v2, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, "rules_syntax":Lkawa/lang/SyntaxForm;
    const/4 v3, 0x0

    move v11, v3

    move-object v3, v2

    move-object/from16 v2, p2

    .end local p2    # "srules":Ljava/lang/Object;
    .local v2, "srules":Ljava/lang/Object;
    .local v3, "rules_syntax":Lkawa/lang/SyntaxForm;
    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_9

    move-object v12, v2

    move-object v13, v3

    .line 49
    .end local v2    # "srules":Ljava/lang/Object;
    .end local v3    # "rules_syntax":Lkawa/lang/SyntaxForm;
    .local v12, "srules":Ljava/lang/Object;
    .local v13, "rules_syntax":Lkawa/lang/SyntaxForm;
    :goto_2
    instance-of v2, v12, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_1

    .line 51
    move-object v13, v12

    check-cast v13, Lkawa/lang/SyntaxForm;

    .line 52
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v12

    goto :goto_2

    .line 54
    :cond_1
    move-object v14, v12

    check-cast v14, Lgnu/lists/Pair;

    .line 57
    .local v14, "rules_pair":Lgnu/lists/Pair;
    move-object v2, v13

    .line 58
    .local v2, "rule_syntax":Lkawa/lang/SyntaxForm;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v2

    .line 59
    .end local v2    # "rule_syntax":Lkawa/lang/SyntaxForm;
    .local v3, "syntax_rule":Ljava/lang/Object;
    .local v15, "rule_syntax":Lkawa/lang/SyntaxForm;
    :goto_3
    instance-of v2, v3, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_2

    .line 61
    move-object v15, v3

    check-cast v15, Lkawa/lang/SyntaxForm;

    .line 62
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 64
    :cond_2
    instance-of v2, v3, Lgnu/lists/Pair;

    const-string v4, "\'th syntax rule"

    if-nez v2, :cond_3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing pattern in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 67
    return-void

    .line 70
    :cond_3
    move-object v2, v15

    .line 71
    .local v2, "pattern_syntax":Lkawa/lang/SyntaxForm;
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;

    .line 72
    .local v5, "syntax_rule_pair":Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 74
    .local v6, "pattern":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "save_filename":Ljava/lang/String;
    move/from16 v16, v10

    .end local v10    # "rules_count":I
    .local v16, "rules_count":I
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v10

    .line 76
    .local v10, "save_line":I
    move-object/from16 p2, v12

    .end local v12    # "srules":Ljava/lang/Object;
    .restart local p2    # "srules":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v12

    .line 81
    .local v12, "save_column":I
    move-object/from16 v17, v15

    .line 82
    .local v17, "template_syntax":Lkawa/lang/SyntaxForm;
    :try_start_0
    invoke-virtual {v9, v5}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-object/from16 v3, v18

    move-object/from16 v19, v17

    .line 84
    .end local v17    # "template_syntax":Lkawa/lang/SyntaxForm;
    .local v19, "template_syntax":Lkawa/lang/SyntaxForm;
    :goto_4
    :try_start_1
    instance-of v0, v3, Lkawa/lang/SyntaxForm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v0, :cond_4

    .line 86
    :try_start_2
    move-object v0, v3

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v0

    .line 87
    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    const/4 v0, 0x0

    goto :goto_4

    .line 142
    .end local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    :catchall_0
    move-exception v0

    move-object v8, v7

    goto/16 :goto_6

    .line 89
    .restart local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    :cond_4
    :try_start_3
    instance-of v0, v3, Lgnu/lists/Pair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-nez v0, :cond_5

    .line 91
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v18, v2

    .end local v2    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .local v18, "pattern_syntax":Lkawa/lang/SyntaxForm;
    :try_start_5
    const-string v2, "missing template in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    invoke-virtual {v9, v7, v10, v12}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    .end local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    :catchall_1
    move-exception v0

    move-object v8, v7

    move-object/from16 v2, v18

    goto/16 :goto_6

    .end local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v2    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v2

    move-object v8, v7

    .end local v2    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    goto/16 :goto_6

    .line 94
    .end local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v2    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    :cond_5
    move-object/from16 v18, v2

    .end local v2    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    :try_start_6
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-object/from16 v20, v0

    .line 95
    .end local v5    # "syntax_rule_pair":Lgnu/lists/Pair;
    .local v20, "syntax_rule_pair":Lgnu/lists/Pair;
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eq v0, v2, :cond_6

    .line 97
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "junk after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 142
    invoke-virtual {v9, v7, v10, v12}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    .end local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    :catchall_3
    move-exception v0

    move-object v8, v7

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    goto/16 :goto_6

    .line 100
    .restart local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    :cond_6
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "template":Ljava/lang/Object;
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v2

    move-object v5, v2

    .line 103
    .local v5, "patternScope":Lkawa/lang/PatternScope;
    invoke-virtual {v9, v5}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 105
    :goto_5
    instance-of v2, v6, Lkawa/lang/SyntaxForm;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v2, :cond_7

    .line 107
    :try_start_a
    move-object v2, v6

    check-cast v2, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v2

    .line 108
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object v6, v2

    goto :goto_5

    .line 111
    :cond_7
    :try_start_b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v2, "programbuf":Ljava/lang/StringBuffer;
    instance-of v4, v6, Lgnu/lists/Pair;

    if-eqz v4, :cond_8

    .line 118
    move-object v4, v6

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    const/16 v17, 0x0

    aput-object v4, v8, v17

    .line 120
    move-object v4, v6

    check-cast v4, Lgnu/lists/Pair;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 121
    .local v4, "p":Lgnu/lists/Pair;
    move-object/from16 v21, v3

    .end local v3    # "syntax_rule":Ljava/lang/Object;
    .local v21, "syntax_rule":Ljava/lang/Object;
    const/16 v3, 0xc

    :try_start_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object v4, v3

    .line 124
    .end local v6    # "pattern":Ljava/lang/Object;
    .local v4, "pattern":Ljava/lang/Object;
    nop

    .line 131
    :try_start_d
    new-instance v22, Lkawa/lang/SyntaxPattern;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object/from16 v23, v2

    .end local v2    # "programbuf":Ljava/lang/StringBuffer;
    .local v23, "programbuf":Ljava/lang/StringBuffer;
    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v24, v5

    .end local v5    # "patternScope":Lkawa/lang/PatternScope;
    .local v24, "patternScope":Lkawa/lang/PatternScope;
    move-object/from16 v5, v18

    move-object/from16 v6, p1

    move-object v8, v7

    .end local v7    # "save_filename":Ljava/lang/String;
    .local v8, "save_filename":Ljava/lang/String;
    move-object/from16 v7, p3

    :try_start_e
    invoke-direct/range {v2 .. v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    move-object/from16 v2, v22

    .line 134
    .local v2, "spattern":Lkawa/lang/SyntaxPattern;
    iget-object v3, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxRule;

    move-object/from16 v7, v19

    .end local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    .local v7, "template_syntax":Lkawa/lang/SyntaxForm;
    invoke-direct {v5, v2, v0, v7, v9}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    aput-object v5, v3, v11

    .line 137
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->pop()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 142
    .end local v0    # "template":Ljava/lang/Object;
    .end local v2    # "spattern":Lkawa/lang/SyntaxPattern;
    .end local v7    # "template_syntax":Lkawa/lang/SyntaxForm;
    .end local v23    # "programbuf":Ljava/lang/StringBuffer;
    .end local v24    # "patternScope":Lkawa/lang/PatternScope;
    invoke-virtual {v9, v8, v10, v12}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    .line 143
    nop

    .line 47
    .end local v4    # "pattern":Ljava/lang/Object;
    .end local v8    # "save_filename":Ljava/lang/String;
    .end local v10    # "save_line":I
    .end local v12    # "save_column":I
    .end local v15    # "rule_syntax":Lkawa/lang/SyntaxForm;
    .end local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .end local v20    # "syntax_rule_pair":Lgnu/lists/Pair;
    .end local v21    # "syntax_rule":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v8, p1

    move-object v3, v13

    move/from16 v10, v16

    const/4 v0, 0x0

    .end local p2    # "srules":Ljava/lang/Object;
    .local v2, "srules":Ljava/lang/Object;
    goto/16 :goto_1

    .line 142
    .end local v2    # "srules":Ljava/lang/Object;
    .restart local v4    # "pattern":Ljava/lang/Object;
    .restart local v8    # "save_filename":Ljava/lang/String;
    .restart local v10    # "save_line":I
    .restart local v12    # "save_column":I
    .restart local v15    # "rule_syntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v20    # "syntax_rule_pair":Lgnu/lists/Pair;
    .restart local v21    # "syntax_rule":Ljava/lang/Object;
    .restart local p2    # "srules":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object v6, v4

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    goto :goto_6

    .end local v8    # "save_filename":Ljava/lang/String;
    .local v7, "save_filename":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v8, v7

    move-object v6, v4

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    .end local v7    # "save_filename":Ljava/lang/String;
    .restart local v8    # "save_filename":Ljava/lang/String;
    goto :goto_6

    .end local v4    # "pattern":Ljava/lang/Object;
    .end local v8    # "save_filename":Ljava/lang/String;
    .restart local v6    # "pattern":Ljava/lang/Object;
    .restart local v7    # "save_filename":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v8, v7

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    .end local v7    # "save_filename":Ljava/lang/String;
    .restart local v8    # "save_filename":Ljava/lang/String;
    goto :goto_6

    .line 128
    .end local v8    # "save_filename":Ljava/lang/String;
    .end local v21    # "syntax_rule":Ljava/lang/Object;
    .restart local v0    # "template":Ljava/lang/Object;
    .local v2, "programbuf":Ljava/lang/StringBuffer;
    .restart local v3    # "syntax_rule":Ljava/lang/Object;
    .restart local v5    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v7    # "save_filename":Ljava/lang/String;
    .restart local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    :cond_8
    move-object/from16 v23, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v5

    move-object v8, v7

    move-object/from16 v7, v19

    .end local v2    # "programbuf":Ljava/lang/StringBuffer;
    .end local v3    # "syntax_rule":Ljava/lang/Object;
    .end local v5    # "patternScope":Lkawa/lang/PatternScope;
    .end local v19    # "template_syntax":Lkawa/lang/SyntaxForm;
    .local v7, "template_syntax":Lkawa/lang/SyntaxForm;
    .restart local v8    # "save_filename":Ljava/lang/String;
    .restart local v21    # "syntax_rule":Ljava/lang/Object;
    .restart local v23    # "programbuf":Ljava/lang/StringBuffer;
    .restart local v24    # "patternScope":Lkawa/lang/PatternScope;
    :try_start_f
    const-string v2, "pattern does not start with name"

    invoke-virtual {v9, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 142
    invoke-virtual {v9, v8, v10, v12}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    .end local v0    # "template":Ljava/lang/Object;
    .end local v7    # "template_syntax":Lkawa/lang/SyntaxForm;
    .end local v23    # "programbuf":Ljava/lang/StringBuffer;
    .end local v24    # "patternScope":Lkawa/lang/PatternScope;
    :catchall_7
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    move-object/from16 v3, v21

    goto :goto_6

    .end local v8    # "save_filename":Ljava/lang/String;
    .end local v21    # "syntax_rule":Ljava/lang/Object;
    .restart local v3    # "syntax_rule":Ljava/lang/Object;
    .local v7, "save_filename":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object/from16 v21, v3

    move-object v8, v7

    move-object/from16 v2, v18

    move-object/from16 v5, v20

    .end local v3    # "syntax_rule":Ljava/lang/Object;
    .end local v7    # "save_filename":Ljava/lang/String;
    .restart local v8    # "save_filename":Ljava/lang/String;
    .restart local v21    # "syntax_rule":Ljava/lang/Object;
    goto :goto_6

    .end local v8    # "save_filename":Ljava/lang/String;
    .end local v20    # "syntax_rule_pair":Lgnu/lists/Pair;
    .end local v21    # "syntax_rule":Ljava/lang/Object;
    .restart local v3    # "syntax_rule":Ljava/lang/Object;
    .local v5, "syntax_rule_pair":Lgnu/lists/Pair;
    .restart local v7    # "save_filename":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v21, v3

    move-object v8, v7

    move-object/from16 v2, v18

    .end local v3    # "syntax_rule":Ljava/lang/Object;
    .end local v7    # "save_filename":Ljava/lang/String;
    .restart local v8    # "save_filename":Ljava/lang/String;
    .restart local v21    # "syntax_rule":Ljava/lang/Object;
    goto :goto_6

    .end local v8    # "save_filename":Ljava/lang/String;
    .end local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .end local v21    # "syntax_rule":Ljava/lang/Object;
    .local v2, "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v3    # "syntax_rule":Ljava/lang/Object;
    .restart local v7    # "save_filename":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    move-object v8, v7

    .end local v2    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .end local v3    # "syntax_rule":Ljava/lang/Object;
    .end local v7    # "save_filename":Ljava/lang/String;
    .restart local v8    # "save_filename":Ljava/lang/String;
    .restart local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v21    # "syntax_rule":Ljava/lang/Object;
    goto :goto_6

    .end local v8    # "save_filename":Ljava/lang/String;
    .end local v18    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .end local v21    # "syntax_rule":Ljava/lang/Object;
    .restart local v2    # "pattern_syntax":Lkawa/lang/SyntaxForm;
    .restart local v3    # "syntax_rule":Ljava/lang/Object;
    .restart local v7    # "save_filename":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-object/from16 v18, v2

    move-object v8, v7

    .end local v7    # "save_filename":Ljava/lang/String;
    .restart local v8    # "save_filename":Ljava/lang/String;
    :goto_6
    invoke-virtual {v9, v8, v10, v12}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    throw v0

    .line 47
    .end local v5    # "syntax_rule_pair":Lgnu/lists/Pair;
    .end local v6    # "pattern":Ljava/lang/Object;
    .end local v8    # "save_filename":Ljava/lang/String;
    .end local v12    # "save_column":I
    .end local v13    # "rules_syntax":Lkawa/lang/SyntaxForm;
    .end local v14    # "rules_pair":Lgnu/lists/Pair;
    .end local v15    # "rule_syntax":Lkawa/lang/SyntaxForm;
    .end local v16    # "rules_count":I
    .end local p2    # "srules":Ljava/lang/Object;
    .local v2, "srules":Ljava/lang/Object;
    .local v3, "rules_syntax":Lkawa/lang/SyntaxForm;
    .local v10, "rules_count":I
    :cond_9
    move/from16 v16, v10

    .line 147
    .end local v10    # "rules_count":I
    .end local v11    # "i":I
    .restart local v16    # "rules_count":I
    iget-object v0, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    array-length v0, v0

    .local v0, "i":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 149
    iget-object v4, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    aget-object v4, v4, v0

    iget-object v4, v4, Lkawa/lang/SyntaxRule;->patternNesting:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 150
    .local v4, "size":I
    iget v5, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    if-le v4, v5, :cond_a

    .line 151
    iput v4, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 152
    .end local v4    # "size":I
    :cond_a
    goto :goto_7

    .line 153
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V
    .locals 1
    .param p1, "literal_identifiers"    # [Ljava/lang/Object;
    .param p2, "rules"    # [Lkawa/lang/SyntaxRule;
    .param p3, "maxVars"    # I

    .line 27
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 28
    iput-object p1, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 30
    iput p3, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 31
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .line 165
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 168
    .local v0, "sf":Lkawa/lang/SyntaxForm;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    .line 169
    .local v1, "tr":Lkawa/lang/Translator;
    invoke-virtual {v1}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    .line 170
    .local v2, "save_scope":Lgnu/expr/ScopeExp;
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 173
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v3

    .line 181
    .end local v0    # "sf":Lkawa/lang/SyntaxForm;
    .end local v1    # "tr":Lkawa/lang/Translator;
    .end local v2    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_0
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    invoke-virtual {p0, p1, v0}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 206
    iget v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 207
    .local v0, "vars":[Ljava/lang/Object;
    invoke-virtual {p2}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v1

    check-cast v1, Lkawa/lang/Macro;

    .line 212
    .local v1, "macro":Lkawa/lang/Macro;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 214
    iget-object v3, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    aget-object v3, v3, v2

    .line 215
    .local v3, "rule":Lkawa/lang/SyntaxRule;
    if-nez v3, :cond_0

    .line 216
    new-instance v4, Lgnu/expr/ErrorExp;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error defining "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 218
    :cond_0
    iget-object v5, v3, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    .line 219
    .local v5, "pattern":Lkawa/lang/Pattern;
    invoke-virtual {v5, p1, v0, v4}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    .line 220
    .local v4, "matched":Z
    if-eqz v4, :cond_1

    .line 250
    invoke-static {p2}, Lkawa/lang/TemplateScope;->make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;

    move-result-object v6

    invoke-virtual {v3, v0, p2, v6}, Lkawa/lang/SyntaxRule;->execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    .line 264
    .local v6, "expansion":Ljava/lang/Object;
    return-object v6

    .line 212
    .end local v3    # "rule":Lkawa/lang/SyntaxRule;
    .end local v4    # "matched":Z
    .end local v5    # "pattern":Lkawa/lang/Pattern;
    .end local v6    # "expansion":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no matching syntax-rule for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 2
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 278
    const-string v0, "#<macro "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 280
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 281
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 297
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 298
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkawa/lang/SyntaxRule;

    check-cast v0, [Lkawa/lang/SyntaxRule;

    iput-object v0, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 299
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 300
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 291
    iget v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 292
    return-void
.end method
