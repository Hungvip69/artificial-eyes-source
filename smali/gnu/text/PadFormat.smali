.class public Lgnu/text/PadFormat;
.super Lgnu/text/ReportFormat;
.source "PadFormat.java"


# instance fields
.field fmt:Ljava/text/Format;

.field minWidth:I

.field padChar:C

.field where:I


# direct methods
.method public constructor <init>(Ljava/text/Format;I)V
    .locals 2
    .param p1, "fmt"    # Ljava/text/Format;
    .param p2, "minWidth"    # I

    .line 29
    const/16 v0, 0x20

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, v0, v1}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/text/Format;ICI)V
    .locals 0
    .param p1, "fmt"    # Ljava/text/Format;
    .param p2, "minWidth"    # I
    .param p3, "padChar"    # C
    .param p4, "where"    # I

    .line 20
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    .line 22
    iput p2, p0, Lgnu/text/PadFormat;->minWidth:I

    .line 23
    iput-char p3, p0, Lgnu/text/PadFormat;->padChar:C

    .line 24
    iput p4, p0, Lgnu/text/PadFormat;->where:I

    .line 25
    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I
    .locals 16
    .param p0, "fmt"    # Ljava/text/Format;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "padChar"    # C
    .param p5, "minWidth"    # I
    .param p6, "colInc"    # I
    .param p7, "minPad"    # I
    .param p8, "where"    # I
    .param p9, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0xc8

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 69
    .local v5, "tbuf":Ljava/lang/StringBuffer;
    instance-of v6, v0, Lgnu/text/ReportFormat;

    if-eqz v6, :cond_0

    .line 70
    move-object v6, v0

    check-cast v6, Lgnu/text/ReportFormat;

    invoke-virtual {v6, v1, v2, v5, v4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v2

    .end local p2    # "start":I
    .local v2, "start":I
    goto :goto_0

    .line 71
    .end local v2    # "start":I
    .restart local p2    # "start":I
    :cond_0
    instance-of v6, v0, Ljava/text/MessageFormat;

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {v0, v1, v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 75
    array-length v2, v1

    .end local p2    # "start":I
    .restart local v2    # "start":I
    goto :goto_0

    .line 79
    .end local v2    # "start":I
    .restart local p2    # "start":I
    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {v0, v6, v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 82
    .end local p2    # "start":I
    .restart local v2    # "start":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 83
    .local v6, "len":I
    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static {v6, v7, v8, v9}, Lgnu/text/PadFormat;->padNeeded(IIII)I

    move-result v10

    .line 84
    .local v10, "pad":I
    const/4 v11, 0x0

    .line 85
    .local v11, "prefix":I
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, "text":Ljava/lang/String;
    if-lez v10, :cond_a

    .line 88
    const/4 v13, -0x1

    move/from16 v14, p8

    if-ne v14, v13, :cond_7

    .line 90
    if-lez v6, :cond_6

    .line 92
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 93
    .local v15, "ch":C
    const/16 v13, 0x2d

    if-eq v15, v13, :cond_2

    const/16 v13, 0x2b

    if-ne v15, v13, :cond_3

    .line 95
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 96
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    .line 98
    :cond_3
    sub-int v13, v6, v11

    const/4 v0, 0x2

    if-le v13, v0, :cond_5

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v13, 0x30

    if-ne v0, v13, :cond_5

    .line 100
    invoke-virtual {v3, v13}, Ljava/io/Writer;->write(I)V

    .line 101
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 102
    const/16 v0, 0x78

    if-eq v15, v0, :cond_4

    const/16 v0, 0x58

    if-ne v15, v0, :cond_5

    .line 104
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 105
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    .line 108
    :cond_5
    if-lez v11, :cond_6

    .line 109
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 111
    .end local v15    # "ch":C
    :cond_6
    const/4 v0, 0x0

    move v14, v0

    .line 113
    .end local p8    # "where":I
    .local v14, "where":I
    :cond_7
    mul-int v0, v10, v14

    div-int/lit8 v0, v0, 0x64

    .line 114
    .local v0, "padAfter":I
    sub-int v13, v10, v0

    .line 123
    .local v13, "padBefore":I
    :goto_1
    const/4 v15, -0x1

    add-int/2addr v13, v15

    if-ltz v13, :cond_8

    .line 124
    invoke-virtual/range {p3 .. p4}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 125
    :cond_8
    invoke-virtual {v3, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    :goto_2
    add-int/2addr v0, v15

    if-ltz v0, :cond_9

    .line 127
    invoke-virtual/range {p3 .. p4}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 128
    .end local v0    # "padAfter":I
    .end local v13    # "padBefore":I
    :cond_9
    goto :goto_3

    .line 131
    .end local v14    # "where":I
    .restart local p8    # "where":I
    :cond_a
    move/from16 v14, p8

    invoke-virtual {v3, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    .end local p8    # "where":I
    .restart local v14    # "where":I
    :goto_3
    return v2
.end method

.method public static padNeeded(IIII)I
    .locals 2
    .param p0, "actualWidth"    # I
    .param p1, "minWidth"    # I
    .param p2, "colInc"    # I
    .param p3, "minPad"    # I

    .line 42
    add-int v0, p0, p3

    .line 43
    .local v0, "total":I
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    .line 44
    sub-int p2, p1, v0

    .line 45
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    .line 46
    add-int/2addr v0, p2

    goto :goto_0

    .line 47
    :cond_1
    sub-int v1, v0, p0

    return v1
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 10
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lgnu/text/PadFormat;->fmt:Ljava/text/Format;

    iget-char v4, p0, Lgnu/text/PadFormat;->padChar:C

    iget v5, p0, Lgnu/text/PadFormat;->minWidth:I

    const/4 v7, 0x0

    iget v8, p0, Lgnu/text/PadFormat;->where:I

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result v0

    return v0
.end method
