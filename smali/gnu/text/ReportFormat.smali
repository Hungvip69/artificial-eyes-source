.class public abstract Lgnu/text/ReportFormat;
.super Ljava/text/Format;
.source "ReportFormat.java"


# static fields
.field public static final PARAM_FROM_COUNT:I = -0x50000000

.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 4
    .param p0, "fmt"    # Ljava/text/Format;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    instance-of v0, p0, Lgnu/text/ReportFormat;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p0

    check-cast v0, Lgnu/text/ReportFormat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v0

    return v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Ljava/text/MessageFormat;

    if-eqz v1, :cond_1

    .line 84
    invoke-static {p0, p1, p2, v0, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result p2

    goto :goto_0

    .line 86
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "start":I
    .local v1, "start":I
    aget-object p2, p1, p2

    invoke-virtual {p0, p2, v0, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move p2, v1

    .line 87
    .end local v1    # "start":I
    .restart local p2    # "start":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 88
    .local v1, "slen":I
    new-array v2, v1, [C

    .line 89
    .local v2, "cbuf":[C
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 90
    invoke-virtual {p3, v2}, Ljava/io/Writer;->write([C)V

    .line 91
    return p2
.end method

.method public static format(Ljava/text/Format;[Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 4
    .param p0, "fmt"    # Ljava/text/Format;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 97
    instance-of v0, p0, Lgnu/text/ReportFormat;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p0

    check-cast v0, Lgnu/text/ReportFormat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    move-result v0

    return v0

    .line 101
    :cond_0
    instance-of v0, p0, Ljava/text/MessageFormat;

    if-eqz v0, :cond_2

    .line 103
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 104
    .local v0, "nargs":I
    if-lez p2, :cond_1

    .line 106
    array-length v1, p1

    sub-int/2addr v1, p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    .local v1, "subarr":[Ljava/lang/Object;
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    nop

    .line 109
    .local v1, "arg":Ljava/lang/Object;
    goto :goto_0

    .line 111
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_1
    move-object v1, p1

    .restart local v1    # "arg":Ljava/lang/Object;
    goto :goto_0

    .line 115
    .end local v0    # "nargs":I
    .end local v1    # "arg":Ljava/lang/Object;
    :cond_2
    aget-object v1, p1, p2

    .line 116
    .restart local v1    # "arg":Ljava/lang/Object;
    const/4 v0, 0x1

    .line 118
    .restart local v0    # "nargs":I
    :goto_0
    invoke-virtual {p0, v1, p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 119
    add-int v2, p2, v0

    return v2
.end method

.method protected static getParam(IC[Ljava/lang/Object;I)C
    .locals 1
    .param p0, "param"    # I
    .param p1, "defaultValue"    # C
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "start"    # I

    .line 173
    invoke-static {p0, p1, p2, p3}, Lgnu/text/ReportFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method protected static getParam(II[Ljava/lang/Object;I)I
    .locals 1
    .param p0, "param"    # I
    .param p1, "defaultValue"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "start"    # I

    .line 161
    const/high16 v0, -0x50000000

    if-ne p0, v0, :cond_0

    .line 162
    array-length v0, p2

    sub-int/2addr v0, p3

    return v0

    .line 163
    :cond_0
    const/high16 v0, -0x60000000

    if-ne p0, v0, :cond_2

    .line 164
    if-nez p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    aget-object v0, p2, p3

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->getParam(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    return v0

    .line 165
    :cond_2
    const/high16 v0, -0x40000000    # -2.0f

    if-ne p0, v0, :cond_3

    .line 166
    return p1

    .line 168
    :cond_3
    return p0
.end method

.method public static getParam(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # I

    .line 149
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 150
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 151
    :cond_0
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 152
    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0

    .line 153
    :cond_1
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_2

    .line 154
    move-object v0, p0

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->charValue()C

    move-result v0

    return v0

    .line 156
    :cond_2
    return p1
.end method

.method public static nextArg(I)I
    .locals 1
    .param p0, "result"    # I

    .line 25
    const v0, 0xffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static print(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "dst"    # Ljava/io/Writer;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    instance-of v0, p0, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 127
    move-object v0, p0

    check-cast v0, Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write([C)V

    .line 130
    :goto_0
    return-void
.end method

.method public static print(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 134
    instance-of v0, p0, Lgnu/text/Printable;

    if-eqz v0, :cond_0

    .line 135
    move-object v0, p0

    check-cast v0, Lgnu/text/Printable;

    invoke-interface {v0, p1}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 139
    :cond_0
    if-nez p0, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 140
    :goto_1
    return-void
.end method

.method public static result(II)I
    .locals 1
    .param p0, "resultCode"    # I
    .param p1, "nextArg"    # I

    .line 23
    shl-int/lit8 v0, p0, 0x18

    or-int/2addr v0, p1

    return v0
.end method

.method public static resultCode(I)I
    .locals 1
    .param p0, "result"    # I

    .line 26
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v0

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 48
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v1

    return v1
.end method

.method public abstract format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 61
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 64
    .local v0, "wr":Ljava/io/CharArrayWriter;
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v1

    .line 65
    if-gez p2, :cond_0

    .line 66
    return p2

    .line 71
    :cond_0
    nop

    .line 72
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 73
    return p2

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 54
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/text/ReportFormat;->format([Ljava/lang/Object;ILjava/lang/StringBuffer;Ljava/text/FieldPosition;)I

    .line 55
    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 144
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ReportFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
