.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;
.super Ljava/lang/Object;
.source "BitOutputStream.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;


# instance fields
.field private nrBits:J

.field private out:Ljava/io/OutputStream;

.field private unwritten:I

.field private vacant:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->nrBits:J

    .line 56
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    .line 67
    return-void
.end method


# virtual methods
.method public nrBits()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->nrBits:J

    return-wide v0
.end method

.method public one()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->write(II)V

    .line 85
    return-void
.end method

.method public pad(I)V
    .locals 4
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->nrBits:J

    int-to-long v2, p1

    rem-long/2addr v0, v2

    long-to-int v1, v0

    sub-int v0, p1, v1

    .line 99
    .local v0, "padding":I
    and-int/lit8 v1, v0, 0x7

    .line 100
    .local v1, "excess":I
    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 101
    invoke-virtual {p0, v2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->write(II)V

    .line 102
    sub-int/2addr v0, v1

    .line 104
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 105
    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->write(II)V

    .line 106
    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 109
    return-void
.end method

.method public write(II)V
    .locals 5
    .param p1, "bits"    # I
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    if-lez p2, :cond_4

    const/16 v0, 0x20

    if-gt p2, v0, :cond_4

    .line 127
    :goto_0
    if-lez p2, :cond_3

    .line 128
    move v0, p2

    .line 129
    .local v0, "actual":I
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    if-le v0, v1, :cond_1

    .line 130
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    .line 132
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->unwritten:I

    sub-int v2, p2, v0

    ushr-int v2, p1, v2

    sget-object v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->mask:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    sub-int/2addr v3, v0

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->unwritten:I

    .line 134
    sub-int/2addr p2, v0

    .line 135
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->nrBits:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->nrBits:J

    .line 136
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    .line 137
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->unwritten:I

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->unwritten:I

    .line 140
    const/16 v1, 0x8

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->vacant:I

    .line 142
    .end local v0    # "actual":I
    :cond_2
    goto :goto_0

    .line 143
    :cond_3
    return-void

    .line 125
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad write width."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public zero()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitOutputStream;->write(II)V

    .line 153
    return-void
.end method
