.class public Lkawa/TelnetInputStream;
.super Ljava/io/FilterInputStream;
.source "TelnetInputStream.java"


# static fields
.field static final SB_IAC:I = 0x190


# instance fields
.field protected buf:[B

.field connection:Lkawa/Telnet;

.field count:I

.field pos:I

.field state:I

.field subCommandLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkawa/Telnet;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "conn"    # Lkawa/Telnet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lkawa/TelnetInputStream;->state:I

    .line 30
    iput v0, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    .line 18
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lkawa/TelnetInputStream;->buf:[B

    .line 19
    iput-object p2, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    .line 20
    return-void
.end method


# virtual methods
.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    nop

    :goto_0
    iget v0, p0, Lkawa/TelnetInputStream;->pos:I

    iget v1, p0, Lkawa/TelnetInputStream;->count:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    .line 40
    iget-object v0, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 41
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    goto :goto_1

    .line 43
    :cond_0
    iget-object v1, p0, Lkawa/TelnetInputStream;->buf:[B

    array-length v1, v1

    iget v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lkawa/TelnetInputStream;->buf:[B

    array-length v1, v1

    iget v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    sub-int v0, v1, v3

    .line 47
    :cond_1
    :goto_1
    iget-object v1, p0, Lkawa/TelnetInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v4, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 48
    iget v1, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    iput v1, p0, Lkawa/TelnetInputStream;->pos:I

    .line 49
    iput v0, p0, Lkawa/TelnetInputStream;->count:I

    .line 50
    if-gtz v0, :cond_2

    .line 51
    return v2

    .line 53
    .end local v0    # "avail":I
    :cond_2
    iget-object v0, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->pos:I

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 54
    .local v0, "ch":I
    iget v3, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v3, :cond_4

    .line 56
    if-eq v0, v1, :cond_3

    .line 57
    return v0

    .line 58
    :cond_3
    iput v1, p0, Lkawa/TelnetInputStream;->state:I

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    iget v3, p0, Lkawa/TelnetInputStream;->state:I

    const/16 v4, 0xfe

    const/16 v5, 0xfd

    const/16 v6, 0xfc

    const/16 v7, 0xfb

    const/16 v8, 0xfa

    const/4 v9, 0x0

    if-ne v3, v1, :cond_a

    .line 63
    if-ne v0, v1, :cond_5

    .line 65
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    .line 66
    return v1

    .line 68
    :cond_5
    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_9

    if-ne v0, v8, :cond_6

    goto :goto_2

    .line 76
    :cond_6
    const/16 v1, 0xf4

    if-ne v0, v1, :cond_7

    .line 78
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Interrupt Process"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_4

    .line 81
    :cond_7
    const/16 v1, 0xec

    if-ne v0, v1, :cond_8

    .line 83
    return v2

    .line 87
    :cond_8
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_4

    .line 74
    :cond_9
    :goto_2
    iput v0, p0, Lkawa/TelnetInputStream;->state:I

    goto/16 :goto_4

    .line 90
    :cond_a
    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    if-eq v2, v7, :cond_11

    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    if-eq v2, v6, :cond_11

    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    if-eq v2, v5, :cond_11

    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    if-ne v2, v4, :cond_b

    goto :goto_3

    .line 96
    :cond_b
    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    const/16 v3, 0x190

    if-ne v2, v8, :cond_d

    .line 98
    if-ne v0, v1, :cond_c

    .line 99
    iput v3, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_4

    .line 101
    :cond_c
    iget-object v1, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v2, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    goto :goto_4

    .line 103
    :cond_d
    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    if-ne v2, v3, :cond_10

    .line 105
    if-ne v0, v1, :cond_e

    .line 107
    iget-object v1, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v2, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 108
    iput v8, p0, Lkawa/TelnetInputStream;->state:I

    goto :goto_4

    .line 110
    :cond_e
    const/16 v1, 0xf0

    if-ne v0, v1, :cond_f

    .line 112
    iget-object v1, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    iget-object v2, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v3, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    invoke-virtual {v1, v2, v9, v3}, Lkawa/Telnet;->subCommand([BII)V

    .line 113
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    .line 114
    iput v9, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto :goto_4

    .line 118
    :cond_f
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    .line 119
    iput v9, p0, Lkawa/TelnetInputStream;->subCommandLength:I

    goto :goto_4

    .line 123
    :cond_10
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkawa/TelnetInputStream;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 93
    :cond_11
    :goto_3
    iget-object v1, p0, Lkawa/TelnetInputStream;->connection:Lkawa/Telnet;

    iget v2, p0, Lkawa/TelnetInputStream;->state:I

    invoke-virtual {v1, v2, v0}, Lkawa/Telnet;->handle(II)V

    .line 94
    iput v9, p0, Lkawa/TelnetInputStream;->state:I

    .line 124
    .end local v0    # "ch":I
    :goto_4
    goto/16 :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    if-gtz p3, :cond_0

    .line 130
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "done":I
    iget v1, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v1, :cond_1

    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    iget v2, p0, Lkawa/TelnetInputStream;->count:I

    if-lt v1, v2, :cond_3

    .line 134
    :cond_1
    invoke-virtual {p0}, Lkawa/TelnetInputStream;->read()I

    move-result v1

    .line 135
    .local v1, "ch":I
    if-gez v1, :cond_2

    .line 136
    return v1

    .line 137
    :cond_2
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v1

    aput-byte v3, p1, p2

    .line 138
    add-int/lit8 v0, v0, 0x1

    move p2, v2

    .line 140
    .end local v1    # "ch":I
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_3
    iget v1, p0, Lkawa/TelnetInputStream;->state:I

    if-nez v1, :cond_5

    .line 142
    :goto_0
    iget v1, p0, Lkawa/TelnetInputStream;->pos:I

    iget v2, p0, Lkawa/TelnetInputStream;->count:I

    if-ge v1, v2, :cond_5

    if-ge v0, p3, :cond_5

    .line 144
    iget-object v1, p0, Lkawa/TelnetInputStream;->buf:[B

    iget v2, p0, Lkawa/TelnetInputStream;->pos:I

    aget-byte v1, v1, v2

    .line 145
    .local v1, "ch":B
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .restart local v2    # "offset":I
    aput-byte v1, p1, p2

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 149
    iget p2, p0, Lkawa/TelnetInputStream;->pos:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lkawa/TelnetInputStream;->pos:I

    .line 150
    .end local v1    # "ch":B
    move p2, v2

    goto :goto_0

    .line 152
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_5
    :goto_1
    return v0
.end method
