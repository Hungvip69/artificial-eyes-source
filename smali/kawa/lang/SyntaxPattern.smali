.class public Lkawa/lang/SyntaxPattern;
.super Lkawa/lang/Pattern;
.source "SyntaxPattern.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final MATCH_ANY:I = 0x3

.field static final MATCH_ANY_CAR:I = 0x7

.field static final MATCH_EQUALS:I = 0x2

.field static final MATCH_IGNORE:I = 0x18

.field static final MATCH_LENGTH:I = 0x6

.field static final MATCH_LREPEAT:I = 0x5

.field static final MATCH_MISC:I = 0x0

.field static final MATCH_NIL:I = 0x8

.field static final MATCH_PAIR:I = 0x4

.field static final MATCH_VECTOR:I = 0x10

.field static final MATCH_WIDE:I = 0x1


# instance fields
.field literals:[Ljava/lang/Object;

.field program:Ljava/lang/String;

.field varCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 6
    .param p1, "pattern"    # Ljava/lang/Object;
    .param p2, "literal_identifiers"    # [Ljava/lang/Object;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 114
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "program"    # Ljava/lang/String;
    .param p2, "literals"    # [Ljava/lang/Object;
    .param p3, "varCount"    # I

    .line 105
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 106
    iput-object p1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 108
    iput p3, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 10
    .param p1, "programbuf"    # Ljava/lang/StringBuffer;
    .param p2, "pattern"    # Ljava/lang/Object;
    .param p3, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p4, "literal_identifiers"    # [Ljava/lang/Object;
    .param p5, "tr"    # Lkawa/lang/Translator;

    .line 121
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 122
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 123
    .local v0, "literalsbuf":Ljava/util/Vector;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v6, v0

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 126
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 128
    iget-object v1, p5, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v1, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 154
    return-void
.end method

.method private static addInt(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "val"    # I

    .line 408
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 409
    shl-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 410
    :cond_0
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    return-void
.end method

.method public static allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "varCount"    # I
    .param p1, "outer"    # [Ljava/lang/Object;

    .line 632
    new-array v0, p0, [Ljava/lang/Object;

    .line 633
    .local v0, "vars":[Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 634
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    :cond_0
    return-object v0
.end method

.method public static getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 10
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 670
    invoke-virtual {p2, p0}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 671
    .local v0, "savePos":Ljava/lang/Object;
    invoke-static {p0}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v1

    .line 672
    .local v1, "count":I
    const/16 v2, 0x65

    if-gez v1, :cond_0

    .line 674
    const-string v3, "missing or malformed literals list"

    invoke-virtual {p2, v2, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 675
    const/4 v1, 0x0

    .line 677
    :cond_0
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 678
    .local v3, "literals":[Ljava/lang/Object;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_4

    .line 680
    :goto_1
    instance-of v5, p0, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 682
    move-object p1, p0

    check-cast p1, Lkawa/lang/SyntaxForm;

    .line 683
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 685
    :cond_1
    move-object v5, p0

    check-cast v5, Lgnu/lists/Pair;

    .line 686
    .local v5, "pair":Lgnu/lists/Pair;
    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 689
    .local v6, "literal":Ljava/lang/Object;
    instance-of v7, v6, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_2

    .line 691
    move-object v7, v6

    .line 692
    .local v7, "wrapped":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Lkawa/lang/SyntaxForm;

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 695
    .end local v7    # "wrapped":Ljava/lang/Object;
    :cond_2
    move-object v7, v6

    .line 696
    .restart local v7    # "wrapped":Ljava/lang/Object;
    :goto_2
    instance-of v8, v6, Lgnu/mapping/Symbol;

    if-nez v8, :cond_3

    .line 697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "non-symbol \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in literals list"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v2, v8}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 698
    :cond_3
    aput-object v7, v3, v4

    .line 699
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 678
    .end local v5    # "pair":Lgnu/lists/Pair;
    .end local v6    # "literal":Ljava/lang/Object;
    .end local v7    # "wrapped":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 701
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 702
    return-object v3
.end method

.method private static insertInt(ILjava/lang/StringBuffer;I)I
    .locals 1
    .param p0, "offset"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "val"    # I

    .line 415
    const v0, 0xffff

    if-le p2, v0, :cond_0

    .line 416
    shl-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v0

    add-int/2addr p0, v0

    .line 417
    :cond_0
    int-to-char v0, p2

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 418
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z
    .locals 5
    .param p0, "id1"    # Ljava/lang/Object;
    .param p1, "sc1"    # Lgnu/expr/ScopeExp;
    .param p2, "id2"    # Ljava/lang/Object;
    .param p3, "sc2"    # Lgnu/expr/ScopeExp;

    .line 641
    const/4 v0, 0x0

    if-eq p0, p2, :cond_1

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    :cond_0
    return v0

    .line 643
    :cond_1
    const/4 v1, 0x1

    if-ne p1, p3, :cond_2

    .line 644
    return v1

    .line 645
    :cond_2
    const/4 v2, 0x0

    .local v2, "d1":Lgnu/expr/Declaration;
    const/4 v3, 0x0

    .line 649
    .local v3, "d2":Lgnu/expr/Declaration;
    :goto_0
    if-eqz p1, :cond_4

    instance-of v4, p1, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_4

    .line 651
    invoke-virtual {p1, p0}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 652
    if-eqz v2, :cond_3

    .line 653
    goto :goto_1

    .line 654
    :cond_3
    iget-object p1, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0

    .line 656
    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    instance-of v4, p3, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_6

    .line 658
    invoke-virtual {p3, p2}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 659
    if-eqz v3, :cond_5

    .line 660
    goto :goto_2

    .line 661
    :cond_5
    iget-object p3, p3, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1

    .line 663
    :cond_6
    :goto_2
    if-ne v2, v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method


# virtual methods
.method public disassemble()V
    .locals 4

    .line 158
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v1

    check-cast v1, Lkawa/lang/Translator;

    iget-object v2, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 160
    return-void
.end method

.method public disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;)V
    .locals 2
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 164
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 165
    return-void
.end method

.method disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V
    .locals 10
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "tr"    # Lkawa/lang/Translator;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "pattern_names":Ljava/util/Vector;
    if-eqz p2, :cond_0

    iget-object v1, p2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p2, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 173
    .local v1, "value":I
    move v2, p3

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_8

    .line 175
    iget-object v3, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 176
    .local v3, "ch":C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    .line 178
    and-int/lit8 v4, v3, 0x7

    .line 179
    .local v4, "opcode":I
    shl-int/lit8 v6, v1, 0xd

    shr-int/lit8 v7, v3, 0x3

    or-int v1, v6, v7

    .line 180
    const/4 v6, 0x3

    const-string v7, "]"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    .line 211
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - LENGTH "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pairs. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_1

    const-string v6, "pure list"

    goto :goto_1

    :cond_1
    const-string v6, "impure list"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    goto/16 :goto_4

    .line 204
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - LREPEAT["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    add-int v7, v2, v1

    invoke-virtual {p0, p1, p2, v2, v7}, Lkawa/lang/SyntaxPattern;->disassemble(Ljava/io/PrintWriter;Lkawa/lang/Translator;II)V

    .line 206
    add-int/2addr v2, v1

    .line 207
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": - repeat first var:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "i":I
    .local v9, "i":I
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/2addr v2, v6

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": - repeast nested vars:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v7, v9, 0x1

    .end local v9    # "i":I
    .local v7, "i":I
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shr-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    move v2, v7

    goto/16 :goto_4

    .line 201
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - PAIR["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    goto/16 :goto_4

    .line 193
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v4, v6, :cond_2

    const-string v6, " - ANY["

    goto :goto_2

    :cond_2
    const-string v6, " - ANY_CAR["

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 198
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 199
    goto/16 :goto_4

    .line 186
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - EQUALS["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    if-eqz v5, :cond_4

    if-ltz v1, :cond_4

    iget-object v5, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 188
    iget-object v5, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 189
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 190
    goto/16 :goto_4

    .line 183
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - WIDE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    goto/16 :goto_0

    .line 215
    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[misc ch:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " n:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    if-ne v3, v6, :cond_5

    .line 218
    const-string v5, " - NIL"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    goto :goto_4

    .line 221
    :cond_5
    const/16 v5, 0x10

    if-ne v3, v5, :cond_6

    .line 223
    const-string v5, " - VECTOR"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    goto :goto_4

    .line 226
    :cond_6
    const/16 v5, 0x18

    if-ne v3, v5, :cond_7

    .line 228
    const-string v5, " - IGNORE"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    goto :goto_4

    .line 232
    :cond_7
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    :goto_4
    const/4 v1, 0x0

    .line 236
    .end local v3    # "ch":C
    .end local v4    # "opcode":I
    goto/16 :goto_0

    .line 237
    .end local v2    # "i":I
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I

    .line 79
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    .line 101
    .local v0, "r":Z
    return v0
.end method

.method public match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 21

    .line 446
    move-object/from16 v6, p0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v8, p5

    const/4 v2, 0x0

    .line 450
    :goto_0
    instance-of v3, v0, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 452
    move-object v8, v0

    check-cast v8, Lkawa/lang/SyntaxForm;

    .line 453
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 455
    :cond_0
    iget-object v4, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 456
    and-int/lit8 v4, v1, 0x7

    .line 457
    shl-int/lit8 v2, v2, 0xd

    shr-int/lit8 v5, v1, 0x3

    or-int v10, v2, v5

    .line 458
    const/16 v2, 0x8

    const/4 v11, 0x1

    packed-switch v4, :pswitch_data_0

    .line 608
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/SyntaxPattern;->disassemble()V

    .line 609
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized pattern opcode @pc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :pswitch_1
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7

    .line 479
    :pswitch_2
    shr-int/lit8 v1, v10, 0x1

    .line 480
    nop

    .line 481
    move-object v2, v0

    const/4 v3, 0x0

    .line 483
    :goto_1
    instance-of v4, v2, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_2

    .line 484
    check-cast v2, Lkawa/lang/SyntaxForm;

    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 485
    :cond_2
    if-ne v3, v1, :cond_5

    .line 487
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v1, :cond_4

    goto :goto_2

    :cond_3
    instance-of v1, v2, Lgnu/lists/Pair;

    if-eqz v1, :cond_4

    .line 488
    :goto_2
    return v7

    .line 496
    :cond_4
    nop

    .line 497
    move v1, v9

    const/4 v2, 0x0

    goto :goto_0

    .line 491
    :cond_5
    instance-of v4, v2, Lgnu/lists/Pair;

    if-eqz v4, :cond_6

    .line 492
    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    :cond_6
    return v7

    .line 509
    :pswitch_3
    nop

    .line 510
    add-int/2addr v10, v9

    .line 511
    iget-object v1, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shr-int/lit8 v4, v1, 0x3

    .line 512
    :goto_3
    and-int/lit8 v5, v1, 0x7

    if-ne v5, v11, :cond_7

    .line 513
    shl-int/lit8 v1, v4, 0xd

    iget-object v4, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v4, v3, 0x3

    or-int/2addr v4, v1

    move v1, v3

    move v3, v5

    goto :goto_3

    .line 514
    :cond_7
    add-int v10, v4, p3

    .line 515
    iget-object v4, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    move v12, v3

    .line 516
    :goto_4
    and-int/lit8 v1, v1, 0x7

    if-ne v1, v11, :cond_8

    .line 517
    shl-int/lit8 v1, v12, 0xd

    iget-object v3, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shr-int/lit8 v5, v3, 0x3

    or-int v12, v1, v5

    move v1, v3

    move v5, v4

    goto :goto_4

    .line 519
    :cond_8
    iget-object v1, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 520
    nop

    .line 522
    if-ne v1, v2, :cond_9

    .line 524
    move v14, v3

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto :goto_7

    .line 528
    :cond_9
    shr-int/lit8 v2, v1, 0x3

    .line 529
    :goto_5
    and-int/lit8 v1, v1, 0x7

    if-ne v1, v11, :cond_a

    .line 530
    shl-int/lit8 v1, v2, 0xd

    iget-object v2, v6, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shr-int/lit8 v3, v2, 0x3

    or-int/2addr v1, v3

    move v3, v4

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    goto :goto_5

    .line 531
    :cond_a
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_b

    .line 532
    const/4 v1, 0x0

    goto :goto_6

    .line 531
    :cond_b
    const/4 v1, 0x1

    .line 533
    :goto_6
    shr-int/lit8 v2, v2, 0x1

    move v13, v1

    move v15, v2

    move v14, v3

    .line 535
    :goto_7
    invoke-static {v0}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v1

    .line 538
    if-ltz v1, :cond_c

    .line 539
    const/4 v2, 0x1

    goto :goto_8

    .line 542
    :cond_c
    nop

    .line 543
    rsub-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 545
    :goto_8
    if-lt v1, v15, :cond_15

    if-eqz v13, :cond_d

    if-nez v2, :cond_d

    goto/16 :goto_e

    .line 547
    :cond_d
    sub-int v5, v1, v15

    .line 548
    new-array v4, v12, [[Ljava/lang/Object;

    .line 550
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v12, :cond_e

    .line 551
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 552
    :cond_e
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v5, :cond_12

    .line 554
    :goto_b
    instance-of v1, v0, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_f

    .line 556
    move-object v8, v0

    check-cast v8, Lkawa/lang/SyntaxForm;

    .line 557
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    .line 559
    :cond_f
    move-object/from16 v16, v0

    check-cast v16, Lgnu/lists/Pair;

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move/from16 v17, v3

    move/from16 v3, p3

    move-object/from16 v18, v4

    move v4, v9

    move/from16 v19, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 561
    return v7

    .line 562
    :cond_10
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 563
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v12, :cond_11

    .line 564
    aget-object v2, v18, v1

    add-int v3, v10, v1

    aget-object v3, p2, v3

    aput-object v3, v2, v17

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 552
    :cond_11
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto :goto_a

    .line 566
    :cond_12
    move-object/from16 v18, v4

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v12, :cond_13

    .line 567
    add-int v2, v10, v1

    aget-object v3, v18, v1

    aput-object v3, p2, v2

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 568
    :cond_13
    nop

    .line 569
    if-nez v15, :cond_14

    if-eqz v13, :cond_14

    .line 570
    return v11

    .line 450
    :cond_14
    move v1, v14

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 546
    :cond_15
    :goto_e
    return v7

    .line 499
    :pswitch_4
    instance-of v1, v0, Lgnu/lists/Pair;

    if-nez v1, :cond_16

    .line 500
    return v7

    .line 501
    :cond_16
    move-object v11, v0

    check-cast v11, Lgnu/lists/Pair;

    .line 502
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v4, v9

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 503
    return v7

    .line 504
    :cond_17
    add-int v1, v9, v10

    .line 505
    nop

    .line 506
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 507
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 602
    :pswitch_5
    if-eqz v8, :cond_18

    .line 603
    invoke-static {v0, v8}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    :cond_18
    add-int v1, p3, v10

    aput-object v0, p2, v1

    .line 605
    return v11

    .line 573
    :pswitch_6
    iget-object v1, v6, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    aget-object v1, v1, v10

    .line 576
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v2

    check-cast v2, Lkawa/lang/Translator;

    .line 577
    instance-of v4, v1, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_19

    .line 579
    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 580
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    .line 581
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v1

    .line 582
    move-object/from16 v20, v4

    move-object v4, v1

    move-object/from16 v1, v20

    goto :goto_f

    .line 585
    :cond_19
    nop

    .line 586
    invoke-virtual {v2}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v4

    .line 587
    instance-of v5, v4, Lkawa/lang/Macro;

    if-eqz v5, :cond_1a

    check-cast v4, Lkawa/lang/Macro;

    invoke-virtual {v4}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v4

    goto :goto_f

    :cond_1a
    const/4 v4, 0x0

    .line 589
    :goto_f
    if-eqz v3, :cond_1b

    .line 591
    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 592
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    .line 593
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v0

    .line 594
    move-object/from16 v20, v2

    move-object v2, v0

    move-object/from16 v0, v20

    goto :goto_10

    .line 597
    :cond_1b
    nop

    .line 598
    if-nez v8, :cond_1c

    invoke-virtual {v2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    goto :goto_10

    :cond_1c
    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    .line 600
    :goto_10
    invoke-static {v1, v4, v0, v2}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v0

    return v0

    .line 461
    :pswitch_7
    move v1, v9

    move v2, v10

    goto/16 :goto_0

    .line 463
    :pswitch_8
    if-ne v1, v2, :cond_1e

    .line 464
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_1d

    const/4 v7, 0x1

    :cond_1d
    return v7

    .line 465
    :cond_1e
    const/16 v2, 0x10

    if-ne v1, v2, :cond_20

    .line 467
    instance-of v1, v0, Lgnu/lists/FVector;

    if-nez v1, :cond_1f

    .line 468
    return v7

    .line 469
    :cond_1f
    check-cast v0, Lgnu/lists/FVector;

    invoke-static {v0}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v4, v9

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    return v0

    .line 472
    :cond_20
    const/16 v0, 0x18

    if-ne v1, v0, :cond_21

    .line 473
    return v11

    .line 475
    :cond_21
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unknwon pattern opcode"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method match_car(Lgnu/lists/Pair;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z
    .locals 8
    .param p1, "p"    # Lgnu/lists/Pair;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I
    .param p4, "pc"    # I
    .param p5, "syntax"    # Lkawa/lang/SyntaxForm;

    .line 428
    move v4, p4

    .line 430
    .local v4, "pc_start":I
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v1, p4, 0x1

    .end local p4    # "pc":I
    .local v1, "pc":I
    invoke-virtual {v0, p4}, Ljava/lang/String;->charAt(I)C

    move-result p4

    move v0, p4

    .local v0, "ch":C
    shr-int/lit8 p4, p4, 0x3

    move v6, v0

    move v7, v1

    .line 431
    .end local v0    # "ch":C
    .end local v1    # "pc":I
    .local v6, "ch":C
    .local v7, "pc":I
    .local p4, "value":I
    :goto_0
    and-int/lit8 v0, v6, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    shl-int/lit8 v0, p4, 0xd

    iget-object v1, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    add-int/lit8 v2, v7, 0x1

    .end local v7    # "pc":I
    .local v2, "pc":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v6, v1

    shr-int/lit8 v1, v1, 0x3

    or-int p4, v0, v1

    move v7, v2

    goto :goto_0

    .line 433
    .end local v2    # "pc":I
    .restart local v7    # "pc":I
    :cond_0
    and-int/lit8 v0, v6, 0x7

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 435
    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    if-nez v0, :cond_1

    .line 436
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p5}, Lkawa/lang/SyntaxForms;->fromDatum(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 437
    :cond_1
    add-int v0, p3, p4

    aput-object p1, p2, v0

    .line 438
    return v1

    .line 440
    :cond_2
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/SyntaxPattern;->match(Ljava/lang/Object;[Ljava/lang/Object;IILkawa/lang/SyntaxForm;)Z

    move-result v0

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 707
    const-string v0, "#<syntax-pattern>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 708
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

    .line 624
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    .line 625
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    .line 626
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    .line 627
    return-void
.end method

.method translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V
    .locals 27
    .param p1, "pattern"    # Ljava/lang/Object;
    .param p2, "program"    # Ljava/lang/StringBuffer;
    .param p3, "literal_identifiers"    # [Ljava/lang/Object;
    .param p4, "nesting"    # I
    .param p5, "literals"    # Ljava/util/Vector;
    .param p6, "syntax"    # Lkawa/lang/SyntaxForm;
    .param p7, "context"    # C
    .param p8, "tr"    # Lkawa/lang/Translator;

    .line 250
    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p8

    iget-object v14, v13, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    .line 251
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    iget-object v15, v14, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    move-object/from16 v9, p1

    move-object/from16 v1, p6

    move/from16 v2, p7

    .line 254
    .end local p1    # "pattern":Ljava/lang/Object;
    .end local p6    # "syntax":Lkawa/lang/SyntaxForm;
    .end local p7    # "context":C
    .local v1, "syntax":Lkawa/lang/SyntaxForm;
    .local v2, "context":C
    .local v9, "pattern":Ljava/lang/Object;
    .local v15, "patternNames":Ljava/util/Vector;
    :goto_0
    instance-of v0, v9, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 256
    move-object v1, v9

    check-cast v1, Lkawa/lang/SyntaxForm;

    .line 257
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 259
    :cond_0
    instance-of v0, v9, Lgnu/lists/Pair;

    const/16 v16, 0x3

    const/16 v17, 0x1

    if-eqz v0, :cond_d

    .line 261
    invoke-virtual {v13, v9}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 264
    .local v6, "savePos":Ljava/lang/Object;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 265
    .local v0, "start_pc":I
    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    move-object v7, v9

    check-cast v7, Lgnu/lists/Pair;

    move-object/from16 v18, v7

    .line 267
    .local v18, "pair":Lgnu/lists/Pair;
    move-object v7, v1

    .line 268
    .local v7, "car_syntax":Lkawa/lang/SyntaxForm;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    .line 269
    .local v3, "next":Ljava/lang/Object;
    :goto_1
    instance-of v5, v3, Lkawa/lang/SyntaxForm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v5, :cond_1

    .line 271
    :try_start_1
    move-object v5, v3

    check-cast v5, Lkawa/lang/SyntaxForm;

    move-object v1, v5

    .line 272
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    const/4 v5, 0x4

    goto :goto_1

    .line 332
    .end local v0    # "start_pc":I
    .end local v3    # "next":Ljava/lang/Object;
    .end local v7    # "car_syntax":Lkawa/lang/SyntaxForm;
    .end local v18    # "pair":Lgnu/lists/Pair;
    :catchall_0
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    goto/16 :goto_a

    .line 274
    .restart local v0    # "start_pc":I
    .restart local v3    # "next":Ljava/lang/Object;
    .restart local v7    # "car_syntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "pair":Lgnu/lists/Pair;
    :cond_1
    const/4 v5, 0x0

    .line 275
    .local v5, "repeat":Z
    :try_start_2
    instance-of v8, v3, Lgnu/lists/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v8, :cond_3

    :try_start_3
    move-object v8, v3

    check-cast v8, Lgnu/lists/Pair;

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    const-string v4, "..."

    invoke-virtual {v13, v8, v4}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    const/4 v5, 0x1

    .line 279
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 280
    :goto_2
    nop

    instance-of v4, v3, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_2

    .line 282
    move-object v4, v3

    check-cast v4, Lkawa/lang/SyntaxForm;

    move-object v1, v4

    .line 283
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v4

    goto :goto_2

    .line 280
    :cond_2
    move-object/from16 v20, v1

    move-object v8, v3

    move/from16 v21, v5

    goto :goto_3

    .line 287
    :cond_3
    move-object/from16 v20, v1

    move-object v8, v3

    move/from16 v21, v5

    .end local v1    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v3    # "next":Ljava/lang/Object;
    .end local v5    # "repeat":Z
    .local v8, "next":Ljava/lang/Object;
    .local v20, "syntax":Lkawa/lang/SyntaxForm;
    .local v21, "repeat":Z
    :goto_3
    :try_start_4
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v22, v1

    .line 288
    .local v22, "subvar0":I
    const/16 v1, 0x50

    if-ne v2, v1, :cond_4

    .line 289
    const/4 v1, 0x0

    move v5, v1

    .end local v2    # "context":C
    .local v1, "context":C
    goto :goto_4

    .line 288
    .end local v1    # "context":C
    .restart local v2    # "context":C
    :cond_4
    move v5, v2

    .line 290
    .end local v2    # "context":C
    .local v5, "context":C
    :goto_4
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v21, :cond_5

    add-int/lit8 v1, p4, 0x1

    move/from16 v23, v1

    goto :goto_5

    :cond_5
    move/from16 v23, p4

    :goto_5
    const/16 v1, 0x56

    if-ne v5, v1, :cond_6

    const/16 v19, 0x0

    goto :goto_6

    :cond_6
    const/16 v19, 0x50

    :goto_6
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v25, v5

    const/16 v24, 0x4

    .end local v5    # "context":C
    .local v25, "context":C
    move/from16 v5, v23

    move-object/from16 v23, v14

    move-object v14, v6

    .end local v6    # "savePos":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .local v23, "patternScope":Lkawa/lang/PatternScope;
    move-object/from16 v6, p5

    move-object/from16 p1, v8

    const/16 v12, 0x8

    .end local v8    # "next":Ljava/lang/Object;
    .local p1, "next":Ljava/lang/Object;
    move/from16 v8, v19

    move-object/from16 v26, v9

    .end local v9    # "pattern":Ljava/lang/Object;
    .local v26, "pattern":Ljava/lang/Object;
    move-object/from16 v9, p8

    :try_start_6
    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxPattern;->translate(Ljava/lang/Object;Ljava/lang/StringBuffer;[Ljava/lang/Object;ILjava/util/Vector;Lkawa/lang/SyntaxForm;CLkawa/lang/Translator;)V

    .line 294
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int v1, v1, v22

    .line 295
    .local v1, "subvarN":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v2, v2, 0x3

    if-eqz v21, :cond_7

    const/4 v5, 0x5

    goto :goto_7

    :cond_7
    const/4 v5, 0x4

    :goto_7
    or-int/2addr v2, v5

    .line 297
    .local v2, "width":I
    const v3, 0xffff

    if-le v2, v3, :cond_8

    .line 298
    shr-int/lit8 v3, v2, 0xd

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v10, v3}, Lkawa/lang/SyntaxPattern;->insertInt(ILjava/lang/StringBuffer;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 300
    :cond_8
    int-to-char v3, v2

    invoke-virtual {v10, v0, v3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 302
    invoke-static/range {p1 .. p1}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v3

    .line 303
    .local v3, "restLength":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_9

    .line 305
    const-string v4, "cyclic pattern list"

    invoke-virtual {v13, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 332
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-void

    .line 309
    :cond_9
    if-eqz v21, :cond_c

    .line 311
    shl-int/lit8 v4, v22, 0x3

    :try_start_7
    invoke-static {v10, v4}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 312
    shl-int/lit8 v4, v1, 0x3

    invoke-static {v10, v4}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 313
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v5, p1

    .end local p1    # "next":Ljava/lang/Object;
    .local v5, "next":Ljava/lang/Object;
    if-ne v5, v4, :cond_a

    .line 315
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 332
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-void

    .line 321
    :cond_a
    if-ltz v3, :cond_b

    shl-int/lit8 v4, v3, 0x1

    goto :goto_8

    :cond_b
    neg-int v4, v3

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_8
    move v3, v4

    .line 323
    shl-int/lit8 v4, v3, 0x3

    or-int/lit8 v4, v4, 0x6

    :try_start_8
    invoke-static {v10, v4}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    .line 309
    .end local v5    # "next":Ljava/lang/Object;
    .restart local p1    # "next":Ljava/lang/Object;
    :cond_c
    move-object/from16 v5, p1

    .line 327
    .end local p1    # "next":Ljava/lang/Object;
    .restart local v5    # "next":Ljava/lang/Object;
    :goto_9
    move-object v9, v5

    .line 332
    .end local v26    # "pattern":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v12, p5

    move-object/from16 v1, v20

    move-object/from16 v14, v23

    move/from16 v2, v25

    goto/16 :goto_0

    .end local v0    # "start_pc":I
    .end local v1    # "subvarN":I
    .end local v2    # "width":I
    .end local v3    # "restLength":I
    .end local v5    # "next":Ljava/lang/Object;
    .end local v7    # "car_syntax":Lkawa/lang/SyntaxForm;
    .end local v9    # "pattern":Ljava/lang/Object;
    .end local v18    # "pair":Lgnu/lists/Pair;
    .end local v21    # "repeat":Z
    .end local v22    # "subvar0":I
    .restart local v26    # "pattern":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object/from16 v1, v20

    move/from16 v2, v25

    goto :goto_a

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v25    # "context":C
    .end local v26    # "pattern":Ljava/lang/Object;
    .local v5, "context":C
    .restart local v6    # "savePos":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :catchall_2
    move-exception v0

    move/from16 v25, v5

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    move-object/from16 v1, v20

    move/from16 v2, v25

    .end local v5    # "context":C
    .end local v6    # "savePos":Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v25    # "context":C
    .restart local v26    # "pattern":Ljava/lang/Object;
    goto :goto_a

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v25    # "context":C
    .end local v26    # "pattern":Ljava/lang/Object;
    .local v2, "context":C
    .restart local v6    # "savePos":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :catchall_3
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    move-object/from16 v1, v20

    .end local v6    # "savePos":Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v26    # "pattern":Ljava/lang/Object;
    goto :goto_a

    .end local v20    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v26    # "pattern":Ljava/lang/Object;
    .local v1, "syntax":Lkawa/lang/SyntaxForm;
    .restart local v6    # "savePos":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :catchall_4
    move-exception v0

    move-object/from16 v26, v9

    move-object/from16 v23, v14

    move-object v14, v6

    .end local v6    # "savePos":Ljava/lang/Object;
    .end local v9    # "pattern":Ljava/lang/Object;
    .local v14, "savePos":Ljava/lang/Object;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v26    # "pattern":Ljava/lang/Object;
    :goto_a
    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v0

    .line 335
    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .end local v26    # "pattern":Ljava/lang/Object;
    .restart local v9    # "pattern":Ljava/lang/Object;
    .local v14, "patternScope":Lkawa/lang/PatternScope;
    :cond_d
    move-object/from16 v26, v9

    move-object/from16 v23, v14

    const/16 v12, 0x8

    .end local v14    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    instance-of v0, v9, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_18

    .line 337
    array-length v0, v11

    .local v0, "j":I
    :goto_b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 339
    invoke-virtual/range {p8 .. p8}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v3

    .line 340
    .local v3, "current":Lgnu/expr/ScopeExp;
    if-nez v1, :cond_e

    move-object v4, v3

    goto :goto_c

    :cond_e
    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v4

    .line 342
    .local v4, "scope1":Lgnu/expr/ScopeExp;
    :goto_c
    aget-object v5, v11, v0

    .line 343
    .local v5, "literal":Ljava/lang/Object;
    instance-of v6, v5, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_f

    .line 345
    move-object v6, v5

    check-cast v6, Lkawa/lang/SyntaxForm;

    .line 347
    .local v6, "syntax2":Lkawa/lang/SyntaxForm;
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    .line 348
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v6

    .line 349
    .local v6, "scope2":Lgnu/expr/ScopeExp;
    goto :goto_d

    .line 350
    .end local v6    # "scope2":Lgnu/expr/ScopeExp;
    :cond_f
    iget-object v6, v13, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    if-eqz v6, :cond_10

    .line 351
    iget-object v6, v13, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    invoke-virtual {v6}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v6

    .restart local v6    # "scope2":Lgnu/expr/ScopeExp;
    goto :goto_d

    .line 353
    .end local v6    # "scope2":Lgnu/expr/ScopeExp;
    :cond_10
    move-object v6, v3

    .line 354
    .restart local v6    # "scope2":Lgnu/expr/ScopeExp;
    :goto_d
    invoke-static {v9, v4, v5, v6}, Lkawa/lang/SyntaxPattern;->literalIdentifierEq(Ljava/lang/Object;Lgnu/expr/ScopeExp;Ljava/lang/Object;Lgnu/expr/ScopeExp;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 357
    move-object/from16 v7, p5

    invoke-static {v7, v9}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v8

    .line 358
    .local v8, "i":I
    if-gez v8, :cond_11

    .line 360
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v8

    .line 361
    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 363
    :cond_11
    shl-int/lit8 v12, v8, 0x3

    or-int/lit8 v12, v12, 0x2

    invoke-static {v10, v12}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 364
    return-void

    .line 354
    .end local v8    # "i":I
    :cond_12
    move-object/from16 v7, p5

    .line 366
    .end local v3    # "current":Lgnu/expr/ScopeExp;
    .end local v4    # "scope1":Lgnu/expr/ScopeExp;
    .end local v5    # "literal":Ljava/lang/Object;
    .end local v6    # "scope2":Lgnu/expr/ScopeExp;
    goto :goto_b

    .line 337
    :cond_13
    move-object/from16 v7, p5

    .line 367
    .end local v0    # "j":I
    invoke-virtual {v15, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicated pattern variable "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 369
    :cond_14
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v0

    .line 370
    .local v0, "i":I
    invoke-virtual {v15, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 371
    const/16 v3, 0x50

    if-ne v2, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_e

    :cond_15
    const/4 v3, 0x0

    .line 372
    .local v3, "matchCar":Z
    :goto_e
    shl-int/lit8 v4, p4, 0x1

    if-eqz v3, :cond_16

    goto :goto_f

    :cond_16
    const/16 v17, 0x0

    :goto_f
    add-int v4, v4, v17

    .line 373
    .local v4, "n":I
    move-object/from16 v5, v23

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .local v5, "patternScope":Lkawa/lang/PatternScope;
    iget-object v6, v5, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    int-to-char v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v5, v9}, Lkawa/lang/PatternScope;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 375
    .local v6, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v6, v13}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 376
    invoke-virtual {v13, v6}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 377
    shl-int/lit8 v8, v0, 0x3

    if-eqz v3, :cond_17

    const/16 v16, 0x7

    :cond_17
    or-int v8, v8, v16

    invoke-static {v10, v8}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 378
    return-void

    .line 380
    .end local v0    # "i":I
    .end local v3    # "matchCar":Z
    .end local v4    # "n":I
    .end local v5    # "patternScope":Lkawa/lang/PatternScope;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .restart local v23    # "patternScope":Lkawa/lang/PatternScope;
    :cond_18
    move-object/from16 v7, p5

    move-object/from16 v5, v23

    const/16 v0, 0x8

    .end local v23    # "patternScope":Lkawa/lang/PatternScope;
    .restart local v5    # "patternScope":Lkawa/lang/PatternScope;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v9, v3, :cond_19

    .line 382
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    return-void

    .line 385
    :cond_19
    instance-of v0, v9, Lgnu/lists/FVector;

    if-eqz v0, :cond_1a

    .line 387
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 388
    move-object v0, v9

    check-cast v0, Lgnu/lists/FVector;

    invoke-static {v0}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v9

    .line 389
    const/16 v2, 0x56

    .line 390
    move-object v14, v5

    move-object v12, v7

    goto/16 :goto_0

    .line 394
    :cond_1a
    invoke-static {v7, v9}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v0

    .line 395
    .restart local v0    # "i":I
    if-gez v0, :cond_1b

    .line 397
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v0

    .line 398
    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 400
    :cond_1b
    shl-int/lit8 v3, v0, 0x3

    or-int/lit8 v3, v3, 0x2

    invoke-static {v10, v3}, Lkawa/lang/SyntaxPattern;->addInt(Ljava/lang/StringBuffer;I)V

    .line 401
    return-void
.end method

.method public varCount()I
    .locals 1

    .line 75
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lkawa/lang/SyntaxPattern;->literals:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 618
    iget v0, p0, Lkawa/lang/SyntaxPattern;->varCount:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 619
    return-void
.end method
