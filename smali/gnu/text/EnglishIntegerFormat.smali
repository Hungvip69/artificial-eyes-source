.class public Lgnu/text/EnglishIntegerFormat;
.super Ljava/text/NumberFormat;
.source "EnglishIntegerFormat.java"


# static fields
.field private static cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final ones:[Ljava/lang/String;

.field public static final onesth:[Ljava/lang/String;

.field private static ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

.field public static final power1000s:[Ljava/lang/String;

.field public static final tens:[Ljava/lang/String;

.field public static final tensth:[Ljava/lang/String;


# instance fields
.field public ordinal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 34
    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "one"

    aput-object v5, v1, v4

    const/4 v5, 0x2

    const-string v6, "two"

    aput-object v6, v1, v5

    const/4 v6, 0x3

    const-string v7, "three"

    aput-object v7, v1, v6

    const/4 v7, 0x4

    const-string v8, "four"

    aput-object v8, v1, v7

    const/4 v8, 0x5

    const-string v9, "five"

    aput-object v9, v1, v8

    const/4 v9, 0x6

    const-string v10, "six"

    aput-object v10, v1, v9

    const/4 v10, 0x7

    const-string v11, "seven"

    aput-object v11, v1, v10

    const/16 v11, 0x8

    const-string v12, "eight"

    aput-object v12, v1, v11

    const/16 v12, 0x9

    const-string v13, "nine"

    aput-object v13, v1, v12

    const/16 v13, 0xa

    const-string v14, "ten"

    aput-object v14, v1, v13

    const/16 v14, 0xb

    const-string v15, "eleven"

    aput-object v15, v1, v14

    const/16 v15, 0xc

    const-string v16, "twelve"

    aput-object v16, v1, v15

    const/16 v16, 0xd

    const-string v17, "thirteen"

    aput-object v17, v1, v16

    const/16 v17, 0xe

    const-string v18, "fourteen"

    aput-object v18, v1, v17

    const/16 v18, 0xf

    const-string v19, "fifteen"

    aput-object v19, v1, v18

    const/16 v19, 0x10

    const-string v20, "sixteen"

    aput-object v20, v1, v19

    const/16 v20, 0x11

    const-string v21, "seventeen"

    aput-object v21, v1, v20

    const/16 v21, 0x12

    const-string v22, "eighteen"

    aput-object v22, v1, v21

    const/16 v22, 0x13

    const-string v23, "nineteen"

    aput-object v23, v1, v22

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    .line 42
    new-array v1, v0, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v23, "first"

    aput-object v23, v1, v4

    const-string v23, "second"

    aput-object v23, v1, v5

    const-string v23, "third"

    aput-object v23, v1, v6

    const-string v23, "fourth"

    aput-object v23, v1, v7

    const-string v23, "fifth"

    aput-object v23, v1, v8

    const-string v23, "sixth"

    aput-object v23, v1, v9

    const-string v23, "seventh"

    aput-object v23, v1, v10

    const-string v23, "eighth"

    aput-object v23, v1, v11

    const-string v23, "ninth"

    aput-object v23, v1, v12

    const-string v23, "tenth"

    aput-object v23, v1, v13

    const-string v23, "eleventh"

    aput-object v23, v1, v14

    const-string v23, "twelveth"

    aput-object v23, v1, v15

    const-string v23, "thirteenth"

    aput-object v23, v1, v16

    const-string v23, "fourteenth"

    aput-object v23, v1, v17

    const-string v23, "fifteenth"

    aput-object v23, v1, v18

    const-string v23, "sixteenth"

    aput-object v23, v1, v19

    const-string v23, "seventeenth"

    aput-object v23, v1, v20

    const-string v23, "eighteenth"

    aput-object v23, v1, v21

    const-string v23, "nineteenth"

    aput-object v23, v1, v22

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    .line 50
    new-array v1, v13, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const-string v23, "twenty"

    aput-object v23, v1, v5

    const-string v23, "thirty"

    aput-object v23, v1, v6

    const-string v23, "forty"

    aput-object v23, v1, v7

    const-string v23, "fifty"

    aput-object v23, v1, v8

    const-string v23, "sixty"

    aput-object v23, v1, v9

    const-string v23, "seventy"

    aput-object v23, v1, v10

    const-string v23, "eighty"

    aput-object v23, v1, v11

    const-string v23, "ninety"

    aput-object v23, v1, v12

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    .line 56
    new-array v1, v13, [Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const-string v23, "twentieth"

    aput-object v23, v1, v5

    const-string v23, "thirtieth"

    aput-object v23, v1, v6

    const-string v23, "fortieth"

    aput-object v23, v1, v7

    const-string v23, "fiftieth"

    aput-object v23, v1, v8

    const-string v23, "sixtieth"

    aput-object v23, v1, v9

    const-string v23, "seventieth"

    aput-object v23, v1, v10

    const-string v23, "eightieth"

    aput-object v23, v1, v11

    const-string v23, "ninetieth"

    aput-object v23, v1, v12

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    .line 62
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, " thousand"

    aput-object v2, v1, v4

    const-string v2, " million"

    aput-object v2, v1, v5

    const-string v2, " billion"

    aput-object v2, v1, v6

    const-string v2, " trillion"

    aput-object v2, v1, v7

    const-string v2, " quadrillion"

    aput-object v2, v1, v8

    const-string v2, " quintillion"

    aput-object v2, v1, v9

    const-string v2, " sextillion"

    aput-object v2, v1, v10

    const-string v2, " septillion"

    aput-object v2, v1, v11

    const-string v2, " octillion"

    aput-object v2, v1, v12

    const-string v2, " nonillion"

    aput-object v2, v1, v13

    const-string v2, " decillion"

    aput-object v2, v1, v14

    const-string v2, " undecillion"

    aput-object v2, v1, v15

    const-string v2, " duodecillion"

    aput-object v2, v1, v16

    const-string v2, " tredecillion"

    aput-object v2, v1, v17

    const-string v2, " quattuordecillion"

    aput-object v2, v1, v18

    const-string v2, " quindecillion"

    aput-object v2, v1, v19

    const-string v2, " sexdecillion"

    aput-object v2, v1, v20

    const-string v2, " septendecillion"

    aput-object v2, v1, v21

    const-string v2, " octodecillion"

    aput-object v2, v1, v22

    const-string v2, " novemdecillion"

    aput-object v2, v1, v0

    const-string v0, " vigintillion"

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "ordinal"    # Z

    .line 14
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 15
    iput-boolean p1, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    .line 16
    return-void
.end method

.method public static getInstance(Z)Lgnu/text/EnglishIntegerFormat;
    .locals 2
    .param p0, "ordinal"    # Z

    .line 20
    if-eqz p0, :cond_1

    .line 22
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lgnu/text/EnglishIntegerFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 24
    :cond_0
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ordinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object v0

    .line 28
    :cond_1
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    if-nez v0, :cond_2

    .line 29
    new-instance v0, Lgnu/text/EnglishIntegerFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/text/EnglishIntegerFormat;-><init>(Z)V

    sput-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    .line 30
    :cond_2
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->cardinalEnglish:Lgnu/text/EnglishIntegerFormat;

    return-object v0
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5
    .param p1, "num"    # D
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 179
    double-to-long v0, p1

    .line 180
    .local v0, "inum":J
    long-to-double v2, v0

    cmpl-double v4, v2, p1

    if-nez v4, :cond_0

    .line 181
    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2

    .line 182
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "num"    # J
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 159
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 160
    iget-boolean v0, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    if-eqz v0, :cond_0

    const-string v0, "zeroth"

    goto :goto_0

    :cond_0
    const-string v0, "zero"

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 163
    :cond_1
    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 165
    const-string v0, "minus "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    neg-long p1, p1

    .line 168
    :cond_2
    const/4 v4, 0x0

    iget-boolean v5, p0, Lgnu/text/EnglishIntegerFormat;->ordinal:Z

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 170
    :goto_1
    nop

    .line 174
    return-object p3
.end method

.method format(Ljava/lang/StringBuffer;JIZ)V
    .locals 12
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "num"    # J
    .param p4, "exp1000"    # I
    .param p5, "ordinal"    # Z

    .line 108
    move-object v6, p1

    move/from16 v7, p4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    cmp-long v0, p2, v10

    if-ltz v0, :cond_2

    .line 110
    div-long v2, p2, v10

    add-int/lit8 v4, v7, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 111
    rem-long v0, p2, v10

    .line 112
    .end local p2    # "num":J
    .local v0, "num":J
    cmp-long v2, v0, v8

    if-lez v2, :cond_0

    .line 113
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 114
    :cond_0
    if-eqz p5, :cond_1

    .line 115
    const-string v2, "th"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :cond_1
    :goto_0
    move-wide v10, v0

    goto :goto_1

    .line 108
    .end local v0    # "num":J
    .restart local p2    # "num":J
    :cond_2
    move-wide v10, p2

    .line 117
    .end local p2    # "num":J
    .local v10, "num":J
    :goto_1
    cmp-long v0, v10, v8

    if-lez v0, :cond_5

    .line 119
    long-to-int v0, v10

    if-eqz p5, :cond_3

    if-nez v7, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move-object v8, p0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format999(Ljava/lang/StringBuffer;IZ)V

    .line 120
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    array-length v0, v0

    if-lt v7, v0, :cond_4

    .line 122
    const-string v0, " times ten to the "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    mul-int/lit8 v0, v7, 0x3

    int-to-long v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lgnu/text/EnglishIntegerFormat;->format(Ljava/lang/StringBuffer;JIZ)V

    .line 124
    const-string v0, " power"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 126
    :cond_4
    if-lez v7, :cond_6

    .line 127
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->power1000s:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 117
    :cond_5
    move-object v8, p0

    .line 129
    :cond_6
    :goto_3
    return-void
.end method

.method format999(Ljava/lang/StringBuffer;IZ)V
    .locals 3
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "num"    # I
    .param p3, "ordinal"    # Z

    .line 77
    const/16 v0, 0x64

    if-lt p2, v0, :cond_2

    .line 79
    div-int/lit8 v0, p2, 0x64

    .line 80
    .local v0, "num100s":I
    rem-int/lit8 p2, p2, 0x64

    .line 81
    const/4 v1, 0x1

    const/16 v2, 0x20

    if-le v0, v1, :cond_0

    .line 83
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    const-string v1, "hundred"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    if-lez p2, :cond_1

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 89
    :cond_1
    if-eqz p3, :cond_2

    .line 90
    const-string v1, "th"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .end local v0    # "num100s":I
    :cond_2
    :goto_0
    const/16 v0, 0x14

    if-lt p2, v0, :cond_4

    .line 94
    div-int/lit8 v0, p2, 0xa

    .line 95
    .local v0, "num10s":I
    rem-int/lit8 p2, p2, 0xa

    .line 96
    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tensth:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v1, Lgnu/text/EnglishIntegerFormat;->tens:[Ljava/lang/String;

    :goto_1
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    if-lez p2, :cond_4

    .line 98
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    .end local v0    # "num10s":I
    :cond_4
    if-lez p2, :cond_6

    .line 102
    if-eqz p3, :cond_5

    sget-object v0, Lgnu/text/EnglishIntegerFormat;->onesth:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v0, Lgnu/text/EnglishIntegerFormat;->ones:[Ljava/lang/String;

    :goto_2
    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_6
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 188
    new-instance v0, Ljava/lang/Error;

    const-string v1, "EnglishIntegerFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2
    .param p1, "value"    # Z
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 154
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 155
    return-void
.end method

.method public writeInt(ILgnu/lists/Consumer;)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 133
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 134
    return-void
.end method

.method public writeLong(JLgnu/lists/Consumer;)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lgnu/text/EnglishIntegerFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-interface {p3, v0, v1, v2}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 145
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 149
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/text/EnglishIntegerFormat;->writeLong(JLgnu/lists/Consumer;)V

    .line 150
    return-void
.end method
