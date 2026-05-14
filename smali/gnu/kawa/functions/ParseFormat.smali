.class public Lgnu/kawa/functions/ParseFormat;
.super Lgnu/mapping/Procedure1;
.source "ParseFormat.java"


# static fields
.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000

.field public static final SEEN_HASH:I = 0x10

.field public static final SEEN_MINUS:I = 0x1

.field public static final SEEN_PLUS:I = 0x2

.field public static final SEEN_SPACE:I = 0x4

.field public static final SEEN_ZERO:I = 0x8

.field public static final parseFormat:Lgnu/kawa/functions/ParseFormat;


# instance fields
.field emacsStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lgnu/kawa/functions/ParseFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ParseFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "emacsStyle"    # Z

    .line 17
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 18
    iput-boolean p1, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    .line 19
    return-void
.end method

.method public static asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "style"    # C

    .line 234
    const-string v0, ")"

    :try_start_0
    instance-of v1, p0, Lgnu/text/ReportFormat;

    if-eqz v1, :cond_0

    .line 235
    move-object v1, p0

    check-cast v1, Lgnu/text/ReportFormat;

    return-object v1

    .line 236
    :cond_0
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    .line 237
    new-instance v1, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 241
    :cond_1
    instance-of v1, p0, Lgnu/lists/FString;

    if-eqz v1, :cond_2

    .line 243
    move-object v1, p0

    check-cast v1, Lgnu/lists/FString;

    .line 244
    .local v1, "str":Lgnu/lists/FString;
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    iget-object v3, v1, Lgnu/lists/FString;->data:[C

    iget v4, v1, Lgnu/lists/FString;->size:I

    invoke-direct {v2, v3, v4}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    move-object v1, v2

    .line 245
    .local v1, "iport":Lgnu/mapping/InPort;
    goto :goto_0

    .line 247
    .end local v1    # "iport":Lgnu/mapping/InPort;
    :cond_2
    new-instance v1, Lgnu/mapping/CharArrayInPort;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .restart local v1    # "iport":Lgnu/mapping/InPort;
    :goto_0
    :try_start_1
    invoke-static {v1, p1}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    invoke-virtual {v1}, Lgnu/mapping/InPort;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lgnu/mapping/InPort;->close()V

    .end local p0    # "arg":Ljava/lang/Object;
    .end local p1    # "style":C
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    .end local v1    # "iport":Lgnu/mapping/InPort;
    .restart local p0    # "arg":Ljava/lang/Object;
    .restart local p1    # "style":C
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "End while parsing format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid format ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    .end local v1    # "ex":Ljava/text/ParseException;
    :catch_2
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing format ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    move/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 37
    nop

    .line 38
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 42
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 43
    if-ltz v4, :cond_1

    .line 45
    if-eq v4, v0, :cond_0

    .line 48
    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 52
    if-ne v4, v0, :cond_1

    .line 54
    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 59
    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 61
    new-array v7, v5, [C

    .line 62
    invoke-virtual {v1, v6, v5, v7, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    new-instance v5, Lgnu/text/LiteralFormat;

    invoke-direct {v5, v7}, Lgnu/text/LiteralFormat;-><init>([C)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    :cond_2
    const/4 v5, 0x1

    if-gez v4, :cond_4

    .line 67
    nop

    .line 213
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 214
    if-ne v0, v5, :cond_3

    .line 216
    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 217
    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_3

    .line 218
    check-cast v1, Lgnu/text/ReportFormat;

    return-object v1

    .line 220
    :cond_3
    new-array v0, v0, [Ljava/text/Format;

    .line 221
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 222
    new-instance v1, Lgnu/text/CompoundFormat;

    invoke-direct {v1, v0}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    return-object v1

    .line 69
    :cond_4
    const/16 v7, 0x24

    const/4 v8, -0x1

    const/16 v9, 0xa

    if-ne v4, v7, :cond_7

    .line 71
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 72
    int-to-char v4, v4

    invoke-static {v4, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 73
    if-ltz v4, :cond_6

    .line 78
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 79
    int-to-char v7, v4

    invoke-static {v7, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 80
    if-gez v7, :cond_5

    .line 81
    nop

    .line 84
    goto :goto_2

    .line 82
    :cond_5
    goto :goto_1

    .line 74
    :cond_6
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "missing number (position) after \'%$\'"

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 87
    :cond_7
    :goto_2
    const/4 v7, 0x0

    .line 90
    :goto_3
    int-to-char v10, v4

    sparse-switch v10, :sswitch_data_0

    .line 98
    goto :goto_5

    .line 95
    :sswitch_0
    or-int/lit8 v4, v7, 0x8

    move v7, v4

    goto :goto_4

    .line 92
    :sswitch_1
    or-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_4

    .line 93
    :sswitch_2
    or-int/lit8 v4, v7, 0x2

    move v7, v4

    goto :goto_4

    .line 96
    :sswitch_3
    or-int/lit8 v4, v7, 0x10

    move v7, v4

    goto :goto_4

    .line 94
    :sswitch_4
    or-int/lit8 v4, v7, 0x4

    move v7, v4

    .line 88
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    goto :goto_3

    .line 101
    :goto_5
    nop

    .line 102
    invoke-static {v10, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    .line 103
    const/high16 v11, -0x60000000

    const/16 v12, 0x2a

    const/high16 v13, -0x40000000    # -2.0f

    if-ltz v10, :cond_9

    .line 105
    nop

    .line 108
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 109
    int-to-char v14, v4

    invoke-static {v14, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v14

    .line 110
    if-gez v14, :cond_8

    .line 111
    goto :goto_7

    .line 112
    :cond_8
    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v14

    goto :goto_6

    .line 115
    :cond_9
    if-ne v4, v12, :cond_a

    .line 116
    const/high16 v10, -0x60000000

    goto :goto_7

    .line 115
    :cond_a
    const/high16 v10, -0x40000000    # -2.0f

    .line 118
    :goto_7
    nop

    .line 119
    const/16 v14, 0x2e

    if-ne v4, v14, :cond_d

    .line 121
    if-ne v4, v12, :cond_b

    .line 122
    const/high16 v15, -0x60000000

    goto :goto_9

    .line 125
    :cond_b
    const/4 v11, 0x0

    .line 128
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    .line 129
    int-to-char v12, v4

    invoke-static {v12, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    .line 130
    if-gez v12, :cond_c

    .line 131
    move v15, v11

    goto :goto_9

    .line 132
    :cond_c
    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v12

    goto :goto_8

    .line 119
    :cond_d
    const/high16 v15, -0x40000000    # -2.0f

    .line 137
    :goto_9
    const/16 v11, 0x30

    const/16 v12, 0x20

    sparse-switch v4, :sswitch_data_1

    .line 191
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 188
    :sswitch_5
    new-instance v4, Lgnu/kawa/functions/ObjectFormat;

    invoke-direct {v4, v6}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    .line 189
    goto/16 :goto_f

    .line 150
    :sswitch_6
    nop

    .line 151
    const/16 v5, 0x8

    if-eq v4, v2, :cond_11

    const/16 v14, 0x69

    if-ne v4, v14, :cond_e

    goto :goto_a

    .line 153
    :cond_e
    const/16 v9, 0x6f

    if-ne v4, v9, :cond_f

    .line 154
    const/4 v4, 0x0

    const/16 v14, 0x8

    goto :goto_b

    .line 157
    :cond_f
    nop

    .line 158
    const/16 v9, 0x58

    const/16 v14, 0x10

    if-ne v4, v9, :cond_10

    const/16 v4, 0x20

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    goto :goto_b

    .line 152
    :cond_11
    :goto_a
    const/4 v4, 0x0

    const/16 v14, 0xa

    .line 160
    :goto_b
    nop

    .line 161
    nop

    .line 162
    and-int/lit8 v9, v7, 0x9

    if-ne v9, v5, :cond_12

    const/16 v16, 0x30

    goto :goto_c

    :cond_12
    const/16 v16, 0x20

    .line 164
    :goto_c
    and-int/lit8 v5, v7, 0x10

    if-eqz v5, :cond_13

    .line 165
    or-int/lit8 v4, v4, 0x8

    .line 166
    :cond_13
    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_14

    .line 167
    or-int/lit8 v4, v4, 0x2

    .line 168
    :cond_14
    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_15

    .line 169
    or-int/lit8 v4, v4, 0x10

    .line 170
    :cond_15
    and-int/lit8 v5, v7, 0x4

    if-eqz v5, :cond_16

    .line 171
    or-int/lit8 v4, v4, 0x4

    move/from16 v19, v4

    goto :goto_d

    .line 170
    :cond_16
    move/from16 v19, v4

    .line 172
    :goto_d
    if-eq v15, v13, :cond_17

    .line 174
    and-int/lit8 v7, v7, -0x9

    .line 175
    or-int/lit8 v19, v19, 0x40

    .line 176
    const/high16 v17, -0x40000000    # -2.0f

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v16, 0x30

    invoke-static/range {v14 .. v19}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v4

    goto :goto_f

    .line 181
    :cond_17
    const/high16 v17, -0x40000000    # -2.0f

    const/high16 v18, -0x40000000    # -2.0f

    move v15, v10

    invoke-static/range {v14 .. v19}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v4

    .line 184
    goto :goto_f

    .line 141
    :sswitch_7
    new-instance v9, Lgnu/kawa/functions/ObjectFormat;

    const/16 v13, 0x53

    if-ne v4, v13, :cond_18

    goto :goto_e

    :cond_18
    const/4 v5, 0x0

    :goto_e
    invoke-direct {v9, v5, v15}, Lgnu/kawa/functions/ObjectFormat;-><init>(ZI)V

    .line 142
    move-object v4, v9

    .line 193
    :goto_f
    if-lez v10, :cond_1c

    .line 195
    and-int/lit8 v5, v7, 0x8

    if-eqz v5, :cond_19

    const/16 v12, 0x30

    .line 197
    :cond_19
    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_1a

    .line 198
    const/16 v6, 0x64

    goto :goto_10

    .line 199
    :cond_1a
    if-ne v12, v11, :cond_1b

    .line 200
    const/4 v6, -0x1

    goto :goto_10

    .line 202
    :cond_1b
    nop

    .line 203
    :goto_10
    new-instance v5, Lgnu/text/PadFormat;

    invoke-direct {v5, v4, v10, v12, v6}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    move-object v4, v5

    .line 209
    :cond_1c
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    nop

    .line 211
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_4
        0x23 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x53 -> :sswitch_7
        0x58 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6f -> :sswitch_6
        0x73 -> :sswitch_7
        0x78 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .line 227
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    :goto_0
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0
.end method

.method public parseFormat(Lgnu/text/LineBufferedReader;)Lgnu/text/ReportFormat;
    .locals 1
    .param p1, "fmt"    # Lgnu/text/LineBufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    :goto_0
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object v0

    return-object v0
.end method
