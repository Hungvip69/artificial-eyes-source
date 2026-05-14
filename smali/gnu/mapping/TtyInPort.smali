.class public Lgnu/mapping/TtyInPort;
.super Lgnu/mapping/InPort;
.source "TtyInPort.java"


# instance fields
.field protected promptEmitted:Z

.field protected prompter:Lgnu/mapping/Procedure;

.field protected tie:Lgnu/mapping/OutPort;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "name"    # Lgnu/text/Path;
    .param p3, "tie"    # Lgnu/mapping/OutPort;

    .line 30
    invoke-direct {p0, p1, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;Lgnu/text/Path;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 32
    iput-object p3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "name"    # Lgnu/text/Path;
    .param p3, "tie"    # Lgnu/mapping/OutPort;

    .line 37
    invoke-direct {p0, p1, p2}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/mapping/TtyInPort;->setConvertCR(Z)V

    .line 39
    iput-object p3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    .line 40
    return-void
.end method


# virtual methods
.method public emitPrompt(Ljava/lang/String;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 56
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->clearBuffer()V

    .line 57
    return-void
.end method

.method public fill(I)I
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->in:Ljava/io/Reader;

    iget-object v1, p0, Lgnu/mapping/TtyInPort;->buffer:[C

    iget v2, p0, Lgnu/mapping/TtyInPort;->pos:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 47
    .local v0, "count":I
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 48
    iget-object v1, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    iget-object v2, p0, Lgnu/mapping/TtyInPort;->buffer:[C

    iget v3, p0, Lgnu/mapping/TtyInPort;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Lgnu/mapping/OutPort;->echo([CII)V

    .line 49
    :cond_0
    return v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public lineStart(Z)V
    .locals 4
    .param p1, "revisited"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    if-nez p1, :cond_2

    .line 63
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->freshLine()V

    .line 65
    :cond_0
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    if-eqz v0, :cond_2

    .line 69
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "prompt":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "string":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lgnu/mapping/TtyInPort;->emitPrompt(Ljava/lang/String;)V

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v0    # "prompt":Ljava/lang/Object;
    .end local v1    # "string":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when evaluating prompt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 91
    :cond_0
    invoke-super {p0}, Lgnu/mapping/InPort;->read()I

    move-result v0

    .line 92
    .local v0, "ch":I
    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 94
    iget-boolean v2, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    iget-object v3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->println()V

    .line 97
    :cond_2
    iput-boolean v1, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    .line 98
    return v0
.end method

.method public read([CII)I
    .locals 4
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/InPort;->read([CII)I

    move-result v0

    .line 106
    .local v0, "count":I
    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-boolean v2, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    iget-object v3, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lgnu/mapping/TtyInPort;->tie:Lgnu/mapping/OutPort;

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->println()V

    .line 108
    :cond_2
    iput-boolean v1, p0, Lgnu/mapping/TtyInPort;->promptEmitted:Z

    .line 109
    return v0
.end method

.method public setPrompter(Lgnu/mapping/Procedure;)V
    .locals 0
    .param p1, "prompter"    # Lgnu/mapping/Procedure;

    .line 25
    iput-object p1, p0, Lgnu/mapping/TtyInPort;->prompter:Lgnu/mapping/Procedure;

    .line 26
    return-void
.end method
