.class public Lgnu/text/CaseConvertFormat;
.super Lgnu/text/ReportFormat;
.source "CaseConvertFormat.java"


# instance fields
.field baseFormat:Ljava/text/Format;

.field code:C


# direct methods
.method public constructor <init>(Ljava/text/Format;C)V
    .locals 0
    .param p1, "baseFormat"    # Ljava/text/Format;
    .param p2, "action"    # C

    .line 17
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    .line 19
    iput-char p2, p0, Lgnu/text/CaseConvertFormat;->code:C

    .line 20
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 29
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    invoke-static {v1, p1, p2, v0, p4}, Lgnu/text/CaseConvertFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v1

    .line 30
    .local v1, "result":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 31
    .local v2, "len":I
    const/16 v3, 0x20

    .line 32
    .local v3, "prev":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 35
    .local v5, "ch":C
    iget-char v6, p0, Lgnu/text/CaseConvertFormat;->code:C

    const/16 v7, 0x55

    if-ne v6, v7, :cond_0

    .line 36
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    goto :goto_1

    .line 37
    :cond_0
    iget-char v6, p0, Lgnu/text/CaseConvertFormat;->code:C

    const/16 v7, 0x54

    if-ne v6, v7, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    iget-char v6, p0, Lgnu/text/CaseConvertFormat;->code:C

    const/16 v7, 0x43

    if-ne v6, v7, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 39
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    goto :goto_1

    .line 41
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 42
    :goto_1
    move v3, v5

    .line 43
    invoke-virtual {p3, v5}, Ljava/io/Writer;->write(I)V

    .line 32
    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    .end local v4    # "i":I
    :cond_4
    return v1
.end method

.method public getBaseFormat()Ljava/text/Format;
    .locals 1

    .line 22
    iget-object v0, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    return-object v0
.end method

.method public setBaseFormat(Ljava/text/Format;)V
    .locals 0
    .param p1, "baseFormat"    # Ljava/text/Format;

    .line 23
    iput-object p1, p0, Lgnu/text/CaseConvertFormat;->baseFormat:Ljava/text/Format;

    return-void
.end method
