.class public Lgnu/text/CompoundFormat;
.super Lgnu/text/ReportFormat;
.source "CompoundFormat.java"


# instance fields
.field protected formats:[Ljava/text/Format;

.field protected length:I


# direct methods
.method public constructor <init>([Ljava/text/Format;)V
    .locals 1
    .param p1, "formats"    # [Ljava/text/Format;

    .line 18
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 20
    array-length v0, p1

    iput v0, p0, Lgnu/text/CompoundFormat;->length:I

    .line 21
    return-void
.end method

.method public constructor <init>([Ljava/text/Format;I)V
    .locals 0
    .param p1, "formats"    # [Ljava/text/Format;
    .param p2, "length"    # I

    .line 12
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    .line 14
    iput p2, p0, Lgnu/text/CompoundFormat;->length:I

    .line 15
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v0, v1, :cond_3

    .line 28
    iget-object v1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v1, v1, v0

    .line 29
    .local v1, "fmt":Ljava/text/Format;
    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_0

    .line 31
    move-object v2, v1

    check-cast v2, Lgnu/text/ReportFormat;

    invoke-virtual {v2, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p2

    .line 32
    if-gez p2, :cond_2

    .line 33
    return p2

    .line 35
    :cond_0
    array-length v2, p1

    if-lt p2, v2, :cond_1

    .line 36
    const-string v2, "#<missing format argument>"

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    aget-object v3, p1, p2

    invoke-virtual {v1, v3, v2, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 26
    .end local v1    # "fmt":Ljava/text/Format;
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    :cond_3
    return p2
.end method

.method public final format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v0, v1, :cond_2

    .line 53
    iget-object v1, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v1, v1, v0

    .line 54
    .local v1, "fmt":Ljava/text/Format;
    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_0

    .line 56
    move-object v2, v1

    check-cast v2, Lgnu/text/ReportFormat;

    invoke-virtual {v2, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p2

    .line 57
    if-gez p2, :cond_1

    .line 58
    return p2

    .line 62
    :cond_0
    aget-object v2, p1, p2

    invoke-virtual {v1, v2, p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 p2, p2, 0x1

    .line 51
    .end local v1    # "fmt":Ljava/text/Format;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_2
    return p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 71
    new-instance v0, Ljava/lang/Error;

    const-string v1, "CompoundFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "CompoundFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lgnu/text/CompoundFormat;->length:I

    if-ge v1, v2, :cond_1

    .line 80
    if-lez v1, :cond_0

    .line 81
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_0
    iget-object v2, p0, Lgnu/text/CompoundFormat;->formats:[Ljava/text/Format;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
