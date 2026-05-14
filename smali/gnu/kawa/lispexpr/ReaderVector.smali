.class public Lgnu/kawa/lispexpr/ReaderVector;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderVector.java"


# instance fields
.field close:C


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .param p1, "close"    # C

    .line 15
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 16
    iput-char p1, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    .line 17
    return-void
.end method

.method public static readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;
    .locals 9
    .param p0, "lexer"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "port"    # Lgnu/text/LineBufferedReader;
    .param p2, "count"    # I
    .param p3, "close"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 28
    const/16 v0, 0x20

    .line 29
    .local v0, "saveReadState":C
    instance-of v1, p1, Lgnu/mapping/InPort;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, p1

    check-cast v1, Lgnu/mapping/InPort;

    iget-char v0, v1, Lgnu/mapping/InPort;->readState:C

    .line 32
    move-object v1, p1

    check-cast v1, Lgnu/mapping/InPort;

    const/16 v2, 0x5d

    if-ne p3, v2, :cond_0

    const/16 v2, 0x5b

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    :goto_0
    iput-char v2, v1, Lgnu/mapping/InPort;->readState:C

    .line 36
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v1, "vec":Ljava/util/Vector;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v2

    .line 40
    .local v2, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    :goto_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 41
    .local v3, "ch":I
    if-gez v3, :cond_2

    .line 42
    const-string v4, "unexpected EOF in vector"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 43
    :cond_2
    if-ne v3, p3, :cond_4

    .line 44
    nop

    .line 60
    .end local v3    # "ch":I
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    .local v3, "objs":[Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 62
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4, v3}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    instance-of v5, p1, Lgnu/mapping/InPort;

    if-eqz v5, :cond_3

    .line 67
    move-object v5, p1

    check-cast v5, Lgnu/mapping/InPort;

    iput-char v0, v5, Lgnu/mapping/InPort;->readState:C

    :cond_3
    return-object v4

    .line 45
    .local v3, "ch":I
    :cond_4
    :try_start_1
    invoke-virtual {p0, v3, v2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lgnu/mapping/Values;

    if-eqz v5, :cond_6

    .line 48
    move-object v5, v4

    check-cast v5, Lgnu/mapping/Values;

    invoke-virtual {v5}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v5

    .line 49
    .local v5, "values":[Ljava/lang/Object;
    array-length v6, v5

    .line 50
    .local v6, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 51
    aget-object v8, v5, v7

    invoke-virtual {v1, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 52
    .end local v5    # "values":[Ljava/lang/Object;
    .end local v6    # "n":I
    .end local v7    # "i":I
    :cond_5
    goto :goto_3

    .line 55
    :cond_6
    sget-object v5, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne v4, v5, :cond_7

    .line 56
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v4, v5

    .line 57
    :cond_7
    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v3    # "ch":I
    .end local v4    # "value":Ljava/lang/Object;
    :goto_3
    goto :goto_1

    .line 66
    .end local v1    # "vec":Ljava/util/Vector;
    .end local v2    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    :catchall_0
    move-exception v1

    instance-of v2, p1, Lgnu/mapping/InPort;

    if-eqz v2, :cond_8

    .line 67
    move-object v2, p1

    check-cast v2, Lgnu/mapping/InPort;

    iput-char v0, v2, Lgnu/mapping/InPort;->readState:C

    :cond_8
    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 22
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    iget-char v2, p0, Lgnu/kawa/lispexpr/ReaderVector;->close:C

    invoke-static {v0, v1, p3, v2}, Lgnu/kawa/lispexpr/ReaderVector;->readVector(Lgnu/kawa/lispexpr/LispReader;Lgnu/text/LineBufferedReader;IC)Lgnu/lists/FVector;

    move-result-object v0

    return-object v0
.end method
