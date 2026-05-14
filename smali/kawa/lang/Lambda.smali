.class public Lkawa/lang/Lambda;
.super Lkawa/lang/Syntax;
.source "Lambda.java"


# static fields
.field public static final nameKeyword:Lgnu/expr/Keyword;


# instance fields
.field public defaultDefault:Lgnu/expr/Expression;

.field public keyKeyword:Ljava/lang/Object;

.field public optionalKeyword:Ljava/lang/Object;

.field public restKeyword:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 22
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    return-void
.end method

.method private static addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V
    .locals 0
    .param p0, "decl"    # Lgnu/expr/Declaration;
    .param p1, "templateScope"    # Lgnu/expr/ScopeExp;
    .param p2, "lexp"    # Lgnu/expr/LambdaExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p3, p0, p1}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 360
    :cond_0
    invoke-virtual {p2, p0}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 361
    if-eqz p1, :cond_1

    .line 362
    iput-object p1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 363
    :cond_1
    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 643
    const-string v0, "#<builtin lambda>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 40
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "missing formals in lambda"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v0

    .line 43
    .local v0, "old_errors":I
    new-instance v1, Lgnu/expr/LambdaExp;

    invoke-direct {v1}, Lgnu/expr/LambdaExp;-><init>()V

    .line 44
    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v8, p1

    check-cast v8, Lgnu/lists/Pair;

    .line 45
    .local v8, "pair":Lgnu/lists/Pair;
    invoke-static {v1, v8}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 47
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 48
    new-instance v2, Lgnu/expr/ErrorExp;

    const-string v3, "bad lambda expression"

    invoke-direct {v2, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 49
    :cond_1
    return-object v1
.end method

.method public rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 1
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "formals"    # Ljava/lang/Object;
    .param p3, "body"    # Ljava/lang/Object;
    .param p4, "tr"    # Lkawa/lang/Translator;
    .param p5, "templateScopeRest"    # Lkawa/lang/TemplateScope;

    .line 61
    invoke-virtual {p0, p1, p2, p4, p5}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 62
    instance-of v0, p3, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p3

    check-cast v0, Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/expr/LambdaExp;->setFile(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p3

    .line 65
    invoke-virtual {p0, p1, p3, p4}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 66
    return-void
.end method

.method public rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 20
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "body"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 367
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 368
    .local v2, "accessFlagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 369
    .local v3, "allocationFlagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 370
    .local v4, "accessFlag":I
    const/4 v5, 0x0

    .line 371
    .local v5, "allocationFlag":I
    const/4 v6, 0x0

    move-object v7, v6

    move v6, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, p2

    .line 374
    .end local p2    # "body":Ljava/lang/Object;
    .local v2, "body":Ljava/lang/Object;
    .local v3, "accessFlagName":Ljava/lang/String;
    .local v4, "allocationFlagName":Ljava/lang/String;
    .local v5, "accessFlag":I
    .local v6, "allocationFlag":I
    .local v7, "syntax0":Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v8, v2, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_0

    .line 376
    move-object v7, v2

    check-cast v7, Lkawa/lang/SyntaxForm;

    .line 377
    invoke-interface {v7}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 379
    :cond_0
    instance-of v8, v2, Lgnu/lists/Pair;

    if-nez v8, :cond_1

    .line 380
    goto :goto_3

    .line 381
    :cond_1
    move-object v8, v2

    check-cast v8, Lgnu/lists/Pair;

    .line 382
    .local v8, "pair1":Lgnu/lists/Pair;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 383
    .local v9, "attrName":Ljava/lang/Object;
    const-string v10, "::"

    invoke-virtual {v1, v9, v10}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 384
    const/4 v9, 0x0

    goto :goto_1

    .line 385
    :cond_2
    instance-of v10, v9, Lgnu/expr/Keyword;

    if-nez v10, :cond_3

    .line 386
    goto :goto_3

    .line 388
    :cond_3
    :goto_1
    move-object v10, v7

    .line 389
    .local v10, "syntax1":Lkawa/lang/SyntaxForm;
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 390
    .local v11, "pair1_cdr":Ljava/lang/Object;
    :goto_2
    instance-of v12, v11, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_4

    .line 392
    move-object v10, v11

    check-cast v10, Lkawa/lang/SyntaxForm;

    .line 393
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    .line 395
    :cond_4
    instance-of v12, v11, Lgnu/lists/Pair;

    if-nez v12, :cond_7

    .line 396
    nop

    .line 516
    .end local v8    # "pair1":Lgnu/lists/Pair;
    .end local v9    # "attrName":Ljava/lang/Object;
    .end local v10    # "syntax1":Lkawa/lang/SyntaxForm;
    .end local v11    # "pair1_cdr":Ljava/lang/Object;
    :goto_3
    or-int/2addr v5, v6

    .line 517
    if-eqz v5, :cond_5

    .line 518
    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    int-to-long v9, v5

    invoke-virtual {v8, v9, v10}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 519
    :cond_5
    if-eqz v7, :cond_6

    .line 520
    invoke-static {v2, v7}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v2

    .line 521
    :cond_6
    return-object v2

    .line 397
    .restart local v8    # "pair1":Lgnu/lists/Pair;
    .restart local v9    # "attrName":Ljava/lang/Object;
    .restart local v10    # "syntax1":Lkawa/lang/SyntaxForm;
    .restart local v11    # "pair1_cdr":Ljava/lang/Object;
    :cond_7
    move-object v12, v11

    check-cast v12, Lgnu/lists/Pair;

    .line 400
    .local v12, "pair2":Lgnu/lists/Pair;
    const/16 v13, 0x65

    if-nez v9, :cond_9

    .line 402
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "*init*"

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 403
    const-string v14, "explicit return type for \'*init*\' method"

    invoke-virtual {v1, v13, v14}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_12

    .line 406
    :cond_8
    new-instance v13, Lgnu/expr/LangExp;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-direct {v13, v14}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    iput-object v13, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_12

    .line 408
    :cond_9
    sget-object v14, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    const-string v15, " and "

    if-ne v9, v14, :cond_13

    .line 410
    invoke-virtual {v1, v12, v10}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v14

    .line 411
    .local v14, "attrExpr":Lgnu/expr/Expression;
    instance-of v13, v14, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_12

    move-object v13, v14

    check-cast v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v16, v13

    .local v16, "attrValue":Ljava/lang/Object;
    instance-of v13, v13, Lgnu/mapping/SimpleSymbol;

    if-nez v13, :cond_a

    move-object/from16 v13, v16

    move-object/from16 v16, v2

    .end local v2    # "body":Ljava/lang/Object;
    .local v13, "attrValue":Ljava/lang/Object;
    .local v16, "body":Ljava/lang/Object;
    instance-of v2, v13, Ljava/lang/CharSequence;

    if-nez v2, :cond_b

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_6

    .end local v13    # "attrValue":Ljava/lang/Object;
    .restart local v2    # "body":Ljava/lang/Object;
    .local v16, "attrValue":Ljava/lang/Object;
    :cond_a
    move-object/from16 v13, v16

    move-object/from16 v16, v2

    .line 421
    .end local v2    # "body":Ljava/lang/Object;
    .restart local v13    # "attrValue":Ljava/lang/Object;
    .local v16, "body":Ljava/lang/Object;
    :cond_b
    iget-object v2, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v2, :cond_c

    .line 422
    const-string v2, "access: not allowed for anonymous function"

    const/16 v15, 0x65

    invoke-virtual {v1, v15, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_7

    .line 425
    :cond_c
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "value":Ljava/lang/String;
    move/from16 v17, v5

    .end local v5    # "accessFlag":I
    .local v17, "accessFlag":I
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 427
    const/high16 v5, 0x1000000

    move/from16 v18, v6

    .end local v17    # "accessFlag":I
    .restart local v5    # "accessFlag":I
    goto :goto_4

    .line 428
    .end local v5    # "accessFlag":I
    .restart local v17    # "accessFlag":I
    :cond_d
    const-string v5, "protected"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 429
    const/high16 v5, 0x2000000

    move/from16 v18, v6

    .end local v17    # "accessFlag":I
    .restart local v5    # "accessFlag":I
    goto :goto_4

    .line 430
    .end local v5    # "accessFlag":I
    .restart local v17    # "accessFlag":I
    :cond_e
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 431
    const/high16 v5, 0x4000000

    move/from16 v18, v6

    .end local v17    # "accessFlag":I
    .restart local v5    # "accessFlag":I
    goto :goto_4

    .line 432
    .end local v5    # "accessFlag":I
    .restart local v17    # "accessFlag":I
    :cond_f
    const-string v5, "package"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 433
    const/high16 v5, 0x8000000

    move/from16 v18, v6

    .end local v17    # "accessFlag":I
    .restart local v5    # "accessFlag":I
    goto :goto_4

    .line 435
    .end local v5    # "accessFlag":I
    .restart local v17    # "accessFlag":I
    :cond_10
    const-string v5, "unknown access specifier"

    move/from16 v18, v6

    const/16 v6, 0x65

    .end local v6    # "allocationFlag":I
    .local v18, "allocationFlag":I
    invoke-virtual {v1, v6, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move/from16 v5, v17

    .line 436
    .end local v17    # "accessFlag":I
    .restart local v5    # "accessFlag":I
    :goto_4
    if-eqz v3, :cond_11

    if-eqz v2, :cond_11

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    .end local v5    # "accessFlag":I
    .restart local v17    # "accessFlag":I
    const-string v5, "duplicate access specifiers - "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v1, v6, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_5

    .line 436
    .end local v17    # "accessFlag":I
    .restart local v5    # "accessFlag":I
    :cond_11
    move/from16 v17, v5

    .line 442
    .end local v5    # "accessFlag":I
    .restart local v17    # "accessFlag":I
    :goto_5
    move-object v3, v2

    move/from16 v5, v17

    goto :goto_8

    .line 411
    .end local v13    # "attrValue":Ljava/lang/Object;
    .end local v16    # "body":Ljava/lang/Object;
    .end local v17    # "accessFlag":I
    .end local v18    # "allocationFlag":I
    .local v2, "body":Ljava/lang/Object;
    .restart local v5    # "accessFlag":I
    .restart local v6    # "allocationFlag":I
    :cond_12
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v18, v6

    .line 420
    .end local v2    # "body":Ljava/lang/Object;
    .end local v5    # "accessFlag":I
    .end local v6    # "allocationFlag":I
    .restart local v16    # "body":Ljava/lang/Object;
    .restart local v17    # "accessFlag":I
    .restart local v18    # "allocationFlag":I
    :goto_6
    const-string v2, "access: value not a constant symbol or string"

    const/16 v5, 0x65

    invoke-virtual {v1, v5, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 444
    .end local v14    # "attrExpr":Lgnu/expr/Expression;
    :goto_7
    move/from16 v5, v17

    .end local v17    # "accessFlag":I
    .restart local v5    # "accessFlag":I
    :goto_8
    move/from16 v6, v18

    goto/16 :goto_13

    .line 445
    .end local v16    # "body":Ljava/lang/Object;
    .end local v18    # "allocationFlag":I
    .restart local v2    # "body":Ljava/lang/Object;
    .restart local v6    # "allocationFlag":I
    :cond_13
    move-object/from16 v16, v2

    move/from16 v17, v5

    move/from16 v18, v6

    .end local v2    # "body":Ljava/lang/Object;
    .end local v5    # "accessFlag":I
    .end local v6    # "allocationFlag":I
    .restart local v16    # "body":Ljava/lang/Object;
    .restart local v17    # "accessFlag":I
    .restart local v18    # "allocationFlag":I
    sget-object v2, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    if-ne v9, v2, :cond_1b

    .line 447
    invoke-virtual {v1, v12, v10}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v2

    .line 448
    .local v2, "attrExpr":Lgnu/expr/Expression;
    instance-of v5, v2, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_1a

    move-object v5, v2

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    .local v6, "attrValue":Ljava/lang/Object;
    instance-of v5, v5, Lgnu/mapping/SimpleSymbol;

    if-nez v5, :cond_14

    instance-of v5, v6, Ljava/lang/CharSequence;

    if-nez v5, :cond_14

    move-object/from16 v19, v2

    goto/16 :goto_c

    .line 458
    :cond_14
    iget-object v5, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v5, :cond_15

    .line 459
    const-string v5, "allocation: not allowed for anonymous function"

    const/16 v13, 0x65

    invoke-virtual {v1, v13, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_d

    .line 462
    :cond_15
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "value":Ljava/lang/String;
    const-string v13, "class"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    const-string v13, "static"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    goto :goto_9

    .line 465
    :cond_16
    const-string v13, "instance"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 466
    const/16 v13, 0x1000

    .end local v18    # "allocationFlag":I
    .local v13, "allocationFlag":I
    goto :goto_a

    .line 468
    .end local v13    # "allocationFlag":I
    .restart local v18    # "allocationFlag":I
    :cond_17
    const-string v13, "unknown allocation specifier"

    const/16 v14, 0x65

    invoke-virtual {v1, v14, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move/from16 v13, v18

    goto :goto_a

    .line 464
    :cond_18
    :goto_9
    const/16 v13, 0x800

    .line 469
    .end local v18    # "allocationFlag":I
    .restart local v13    # "allocationFlag":I
    :goto_a
    if-eqz v4, :cond_19

    if-eqz v5, :cond_19

    .line 471
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "attrExpr":Lgnu/expr/Expression;
    .local v19, "attrExpr":Lgnu/expr/Expression;
    const-string v2, "duplicate allocation specifiers - "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0x65

    invoke-virtual {v1, v14, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_b

    .line 469
    .end local v19    # "attrExpr":Lgnu/expr/Expression;
    .restart local v2    # "attrExpr":Lgnu/expr/Expression;
    :cond_19
    move-object/from16 v19, v2

    .line 475
    .end local v2    # "attrExpr":Lgnu/expr/Expression;
    .restart local v19    # "attrExpr":Lgnu/expr/Expression;
    :goto_b
    move-object v4, v5

    move v6, v13

    goto :goto_e

    .line 448
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "attrValue":Ljava/lang/Object;
    .end local v13    # "allocationFlag":I
    .end local v19    # "attrExpr":Lgnu/expr/Expression;
    .restart local v2    # "attrExpr":Lgnu/expr/Expression;
    .restart local v18    # "allocationFlag":I
    :cond_1a
    move-object/from16 v19, v2

    .line 457
    .end local v2    # "attrExpr":Lgnu/expr/Expression;
    .restart local v19    # "attrExpr":Lgnu/expr/Expression;
    :goto_c
    const-string v2, "allocation: value not a constant symbol or string"

    const/16 v5, 0x65

    invoke-virtual {v1, v5, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 477
    .end local v19    # "attrExpr":Lgnu/expr/Expression;
    :goto_d
    move/from16 v6, v18

    .end local v18    # "allocationFlag":I
    .local v6, "allocationFlag":I
    :goto_e
    move/from16 v5, v17

    goto/16 :goto_13

    .line 478
    .end local v6    # "allocationFlag":I
    .restart local v18    # "allocationFlag":I
    :cond_1b
    sget-object v2, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    if-ne v9, v2, :cond_1f

    .line 480
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 481
    .local v2, "attrValue":Ljava/lang/Object;
    invoke-static {v2}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v5

    .line 482
    .local v5, "count":I
    if-gez v5, :cond_1c

    .line 483
    const-string v6, "throws: not followed by a list"

    const/16 v13, 0x65

    invoke-virtual {v1, v13, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_11

    .line 486
    :cond_1c
    new-array v6, v5, [Lgnu/expr/Expression;

    .line 487
    .local v6, "exps":[Lgnu/expr/Expression;
    move-object v13, v10

    .line 488
    .local v13, "syntax2":Lkawa/lang/SyntaxForm;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_f
    if-ge v14, v5, :cond_1e

    .line 490
    :goto_10
    instance-of v15, v2, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_1d

    .line 492
    move-object v13, v2

    check-cast v13, Lkawa/lang/SyntaxForm;

    .line 493
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_10

    .line 495
    :cond_1d
    move-object v15, v2

    check-cast v15, Lgnu/lists/Pair;

    .line 496
    .local v15, "pair3":Lgnu/lists/Pair;
    invoke-virtual {v1, v15, v13}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v19

    aput-object v19, v6, v14

    .line 498
    move-object/from16 v19, v2

    .end local v2    # "attrValue":Ljava/lang/Object;
    .local v19, "attrValue":Ljava/lang/Object;
    aget-object v2, v6, v14

    invoke-static {v2, v15}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 488
    .end local v15    # "pair3":Lgnu/lists/Pair;
    .end local v19    # "attrValue":Ljava/lang/Object;
    .restart local v2    # "attrValue":Ljava/lang/Object;
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 501
    .end local v14    # "i":I
    :cond_1e
    invoke-virtual {v0, v6}, Lgnu/expr/LambdaExp;->setExceptions([Lgnu/expr/Expression;)V

    .line 503
    .end local v5    # "count":I
    .end local v6    # "exps":[Lgnu/expr/Expression;
    .end local v13    # "syntax2":Lkawa/lang/SyntaxForm;
    :goto_11
    goto :goto_12

    .line 504
    .end local v2    # "attrValue":Ljava/lang/Object;
    :cond_1f
    sget-object v2, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    if-ne v9, v2, :cond_21

    .line 506
    invoke-virtual {v1, v12, v10}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v2

    .line 507
    .local v2, "attrExpr":Lgnu/expr/Expression;
    instance-of v5, v2, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_20

    .line 508
    move-object v5, v2

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 509
    .end local v2    # "attrExpr":Lgnu/expr/Expression;
    :cond_20
    goto :goto_12

    .line 512
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown procedure property "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x77

    invoke-virtual {v1, v5, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 514
    .end local v16    # "body":Ljava/lang/Object;
    .end local v17    # "accessFlag":I
    .end local v18    # "allocationFlag":I
    .local v2, "body":Ljava/lang/Object;
    .local v5, "accessFlag":I
    .local v6, "allocationFlag":I
    :goto_12
    move/from16 v5, v17

    move/from16 v6, v18

    .end local v2    # "body":Ljava/lang/Object;
    .restart local v16    # "body":Ljava/lang/Object;
    :goto_13
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 515
    .end local v8    # "pair1":Lgnu/lists/Pair;
    .end local v9    # "attrName":Ljava/lang/Object;
    .end local v10    # "syntax1":Lkawa/lang/SyntaxForm;
    .end local v11    # "pair1_cdr":Ljava/lang/Object;
    .end local v12    # "pair2":Lgnu/lists/Pair;
    .end local v16    # "body":Ljava/lang/Object;
    .restart local v2    # "body":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 19
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "body"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 543
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 546
    .local v2, "numRenamedAlias":I
    iget-object v3, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    if-nez v3, :cond_0

    iget-object v3, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 550
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v3

    .line 551
    .local v3, "curs":Lgnu/expr/ScopeExp;
    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 552
    const/4 v4, 0x0

    .line 553
    .local v4, "prev":Lgnu/expr/Declaration;
    iget-object v5, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v5, v5

    .line 554
    .local v5, "key_args":I
    :goto_0
    iget-object v7, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    iget-object v7, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v7, v7

    sub-int/2addr v7, v5

    .line 556
    .local v7, "opt_args":I
    :goto_1
    const/4 v8, 0x0

    .line 557
    .local v8, "arg_i":I
    const/4 v9, 0x0

    .line 558
    .local v9, "opt_i":I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v10

    .local v10, "cur":Lgnu/expr/Declaration;
    :goto_2
    if-eqz v10, :cond_7

    .line 560
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 562
    invoke-static {v10}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v11

    .line 563
    .local v11, "param":Lgnu/expr/Declaration;
    invoke-virtual {v0, v4, v11}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 564
    iput-object v0, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 565
    invoke-virtual {v1, v10}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    .line 566
    add-int/lit8 v2, v2, 0x1

    .line 567
    move-object v10, v11

    .line 569
    .end local v11    # "param":Lgnu/expr/Declaration;
    :cond_3
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v11

    .line 570
    .local v11, "texp":Lgnu/expr/Expression;
    instance-of v12, v11, Lgnu/expr/LangExp;

    if-eqz v12, :cond_4

    .line 572
    move-object v12, v11

    check-cast v12, Lgnu/expr/LangExp;

    invoke-virtual {v12}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/lists/Pair;

    .line 573
    .local v12, "typeSpecPair":Lgnu/lists/Pair;
    invoke-virtual {v1, v12}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v13

    invoke-virtual {v10, v13}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 575
    .end local v12    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_4
    move-object v4, v10

    .line 577
    iget v12, v0, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v8, v12, :cond_6

    iget v12, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v12, v7

    if-lt v8, v12, :cond_5

    iget v12, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v12, :cond_5

    iget v12, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v12, v7

    if-eq v8, v12, :cond_6

    .line 582
    :cond_5
    iget-object v12, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    iget-object v13, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v13, v13, v9

    invoke-virtual {v1, v13}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v13

    aput-object v13, v12, v9

    .line 583
    add-int/lit8 v9, v9, 0x1

    .line 585
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 587
    iget-object v12, v1, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v12, v10}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 558
    .end local v11    # "texp":Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    goto :goto_2

    .line 590
    .end local v10    # "cur":Lgnu/expr/Declaration;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_8

    iget-object v10, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v12, 0x800

    invoke-virtual {v10, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    if-nez v10, :cond_8

    .line 594
    new-instance v10, Lgnu/expr/Declaration;

    sget-object v12, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v10, v12}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v11, v10}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 597
    :cond_8
    iget-object v10, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 598
    .local v10, "saveLambda":Lgnu/expr/LambdaExp;
    iput-object v0, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 599
    iget-object v12, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 600
    .local v12, "rtype":Lgnu/bytecode/Type;
    iget-object v13, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    instance-of v13, v13, Lgnu/expr/LangExp;

    const/4 v14, 0x1

    if-eqz v13, :cond_9

    .line 602
    iget-object v13, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast v13, Lgnu/expr/LangExp;

    invoke-virtual {v13}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    .line 603
    .local v13, "tform":[Ljava/lang/Object;
    aget-object v15, v13, v6

    check-cast v15, Lgnu/lists/Pair;

    aget-object v16, v13, v14

    move-object/from16 v11, v16

    check-cast v11, Lkawa/lang/SyntaxForm;

    invoke-virtual {v1, v15, v11}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v11

    .line 605
    .restart local v11    # "texp":Lgnu/expr/Expression;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v15

    invoke-virtual {v15, v11}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v12

    .line 607
    .end local v11    # "texp":Lgnu/expr/Expression;
    .end local v13    # "tform":[Ljava/lang/Object;
    :cond_9
    move-object/from16 v11, p2

    invoke-virtual {v1, v11}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v13

    iput-object v13, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 608
    iput-object v10, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 612
    iget-object v13, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    instance-of v13, v13, Lgnu/expr/BeginExp;

    if-eqz v13, :cond_f

    iget-object v13, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast v13, Lgnu/expr/BeginExp;

    invoke-virtual {v13}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v13

    move-object v15, v13

    .local v15, "exps":[Lgnu/expr/Expression;
    array-length v13, v13

    move/from16 v16, v13

    .local v16, "len":I
    if-le v13, v14, :cond_e

    aget-object v13, v15, v6

    instance-of v13, v13, Lgnu/expr/ReferenceExp;

    if-nez v13, :cond_c

    aget-object v13, v15, v6

    invoke-virtual {v13}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v17, v13

    .local v17, "val":Ljava/lang/Object;
    instance-of v13, v13, Lgnu/bytecode/Type;

    if-nez v13, :cond_b

    move-object/from16 v13, v17

    .end local v17    # "val":Ljava/lang/Object;
    .local v13, "val":Ljava/lang/Object;
    instance-of v14, v13, Ljava/lang/Class;

    if-eqz v14, :cond_a

    goto :goto_3

    :cond_a
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_5

    .end local v13    # "val":Ljava/lang/Object;
    .restart local v17    # "val":Ljava/lang/Object;
    :cond_b
    move-object/from16 v13, v17

    .line 619
    .end local v17    # "val":Ljava/lang/Object;
    :cond_c
    :goto_3
    aget-object v13, v15, v6

    .line 620
    .local v13, "rexp":Lgnu/expr/Expression;
    add-int/lit8 v14, v16, -0x1

    .line 621
    .end local v16    # "len":I
    .local v14, "len":I
    const/4 v6, 0x1

    if-ne v14, v6, :cond_d

    .line 622
    aget-object v6, v15, v6

    iput-object v6, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_4

    .line 625
    :cond_d
    move-object/from16 v17, v3

    .end local v3    # "curs":Lgnu/expr/ScopeExp;
    .local v17, "curs":Lgnu/expr/ScopeExp;
    new-array v3, v14, [Lgnu/expr/Expression;

    .line 626
    .local v3, "new_body":[Lgnu/expr/Expression;
    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "prev":Lgnu/expr/Declaration;
    .local v18, "prev":Lgnu/expr/Declaration;
    invoke-static {v15, v6, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    invoke-static {v3}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 629
    .end local v3    # "new_body":[Lgnu/expr/Expression;
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 630
    .end local v13    # "rexp":Lgnu/expr/Expression;
    goto :goto_6

    .line 612
    .end local v14    # "len":I
    .end local v17    # "curs":Lgnu/expr/ScopeExp;
    .end local v18    # "prev":Lgnu/expr/Declaration;
    .local v3, "curs":Lgnu/expr/ScopeExp;
    .restart local v4    # "prev":Lgnu/expr/Declaration;
    .restart local v16    # "len":I
    :cond_e
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .end local v3    # "curs":Lgnu/expr/ScopeExp;
    .end local v4    # "prev":Lgnu/expr/Declaration;
    .restart local v17    # "curs":Lgnu/expr/ScopeExp;
    .restart local v18    # "prev":Lgnu/expr/Declaration;
    goto :goto_5

    .end local v15    # "exps":[Lgnu/expr/Expression;
    .end local v16    # "len":I
    .end local v17    # "curs":Lgnu/expr/ScopeExp;
    .end local v18    # "prev":Lgnu/expr/Declaration;
    .restart local v3    # "curs":Lgnu/expr/ScopeExp;
    .restart local v4    # "prev":Lgnu/expr/Declaration;
    :cond_f
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 632
    .end local v3    # "curs":Lgnu/expr/ScopeExp;
    .end local v4    # "prev":Lgnu/expr/Declaration;
    .restart local v17    # "curs":Lgnu/expr/ScopeExp;
    .restart local v18    # "prev":Lgnu/expr/Declaration;
    :goto_5
    invoke-virtual {v0, v12}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    .line 633
    :goto_6
    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 635
    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 636
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 637
    iget-object v3, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    if-ne v3, v0, :cond_10

    .line 638
    const/4 v3, 0x0

    iput-object v3, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 639
    :cond_10
    return-void
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 33
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    .line 34
    .local v0, "exp":Lgnu/expr/Expression;
    invoke-static {v0, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 23
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "formals"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;
    .param p4, "templateScopeRest"    # Lkawa/lang/TemplateScope;

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "filename":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v4

    .line 75
    .local v4, "line":I
    if-eqz v3, :cond_0

    if-lez v4, :cond_0

    .line 76
    invoke-virtual {v1, v3, v4}, Lgnu/expr/LambdaExp;->setSourceLocation(Ljava/lang/String;I)V

    .line 79
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "line":I
    :cond_0
    move-object/from16 v3, p2

    .line 80
    .local v3, "bindings":Ljava/lang/Object;
    const/4 v4, -0x1

    .line 81
    .local v4, "opt_args":I
    const/4 v5, -0x1

    .line 82
    .local v5, "rest_args":I
    const/4 v6, -0x1

    .line 86
    .local v6, "key_args":I
    :goto_0
    instance-of v7, v3, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_1

    .line 88
    move-object v7, v3

    check-cast v7, Lkawa/lang/SyntaxForm;

    .line 90
    .local v7, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v7}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    .line 92
    .end local v7    # "sf":Lkawa/lang/SyntaxForm;
    :cond_1
    instance-of v7, v3, Lgnu/lists/Pair;

    const-string v8, "::"

    const-string v9, "multiple "

    const/4 v10, 0x1

    if-nez v7, :cond_2c

    .line 93
    nop

    .line 151
    instance-of v7, v3, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_4

    .line 153
    if-gez v4, :cond_3

    if-gez v6, :cond_3

    if-ltz v5, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    const/4 v5, 0x1

    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dotted rest-arg after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 157
    return-void

    .line 161
    :cond_4
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v7, :cond_5

    .line 163
    const-string v7, "misformed formals in lambda"

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 164
    return-void

    .line 166
    :cond_5
    :goto_2
    if-le v5, v10, :cond_6

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " parameters"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 169
    return-void

    .line 171
    :cond_6
    if-gez v4, :cond_7

    .line 172
    const/4 v4, 0x0

    .line 173
    :cond_7
    if-gez v5, :cond_8

    .line 174
    const/4 v5, 0x0

    move v7, v5

    goto :goto_3

    .line 173
    :cond_8
    move v7, v5

    .line 175
    .end local v5    # "rest_args":I
    .local v7, "rest_args":I
    :goto_3
    if-gez v6, :cond_9

    .line 176
    const/4 v6, 0x0

    .line 177
    :cond_9
    if-lez v7, :cond_a

    .line 178
    const/4 v5, -0x1

    iput v5, v1, Lgnu/expr/LambdaExp;->max_args:I

    goto :goto_4

    .line 180
    :cond_a
    iget v5, v1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v5, v4

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v5, v9

    iput v5, v1, Lgnu/expr/LambdaExp;->max_args:I

    .line 181
    :goto_4
    add-int v5, v4, v6

    if-lez v5, :cond_b

    .line 182
    add-int v5, v4, v6

    new-array v5, v5, [Lgnu/expr/Expression;

    iput-object v5, v1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 183
    :cond_b
    if-lez v6, :cond_c

    .line 184
    new-array v5, v6, [Lgnu/expr/Keyword;

    iput-object v5, v1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    .line 186
    :cond_c
    move-object/from16 v3, p2

    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v5, 0x0

    .line 189
    .end local v6    # "key_args":I
    .local v5, "key_args":I
    const/4 v6, 0x0

    move-object v9, v6

    move v6, v5

    move v5, v4

    move-object v4, v3

    move-object/from16 v3, p4

    .line 192
    .end local p4    # "templateScopeRest":Lkawa/lang/TemplateScope;
    .local v3, "templateScopeRest":Lkawa/lang/TemplateScope;
    .local v4, "bindings":Ljava/lang/Object;
    .local v5, "opt_args":I
    .restart local v6    # "key_args":I
    .local v9, "mode":Ljava/lang/Object;
    :goto_5
    instance-of v10, v4, Lkawa/lang/SyntaxForm;

    if-eqz v10, :cond_d

    .line 194
    move-object v10, v4

    check-cast v10, Lkawa/lang/SyntaxForm;

    .line 195
    .local v10, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 198
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    .line 200
    .end local v10    # "sf":Lkawa/lang/SyntaxForm;
    :cond_d
    move-object v10, v3

    .line 201
    .local v10, "templateScope":Lkawa/lang/TemplateScope;
    instance-of v11, v4, Lgnu/lists/Pair;

    const/4 v12, 0x0

    const-wide/32 v13, 0x40000

    if-nez v11, :cond_10

    .line 202
    nop

    .line 339
    .end local v10    # "templateScope":Lkawa/lang/TemplateScope;
    instance-of v8, v4, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_e

    .line 341
    move-object v8, v4

    check-cast v8, Lkawa/lang/SyntaxForm;

    .line 342
    .local v8, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 343
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    .line 345
    .end local v8    # "sf":Lkawa/lang/SyntaxForm;
    :cond_e
    instance-of v8, v4, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_f

    .line 347
    new-instance v8, Lgnu/expr/Declaration;

    invoke-direct {v8, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 348
    .local v8, "decl":Lgnu/expr/Declaration;
    sget-object v10, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v8, v10}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    invoke-virtual {v8, v13, v14}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 350
    invoke-virtual {v8, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 351
    invoke-static {v8, v3, v1, v2}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    .line 353
    .end local v8    # "decl":Lgnu/expr/Declaration;
    :cond_f
    return-void

    .line 203
    .restart local v10    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_10
    move-object v11, v4

    check-cast v11, Lgnu/lists/Pair;

    .line 204
    .local v11, "pair":Lgnu/lists/Pair;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    .line 205
    .local v15, "pair_car":Ljava/lang/Object;
    instance-of v12, v15, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_11

    .line 207
    move-object v12, v15

    check-cast v12, Lkawa/lang/SyntaxForm;

    .line 208
    .local v12, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v15

    .line 209
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v10

    .line 211
    .end local v12    # "sf":Lkawa/lang/SyntaxForm;
    :cond_11
    iget-object v12, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    if-eq v15, v12, :cond_2b

    iget-object v12, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    if-eq v15, v12, :cond_2b

    iget-object v12, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v15, v12, :cond_12

    move-object/from16 v17, v3

    move/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    move-object v7, v4

    goto/16 :goto_e

    .line 217
    :cond_12
    invoke-virtual {v2, v11}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 218
    .local v12, "savePos":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 219
    .local v16, "name":Ljava/lang/Object;
    iget-object v13, v0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    .line 220
    .local v13, "defaultValue":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 222
    .local v14, "typeSpecPair":Lgnu/lists/Pair;
    invoke-virtual {v2, v15, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 224
    const-string v8, "\'::\' must follow parameter name"

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 225
    return-void

    .line 227
    :cond_13
    invoke-virtual {v2, v15}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 228
    move-object/from16 v17, v3

    .end local v3    # "templateScopeRest":Lkawa/lang/TemplateScope;
    .local v17, "templateScopeRest":Lkawa/lang/TemplateScope;
    instance-of v3, v15, Lgnu/mapping/Symbol;

    move/from16 v18, v7

    .end local v7    # "rest_args":I
    .local v18, "rest_args":I
    const-string v7, "\'::\' not followed by a type specifier (for parameter \'"

    move-object/from16 v19, v10

    .end local v10    # "templateScope":Lkawa/lang/TemplateScope;
    .local v19, "templateScope":Lkawa/lang/TemplateScope;
    const-string v10, "\')"

    if-eqz v3, :cond_16

    .line 230
    move-object v3, v15

    .line 231
    .end local v16    # "name":Ljava/lang/Object;
    .local v3, "name":Ljava/lang/Object;
    move-object/from16 v20, v13

    .end local v13    # "defaultValue":Ljava/lang/Object;
    .local v20, "defaultValue":Ljava/lang/Object;
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_15

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    move-object/from16 v16, v13

    .local v16, "p":Lgnu/lists/Pair;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 234
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-nez v13, :cond_14

    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 238
    return-void

    .line 240
    :cond_14
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    .line 241
    .end local v16    # "p":Lgnu/lists/Pair;
    .local v7, "p":Lgnu/lists/Pair;
    move-object v14, v7

    .line 242
    move-object v10, v7

    move-object v11, v10

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    .end local v11    # "pair":Lgnu/lists/Pair;
    .local v10, "pair":Lgnu/lists/Pair;
    goto/16 :goto_8

    .line 314
    .end local v7    # "p":Lgnu/lists/Pair;
    .end local v10    # "pair":Lgnu/lists/Pair;
    .restart local v11    # "pair":Lgnu/lists/Pair;
    :cond_15
    move-object/from16 v10, v19

    move-object/from16 v13, v20

    goto/16 :goto_8

    .line 245
    .end local v3    # "name":Ljava/lang/Object;
    .end local v20    # "defaultValue":Ljava/lang/Object;
    .restart local v13    # "defaultValue":Ljava/lang/Object;
    .local v16, "name":Ljava/lang/Object;
    :cond_16
    move-object/from16 v20, v13

    .end local v13    # "defaultValue":Ljava/lang/Object;
    .restart local v20    # "defaultValue":Ljava/lang/Object;
    instance-of v3, v15, Lgnu/lists/Pair;

    if-eqz v3, :cond_23

    .line 247
    move-object v3, v15

    check-cast v3, Lgnu/lists/Pair;

    .line 248
    .local v3, "p":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 249
    .end local v15    # "pair_car":Ljava/lang/Object;
    .local v13, "pair_car":Ljava/lang/Object;
    instance-of v15, v13, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_17

    .line 251
    move-object v15, v13

    check-cast v15, Lkawa/lang/SyntaxForm;

    .line 252
    .local v15, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    .line 253
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v19

    .line 255
    .end local v15    # "sf":Lkawa/lang/SyntaxForm;
    :cond_17
    invoke-virtual {v2, v13}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 256
    .end local v13    # "pair_car":Ljava/lang/Object;
    .local v15, "pair_car":Ljava/lang/Object;
    instance-of v13, v15, Lgnu/mapping/Symbol;

    if-eqz v13, :cond_22

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lgnu/lists/Pair;

    if-eqz v13, :cond_22

    .line 259
    move-object v13, v15

    .line 260
    .end local v16    # "name":Ljava/lang/Object;
    .local v13, "name":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lgnu/lists/Pair;

    .line 261
    move-object/from16 v21, v11

    .end local v11    # "pair":Lgnu/lists/Pair;
    .local v21, "pair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v22, v14

    .end local v14    # "typeSpecPair":Lgnu/lists/Pair;
    .local v22, "typeSpecPair":Lgnu/lists/Pair;
    const-string v14, "improper list in specifier for parameter \'"

    if-eqz v11, :cond_1b

    .line 263
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/lists/Pair;

    if-nez v11, :cond_18

    .line 265
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 267
    return-void

    .line 269
    :cond_18
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lgnu/lists/Pair;

    .line 270
    move-object v7, v3

    .line 271
    .end local v22    # "typeSpecPair":Lgnu/lists/Pair;
    .local v7, "typeSpecPair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_19

    .line 272
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, Lgnu/lists/Pair;

    goto :goto_6

    .line 273
    :cond_19
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v3

    .end local v3    # "p":Lgnu/lists/Pair;
    .local v16, "p":Lgnu/lists/Pair;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v3, :cond_1a

    .line 274
    const/4 v3, 0x0

    .end local v16    # "p":Lgnu/lists/Pair;
    .restart local v3    # "p":Lgnu/lists/Pair;
    goto :goto_6

    .line 277
    .end local v3    # "p":Lgnu/lists/Pair;
    .restart local v16    # "p":Lgnu/lists/Pair;
    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 279
    return-void

    .line 261
    .end local v7    # "typeSpecPair":Lgnu/lists/Pair;
    .end local v16    # "p":Lgnu/lists/Pair;
    .restart local v3    # "p":Lgnu/lists/Pair;
    .restart local v22    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_1b
    move-object/from16 v7, v22

    .line 282
    .end local v22    # "typeSpecPair":Lgnu/lists/Pair;
    .restart local v7    # "typeSpecPair":Lgnu/lists/Pair;
    :goto_6
    if-eqz v3, :cond_1e

    if-eqz v9, :cond_1e

    .line 284
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    .line 285
    .end local v20    # "defaultValue":Ljava/lang/Object;
    .local v11, "defaultValue":Ljava/lang/Object;
    move-object/from16 v16, v11

    .end local v11    # "defaultValue":Ljava/lang/Object;
    .local v16, "defaultValue":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_1c

    .line 286
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object v3, v10

    check-cast v3, Lgnu/lists/Pair;

    goto :goto_7

    .line 287
    :cond_1c
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v22, v3

    .end local v3    # "p":Lgnu/lists/Pair;
    .local v22, "p":Lgnu/lists/Pair;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v3, :cond_1d

    .line 288
    const/4 v3, 0x0

    .end local v22    # "p":Lgnu/lists/Pair;
    .restart local v3    # "p":Lgnu/lists/Pair;
    goto :goto_7

    .line 291
    .end local v3    # "p":Lgnu/lists/Pair;
    .restart local v22    # "p":Lgnu/lists/Pair;
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 293
    return-void

    .line 282
    .end local v16    # "defaultValue":Ljava/lang/Object;
    .end local v22    # "p":Lgnu/lists/Pair;
    .restart local v3    # "p":Lgnu/lists/Pair;
    .restart local v20    # "defaultValue":Ljava/lang/Object;
    :cond_1e
    move-object/from16 v22, v3

    .line 296
    .end local v3    # "p":Lgnu/lists/Pair;
    .restart local v22    # "p":Lgnu/lists/Pair;
    move-object/from16 v16, v20

    move-object/from16 v3, v22

    .end local v20    # "defaultValue":Ljava/lang/Object;
    .end local v22    # "p":Lgnu/lists/Pair;
    .restart local v3    # "p":Lgnu/lists/Pair;
    .restart local v16    # "defaultValue":Ljava/lang/Object;
    :goto_7
    if-eqz v3, :cond_21

    .line 298
    const/16 v10, 0x27

    if-eqz v7, :cond_1f

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "duplicate type specifier for parameter \'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 302
    return-void

    .line 304
    :cond_1f
    move-object v14, v3

    .line 305
    .end local v7    # "typeSpecPair":Lgnu/lists/Pair;
    .restart local v14    # "typeSpecPair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v7, v11, :cond_20

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "junk at end of specifier for parameter \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 309
    return-void

    .line 305
    :cond_20
    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v10, v19

    move-object/from16 v11, v21

    goto :goto_8

    .line 296
    .end local v14    # "typeSpecPair":Lgnu/lists/Pair;
    .restart local v7    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_21
    move-object v14, v7

    move-object v3, v13

    move-object/from16 v13, v16

    move-object/from16 v10, v19

    move-object/from16 v11, v21

    goto :goto_8

    .line 256
    .end local v7    # "typeSpecPair":Lgnu/lists/Pair;
    .end local v13    # "name":Ljava/lang/Object;
    .end local v21    # "pair":Lgnu/lists/Pair;
    .local v11, "pair":Lgnu/lists/Pair;
    .restart local v14    # "typeSpecPair":Lgnu/lists/Pair;
    .local v16, "name":Ljava/lang/Object;
    .restart local v20    # "defaultValue":Ljava/lang/Object;
    :cond_22
    move-object/from16 v21, v11

    move-object/from16 v22, v14

    .line 314
    .end local v3    # "p":Lgnu/lists/Pair;
    .end local v11    # "pair":Lgnu/lists/Pair;
    .end local v14    # "typeSpecPair":Lgnu/lists/Pair;
    .restart local v21    # "pair":Lgnu/lists/Pair;
    .local v22, "typeSpecPair":Lgnu/lists/Pair;
    move-object/from16 v3, v16

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    move-object/from16 v11, v21

    move-object/from16 v14, v22

    goto :goto_8

    .line 245
    .end local v21    # "pair":Lgnu/lists/Pair;
    .end local v22    # "typeSpecPair":Lgnu/lists/Pair;
    .restart local v11    # "pair":Lgnu/lists/Pair;
    .restart local v14    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_23
    move-object/from16 v21, v11

    move-object/from16 v22, v14

    .end local v11    # "pair":Lgnu/lists/Pair;
    .end local v14    # "typeSpecPair":Lgnu/lists/Pair;
    .restart local v21    # "pair":Lgnu/lists/Pair;
    .restart local v22    # "typeSpecPair":Lgnu/lists/Pair;
    move-object/from16 v3, v16

    move-object/from16 v10, v19

    move-object/from16 v13, v20

    .line 314
    .end local v16    # "name":Ljava/lang/Object;
    .end local v19    # "templateScope":Lkawa/lang/TemplateScope;
    .end local v20    # "defaultValue":Ljava/lang/Object;
    .end local v21    # "pair":Lgnu/lists/Pair;
    .end local v22    # "typeSpecPair":Lgnu/lists/Pair;
    .local v3, "name":Ljava/lang/Object;
    .local v10, "templateScope":Lkawa/lang/TemplateScope;
    .restart local v11    # "pair":Lgnu/lists/Pair;
    .local v13, "defaultValue":Ljava/lang/Object;
    .restart local v14    # "typeSpecPair":Lgnu/lists/Pair;
    :goto_8
    if-nez v3, :cond_24

    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parameter is neither name nor (name :: type) nor (name default): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 317
    return-void

    .line 319
    :cond_24
    iget-object v7, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    if-eq v9, v7, :cond_26

    iget-object v7, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v9, v7, :cond_25

    goto :goto_9

    :cond_25
    move-object/from16 v19, v11

    goto :goto_a

    .line 320
    :cond_26
    :goto_9
    iget-object v7, v1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v16, v5, 0x1

    move-object/from16 v19, v11

    .end local v5    # "opt_args":I
    .end local v11    # "pair":Lgnu/lists/Pair;
    .local v16, "opt_args":I
    .local v19, "pair":Lgnu/lists/Pair;
    new-instance v11, Lgnu/expr/LangExp;

    invoke-direct {v11, v13}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    aput-object v11, v7, v5

    move/from16 v5, v16

    .line 321
    .end local v16    # "opt_args":I
    .restart local v5    # "opt_args":I
    :goto_a
    iget-object v7, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v9, v7, :cond_28

    .line 322
    iget-object v7, v1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    add-int/lit8 v11, v6, 0x1

    move/from16 v16, v5

    .end local v5    # "opt_args":I
    .end local v6    # "key_args":I
    .local v11, "key_args":I
    .restart local v16    # "opt_args":I
    instance-of v5, v3, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_27

    move-object v5, v3

    check-cast v5, Lgnu/mapping/Symbol;

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_27
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_b
    invoke-static {v5}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v5

    aput-object v5, v7, v6

    move v6, v11

    goto :goto_c

    .line 321
    .end local v11    # "key_args":I
    .end local v16    # "opt_args":I
    .restart local v5    # "opt_args":I
    .restart local v6    # "key_args":I
    :cond_28
    move/from16 v16, v5

    .line 325
    .end local v5    # "opt_args":I
    .restart local v16    # "opt_args":I
    :goto_c
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v3}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 326
    .local v5, "decl":Lgnu/expr/Declaration;
    invoke-static {v5, v4}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 327
    if-eqz v14, :cond_29

    .line 329
    new-instance v7, Lgnu/expr/LangExp;

    invoke-direct {v7, v14}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 330
    move-object v11, v3

    move-object v7, v4

    .end local v3    # "name":Ljava/lang/Object;
    .end local v4    # "bindings":Ljava/lang/Object;
    .local v7, "bindings":Ljava/lang/Object;
    .local v11, "name":Ljava/lang/Object;
    const-wide/16 v3, 0x2000

    invoke-virtual {v5, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_d

    .line 332
    .end local v7    # "bindings":Ljava/lang/Object;
    .end local v11    # "name":Ljava/lang/Object;
    .restart local v3    # "name":Ljava/lang/Object;
    .restart local v4    # "bindings":Ljava/lang/Object;
    :cond_29
    move-object v11, v3

    move-object v7, v4

    .end local v3    # "name":Ljava/lang/Object;
    .end local v4    # "bindings":Ljava/lang/Object;
    .restart local v7    # "bindings":Ljava/lang/Object;
    .restart local v11    # "name":Ljava/lang/Object;
    iget-object v3, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    if-ne v9, v3, :cond_2a

    .line 333
    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v5, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 334
    :cond_2a
    :goto_d
    const-wide/32 v3, 0x40000

    invoke-virtual {v5, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 335
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 336
    invoke-static {v5, v10, v1, v2}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    .line 337
    invoke-virtual {v2, v12}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move/from16 v5, v16

    move-object/from16 v11, v19

    goto :goto_f

    .line 211
    .end local v12    # "savePos":Ljava/lang/Object;
    .end local v13    # "defaultValue":Ljava/lang/Object;
    .end local v14    # "typeSpecPair":Lgnu/lists/Pair;
    .end local v16    # "opt_args":I
    .end local v17    # "templateScopeRest":Lkawa/lang/TemplateScope;
    .end local v18    # "rest_args":I
    .end local v19    # "pair":Lgnu/lists/Pair;
    .local v3, "templateScopeRest":Lkawa/lang/TemplateScope;
    .restart local v4    # "bindings":Ljava/lang/Object;
    .local v5, "opt_args":I
    .local v7, "rest_args":I
    .local v11, "pair":Lgnu/lists/Pair;
    :cond_2b
    move-object/from16 v17, v3

    move/from16 v18, v7

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    move-object v7, v4

    .line 214
    .end local v3    # "templateScopeRest":Lkawa/lang/TemplateScope;
    .end local v4    # "bindings":Ljava/lang/Object;
    .end local v10    # "templateScope":Lkawa/lang/TemplateScope;
    .end local v11    # "pair":Lgnu/lists/Pair;
    .local v7, "bindings":Ljava/lang/Object;
    .restart local v17    # "templateScopeRest":Lkawa/lang/TemplateScope;
    .restart local v18    # "rest_args":I
    .local v19, "templateScope":Lkawa/lang/TemplateScope;
    .restart local v21    # "pair":Lgnu/lists/Pair;
    :goto_e
    move-object v3, v15

    .line 215
    .end local v9    # "mode":Ljava/lang/Object;
    .local v3, "mode":Ljava/lang/Object;
    move-object v9, v3

    move-object/from16 v11, v21

    .line 190
    .end local v3    # "mode":Ljava/lang/Object;
    .end local v15    # "pair_car":Ljava/lang/Object;
    .end local v19    # "templateScope":Lkawa/lang/TemplateScope;
    .end local v21    # "pair":Lgnu/lists/Pair;
    .restart local v9    # "mode":Ljava/lang/Object;
    .restart local v11    # "pair":Lgnu/lists/Pair;
    :goto_f
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v3, v17

    move/from16 v7, v18

    .end local v7    # "bindings":Ljava/lang/Object;
    .restart local v4    # "bindings":Ljava/lang/Object;
    goto/16 :goto_5

    .line 94
    .end local v9    # "mode":Ljava/lang/Object;
    .end local v11    # "pair":Lgnu/lists/Pair;
    .end local v17    # "templateScopeRest":Lkawa/lang/TemplateScope;
    .end local v18    # "rest_args":I
    .local v3, "bindings":Ljava/lang/Object;
    .local v4, "opt_args":I
    .local v5, "rest_args":I
    .restart local p4    # "templateScopeRest":Lkawa/lang/TemplateScope;
    :cond_2c
    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    .line 96
    .local v7, "pair":Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    .line 97
    .local v11, "pair_car":Ljava/lang/Object;
    instance-of v12, v11, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_2d

    .line 98
    move-object v12, v11

    check-cast v12, Lkawa/lang/SyntaxForm;

    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v11

    .line 99
    :cond_2d
    iget-object v12, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    const-string v13, " after "

    const-string v14, " in parameter list"

    if-ne v11, v12, :cond_31

    .line 101
    if-ltz v4, :cond_2e

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 104
    return-void

    .line 106
    :cond_2e
    if-gez v5, :cond_30

    if-ltz v6, :cond_2f

    goto :goto_10

    .line 111
    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_11

    .line 108
    :cond_30
    :goto_10
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 109
    return-void

    .line 113
    :cond_31
    iget-object v12, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    if-ne v11, v12, :cond_34

    .line 115
    if-ltz v5, :cond_32

    .line 117
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 119
    return-void

    .line 121
    :cond_32
    if-ltz v6, :cond_33

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 125
    return-void

    .line 127
    :cond_33
    const/4 v5, 0x0

    goto :goto_11

    .line 129
    :cond_34
    iget-object v12, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    if-ne v11, v12, :cond_36

    .line 131
    if-ltz v6, :cond_35

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 135
    return-void

    .line 137
    :cond_35
    const/4 v6, 0x0

    goto :goto_11

    .line 139
    :cond_36
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lgnu/lists/Pair;

    if-eqz v8, :cond_37

    .line 140
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lgnu/lists/Pair;

    goto :goto_11

    .line 141
    :cond_37
    if-ltz v6, :cond_38

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 143
    :cond_38
    if-ltz v5, :cond_39

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 145
    :cond_39
    if-ltz v4, :cond_3a

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 148
    :cond_3a
    iget v8, v1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v8, v10

    iput v8, v1, Lgnu/expr/LambdaExp;->min_args:I

    .line 149
    :goto_11
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 84
    .end local v11    # "pair_car":Ljava/lang/Object;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "optional"    # Ljava/lang/Object;
    .param p2, "rest"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public skipAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 3
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "body"    # Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 526
    nop

    :goto_0
    instance-of v0, p2, Lgnu/lists/Pair;

    if-eqz v0, :cond_3

    .line 528
    move-object v0, p2

    check-cast v0, Lgnu/lists/Pair;

    .line 529
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-nez v1, :cond_0

    .line 530
    goto :goto_2

    .line 531
    :cond_0
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 532
    .local v1, "attrName":Ljava/lang/Object;
    const-string v2, "::"

    invoke-virtual {p3, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    const/4 v1, 0x0

    goto :goto_1

    .line 534
    :cond_1
    instance-of v2, v1, Lgnu/expr/Keyword;

    if-nez v2, :cond_2

    .line 535
    goto :goto_2

    .line 536
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 537
    .end local v0    # "pair":Lgnu/lists/Pair;
    .end local v1    # "attrName":Ljava/lang/Object;
    goto :goto_0

    .line 538
    :cond_3
    :goto_2
    return-object p2
.end method
