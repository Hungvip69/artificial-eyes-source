.class Lgnu/kawa/functions/LispIndentFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field columns:I

.field current:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 708
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;
    .locals 1
    .param p0, "columns"    # I
    .param p1, "current"    # Z

    .line 717
    new-instance v0, Lgnu/kawa/functions/LispIndentFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispIndentFormat;-><init>()V

    .line 718
    .local v0, "fmt":Lgnu/kawa/functions/LispIndentFormat;
    iput p0, v0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    .line 719
    iput-boolean p1, v0, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    .line 720
    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    iget v0, p0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispIndentFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 728
    .local v0, "columns":I
    iget v1, p0, Lgnu/kawa/functions/LispIndentFormat;->columns:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 729
    :cond_0
    instance-of v1, p3, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_1

    .line 730
    move-object v1, p3

    check-cast v1, Lgnu/mapping/OutPort;

    iget-boolean v2, p0, Lgnu/kawa/functions/LispIndentFormat;->current:Z

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 731
    :cond_1
    return p2
.end method
