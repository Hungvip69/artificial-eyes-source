.class public Lkawa/lang/SyntaxTemplate;
.super Ljava/lang/Object;
.source "SyntaxTemplate.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final BUILD_CONS:I = 0x1

.field static final BUILD_DOTS:I = 0x5

.field static final BUILD_LIST1:I = 0x8

.field static final BUILD_LITERAL:I = 0x4

.field static final BUILD_MISC:I = 0x0

.field static final BUILD_NIL:I = 0x10

.field static final BUILD_SYNTAX:I = 0x18

.field static final BUILD_VAR:I = 0x2

.field static final BUILD_VAR_CAR:I = 0x3

.field static final BUILD_VECTOR:I = 0x28

.field static final BUILD_WIDE:I = 0x7

.field static final dots3:Ljava/lang/String; = "..."


# instance fields
.field literal_values:[Ljava/lang/Object;

.field max_nesting:I

.field patternNesting:Ljava/lang/String;

.field template_program:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V
    .locals 10
    .param p1, "template"    # Ljava/lang/Object;
    .param p2, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-eqz p3, :cond_1

    iget-object v0, p3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v4, "program":Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 169
    .local v0, "literals_vector":Ljava/util/Vector;
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    .line 173
    .local v7, "seen":Ljava/util/IdentityHashMap;
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 176
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "patternNesting"    # Ljava/lang/String;
    .param p2, "template_program"    # Ljava/lang/String;
    .param p3, "literal_values"    # [Ljava/lang/Object;
    .param p4, "max_nesting"    # I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 159
    iput p4, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 160
    return-void
.end method

.method private get_count(Ljava/lang/Object;I[I)I
    .locals 3
    .param p1, "var"    # Ljava/lang/Object;
    .param p2, "nesting"    # I
    .param p3, "indexes"    # [I

    .line 376
    const/4 v0, 0x0

    .local v0, "level":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 377
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget v2, p3, v0

    aget-object p1, v1, v2

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "level":I
    :cond_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 379
    .local v0, "var_array":[Ljava/lang/Object;
    array-length v1, v0

    return v1
.end method

.method static indexOf(Ljava/util/Vector;Ljava/lang/Object;)I
    .locals 3
    .param p0, "vec"    # Ljava/util/Vector;
    .param p1, "elem"    # Ljava/lang/Object;

    .line 364
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 365
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 367
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 368
    return v1

    .line 365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I
    .locals 26
    .param p1, "form"    # Ljava/lang/Object;
    .param p2, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p3, "template_program"    # Ljava/lang/StringBuffer;
    .param p4, "nesting"    # I
    .param p5, "literals_vector"    # Ljava/util/Vector;
    .param p6, "seen"    # Ljava/lang/Object;
    .param p7, "isVector"    # Z
    .param p8, "tr"    # Lkawa/lang/Translator;

    .line 218
    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p8

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .end local p1    # "form":Ljava/lang/Object;
    .end local p2    # "syntax":Lkawa/lang/SyntaxForm;
    .local v14, "form":Ljava/lang/Object;
    .local v15, "syntax":Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v0, v14, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 220
    move-object v15, v14

    check-cast v15, Lkawa/lang/SyntaxForm;

    .line 221
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 224
    :cond_0
    instance-of v0, v14, Lgnu/lists/Pair;

    const/16 v16, -0x2

    if-nez v0, :cond_1

    instance-of v0, v14, Lgnu/lists/FVector;

    if-eqz v0, :cond_3

    .line 226
    :cond_1
    move-object/from16 v0, p6

    check-cast v0, Ljava/util/IdentityHashMap;

    .line 227
    .local v0, "seen_map":Ljava/util/IdentityHashMap;
    invoke-virtual {v0, v14}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "self-referential (cyclic) syntax template"

    invoke-virtual {v13, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 231
    return v16

    .line 233
    :cond_2
    invoke-virtual {v0, v14, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .end local v0    # "seen_map":Ljava/util/IdentityHashMap;
    :cond_3
    instance-of v0, v14, Lgnu/lists/Pair;

    const-string v8, "..."

    const/4 v7, -0x1

    if-eqz v0, :cond_10

    .line 240
    move-object/from16 v17, v14

    check-cast v17, Lgnu/lists/Pair;

    .line 241
    .local v17, "pair":Lgnu/lists/Pair;
    const/16 v18, -0x2

    .line 242
    .local v18, "ret_cdr":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 243
    .local v6, "save_pc":I
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 246
    .local v5, "car":Ljava/lang/Object;
    invoke-virtual {v13, v5, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, "cdr":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_4

    .line 251
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    .line 252
    .local v1, "cdr_pair":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_4

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_4

    .line 254
    const-string v14, "..."

    .line 255
    move-object/from16 v25, v8

    const/4 v2, -0x1

    goto/16 :goto_7

    .line 260
    .end local v0    # "cdr":Ljava/lang/Object;
    .end local v1    # "cdr_pair":Lgnu/lists/Pair;
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 263
    .local v4, "save_literals":I
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "num_dots3":I
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move/from16 v19, v0

    move-object v3, v1

    .line 267
    .end local v0    # "num_dots3":I
    .local v3, "rest":Ljava/lang/Object;
    .local v19, "num_dots3":I
    :goto_1
    instance-of v0, v3, Lgnu/lists/Pair;

    const/4 v2, 0x5

    if-eqz v0, :cond_6

    .line 269
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    .line 270
    .local v0, "p":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1, v8}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 271
    goto :goto_2

    .line 272
    :cond_5
    add-int/lit8 v19, v19, 0x1

    .line 273
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 274
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    .end local v0    # "p":Lgnu/lists/Pair;
    goto :goto_1

    .line 276
    :cond_6
    :goto_2
    add-int v20, v11, v19

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    const/16 v22, 0x5

    move-object v2, v15

    move-object/from16 v23, v3

    .end local v3    # "rest":Ljava/lang/Object;
    .local v23, "rest":Ljava/lang/Object;
    move-object/from16 v3, p3

    move/from16 v24, v4

    .end local v4    # "save_literals":I
    .local v24, "save_literals":I
    move/from16 v4, v20

    move-object/from16 v20, v5

    .end local v5    # "car":Ljava/lang/Object;
    .local v20, "car":Ljava/lang/Object;
    move-object/from16 v5, p5

    move-object/from16 p1, v14

    move v14, v6

    .end local v6    # "save_pc":I
    .local v14, "save_pc":I
    .restart local p1    # "form":Ljava/lang/Object;
    move-object/from16 v6, p6

    const/4 v12, -0x1

    move/from16 v7, v21

    move-object/from16 v25, v8

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v8

    .line 280
    .local v8, "ret_car":I
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v7, v23

    .end local v23    # "rest":Ljava/lang/Object;
    .local v7, "rest":Ljava/lang/Object;
    if-eq v7, v0, :cond_7

    .line 282
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v14

    add-int/lit8 v21, v0, -0x1

    .line 283
    .local v21, "delta":I
    shl-int/lit8 v0, v21, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    invoke-virtual {v10, v14, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 285
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v15

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v23, v7

    .end local v7    # "rest":Ljava/lang/Object;
    .restart local v23    # "rest":Ljava/lang/Object;
    move/from16 v7, p7

    move v12, v8

    .end local v8    # "ret_car":I
    .local v12, "ret_car":I
    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v18

    move/from16 v0, v18

    goto :goto_3

    .line 280
    .end local v12    # "ret_car":I
    .end local v21    # "delta":I
    .end local v23    # "rest":Ljava/lang/Object;
    .restart local v7    # "rest":Ljava/lang/Object;
    .restart local v8    # "ret_car":I
    :cond_7
    move-object/from16 v23, v7

    move v12, v8

    .end local v7    # "rest":Ljava/lang/Object;
    .end local v8    # "ret_car":I
    .restart local v12    # "ret_car":I
    .restart local v23    # "rest":Ljava/lang/Object;
    move/from16 v0, v18

    .line 289
    .end local v18    # "ret_cdr":I
    .local v0, "ret_cdr":I
    :goto_3
    if-lez v19, :cond_a

    .line 291
    if-gez v12, :cond_8

    .line 292
    const-string v1, "... follows template with no suitably-nested pattern variable"

    invoke-virtual {v13, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 293
    :cond_8
    move/from16 v1, v19

    .local v1, "i":I
    :goto_4
    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 295
    shl-int/lit8 v2, v12, 0x3

    add-int/lit8 v2, v2, 0x5

    int-to-char v2, v2

    .line 296
    .local v2, "op":C
    add-int v6, v14, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v10, v6, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 297
    add-int v3, v11, v19

    .line 298
    .local v3, "n":I
    iget v4, v9, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    if-lt v3, v4, :cond_9

    .line 299
    iput v3, v9, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 300
    .end local v2    # "op":C
    .end local v3    # "n":I
    :cond_9
    goto :goto_4

    .line 302
    .end local v1    # "i":I
    :cond_a
    if-ltz v12, :cond_b

    .line 303
    return v12

    .line 304
    :cond_b
    if-ltz v0, :cond_c

    .line 305
    return v0

    .line 306
    :cond_c
    const/4 v1, -0x1

    if-eq v12, v1, :cond_f

    if-ne v0, v1, :cond_d

    move-object/from16 v8, p5

    move/from16 v1, v24

    const/4 v2, -0x1

    goto :goto_5

    .line 308
    :cond_d
    if-eqz p7, :cond_e

    .line 309
    return v16

    .line 313
    :cond_e
    move-object/from16 v8, p5

    move/from16 v1, v24

    const/4 v2, -0x1

    .end local v24    # "save_literals":I
    .local v1, "save_literals":I
    invoke-virtual {v8, v1}, Ljava/util/Vector;->setSize(I)V

    .line 314
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 315
    .end local v0    # "ret_cdr":I
    .end local v1    # "save_literals":I
    .end local v12    # "ret_car":I
    .end local v14    # "save_pc":I
    .end local v17    # "pair":Lgnu/lists/Pair;
    .end local v19    # "num_dots3":I
    .end local v20    # "car":Ljava/lang/Object;
    .end local v23    # "rest":Ljava/lang/Object;
    move-object/from16 v14, p1

    move-object v12, v8

    goto/16 :goto_7

    .line 306
    .restart local v0    # "ret_cdr":I
    .restart local v12    # "ret_car":I
    .restart local v14    # "save_pc":I
    .restart local v17    # "pair":Lgnu/lists/Pair;
    .restart local v19    # "num_dots3":I
    .restart local v20    # "car":Ljava/lang/Object;
    .restart local v23    # "rest":Ljava/lang/Object;
    .restart local v24    # "save_literals":I
    :cond_f
    move-object/from16 v8, p5

    move/from16 v1, v24

    const/4 v2, -0x1

    .line 307
    .end local v24    # "save_literals":I
    .restart local v1    # "save_literals":I
    :goto_5
    return v2

    .line 316
    .end local v0    # "ret_cdr":I
    .end local v1    # "save_literals":I
    .end local v12    # "ret_car":I
    .end local v17    # "pair":Lgnu/lists/Pair;
    .end local v19    # "num_dots3":I
    .end local v20    # "car":Ljava/lang/Object;
    .end local v23    # "rest":Ljava/lang/Object;
    .end local p1    # "form":Ljava/lang/Object;
    .local v14, "form":Ljava/lang/Object;
    :cond_10
    move-object/from16 v25, v8

    move-object v8, v12

    move-object/from16 p1, v14

    const/4 v2, -0x1

    instance-of v0, v14, Lgnu/lists/FVector;

    if-eqz v0, :cond_11

    .line 318
    const/16 v0, 0x28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    move-object v0, v14

    check-cast v0, Lgnu/lists/FVector;

    invoke-static {v0}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v12, v8

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v0

    return v0

    .line 323
    :cond_11
    move-object v12, v8

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v14, v0, :cond_12

    .line 325
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    return v16

    .line 328
    :cond_12
    instance-of v0, v14, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_16

    if-eqz v13, :cond_16

    iget-object v0, v13, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v0, :cond_16

    .line 331
    iget-object v0, v13, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v0, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-static {v0, v14}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v7

    .line 332
    .local v7, "pattern_var_num":I
    if-ltz v7, :cond_16

    .line 334
    iget-object v0, v9, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 335
    .local v0, "var_nesting":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_13

    const/4 v1, 0x3

    goto :goto_6

    :cond_13
    const/4 v1, 0x2

    .line 336
    .local v1, "op":I
    :goto_6
    shr-int/lit8 v0, v0, 0x1

    .line 340
    if-le v0, v11, :cond_14

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inconsistent ... nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 342
    :cond_14
    mul-int/lit8 v3, v7, 0x8

    add-int/2addr v3, v1

    int-to-char v3, v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    if-ne v0, v11, :cond_15

    move v2, v7

    :cond_15
    return v2

    .line 347
    .end local v0    # "var_nesting":I
    .end local v1    # "op":I
    .end local v7    # "pattern_var_num":I
    :cond_16
    :goto_7
    invoke-static {v12, v14}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v0

    .line 348
    .local v0, "literals_index":I
    if-gez v0, :cond_17

    .line 350
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v0

    .line 351
    invoke-virtual {v12, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 353
    :cond_17
    instance-of v1, v14, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_18

    .line 354
    invoke-virtual/range {p8 .. p8}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Lkawa/lang/Translator;->noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 355
    :cond_18
    instance-of v1, v14, Lkawa/lang/SyntaxForm;

    if-nez v1, :cond_19

    move-object/from16 v1, v25

    if-eq v14, v1, :cond_1a

    .line 356
    const/16 v3, 0x18

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 355
    :cond_19
    move-object/from16 v1, v25

    .line 357
    :cond_1a
    :goto_8
    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    if-ne v14, v1, :cond_1b

    const/16 v16, -0x1

    :cond_1b
    return v16
.end method

.method execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 15
    .param p1, "pc"    # I
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "nesting"    # I
    .param p4, "indexes"    # [I
    .param p5, "tr"    # Lkawa/lang/Translator;
    .param p6, "templateScope"    # Lkawa/lang/TemplateScope;

    .line 500
    move-object v7, p0

    iget-object v0, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v9, v0

    move v8, v1

    .line 508
    .end local p1    # "pc":I
    .local v8, "pc":I
    .local v9, "ch":I
    :goto_0
    and-int/lit8 v0, v9, 0x7

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 509
    add-int/lit8 v0, v9, -0x7

    shl-int/lit8 v0, v0, 0xd

    iget-object v1, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int v9, v0, v1

    goto :goto_0

    .line 510
    :cond_0
    const/16 v0, 0x8

    if-ne v9, v0, :cond_1

    .line 512
    add-int/lit8 v1, v8, 0x1

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v0

    return-object v0

    .line 514
    :cond_1
    const/16 v0, 0x10

    if-ne v9, v0, :cond_2

    .line 515
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0

    .line 516
    :cond_2
    const/16 v0, 0x18

    if-ne v9, v0, :cond_4

    .line 518
    add-int/lit8 v1, v8, 0x1

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    .local v0, "v":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v10, p6

    if-ne v0, v1, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v0, v10}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    return-object v1

    .line 521
    .end local v0    # "v":Ljava/lang/Object;
    :cond_4
    move-object/from16 v10, p6

    and-int/lit8 v0, v9, 0x7

    const/4 v11, 0x1

    if-ne v0, v11, :cond_9

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "p":Lgnu/lists/Pair;
    const/4 v1, 0x0

    move v12, v9

    move-object v9, v1

    move v14, v8

    move-object v8, v0

    move v0, v14

    .line 527
    .local v0, "pc":I
    .local v8, "p":Lgnu/lists/Pair;
    .local v9, "result":Ljava/lang/Object;
    .local v12, "ch":I
    :goto_2
    add-int/lit8 v13, v0, 0x1

    .line 528
    .end local v0    # "pc":I
    .local v13, "pc":I
    move-object v0, p0

    move v1, v13

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v0

    .line 530
    .local v0, "q":Ljava/lang/Object;
    if-nez v8, :cond_5

    .line 531
    move-object v1, v0

    move-object v9, v1

    .end local v9    # "result":Ljava/lang/Object;
    .local v1, "result":Ljava/lang/Object;
    goto :goto_3

    .line 533
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v9    # "result":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v8, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 534
    :goto_3
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_6

    .line 536
    move-object v8, v0

    check-cast v8, Lgnu/lists/Pair;

    .line 537
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 539
    :cond_6
    shr-int/lit8 v1, v12, 0x3

    add-int/2addr v13, v1

    .line 540
    iget-object v1, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 541
    and-int/lit8 v1, v12, 0x7

    if-eq v1, v11, :cond_8

    .line 542
    nop

    .line 544
    .end local v0    # "q":Ljava/lang/Object;
    move-object v0, p0

    move v1, v13

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 545
    .local v0, "cdr":Ljava/lang/Object;
    if-nez v8, :cond_7

    .line 546
    move-object v9, v0

    goto :goto_4

    .line 548
    :cond_7
    invoke-virtual {v8, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 549
    :goto_4
    return-object v9

    .line 543
    .end local v0    # "cdr":Ljava/lang/Object;
    :cond_8
    move v0, v13

    goto :goto_2

    .line 551
    .end local v12    # "ch":I
    .end local v13    # "pc":I
    .local v8, "pc":I
    .local v9, "ch":I
    :cond_9
    const/16 v0, 0x28

    if-ne v9, v0, :cond_a

    .line 553
    add-int/lit8 v1, v8, 0x1

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 554
    .local v0, "el":Ljava/lang/Object;
    new-instance v1, Lgnu/lists/FVector;

    move-object v2, v0

    check-cast v2, Lgnu/lists/LList;

    invoke-direct {v1, v2}, Lgnu/lists/FVector;-><init>(Ljava/util/List;)V

    return-object v1

    .line 556
    .end local v0    # "el":Ljava/lang/Object;
    :cond_a
    and-int/lit8 v0, v9, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 558
    shr-int/lit8 v0, v9, 0x3

    .line 563
    .local v0, "lit_no":I
    iget-object v1, v7, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 565
    .end local v0    # "lit_no":I
    :cond_b
    and-int/lit8 v0, v9, 0x6

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 567
    shr-int/lit8 v0, v9, 0x3

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {p0, v0, v1, v2}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    .line 568
    .local v0, "var":Ljava/lang/Object;
    and-int/lit8 v3, v9, 0x7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 569
    move-object v3, v0

    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 570
    :cond_c
    return-object v0

    .line 573
    .end local v0    # "var":Ljava/lang/Object;
    :cond_d
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    new-instance v0, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown template code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 8
    .param p1, "vars"    # [Ljava/lang/Object;
    .param p2, "templateScope"    # Lkawa/lang/TemplateScope;

    .line 408
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v5, v0, [I

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkawa/lang/Translator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    .local v0, "result":Ljava/lang/Object;
    return-object v0
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 8
    .param p1, "vars"    # [Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;
    .param p3, "templateScope"    # Lkawa/lang/TemplateScope;

    .line 431
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v5, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;
    .locals 19
    .param p1, "pc"    # I
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "nesting"    # I
    .param p4, "indexes"    # [I
    .param p5, "tr"    # Lkawa/lang/Translator;
    .param p6, "templateScope"    # Lkawa/lang/TemplateScope;

    .line 452
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move/from16 v13, p3

    move-object/from16 v12, p4

    move/from16 v8, p1

    .line 453
    .local v8, "pc0":I
    iget-object v0, v14, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v16, v0

    .line 454
    .end local p1    # "pc":I
    .local v1, "pc":I
    .local v16, "ch":I
    :goto_0
    and-int/lit8 v0, v16, 0x7

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 455
    add-int/lit8 v0, v16, -0x7

    shl-int/lit8 v0, v0, 0xd

    iget-object v2, v14, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int v16, v0, v2

    goto :goto_0

    .line 456
    :cond_0
    and-int/lit8 v0, v16, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 458
    shr-int/lit8 v0, v16, 0x3

    invoke-virtual {v14, v0, v15, v12}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 459
    .local v0, "p":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v2, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    return-object v2

    .line 461
    .end local v0    # "p":Lgnu/lists/Pair;
    :cond_1
    and-int/lit8 v0, v16, 0x7

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 463
    shr-int/lit8 v7, v16, 0x3

    .line 464
    .local v7, "var_num":I
    aget-object v9, v15, v7

    .line 465
    .local v9, "var":Ljava/lang/Object;
    invoke-direct {v14, v9, v13, v12}, Lkawa/lang/SyntaxTemplate;->get_count(Ljava/lang/Object;I[I)I

    move-result v10

    .line 466
    .local v10, "count":I
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 467
    .local v0, "result":Lgnu/lists/LList;
    const/4 v2, 0x0

    .line 468
    .local v2, "last":Lgnu/lists/Pair;
    add-int/lit8 v11, v1, 0x1

    .line 469
    .end local v1    # "pc":I
    .local v11, "pc":I
    const/4 v1, 0x0

    move-object/from16 v17, v0

    move v6, v1

    move-object v5, v2

    .end local v0    # "result":Lgnu/lists/LList;
    .end local v2    # "last":Lgnu/lists/Pair;
    .local v5, "last":Lgnu/lists/Pair;
    .local v6, "j":I
    .local v17, "result":Lgnu/lists/LList;
    :goto_1
    if-ge v6, v10, :cond_4

    .line 471
    aput v6, v12, v13

    .line 472
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    move v1, v11

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 p1, v7

    move-object v7, v5

    .end local v5    # "last":Lgnu/lists/Pair;
    .local v7, "last":Lgnu/lists/Pair;
    .local p1, "var_num":I
    move-object/from16 v5, p5

    move/from16 v18, v6

    .end local v6    # "j":I
    .local v18, "j":I
    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v0

    .line 474
    .local v0, "list":Lgnu/lists/LList;
    if-nez v7, :cond_2

    .line 475
    move-object v1, v0

    move-object/from16 v17, v1

    move-object v5, v7

    .end local v17    # "result":Lgnu/lists/LList;
    .local v1, "result":Lgnu/lists/LList;
    goto :goto_2

    .line 477
    .end local v1    # "result":Lgnu/lists/LList;
    .restart local v17    # "result":Lgnu/lists/LList;
    :cond_2
    invoke-virtual {v7, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    move-object v5, v7

    .line 480
    .end local v7    # "last":Lgnu/lists/Pair;
    .restart local v5    # "last":Lgnu/lists/Pair;
    :goto_2
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_3

    .line 482
    move-object v5, v0

    check-cast v5, Lgnu/lists/Pair;

    .line 483
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lgnu/lists/LList;

    goto :goto_2

    .line 469
    .end local v0    # "list":Lgnu/lists/LList;
    :cond_3
    add-int/lit8 v6, v18, 0x1

    move/from16 v7, p1

    .end local v18    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 486
    .end local v6    # "j":I
    .end local p1    # "var_num":I
    .local v7, "var_num":I
    :cond_4
    return-object v17

    .line 488
    .end local v5    # "last":Lgnu/lists/Pair;
    .end local v7    # "var_num":I
    .end local v9    # "var":Ljava/lang/Object;
    .end local v10    # "count":I
    .end local v11    # "pc":I
    .end local v17    # "result":Lgnu/lists/LList;
    .local v1, "pc":I
    :cond_5
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v7 .. v13}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 489
    .local v0, "v":Ljava/lang/Object;
    new-instance v2, Lgnu/lists/Pair;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v0, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 5
    .param p1, "var_num"    # I
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "indexes"    # [I

    .line 436
    aget-object v0, p2, p1

    .line 437
    .local v0, "var":Ljava/lang/Object;
    iget-object v1, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 439
    iget-object v1, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    .line 440
    .local v1, "var_nesting":I
    const/4 v2, 0x0

    .local v2, "level":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 441
    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget v4, p3, v2

    aget-object v0, v3, v4

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "var_nesting":I
    .end local v2    # "level":I
    :cond_0
    return-object v0
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

    .line 590
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 591
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 592
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 593
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    .line 594
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

    .line 581
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 584
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 585
    return-void
.end method
