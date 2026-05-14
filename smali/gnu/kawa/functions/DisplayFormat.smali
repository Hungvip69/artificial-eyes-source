.class public Lgnu/kawa/functions/DisplayFormat;
.super Lgnu/lists/AbstractFormat;
.source "DisplayFormat.java"


# static fields
.field public static final outBase:Lgnu/mapping/ThreadLocation;

.field public static final outRadix:Lgnu/mapping/ThreadLocation;

.field static r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;


# instance fields
.field language:C

.field readable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-base"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    .line 29
    sget-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 32
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-radix"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    .line 378
    const-string v0, "(([a-zA-Z]|[!$%&*/:<=>?^_~])([a-zA-Z]|[!$%&*/<=>?^_~]|[0-9]|([-+.@]))*[:]?)|([-+]|[.][.][.])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ZC)V
    .locals 0
    .param p1, "readable"    # Z
    .param p2, "language"    # C

    .line 42
    invoke-direct {p0}, Lgnu/lists/AbstractFormat;-><init>()V

    .line 43
    iput-boolean p1, p0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    .line 44
    iput-char p2, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    .line 45
    return-void
.end method

.method public static getCommonLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .param p0, "readable"    # Z

    .line 54
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x43

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method

.method public static getEmacsLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .param p0, "readable"    # Z

    .line 49
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x45

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method

.method public static getSchemeFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .param p0, "readable"    # Z

    .line 59
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x53

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method


# virtual methods
.method public getReadableOutput()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    return v0
.end method

.method write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I
    .locals 7
    .param p1, "array"    # Lgnu/lists/Array;
    .param p2, "index"    # I
    .param p3, "level"    # I
    .param p4, "out"    # Lgnu/lists/Consumer;

    .line 337
    invoke-interface {p1}, Lgnu/lists/Array;->rank()I

    move-result v0

    .line 338
    .local v0, "rank":I
    const/4 v1, 0x0

    .line 339
    .local v1, "count":I
    if-lez p3, :cond_0

    const-string v2, "("

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, "#("

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "a("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "start":Ljava/lang/String;
    :goto_0
    instance-of v3, p4, Lgnu/mapping/OutPort;

    const-string v4, ")"

    if-eqz v3, :cond_2

    .line 343
    move-object v3, p4

    check-cast v3, Lgnu/mapping/OutPort;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {p0, v2, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 346
    :goto_1
    if-lez v0, :cond_5

    .line 348
    invoke-interface {p1, p3}, Lgnu/lists/Array;->getSize(I)I

    move-result v3

    .line 349
    .local v3, "size":I
    add-int/lit8 p3, p3, 0x1

    .line 350
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_5

    .line 352
    if-lez v5, :cond_3

    .line 354
    const-string v6, " "

    invoke-virtual {p0, v6, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 355
    instance-of v6, p4, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_3

    .line 356
    move-object v6, p4

    check-cast v6, Lgnu/mapping/OutPort;

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 359
    :cond_3
    if-ne p3, v0, :cond_4

    .line 361
    invoke-interface {p1, p2}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6, p4}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 362
    const/4 v6, 0x1

    .local v6, "step":I
    goto :goto_3

    .line 365
    .end local v6    # "step":I
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    move-result v6

    .line 366
    .restart local v6    # "step":I
    :goto_3
    add-int/2addr p2, v6

    .line 367
    add-int/2addr v1, v6

    .line 350
    .end local v6    # "step":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 370
    .end local v3    # "size":I
    .end local v5    # "i":I
    :cond_5
    instance-of v3, p4, Lgnu/mapping/OutPort;

    if-eqz v3, :cond_6

    .line 371
    move-object v3, p4

    check-cast v3, Lgnu/mapping/OutPort;

    invoke-virtual {v3, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    goto :goto_4

    .line 373
    :cond_6
    invoke-virtual {p0, v4, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 374
    :goto_4
    return v1
.end method

.method public write(ILgnu/lists/Consumer;)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 77
    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {p1, p2}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-char v0, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v1, 0x45

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 84
    const/16 v0, 0x3f

    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 85
    invoke-static {p1, p2}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {p1}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 91
    :goto_0
    return-void
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2
    .param p1, "v"    # Z
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 72
    iget-char v0, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "#t"

    goto :goto_0

    :cond_0
    const-string v0, "#f"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "t"

    goto :goto_0

    :cond_2
    const-string v0, "nil"

    :goto_0
    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 73
    return-void
.end method

.method public writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V
    .locals 4
    .param p1, "value"    # Lgnu/lists/LList;
    .param p2, "out"    # Lgnu/mapping/OutPort;

    .line 95
    move-object v0, p1

    .line 96
    .local v0, "list":Ljava/lang/Object;
    const-string v1, "("

    const/4 v2, 0x0

    const-string v3, ")"

    invoke-virtual {p2, v1, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    :goto_0
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    .line 99
    if-eq v0, p1, :cond_0

    .line 100
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 101
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    .line 102
    .local v1, "pair":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 103
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 104
    .end local v1    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_2

    .line 107
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 108
    const-string v1, ". "

    invoke-virtual {p2, v1}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 111
    :cond_2
    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "space":Z
    instance-of v1, p2, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v1, :cond_1

    instance-of v1, p1, Lgnu/mapping/Values;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lgnu/text/Char;

    if-nez v1, :cond_1

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    instance-of v1, p1, Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 129
    :cond_0
    move-object v1, p2

    check-cast v1, Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->writeWordStart()V

    .line 130
    const/4 v0, 0x1

    .line 132
    :cond_1
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 133
    if-eqz v0, :cond_2

    .line 134
    move-object v1, p2

    check-cast v1, Lgnu/mapping/OutPort;

    invoke-virtual {v1}, Lgnu/mapping/OutPort;->writeWordEnd()V

    .line 135
    :cond_2
    return-void
.end method

.method public writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 139
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 140
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    goto/16 :goto_10

    .line 141
    :cond_0
    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_1

    .line 142
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto/16 :goto_10

    .line 143
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto/16 :goto_10

    .line 145
    :cond_2
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_4

    .line 147
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    .line 148
    .local v0, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v1

    sget-object v2, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    if-ne v1, v2, :cond_3

    .line 150
    const-string v1, "html:"

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 151
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-boolean v1, p0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    invoke-virtual {p0, v0, p2, v1}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V

    .line 155
    .end local v0    # "sym":Lgnu/mapping/Symbol;
    :goto_0
    goto/16 :goto_10

    .line 158
    :cond_4
    instance-of v0, p1, Ljava/net/URI;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    .line 161
    const-string v0, "#,(URI "

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Ljava/io/PrintWriter;

    invoke-static {v0, v2, v1}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    .line 163
    const/16 v0, 0x29

    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->write(I)V

    goto/16 :goto_10

    .line 167
    :cond_5
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 175
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    .line 179
    .local v0, "str":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v3

    if-eqz v3, :cond_6

    instance-of v3, p2, Ljava/io/PrintWriter;

    if-eqz v3, :cond_6

    .line 180
    move-object v2, p2

    check-cast v2, Ljava/io/PrintWriter;

    invoke-static {v0, v2, v1}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    goto :goto_2

    .line 181
    :cond_6
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 183
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 185
    :cond_7
    instance-of v1, p1, Lgnu/lists/CharSeq;

    if-eqz v1, :cond_8

    .line 187
    move-object v1, p1

    check-cast v1, Lgnu/lists/CharSeq;

    .line 188
    .local v1, "seq":Lgnu/lists/CharSeq;
    invoke-interface {v1}, Lgnu/lists/CharSeq;->size()I

    move-result v3

    invoke-interface {v1, v2, v3, p2}, Lgnu/lists/CharSeq;->consume(IILgnu/lists/Consumer;)V

    .line 189
    .end local v1    # "seq":Lgnu/lists/CharSeq;
    goto :goto_2

    .line 192
    :cond_8
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 193
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_9

    .line 194
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "str":Ljava/lang/CharSequence;
    .end local v1    # "len":I
    .end local v2    # "i":I
    :cond_9
    :goto_2
    goto/16 :goto_10

    .line 197
    :cond_a
    instance-of v0, p1, Lgnu/lists/LList;

    if-eqz v0, :cond_b

    instance-of v0, p2, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_b

    .line 198
    move-object v0, p1

    check-cast v0, Lgnu/lists/LList;

    move-object v1, p2

    check-cast v1, Lgnu/mapping/OutPort;

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/DisplayFormat;->writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V

    goto/16 :goto_10

    .line 199
    :cond_b
    instance-of v0, p1, Lgnu/lists/SimpleVector;

    const-string v3, "#"

    if-eqz v0, :cond_13

    .line 201
    move-object v0, p1

    check-cast v0, Lgnu/lists/SimpleVector;

    .line 202
    .local v0, "vec":Lgnu/lists/SimpleVector;
    invoke-virtual {v0}, Lgnu/lists/SimpleVector;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "tag":Ljava/lang/String;
    iget-char v5, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v6, 0x45

    if-ne v5, v6, :cond_c

    .line 206
    const-string v3, "["

    .line 207
    .local v3, "start":Ljava/lang/String;
    const-string v5, "]"

    .local v5, "end":Ljava/lang/String;
    goto :goto_4

    .line 211
    .end local v3    # "start":Ljava/lang/String;
    .end local v5    # "end":Ljava/lang/String;
    :cond_c
    if-nez v4, :cond_d

    const-string v3, "#("

    goto :goto_3

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .restart local v3    # "start":Ljava/lang/String;
    :goto_3
    const-string v5, ")"

    .line 214
    .restart local v5    # "end":Ljava/lang/String;
    :goto_4
    instance-of v6, p2, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_e

    .line 215
    move-object v6, p2

    check-cast v6, Lgnu/mapping/OutPort;

    invoke-virtual {v6, v3, v2, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_5

    .line 217
    :cond_e
    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 218
    :goto_5
    invoke-virtual {v0}, Lgnu/lists/SimpleVector;->size()I

    move-result v2

    shl-int/lit8 v1, v2, 0x1

    .line 219
    .local v1, "endpos":I
    const/4 v2, 0x0

    .local v2, "ipos":I
    :goto_6
    if-ge v2, v1, :cond_11

    .line 221
    if-lez v2, :cond_f

    instance-of v6, p2, Lgnu/mapping/OutPort;

    if-eqz v6, :cond_f

    .line 222
    move-object v6, p2

    check-cast v6, Lgnu/mapping/OutPort;

    invoke-virtual {v6}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 223
    :cond_f
    invoke-virtual {v0, v2, p2}, Lgnu/lists/SimpleVector;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 224
    goto :goto_7

    .line 219
    :cond_10
    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    .line 226
    .end local v2    # "ipos":I
    :cond_11
    :goto_7
    instance-of v2, p2, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_12

    .line 227
    move-object v2, p2

    check-cast v2, Lgnu/mapping/OutPort;

    invoke-virtual {v2, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    goto :goto_8

    .line 229
    :cond_12
    invoke-virtual {p0, v5, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 230
    .end local v0    # "vec":Lgnu/lists/SimpleVector;
    .end local v1    # "endpos":I
    .end local v3    # "start":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "end":Ljava/lang/String;
    :goto_8
    goto/16 :goto_10

    .line 231
    :cond_13
    instance-of v0, p1, Lgnu/lists/Array;

    if-eqz v0, :cond_14

    .line 233
    move-object v0, p1

    check-cast v0, Lgnu/lists/Array;

    invoke-virtual {p0, v0, v2, v2, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    goto/16 :goto_10

    .line 236
    :cond_14
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_17

    .line 238
    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 239
    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 240
    :cond_15
    instance-of v0, p2, Ljava/io/Writer;

    if-eqz v0, :cond_16

    move-object v0, p2

    check-cast v0, Ljava/io/Writer;

    goto :goto_9

    :cond_16
    new-instance v0, Lgnu/lists/ConsumerWriter;

    invoke-direct {v0, p2}, Lgnu/lists/ConsumerWriter;-><init>(Lgnu/lists/Consumer;)V

    .line 242
    .local v0, "wout":Ljava/io/Writer;
    :goto_9
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    .line 243
    .local v1, "xout":Lgnu/xml/XMLPrinter;
    invoke-virtual {v1, p1}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v1}, Lgnu/xml/XMLPrinter;->closeThis()V

    .line 245
    .end local v0    # "wout":Ljava/io/Writer;
    .end local v1    # "xout":Lgnu/xml/XMLPrinter;
    goto/16 :goto_10

    .line 247
    :cond_17
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 248
    const-string v0, "#!void"

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_10

    .line 249
    :cond_18
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_19

    .line 250
    move-object v0, p1

    check-cast v0, Lgnu/lists/Consumable;

    invoke-interface {v0, p2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto/16 :goto_10

    .line 251
    :cond_19
    instance-of v0, p1, Lgnu/text/Printable;

    if-eqz v0, :cond_1a

    .line 252
    move-object v0, p1

    check-cast v0, Lgnu/text/Printable;

    invoke-interface {v0, p2}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto/16 :goto_10

    .line 253
    :cond_1a
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_25

    .line 255
    const/16 v0, 0xa

    .line 256
    .local v0, "b":I
    const/4 v1, 0x0

    .line 257
    .local v1, "showRadix":Z
    sget-object v2, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 258
    .local v2, "base":Ljava/lang/Object;
    sget-object v5, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v5, v4}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 259
    .local v4, "printRadix":Ljava/lang/Object;
    if-eqz v4, :cond_1c

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1b

    const-string v5, "yes"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 262
    :cond_1b
    const/4 v1, 0x1

    .line 263
    :cond_1c
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_1d

    .line 264
    move-object v5, v2

    check-cast v5, Lgnu/math/IntNum;

    invoke-virtual {v5}, Lgnu/math/IntNum;->intValue()I

    move-result v0

    goto :goto_a

    .line 265
    :cond_1d
    if-eqz v2, :cond_1e

    .line 266
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    :cond_1e
    :goto_a
    move-object v5, p1

    check-cast v5, Lgnu/math/RatNum;

    invoke-virtual {v5, v0}, Lgnu/math/RatNum;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "asString":Ljava/lang/String;
    const/16 v6, 0xa

    if-eqz v1, :cond_23

    .line 270
    const/16 v7, 0x10

    if-ne v0, v7, :cond_1f

    .line 271
    const-string v3, "#x"

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_b

    .line 272
    :cond_1f
    const/16 v7, 0x8

    if-ne v0, v7, :cond_20

    .line 273
    const-string v3, "#o"

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_b

    .line 274
    :cond_20
    const/4 v7, 0x2

    if-ne v0, v7, :cond_21

    .line 275
    const-string v3, "#b"

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_b

    .line 276
    :cond_21
    if-ne v0, v6, :cond_22

    instance-of v7, p1, Lgnu/math/IntNum;

    if-nez v7, :cond_23

    .line 277
    :cond_22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "r"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 279
    :cond_23
    :goto_b
    invoke-virtual {p0, v5, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 280
    if-eqz v1, :cond_24

    if-ne v0, v6, :cond_24

    instance-of v3, p1, Lgnu/math/IntNum;

    if-eqz v3, :cond_24

    .line 281
    const-string v3, "."

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 282
    .end local v0    # "b":I
    .end local v1    # "showRadix":Z
    .end local v2    # "base":Ljava/lang/Object;
    .end local v4    # "printRadix":Ljava/lang/Object;
    .end local v5    # "asString":Ljava/lang/String;
    :cond_24
    goto/16 :goto_10

    .line 283
    :cond_25
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 286
    const-string v0, ":"

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 287
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_10

    .line 292
    :cond_26
    if-nez p1, :cond_27

    .line 293
    const/4 v0, 0x0

    .local v0, "asString":Ljava/lang/String;
    goto :goto_f

    .line 296
    .end local v0    # "asString":Ljava/lang/String;
    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 297
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 299
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 300
    .local v1, "len":I
    instance-of v3, p2, Lgnu/mapping/OutPort;

    const-string v4, "["

    const-string v5, "]"

    if-eqz v3, :cond_28

    .line 301
    move-object v3, p2

    check-cast v3, Lgnu/mapping/OutPort;

    invoke-virtual {v3, v4, v2, v5}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_c

    .line 303
    :cond_28
    invoke-virtual {p0, v4, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 304
    :goto_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_2a

    .line 306
    if-lez v2, :cond_29

    .line 308
    const-string v3, " "

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 309
    instance-of v3, p2, Lgnu/mapping/OutPort;

    if-eqz v3, :cond_29

    .line 310
    move-object v3, p2

    check-cast v3, Lgnu/mapping/OutPort;

    invoke-virtual {v3}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 312
    :cond_29
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 314
    .end local v2    # "i":I
    :cond_2a
    instance-of v2, p2, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_2b

    .line 315
    move-object v2, p2

    check-cast v2, Lgnu/mapping/OutPort;

    invoke-virtual {v2, v5}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    goto :goto_e

    .line 317
    :cond_2b
    invoke-virtual {p0, v5, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 318
    :goto_e
    return-void

    .line 320
    .end local v1    # "len":I
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 322
    .local v0, "asString":Ljava/lang/String;
    :goto_f
    if-nez v0, :cond_2d

    .line 323
    const-string v1, "#!null"

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_10

    .line 325
    :cond_2d
    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 327
    .end local v0    # "asString":Ljava/lang/String;
    :goto_10
    return-void
.end method

.method writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V
    .locals 9
    .param p1, "sym"    # Lgnu/mapping/Symbol;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .param p3, "readable"    # Z

    .line 386
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v1

    .line 388
    .local v1, "namespace":Lgnu/mapping/Namespace;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "uri":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 390
    .local v5, "hasUri":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 391
    .local v3, "hasPrefix":Z
    :goto_2
    const/4 v4, 0x0

    .line 392
    .local v4, "suffixColon":Z
    sget-object v6, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    const/16 v7, 0x3a

    if-ne v1, v6, :cond_5

    .line 394
    iget-char v6, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v8, 0x43

    if-eq v6, v8, :cond_4

    iget-char v6, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v8, 0x45

    if-ne v6, v8, :cond_3

    goto :goto_3

    .line 397
    :cond_3
    const/4 v4, 0x1

    goto :goto_4

    .line 395
    :cond_4
    :goto_3
    invoke-interface {p2, v7}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_4

    .line 399
    :cond_5
    if-nez v3, :cond_6

    if-eqz v5, :cond_a

    .line 401
    :cond_6
    if-eqz v3, :cond_7

    .line 402
    invoke-virtual {p0, v0, p2, p3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 403
    :cond_7
    if-eqz v5, :cond_9

    if-nez p3, :cond_8

    if-nez v3, :cond_9

    .line 405
    :cond_8
    const/16 v6, 0x7b

    invoke-interface {p2, v6}, Lgnu/lists/Consumer;->write(I)V

    .line 406
    invoke-interface {p2, v2}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 407
    const/16 v6, 0x7d

    invoke-interface {p2, v6}, Lgnu/lists/Consumer;->write(I)V

    .line 409
    :cond_9
    invoke-interface {p2, v7}, Lgnu/lists/Consumer;->write(I)V

    .line 411
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, p2, p3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 412
    if-eqz v4, :cond_b

    .line 413
    invoke-interface {p2, v7}, Lgnu/lists/Consumer;->write(I)V

    .line 414
    :cond_b
    return-void
.end method

.method writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V
    .locals 5
    .param p1, "sym"    # Ljava/lang/String;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .param p3, "readable"    # Z

    .line 421
    if-eqz p3, :cond_6

    sget-object v0, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_6

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 424
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 426
    const-string v1, "||"

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_3

    .line 430
    :cond_0
    const/4 v1, 0x0

    .line 431
    .local v1, "inVerticalBars":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x7c

    if-ge v2, v0, :cond_4

    .line 433
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 434
    .local v4, "ch":C
    if-ne v4, v3, :cond_2

    .line 436
    if-eqz v1, :cond_1

    const-string v3, "|\\"

    goto :goto_1

    :cond_1
    const-string v3, "\\"

    :goto_1
    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 437
    const/4 v1, 0x0

    goto :goto_2

    .line 439
    :cond_2
    if-nez v1, :cond_3

    .line 441
    invoke-interface {p2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 442
    const/4 v1, 0x1

    .line 444
    :cond_3
    :goto_2
    invoke-interface {p2, v4}, Lgnu/lists/Consumer;->write(I)V

    .line 431
    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v2    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 447
    invoke-interface {p2, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 449
    .end local v1    # "inVerticalBars":Z
    :cond_5
    :goto_3
    return-void

    .line 452
    .end local v0    # "len":I
    :cond_6
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 453
    return-void
.end method
