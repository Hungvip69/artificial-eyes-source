.class public Lgnu/bytecode/ZipLoader;
.super Ljava/lang/ClassLoader;
.source "ZipLoader.java"


# instance fields
.field private loadedClasses:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field size:I

.field zar:Ljava/util/zip/ZipFile;

.field private zipname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lgnu/bytecode/ZipLoader;->size:I

    .line 34
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 38
    .local v1, "ent":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    iget v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    .line 40
    .end local v1    # "ent":Ljava/util/zip/ZipEntry;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Ljava/util/Vector;

    iget v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    .line 150
    return-void
.end method

.method public loadAllClasses()Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 122
    .local v0, "e":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 123
    .local v1, "mainClass":Ljava/lang/Class;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 127
    .local v2, "member":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "/class"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    long-to-int v4, v6

    .line 130
    .local v4, "member_size":I
    iget-object v6, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 131
    .local v6, "strm":Ljava/io/InputStream;
    new-array v7, v4, [B

    .line 132
    .local v7, "bytes":[B
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 133
    invoke-virtual {p0, v3, v7, v5, v4}, Lgnu/bytecode/ZipLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v5

    .line 134
    .local v5, "clas":Ljava/lang/Class;
    if-nez v1, :cond_0

    .line 135
    move-object v1, v5

    .line 136
    :cond_0
    iget-object v8, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 137
    iget-object v8, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    .end local v2    # "member":Ljava/util/zip/ZipEntry;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "member_size":I
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "strm":Ljava/io/InputStream;
    .end local v7    # "bytes":[B
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ZipLoader;->close()V

    .line 140
    return-object v1
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 53
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 54
    iget-object p1, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    goto/16 :goto_2

    .line 55
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    mul-int/lit8 v2, v2, 0x2

    if-ne v0, v2, :cond_1

    .line 56
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto/16 :goto_2

    .line 59
    :cond_1
    nop

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    const-string v3, "\": "

    const-string v4, " from ziparchive \""

    const-string v5, "IOException while loading "

    const/4 v6, 0x0

    if-nez v2, :cond_2

    .line 64
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v7, p0, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .line 73
    goto :goto_0

    .line 67
    :catch_0
    move-exception p2

    .line 69
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 75
    :goto_0
    iget-object v2, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 76
    if-nez v2, :cond_4

    .line 77
    if-eqz v1, :cond_3

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lgnu/bytecode/ZipLoader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    goto :goto_1

    .line 80
    :catch_1
    move-exception p1

    .line 81
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to close \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lgnu/bytecode/ZipLoader;->zipname:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_2

    .line 90
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    long-to-int v1, v7

    .line 91
    iget-object v7, p0, Lgnu/bytecode/ZipLoader;->zar:Ljava/util/zip/ZipFile;

    invoke-virtual {v7, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 92
    new-array v7, v1, [B

    .line 93
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 94
    invoke-virtual {p0, p1, v7, v6, v1}, Lgnu/bytecode/ZipLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 97
    iget v2, p0, Lgnu/bytecode/ZipLoader;->size:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v6, p0, Lgnu/bytecode/ZipLoader;->loadedClasses:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ne v2, v6, :cond_5

    .line 98
    invoke-virtual {p0}, Lgnu/bytecode/ZipLoader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :cond_5
    move-object p1, v1

    .line 110
    :goto_2
    if-eqz p2, :cond_6

    .line 111
    invoke-virtual {p0, p1}, Lgnu/bytecode/ZipLoader;->resolveClass(Ljava/lang/Class;)V

    .line 112
    :cond_6
    return-object p1

    .line 100
    :catch_2
    move-exception p2

    .line 102
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
