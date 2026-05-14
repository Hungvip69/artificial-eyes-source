.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;
.super Ljava/lang/Object;
.source "BitInputStream.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;


# static fields
.field static final mask:[I


# instance fields
.field private available:I

.field private in:Ljava/io/InputStream;

.field private nrBits:J

.field private unread:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->mask:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "firstByte"    # I

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    .line 86
    iput p2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    .line 87
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    .line 88
    return-void
.end method


# virtual methods
.method public bit()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->read(I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nrBits()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    return-wide v0
.end method

.method public pad(I)Z
    .locals 4
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    int-to-long v2, p1

    rem-long/2addr v0, v2

    long-to-int v1, v0

    sub-int v0, p1, v1

    .line 123
    .local v0, "padding":I
    const/4 v1, 0x1

    .line 125
    .local v1, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->bit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 125
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public read(I)I
    .locals 6
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    if-nez p1, :cond_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    if-ltz p1, :cond_5

    const/16 v0, 0x20

    if-gt p1, v0, :cond_5

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "result":I
    :goto_0
    if-lez p1, :cond_4

    .line 150
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    .line 152
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    if-ltz v1, :cond_1

    .line 155
    const/16 v1, 0x8

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    goto :goto_1

    .line 153
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempt to read past end."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_2
    :goto_1
    move v1, p1

    .line 158
    .local v1, "take":I
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    if-le v1, v2, :cond_3

    .line 159
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    .line 161
    :cond_3
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->unread:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    sub-int/2addr v3, v1

    ushr-int/2addr v2, v3

    sget-object v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->mask:[I

    aget v3, v3, v1

    and-int/2addr v2, v3

    sub-int v3, p1, v1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 163
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->nrBits:J

    .line 164
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitInputStream;->available:I

    .line 165
    sub-int/2addr p1, v1

    .line 166
    .end local v1    # "take":I
    goto :goto_0

    .line 167
    :cond_4
    return v0

    .line 146
    .end local v0    # "result":I
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad read width."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
