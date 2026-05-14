.class public Lgnu/lists/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCapitalize(Lgnu/lists/CharSeq;)V
    .locals 5
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 29
    const/16 v0, 0x20

    .line 30
    .local v0, "prev":C
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v1

    .line 31
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    invoke-interface {p0, v2}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v3

    .line 34
    .local v3, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 35
    invoke-static {v3}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v3

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 38
    :goto_1
    invoke-interface {p0, v2, v3}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    .line 39
    move v0, v3

    .line 31
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public static makeLowerCase(Lgnu/lists/CharSeq;)V
    .locals 2
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 20
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 21
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    .line 22
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static makeUpperCase(Lgnu/lists/CharSeq;)V
    .locals 2
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 13
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 14
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    .line 15
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "ps"    # Ljava/io/PrintWriter;
    .param p2, "escapes"    # I

    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 52
    .local v0, "len":I
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_9

    .line 55
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 56
    .local v3, "ch":C
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_7

    if-ne v3, v1, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    if-lez p2, :cond_8

    .line 61
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 62
    const-string v4, "\\n"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_1
    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 64
    const-string v4, "\\r"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 65
    :cond_2
    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 66
    const-string v4, "\\t"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_3
    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 68
    const-string v4, "\\a"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_4
    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 70
    const-string v4, "\\b"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_5
    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 72
    const-string v4, "\\v"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 73
    :cond_6
    const/16 v4, 0xc

    if-ne v3, v4, :cond_8

    .line 74
    const-string v4, "\\f"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 57
    :cond_7
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 76
    :cond_8
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    .end local v3    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 79
    return-void
.end method
