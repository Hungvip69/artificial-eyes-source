.class public Lgnu/mapping/OutPort;
.super Lgnu/lists/PrintConsumer;
.source "OutPort.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static errInitial:Lgnu/mapping/OutPort;

.field public static final errLocation:Lgnu/mapping/ThreadLocation;

.field static logFile:Ljava/io/Writer;

.field static outInitial:Lgnu/mapping/OutPort;

.field public static final outLocation:Lgnu/mapping/ThreadLocation;


# instance fields
.field private base:Ljava/io/Writer;

.field protected bout:Lgnu/text/PrettyWriter;

.field numberFormat:Ljava/text/NumberFormat;

.field public objectFormat:Lgnu/lists/AbstractFormat;

.field path:Lgnu/text/Path;

.field public printReadable:Z

.field protected unregisterRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 91
    new-instance v0, Lgnu/mapping/OutPort;

    new-instance v1, Lgnu/mapping/LogWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "/dev/stdout"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    .line 93
    new-instance v0, Lgnu/mapping/OutPort;

    new-instance v1, Lgnu/mapping/LogWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lgnu/mapping/LogWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "/dev/stderr"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    invoke-direct {v0, v1, v3, v3, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    sput-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    .line 95
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    .line 97
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "err-default"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    .line 100
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    sget-object v1, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/OutPort;Z)V
    .locals 1
    .param p1, "out"    # Lgnu/mapping/OutPort;
    .param p2, "autoflush"    # Z

    .line 36
    iget-object v0, p1, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "path"    # Lgnu/text/Path;

    .line 66
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZLgnu/text/Path;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 71
    instance-of v0, p1, Lgnu/mapping/OutPort;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, v1}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lgnu/text/Path;)V
    .locals 1
    .param p1, "base"    # Ljava/io/Writer;
    .param p2, "path"    # Lgnu/text/Path;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 80
    iput-object p2, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V
    .locals 1
    .param p1, "base"    # Ljava/io/Writer;
    .param p2, "out"    # Lgnu/text/PrettyWriter;
    .param p3, "autoflush"    # Z

    .line 27
    invoke-direct {p0, p2, p3}, Lgnu/lists/PrintConsumer;-><init>(Ljava/io/Writer;Z)V

    .line 28
    iput-object p2, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    .line 29
    iput-object p1, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    .line 30
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->closeOnExit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0, p2}, Lgnu/text/WriterManager;->register(Ljava/io/Writer;)Lgnu/text/WriterRef;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/io/Writer;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoflush"    # Z

    .line 41
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/text/PrettyWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZLgnu/text/Path;)V
    .locals 1
    .param p1, "base"    # Ljava/io/Writer;
    .param p2, "autoflush"    # Z
    .param p3, "path"    # Lgnu/text/Path;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 86
    iput-object p3, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZ)V
    .locals 1
    .param p1, "base"    # Ljava/io/Writer;
    .param p2, "printPretty"    # Z
    .param p3, "autoflush"    # Z

    .line 49
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, p2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {p0, p1, v0, p3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZZLgnu/text/Path;)V
    .locals 1
    .param p1, "base"    # Ljava/io/Writer;
    .param p2, "printPretty"    # Z
    .param p3, "autoflush"    # Z
    .param p4, "path"    # Lgnu/text/Path;

    .line 55
    new-instance v0, Lgnu/text/PrettyWriter;

    invoke-direct {v0, p1, p2}, Lgnu/text/PrettyWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {p0, p1, v0, p3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/PrettyWriter;Z)V

    .line 56
    iput-object p4, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    .line 57
    return-void
.end method

.method public static closeLogFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 153
    sput-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 155
    :cond_0
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/LogWriter;

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 157
    :cond_1
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/LogWriter;

    move-object v2, v1

    check-cast v2, Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 159
    :cond_2
    return-void
.end method

.method public static errDefault()Lgnu/mapping/OutPort;
    .locals 1

    .line 113
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method protected static final isWordChar(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 188
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static openFile(Ljava/lang/Object;)Lgnu/mapping/OutPort;
    .locals 5
    .param p0, "fname"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    const-string v1, "port-char-encoding"

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "conv":Ljava/lang/Object;
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    .line 126
    .local v1, "path":Lgnu/text/Path;
    invoke-virtual {v1}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 127
    .local v2, "strm":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 129
    if-eqz v0, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v3, :cond_1

    .line 134
    const-string v0, "8859_1"

    .line 135
    :cond_1
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .local v3, "wr":Ljava/io/Writer;
    goto :goto_1

    .line 130
    .end local v3    # "wr":Ljava/io/Writer;
    :cond_2
    :goto_0
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .restart local v3    # "wr":Ljava/io/Writer;
    :goto_1
    new-instance v4, Lgnu/mapping/OutPort;

    invoke-direct {v4, v3, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Lgnu/text/Path;)V

    return-object v4
.end method

.method public static outDefault()Lgnu/mapping/OutPort;
    .locals 1

    .line 103
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/OutPort;

    return-object v0
.end method

.method public static runCleanups()V
    .locals 1

    .line 383
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->run()V

    .line 384
    return-void
.end method

.method public static setErrDefault(Lgnu/mapping/OutPort;)V
    .locals 1
    .param p0, "e"    # Lgnu/mapping/OutPort;

    .line 118
    sget-object v0, Lgnu/mapping/OutPort;->errLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static setLogFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lgnu/mapping/OutPort;->closeLogFile()V

    .line 165
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    .line 166
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lgnu/mapping/OutPort;->outInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/LogWriter;

    sget-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 168
    :cond_1
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lgnu/mapping/OutPort;->errInitial:Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/LogWriter;

    sget-object v1, Lgnu/mapping/OutPort;->logFile:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lgnu/mapping/LogWriter;->setLogFile(Ljava/io/Writer;)V

    .line 170
    :cond_2
    return-void
.end method

.method public static setOutDefault(Lgnu/mapping/OutPort;)V
    .locals 1
    .param p0, "o"    # Lgnu/mapping/OutPort;

    .line 108
    sget-object v0, Lgnu/mapping/OutPort;->outLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method public clearBuffer()V
    .locals 1

    .line 340
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->clearBuffer()V

    .line 341
    return-void
.end method

.method public close()V
    .locals 2

    .line 362
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v1, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    goto :goto_1

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->setError()V

    .line 371
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    iget-object v1, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    .line 372
    return-void
.end method

.method protected closeOnExit()Z
    .locals 1

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public closeThis()V
    .locals 2

    .line 348
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/OutPort;

    iget-object v0, v0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    iget-object v1, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-eq v0, v1, :cond_1

    .line 349
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->closeThis()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_1
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->setError()V

    .line 355
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    iget-object v1, p0, Lgnu/mapping/OutPort;->unregisterRef:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgnu/text/WriterManager;->unregister(Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method public echo([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    instance-of v0, v0, Lgnu/mapping/LogWriter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lgnu/mapping/OutPort;->base:Ljava/io/Writer;

    check-cast v0, Lgnu/mapping/LogWriter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/LogWriter;->echo([CII)V

    .line 144
    :cond_0
    return-void
.end method

.method public endAttribute()V
    .locals 1

    .line 300
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractFormat;->endAttribute(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 303
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 304
    :goto_0
    return-void
.end method

.method public endElement()V
    .locals 1

    .line 277
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p0}, Lgnu/lists/AbstractFormat;->endElement(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 280
    :cond_0
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 281
    :goto_0
    return-void
.end method

.method public endLogicalBlock(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->endLogicalBlock(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public freshLine()V
    .locals 1

    .line 323
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v0

    .line 324
    .local v0, "col":I
    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lgnu/mapping/OutPort;->println()V

    .line 326
    :cond_0
    return-void
.end method

.method public getColumnNumber()I
    .locals 1

    .line 330
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public print(D)V
    .locals 1
    .param p1, "v"    # D

    .line 216
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 217
    invoke-super {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(D)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void
.end method

.method public print(F)V
    .locals 3
    .param p1, "v"    # F

    .line 224
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(F)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void
.end method

.method public print(I)V
    .locals 3
    .param p1, "v"    # I

    .line 200
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 201
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(I)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void
.end method

.method public print(J)V
    .locals 1
    .param p1, "v"    # J

    .line 208
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0, p1, p2}, Lgnu/lists/PrintConsumer;->print(J)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 255
    const-string v0, "#<output-port"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    if-eqz v0, :cond_0

    .line 258
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 259
    iget-object v0, p0, Lgnu/mapping/OutPort;->path:Lgnu/text/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 261
    :cond_0
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 262
    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/PrintConsumer;)V

    goto :goto_1

    .line 247
    :cond_0
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_1

    .line 248
    move-object v0, p1

    check-cast v0, Lgnu/lists/Consumable;

    invoke-interface {v0, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 250
    :cond_1
    if-nez p1, :cond_2

    const-string v0, "null"

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0}, Lgnu/lists/PrintConsumer;->print(Ljava/lang/Object;)V

    .line 251
    :goto_1
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .line 240
    if-nez p1, :cond_0

    const-string v0, "(null)"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public print(Z)V
    .locals 1
    .param p1, "v"    # Z

    .line 232
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-nez v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Lgnu/lists/PrintConsumer;->print(Z)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    .line 236
    :goto_0
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 1
    .param p1, "column"    # I

    .line 335
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->setColumnNumber(I)V

    .line 336
    return-void
.end method

.method public setIndentation(IZ)V
    .locals 1
    .param p1, "amount"    # I
    .param p2, "current"    # Z

    .line 438
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1, p2}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    .line 439
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->startAttribute(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 291
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 292
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 293
    const-string v0, ": "

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    invoke-virtual {v0, p1, p0}, Lgnu/lists/AbstractFormat;->startElement(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 270
    :cond_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 271
    invoke-virtual {p0, p1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "indent"    # I

    .line 394
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 395
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    if-nez p1, :cond_0

    move v2, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p3, v2

    :goto_0
    invoke-virtual {v0, v2, v1}, Lgnu/text/PrettyWriter;->addIndentation(IZ)V

    .line 397
    return-void
.end method

.method public startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "perLine"    # Z
    .param p3, "suffix"    # Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/PrettyWriter;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 390
    return-void
.end method

.method public writeBreak(I)V
    .locals 1
    .param p1, "kind"    # I

    .line 406
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->writeBreak(I)V

    .line 407
    return-void
.end method

.method public writeBreakFill()V
    .locals 1

    .line 433
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 434
    return-void
.end method

.method public writeBreakLinear()V
    .locals 1

    .line 421
    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 422
    return-void
.end method

.method public writeSpaceFill()V
    .locals 1

    .line 427
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(I)V

    .line 428
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 429
    return-void
.end method

.method public writeSpaceLinear()V
    .locals 1

    .line 411
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->write(I)V

    .line 412
    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    .line 413
    return-void
.end method

.method public writeWordEnd()V
    .locals 1

    .line 309
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->writeWordEnd()V

    .line 310
    return-void
.end method

.method public writeWordStart()V
    .locals 1

    .line 318
    iget-object v0, p0, Lgnu/mapping/OutPort;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->writeWordStart()V

    .line 319
    return-void
.end method
