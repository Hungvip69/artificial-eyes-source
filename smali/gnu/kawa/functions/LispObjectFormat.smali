.class Lgnu/kawa/functions/LispObjectFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field base:Lgnu/text/ReportFormat;

.field colInc:I

.field minPad:I

.field minWidth:I

.field padChar:I

.field where:I


# direct methods
.method public constructor <init>(Lgnu/text/ReportFormat;IIIII)V
    .locals 0
    .param p1, "base"    # Lgnu/text/ReportFormat;
    .param p2, "minWidth"    # I
    .param p3, "colInc"    # I
    .param p4, "minPad"    # I
    .param p5, "padChar"    # I
    .param p6, "where"    # I

    .line 751
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 752
    iput-object p1, p0, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    .line 753
    iput p2, p0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    .line 754
    iput p3, p0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    .line 755
    iput p4, p0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    .line 756
    iput p5, p0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    .line 757
    iput p6, p0, Lgnu/kawa/functions/LispObjectFormat;->where:I

    .line 758
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 17
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v1, p2

    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v11, v1}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v12

    .line 765
    .local v12, "minWidth":I
    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->minWidth:I

    const/high16 v4, -0x60000000

    if-ne v2, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 766
    .end local p2    # "start":I
    .local v1, "start":I
    :cond_0
    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    const/4 v5, 0x1

    invoke-static {v2, v5, v11, v1}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v13

    .line 767
    .local v13, "colInc":I
    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->colInc:I

    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 768
    :cond_1
    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    invoke-static {v2, v3, v11, v1}, Lgnu/kawa/functions/LispObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v14

    .line 769
    .local v14, "minPad":I
    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->minPad:I

    if-ne v2, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 770
    :cond_2
    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    const/16 v3, 0x20

    invoke-static {v2, v3, v11, v1}, Lgnu/kawa/functions/LispObjectFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v15

    .line 771
    .local v15, "padChar":C
    iget v2, v0, Lgnu/kawa/functions/LispObjectFormat;->padChar:I

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    move/from16 v16, v1

    .line 772
    .end local v1    # "start":I
    .local v16, "start":I
    iget-object v1, v0, Lgnu/kawa/functions/LispObjectFormat;->base:Lgnu/text/ReportFormat;

    iget v9, v0, Lgnu/kawa/functions/LispObjectFormat;->where:I

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v4, p3

    move v5, v15

    move v6, v12

    move v7, v13

    move v8, v14

    move-object/from16 v10, p4

    invoke-static/range {v1 .. v10}, Lgnu/text/PadFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;CIIIILjava/text/FieldPosition;)I

    move-result v1

    return v1
.end method
