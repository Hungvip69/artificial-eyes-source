.class public Lkawa/standard/define_autoload;
.super Lkawa/lang/Syntax;
.source "define_autoload.java"


# static fields
.field public static final define_autoload:Lkawa/standard/define_autoload;

.field public static final define_autoloads_from_file:Lkawa/standard/define_autoload;


# instance fields
.field fromFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lkawa/standard/define_autoload;

    const-string v1, "define-autoload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoload:Lkawa/standard/define_autoload;

    .line 16
    new-instance v0, Lkawa/standard/define_autoload;

    const-string v1, "define-autoloads-from-file"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_autoload;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_autoload;->define_autoloads_from_file:Lkawa/standard/define_autoload;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fromFile"    # Z

    .line 23
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-boolean p2, p0, Lkawa/standard/define_autoload;->fromFile:Z

    .line 25
    return-void
.end method

.method public static findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 18
    .param p0, "in"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x1

    .line 144
    .local v2, "lineStart":Z
    const-string v3, ";;;###autoload"

    .line 145
    .local v3, "magic":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 149
    .local v4, "magicLength":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v5

    .line 150
    .local v5, "ch":I
    if-gez v5, :cond_0

    .line 151
    return-void

    .line 152
    :cond_0
    const/16 v6, 0xa

    if-eq v5, v6, :cond_12

    const/16 v7, 0xd

    if-ne v5, v7, :cond_1

    move-object/from16 v6, p1

    move-object/from16 v13, p2

    move/from16 v17, v2

    goto/16 :goto_9

    .line 158
    :cond_1
    if-eqz v2, :cond_e

    const/16 v8, 0x3b

    if-ne v5, v8, :cond_e

    .line 160
    const/4 v8, 0x0

    .line 163
    .local v8, "i":I
    :goto_1
    if-ne v8, v4, :cond_8

    .line 164
    nop

    .line 177
    if-lez v8, :cond_7

    .line 179
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 180
    .local v6, "form":Ljava/lang/Object;
    instance-of v7, v6, Lgnu/lists/Pair;

    if-eqz v7, :cond_6

    .line 182
    move-object v7, v6

    check-cast v7, Lgnu/lists/Pair;

    .line 183
    .local v7, "pair":Lgnu/lists/Pair;
    const/4 v9, 0x0

    .line 184
    .local v9, "value":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 185
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    .line 186
    .local v11, "car":Ljava/lang/Object;
    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_2
    instance-of v12, v11, Lgnu/mapping/Symbol;

    if-eqz v12, :cond_3

    move-object v12, v11

    check-cast v12, Lgnu/mapping/Symbol;

    invoke-virtual {v12}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 190
    .local v12, "command":Ljava/lang/String;
    :goto_2
    const-string v13, "defun"

    const/16 v14, 0x77

    if-ne v12, v13, :cond_4

    .line 192
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/lists/Pair;

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 193
    new-instance v13, Lkawa/lang/AutoloadProcedure;

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v15

    move-object/from16 v16, v6

    move-object/from16 v6, p1

    .end local v6    # "form":Ljava/lang/Object;
    .local v16, "form":Ljava/lang/Object;
    invoke-direct {v13, v10, v6, v15}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    move-object v9, v13

    goto :goto_3

    .line 197
    .end local v16    # "form":Ljava/lang/Object;
    .restart local v6    # "form":Ljava/lang/Object;
    :cond_4
    move-object/from16 v16, v6

    move-object/from16 v6, p1

    .end local v6    # "form":Ljava/lang/Object;
    .restart local v16    # "form":Ljava/lang/Object;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unsupported ;;;###autoload followed by: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v14, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 199
    :goto_3
    if-eqz v9, :cond_5

    .line 201
    move-object/from16 v13, p2

    invoke-virtual {v13, v10, v14, v1}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v14

    .line 202
    .local v14, "decl":Lgnu/expr/Declaration;
    new-instance v15, Lgnu/expr/QuoteExp;

    invoke-direct {v15, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 203
    .local v15, "ex":Lgnu/expr/Expression;
    move/from16 v17, v2

    .end local v2    # "lineStart":Z
    .local v17, "lineStart":Z
    const-wide/16 v1, 0x4000

    invoke-virtual {v14, v1, v2}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 204
    invoke-virtual {v14, v15}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 206
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v14, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_4

    .line 199
    .end local v14    # "decl":Lgnu/expr/Declaration;
    .end local v15    # "ex":Lgnu/expr/Expression;
    .end local v17    # "lineStart":Z
    .restart local v2    # "lineStart":Z
    :cond_5
    move-object/from16 v13, p2

    move/from16 v17, v2

    .end local v2    # "lineStart":Z
    .restart local v17    # "lineStart":Z
    goto :goto_4

    .line 180
    .end local v7    # "pair":Lgnu/lists/Pair;
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "car":Ljava/lang/Object;
    .end local v12    # "command":Ljava/lang/String;
    .end local v16    # "form":Ljava/lang/Object;
    .end local v17    # "lineStart":Z
    .restart local v2    # "lineStart":Z
    .restart local v6    # "form":Ljava/lang/Object;
    :cond_6
    move-object/from16 v13, p2

    move/from16 v17, v2

    move-object/from16 v16, v6

    move-object/from16 v6, p1

    .line 209
    .end local v2    # "lineStart":Z
    .end local v6    # "form":Ljava/lang/Object;
    .restart local v16    # "form":Ljava/lang/Object;
    .restart local v17    # "lineStart":Z
    :goto_4
    const/4 v2, 0x0

    .line 210
    .end local v17    # "lineStart":Z
    .restart local v2    # "lineStart":Z
    move-object/from16 v1, p3

    goto/16 :goto_0

    .line 177
    .end local v16    # "form":Ljava/lang/Object;
    :cond_7
    move-object/from16 v6, p1

    move-object/from16 v13, p2

    move/from16 v17, v2

    .end local v2    # "lineStart":Z
    .restart local v17    # "lineStart":Z
    goto :goto_6

    .line 165
    .end local v17    # "lineStart":Z
    .restart local v2    # "lineStart":Z
    :cond_8
    move-object/from16 v6, p1

    move-object/from16 v13, p2

    move/from16 v17, v2

    const/16 v1, 0xa

    .end local v2    # "lineStart":Z
    .restart local v17    # "lineStart":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v5

    .line 166
    if-gez v5, :cond_9

    .line 167
    return-void

    .line 168
    :cond_9
    if-eq v5, v1, :cond_d

    if-ne v5, v7, :cond_a

    goto :goto_5

    .line 173
    :cond_a
    if-ltz v8, :cond_c

    add-int/lit8 v2, v8, 0x1

    .end local v8    # "i":I
    .local v2, "i":I
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v5, v8, :cond_b

    .line 174
    move-object/from16 v1, p3

    move v8, v2

    move/from16 v2, v17

    const/16 v6, 0xa

    goto/16 :goto_1

    .line 175
    :cond_b
    const/4 v8, -0x1

    move-object/from16 v1, p3

    move/from16 v2, v17

    const/16 v6, 0xa

    .end local v2    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_1

    .line 173
    :cond_c
    move-object/from16 v1, p3

    move/from16 v2, v17

    const/16 v6, 0xa

    goto/16 :goto_1

    .line 170
    :cond_d
    :goto_5
    const/4 v2, 0x1

    .line 171
    .end local v17    # "lineStart":Z
    .local v2, "lineStart":Z
    move-object/from16 v1, p3

    goto/16 :goto_0

    .line 158
    .end local v8    # "i":I
    :cond_e
    move-object/from16 v6, p1

    move-object/from16 v13, p2

    move/from16 v17, v2

    .line 213
    .end local v2    # "lineStart":Z
    .restart local v17    # "lineStart":Z
    :goto_6
    const/4 v2, 0x0

    .line 214
    .end local v17    # "lineStart":Z
    .restart local v2    # "lineStart":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 215
    const/16 v1, 0x23

    if-ne v5, v1, :cond_f

    .line 217
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v7

    const/16 v8, 0x7c

    if-ne v7, v8, :cond_f

    .line 219
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 220
    invoke-virtual {v0, v1, v8}, Lgnu/kawa/lispexpr/LispReader;->readNestedComment(CC)V

    .line 221
    goto :goto_8

    .line 224
    :cond_f
    int-to-char v1, v5

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 225
    goto :goto_7

    .line 228
    :cond_10
    invoke-virtual {v0, v5}, Lgnu/kawa/lispexpr/LispReader;->readObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, "skipped":Ljava/lang/Object;
    sget-object v7, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v1, v7, :cond_11

    .line 230
    return-void

    .line 232
    .end local v1    # "skipped":Ljava/lang/Object;
    .end local v5    # "ch":I
    :cond_11
    :goto_7
    nop

    .line 149
    :goto_8
    move-object/from16 v1, p3

    goto/16 :goto_0

    .line 152
    .restart local v5    # "ch":I
    :cond_12
    move-object/from16 v6, p1

    move-object/from16 v13, p2

    move/from16 v17, v2

    .line 154
    .end local v2    # "lineStart":Z
    .restart local v17    # "lineStart":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    .line 155
    const/4 v2, 0x1

    .line 156
    .end local v17    # "lineStart":Z
    .restart local v2    # "lineStart":Z
    move-object/from16 v1, p3

    goto/16 :goto_0
.end method

.method public static process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 8
    .param p0, "names"    # Ljava/lang/Object;
    .param p1, "filename"    # Ljava/lang/Object;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 239
    instance-of v0, p0, Lgnu/lists/Pair;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 241
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    .line 242
    .local v0, "p":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 245
    .end local v0    # "p":Lgnu/lists/Pair;
    :cond_1
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_2

    .line 246
    return v2

    .line 270
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 285
    :cond_3
    return v1

    .line 272
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "name":Ljava/lang/String;
    const/16 v3, 0x77

    invoke-virtual {p3, v0, v3, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 274
    .local v3, "decl":Lgnu/expr/Declaration;
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, v4

    .local v5, "fn":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v6, v4

    .local v6, "len":I
    const/4 v7, 0x2

    if-le v4, v7, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_5

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_5

    .line 277
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 278
    .end local v5    # "fn":Ljava/lang/String;
    .end local v6    # "len":I
    :cond_5
    new-instance v1, Lkawa/lang/AutoloadProcedure;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-direct {v1, v0, v4, v5}, Lkawa/lang/AutoloadProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)V

    .line 280
    .local v1, "value":Ljava/lang/Object;
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 281
    .local v4, "ex":Lgnu/expr/Expression;
    const-wide/16 v5, 0x4000

    invoke-virtual {v3, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 282
    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 283
    return v2
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 16
    .param p1, "filespec"    # Ljava/lang/String;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 70
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v0, ".el"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 73
    :cond_0
    move-object v3, v0

    .line 75
    .end local v0    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "filename":Ljava/lang/String;
    const/16 v0, 0x2e

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 78
    .local v5, "dot":I
    const/4 v6, 0x1

    if-ltz v5, :cond_4

    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "extension":Ljava/lang/String;
    invoke-static {v7}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v8

    .line 82
    .local v8, "language":Lgnu/expr/Language;
    if-nez v8, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown extension for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 85
    return v6

    .line 106
    :cond_1
    iget-object v9, v2, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    .line 107
    .local v9, "prefix":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    .line 108
    .local v10, "extlen":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 109
    .local v11, "speclen":I
    sub-int v12, v11, v10

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "cname":Ljava/lang/String;
    :goto_1
    const-string v14, "../"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 112
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v9, v0, v14}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v14

    .line 113
    .local v14, "i":I
    if-gez v14, :cond_2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot use relative filename \""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\" with simple prefix \""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 117
    return v13

    .line 119
    :cond_2
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v9, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 120
    const/4 v15, 0x3

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 121
    .end local v14    # "i":I
    goto :goto_1

    .line 122
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 126
    .local v13, "classname":Ljava/lang/String;
    const/4 v14, 0x0

    :try_start_0
    invoke-static {v4}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v0

    .line 127
    .local v0, "port":Lgnu/mapping/InPort;
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v15

    invoke-virtual {v8, v0, v15}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    .local v14, "lexer":Lgnu/text/Lexer;
    :try_start_1
    move-object v15, v14

    check-cast v15, Lgnu/kawa/lispexpr/LispReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v6, p2

    :try_start_2
    invoke-static {v15, v13, v6, v2}, Lkawa/standard/define_autoload;->findAutoloadComments(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    .end local v0    # "port":Lgnu/mapping/InPort;
    const/4 v1, 0x1

    goto :goto_3

    .line 130
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_2

    .end local v14    # "lexer":Lgnu/text/Lexer;
    :catch_2
    move-exception v0

    move-object/from16 v6, p2

    .line 132
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v14    # "lexer":Lgnu/text/Lexer;
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error reading "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ": "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 133
    const/4 v1, 0x1

    return v1

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v7    # "extension":Ljava/lang/String;
    .end local v8    # "language":Lgnu/expr/Language;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "extlen":I
    .end local v11    # "speclen":I
    .end local v12    # "cname":Ljava/lang/String;
    .end local v13    # "classname":Ljava/lang/String;
    .end local v14    # "lexer":Lgnu/text/Lexer;
    :cond_4
    move-object/from16 v6, p2

    const/4 v1, 0x1

    .line 136
    :goto_3
    return v1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 5
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 30
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v0

    return v0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 33
    .local v0, "p":Lgnu/lists/Pair;
    iget-boolean v1, p0, Lkawa/standard/define_autoload;->fromFile:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 38
    :goto_0
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 39
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lkawa/standard/define_autoload;->scanFile(Ljava/lang/String;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    return v2

    .line 46
    :cond_2
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 47
    .local v1, "rest":Ljava/lang/Object;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v3, :cond_3

    .line 48
    const/4 v2, 0x1

    return v2

    .line 49
    :cond_3
    instance-of v3, v1, Lgnu/lists/Pair;

    if-nez v3, :cond_4

    .line 50
    nop

    .line 53
    .end local v1    # "rest":Ljava/lang/Object;
    :goto_1
    const-string v1, "invalid syntax for define-autoloads-from-file"

    invoke-virtual {p4, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 54
    return v2

    .line 51
    .restart local v1    # "rest":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    .line 52
    .end local v1    # "rest":Ljava/lang/Object;
    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "names":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 58
    .local v3, "filename":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_6

    .line 60
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    .line 61
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .end local v3    # "filename":Ljava/lang/Object;
    .local v2, "filename":Ljava/lang/Object;
    invoke-static {v1, v2, p2, p3, p4}, Lkawa/standard/define_autoload;->process(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v3

    return v3

    .line 64
    .end local v2    # "filename":Ljava/lang/Object;
    .restart local v3    # "filename":Ljava/lang/Object;
    :cond_6
    const-string v4, "invalid syntax for define-autoload"

    invoke-virtual {p4, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 65
    return v2
.end method
