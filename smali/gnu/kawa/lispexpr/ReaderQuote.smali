.class public Lgnu/kawa/lispexpr/ReaderQuote;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderQuote.java"


# instance fields
.field magicSymbol:Ljava/lang/Object;

.field magicSymbol2:Ljava/lang/Object;

.field next:C


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "magicSymbol"    # Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;CLjava/lang/Object;)V
    .locals 0
    .param p1, "magicSymbol"    # Ljava/lang/Object;
    .param p2, "next"    # C
    .param p3, "magicSymbol2"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 26
    iput-char p2, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    .line 27
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 9
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 34
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    .line 35
    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "file":Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 37
    .local v2, "line1":I
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 38
    .local v3, "column1":I
    iget-object v4, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol:Ljava/lang/Object;

    .line 39
    .local v4, "magic":Ljava/lang/Object;
    iget-char v5, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-eqz v5, :cond_1

    .line 41
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p2

    .line 42
    iget-char v5, p0, Lgnu/kawa/lispexpr/ReaderQuote;->next:C

    if-ne p2, v5, :cond_0

    .line 43
    iget-object v4, p0, Lgnu/kawa/lispexpr/ReaderQuote;->magicSymbol2:Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    if-ltz p2, :cond_1

    .line 45
    invoke-virtual {v0, p2}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 48
    .local v5, "line2":I
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 49
    .local v6, "column2":I
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 50
    .local v7, "operand":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8, v1, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v8

    invoke-static {v4, v8, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v8

    return-object v8
.end method
