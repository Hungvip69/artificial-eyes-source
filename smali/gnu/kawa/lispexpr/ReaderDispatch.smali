.class public Lgnu/kawa/lispexpr/ReaderDispatch;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderDispatch.java"


# instance fields
.field kind:I

.field table:Lgnu/kawa/util/RangeTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 11
    new-instance v0, Lgnu/kawa/util/RangeTable;

    invoke-direct {v0}, Lgnu/kawa/util/RangeTable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    .line 32
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "nonTerminating"    # Z

    .line 35
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    .line 11
    new-instance v0, Lgnu/kawa/util/RangeTable;

    invoke-direct {v0}, Lgnu/kawa/util/RangeTable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    .line 36
    if-eqz p1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    .line 38
    return-void
.end method

.method public static create(Lgnu/kawa/lispexpr/ReadTable;)Lgnu/kawa/lispexpr/ReaderDispatch;
    .locals 4
    .param p0, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 44
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>()V

    .line 45
    .local v0, "tab":Lgnu/kawa/lispexpr/ReaderDispatch;
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v1

    .line 46
    .local v1, "entry":Lgnu/kawa/lispexpr/ReaderDispatchMisc;
    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 47
    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 48
    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 49
    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 50
    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 51
    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 52
    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 53
    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 54
    const/16 v2, 0x53

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 55
    const/16 v2, 0x54

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 56
    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 57
    const/16 v2, 0x58

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 58
    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 59
    const/16 v2, 0x3b

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 60
    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 61
    const/16 v2, 0x5c

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 62
    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 63
    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 65
    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 67
    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "function"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x27

    invoke-virtual {v0, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 68
    new-instance v2, Lgnu/kawa/lispexpr/ReaderVector;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderVector;-><init>(C)V

    const/16 v3, 0x28

    invoke-virtual {v0, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 70
    new-instance v2, Lgnu/kawa/lispexpr/ReaderXmlElement;

    invoke-direct {v2}, Lgnu/kawa/lispexpr/ReaderXmlElement;-><init>()V

    const/16 v3, 0x3c

    invoke-virtual {v0, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 72
    return-object v0
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .line 16
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->kind:I

    return v0
.end method

.method public lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;
    .locals 2
    .param p1, "key"    # I

    .line 26
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/util/RangeTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    return-object v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 78
    const/4 p3, -0x1

    .line 81
    :goto_0
    invoke-virtual {p1}, Lgnu/text/Lexer;->read()I

    move-result p2

    .line 82
    if-gez p2, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected EOF after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/text/Lexer;->eofError(Ljava/lang/String;)V

    .line 84
    :cond_0
    const/high16 v0, 0x10000

    if-le p2, v0, :cond_1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    int-to-char v0, p2

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 87
    .local v0, "digit":I
    if-gez v0, :cond_3

    .line 89
    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    .line 90
    nop

    .line 94
    .end local v0    # "digit":I
    :goto_1
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lgnu/kawa/util/RangeTable;->lookup(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/ReadTableEntry;

    .line 95
    .local v0, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    if-nez v0, :cond_2

    .line 98
    invoke-virtual {p1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/text/Lexer;->getLineNumber()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Lgnu/text/Lexer;->getColumnNumber()I

    move-result v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid dispatch character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x65

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 101
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 103
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 92
    .local v0, "digit":I
    :cond_3
    if-gez p3, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    mul-int/lit8 v1, p3, 0xa

    add-int/2addr v1, v0

    :goto_2
    move p3, v1

    .line 93
    .end local v0    # "digit":I
    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderDispatch;->table:Lgnu/kawa/util/RangeTable;

    invoke-virtual {v0, p1, p1, p2}, Lgnu/kawa/util/RangeTable;->set(IILjava/lang/Object;)V

    .line 22
    return-void
.end method
