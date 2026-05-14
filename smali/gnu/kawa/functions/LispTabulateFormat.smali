.class Lgnu/kawa/functions/LispTabulateFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field colinc:I

.field colnum:I

.field padChar:I

.field relative:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "colnum"    # I
    .param p2, "colinc"    # I
    .param p3, "padChar"    # I
    .param p4, "relative"    # Z

    .line 1142
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 1143
    iput p1, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    .line 1144
    iput p2, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    .line 1145
    iput-boolean p4, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    .line 1146
    iput p3, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    .line 1147
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1152
    iget v0, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 1153
    .local v0, "colnum":I
    iget v2, p0, Lgnu/kawa/functions/LispTabulateFormat;->colnum:I

    const/high16 v3, -0x60000000

    if-ne v2, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1154
    :cond_0
    iget v2, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    invoke-static {v2, v1, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v1

    .line 1155
    .local v1, "colinc":I
    iget v2, p0, Lgnu/kawa/functions/LispTabulateFormat;->colinc:I

    if-ne v2, v3, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1157
    :cond_1
    iget v2, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    const/16 v4, 0x20

    invoke-static {v2, v4, p1, p2}, Lgnu/kawa/functions/LispTabulateFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v2

    .line 1158
    .local v2, "padChar":C
    iget v4, p0, Lgnu/kawa/functions/LispTabulateFormat;->padChar:I

    if-ne v4, v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 1159
    :cond_2
    const/4 v3, -0x1

    .line 1160
    .local v3, "column":I
    instance-of v4, p3, Lgnu/mapping/OutPort;

    if-eqz v4, :cond_3

    .line 1161
    move-object v4, p3

    check-cast v4, Lgnu/mapping/OutPort;

    invoke-virtual {v4}, Lgnu/mapping/OutPort;->getColumnNumber()I

    move-result v3

    .line 1163
    :cond_3
    if-ltz v3, :cond_7

    .line 1165
    iget-boolean v4, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-nez v4, :cond_6

    .line 1167
    if-ge v3, v0, :cond_4

    .line 1168
    sub-int v4, v0, v3

    .local v4, "spaces":I
    goto :goto_0

    .line 1169
    .end local v4    # "spaces":I
    :cond_4
    if-gtz v1, :cond_5

    .line 1170
    const/4 v4, 0x0

    .restart local v4    # "spaces":I
    goto :goto_0

    .line 1172
    .end local v4    # "spaces":I
    :cond_5
    sub-int v4, v3, v0

    rem-int/2addr v4, v1

    sub-int v4, v1, v4

    .restart local v4    # "spaces":I
    goto :goto_0

    .line 1176
    .end local v4    # "spaces":I
    :cond_6
    add-int v4, v0, v1

    add-int v5, v3, v0

    rem-int/2addr v5, v1

    sub-int/2addr v4, v5

    .restart local v4    # "spaces":I
    goto :goto_0

    .line 1181
    .end local v4    # "spaces":I
    :cond_7
    iget-boolean v4, p0, Lgnu/kawa/functions/LispTabulateFormat;->relative:Z

    if-eqz v4, :cond_8

    move v4, v0

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    .line 1183
    .restart local v4    # "spaces":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_9

    .line 1184
    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1185
    :cond_9
    return p2
.end method
