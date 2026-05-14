.class public Lgnu/mapping/CharArrayOutPort;
.super Lgnu/mapping/OutPort;
.source "CharArrayOutPort.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    const/4 v0, 0x0

    sget-object v1, Lgnu/mapping/CharArrayInPort;->stringPath:Lgnu/text/Path;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZLgnu/text/Path;)V

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 47
    return-void
.end method

.method protected closeOnExit()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .locals 1

    .line 18
    iget-object v0, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    return v0
.end method

.method public reset()V
    .locals 2

    .line 28
    iget-object v0, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    const/4 v1, 0x0

    iput v1, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 29
    return-void
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "length"    # I

    .line 23
    iget-object v0, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iput p1, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 24
    return-void
.end method

.method public toCharArray()[C
    .locals 4

    .line 34
    iget-object v0, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    .line 35
    .local v0, "length":I
    new-array v1, v0, [C

    .line 36
    .local v1, "result":[C
    iget-object v2, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v2, v2, Lgnu/text/PrettyWriter;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v1, v1, Lgnu/text/PrettyWriter;->buffer:[C

    iget-object v2, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v2, v2, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toSubString(I)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I

    .line 78
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v1, v1, Lgnu/text/PrettyWriter;->buffer:[C

    iget-object v2, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v2, v2, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toSubString(II)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 67
    iget-object v0, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v0, v0, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    if-gt p2, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v1, v1, Lgnu/text/PrettyWriter;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeTo(IILgnu/lists/Consumer;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 89
    iget-object v0, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v0, v0, Lgnu/text/PrettyWriter;->buffer:[C

    invoke-interface {p3, v0, p1, p2}, Lgnu/lists/Consumer;->write([CII)V

    .line 90
    return-void
.end method

.method public writeTo(Lgnu/lists/Consumer;)V
    .locals 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 84
    iget-object v0, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v0, v0, Lgnu/text/PrettyWriter;->buffer:[C

    iget-object v1, p0, Lgnu/mapping/CharArrayOutPort;->bout:Lgnu/text/PrettyWriter;

    iget v1, v1, Lgnu/text/PrettyWriter;->bufferFillPointer:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lgnu/lists/Consumer;->write([CII)V

    .line 85
    return-void
.end method
