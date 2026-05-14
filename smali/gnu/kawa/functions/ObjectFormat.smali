.class public Lgnu/kawa/functions/ObjectFormat;
.super Lgnu/text/ReportFormat;
.source "ObjectFormat.java"


# static fields
.field private static plainFormat:Lgnu/kawa/functions/ObjectFormat;

.field private static readableFormat:Lgnu/kawa/functions/ObjectFormat;


# instance fields
.field maxChars:I

.field readable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "readable"    # Z

    .line 38
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 39
    iput-boolean p1, p0, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    .line 40
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    .line 41
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "readable"    # Z
    .param p2, "maxChars"    # I

    .line 44
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 45
    iput-boolean p1, p0, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    .line 46
    iput p2, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    .line 47
    return-void
.end method

.method public static format([Ljava/lang/Object;ILjava/io/Writer;IZ)I
    .locals 2
    .param p0, "args"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "dst"    # Ljava/io/Writer;
    .param p3, "maxChars"    # I
    .param p4, "readable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    array-length v0, p0

    if-lt p1, v0, :cond_0

    .line 124
    const-string v0, "#<missing format argument>"

    .line 125
    .local v0, "arg":Ljava/lang/Object;
    add-int/lit8 p1, p1, -0x1

    .line 126
    const/4 p4, 0x0

    .line 127
    const/4 p3, -0x1

    goto :goto_0

    .line 130
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    aget-object v0, p0, p1

    .line 131
    .restart local v0    # "arg":Ljava/lang/Object;
    :goto_0
    invoke-static {v0, p2, p3, p4}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    .line 132
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public static format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "dst"    # Ljava/io/Writer;
    .param p2, "maxChars"    # I
    .param p3, "readable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x1

    if-gez p2, :cond_0

    instance-of v1, p1, Lgnu/mapping/OutPort;

    if-eqz v1, :cond_0

    .line 87
    move-object v1, p1

    check-cast v1, Lgnu/mapping/OutPort;

    invoke-static {p0, v1, p3}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 88
    return v0

    .line 90
    :cond_0
    if-gez p2, :cond_1

    instance-of v1, p1, Ljava/io/CharArrayWriter;

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Lgnu/mapping/OutPort;

    invoke-direct {v1, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 93
    .local v1, "oport":Lgnu/mapping/OutPort;
    invoke-static {p0, v1, p3}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 94
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->close()V

    .line 95
    return v0

    .line 99
    .end local v1    # "oport":Lgnu/mapping/OutPort;
    :cond_1
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 100
    .local v1, "wr":Ljava/io/CharArrayWriter;
    new-instance v2, Lgnu/mapping/OutPort;

    invoke-direct {v2, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 101
    .local v2, "oport":Lgnu/mapping/OutPort;
    invoke-static {p0, v2, p3}, Lgnu/kawa/functions/ObjectFormat;->print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V

    .line 102
    invoke-virtual {v2}, Lgnu/mapping/OutPort;->close()V

    .line 103
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->size()I

    move-result v3

    .line 104
    .local v3, "len":I
    if-ltz p2, :cond_3

    if-gt v3, p2, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, p2}, Ljava/io/Writer;->write([CII)V

    .line 112
    return v4

    .line 106
    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/CharArrayWriter;->writeTo(Ljava/io/Writer;)V

    .line 107
    return v0
.end method

.method public static getInstance(Z)Lgnu/kawa/functions/ObjectFormat;
    .locals 2
    .param p0, "readable"    # Z

    .line 23
    if-eqz p0, :cond_1

    .line 25
    sget-object v0, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lgnu/kawa/functions/ObjectFormat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    .line 27
    :cond_0
    sget-object v0, Lgnu/kawa/functions/ObjectFormat;->readableFormat:Lgnu/kawa/functions/ObjectFormat;

    return-object v0

    .line 31
    :cond_1
    sget-object v0, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    if-nez v0, :cond_2

    .line 32
    new-instance v0, Lgnu/kawa/functions/ObjectFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    .line 33
    :cond_2
    sget-object v0, Lgnu/kawa/functions/ObjectFormat;->plainFormat:Lgnu/kawa/functions/ObjectFormat;

    return-object v0
.end method

.method private static print(Ljava/lang/Object;Lgnu/mapping/OutPort;Z)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "out"    # Lgnu/mapping/OutPort;
    .param p2, "readable"    # Z

    .line 60
    iget-boolean v0, p1, Lgnu/mapping/OutPort;->printReadable:Z

    .line 61
    .local v0, "saveReadable":Z
    iget-object v1, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 64
    .local v1, "saveFormat":Lgnu/lists/AbstractFormat;
    :try_start_0
    iput-boolean p2, p1, Lgnu/mapping/OutPort;->printReadable:Z

    .line 65
    if-eqz p2, :cond_0

    sget-object v2, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0

    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    .line 67
    .local v2, "format":Lgnu/lists/AbstractFormat;
    :goto_0
    iput-object v2, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 68
    invoke-virtual {v2, p0, p1}, Lgnu/lists/AbstractFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v2    # "format":Lgnu/lists/AbstractFormat;
    iput-boolean v0, p1, Lgnu/mapping/OutPort;->printReadable:Z

    .line 73
    iput-object v1, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 74
    nop

    .line 75
    return-void

    .line 72
    :catchall_0
    move-exception v2

    iput-boolean v0, p1, Lgnu/mapping/OutPort;->printReadable:Z

    .line 73
    iput-object v1, p1, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    throw v2
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

    .line 52
    iget v0, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    const/4 v1, -0x1

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/ObjectFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 53
    .local v0, "maxChars":I
    iget v1, p0, Lgnu/kawa/functions/ObjectFormat;->maxChars:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 54
    :cond_0
    iget-boolean v1, p0, Lgnu/kawa/functions/ObjectFormat;->readable:Z

    invoke-static {p1, p2, p3, v0, v1}, Lgnu/kawa/functions/ObjectFormat;->format([Ljava/lang/Object;ILjava/io/Writer;IZ)I

    move-result v1

    return v1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ObjectFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
