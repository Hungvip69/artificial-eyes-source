.class public Lgnu/kawa/xml/WriteTo;
.super Lgnu/mapping/Procedure2;
.source "WriteTo.java"


# static fields
.field public static final writeTo:Lgnu/kawa/xml/WriteTo;

.field public static final writeToIfChanged:Lgnu/kawa/xml/WriteTo;


# instance fields
.field ifChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeTo:Lgnu/kawa/xml/WriteTo;

    .line 16
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    .line 17
    sget-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "ppath"    # Lgnu/text/Path;
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, p2, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 23
    .local v0, "out":Lgnu/mapping/OutPort;
    new-instance v1, Lgnu/xml/XMLPrinter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 24
    .local v1, "consumer":Lgnu/xml/XMLPrinter;
    invoke-virtual {p1}, Lgnu/text/Path;->getExtension()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "extension":Ljava/lang/String;
    const-string v3, "html"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-virtual {v1, v3}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-static {p0, v1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 28
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->close()V

    .line 29
    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 34
    .local v0, "ppath":Lgnu/text/Path;
    invoke-virtual {v0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 35
    .local v1, "outs":Ljava/io/OutputStream;
    invoke-static {p0, v0, v1}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    .line 36
    return-void
.end method

.method public static writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 42
    .local v0, "ppath":Lgnu/text/Path;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, v1}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 47
    .local v2, "bbuf":[B
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v3, "ins":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 50
    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 51
    .local v5, "b":I
    array-length v6, v2

    if-ne v4, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 52
    .local v6, "atend":Z
    :goto_1
    if-gez v5, :cond_2

    .line 54
    if-nez v6, :cond_1

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 57
    return-void

    .line 59
    :cond_2
    if-nez v6, :cond_4

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    aget-byte v4, v2, v4

    if-eq v4, v5, :cond_3

    .line 60
    goto :goto_2

    .line 61
    .end local v5    # "b":I
    .end local v6    # "atend":Z
    :cond_3
    move v4, v7

    goto :goto_0

    .line 62
    .end local v7    # "i":I
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v3    # "ins":Ljava/io/InputStream;
    goto :goto_3

    .line 64
    :catchall_0
    move-exception v3

    .line 68
    :goto_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v3, "fout":Ljava/io/OutputStream;
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 72
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fileName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/WriteTo;->writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :goto_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method
