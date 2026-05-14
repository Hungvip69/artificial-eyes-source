.class final Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;
.super Lcom/google/protobuf/CodedOutputStream$AbstractBufferedEncoder;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteOutputEncoder"
.end annotation


# instance fields
.field private final out:Lcom/google/protobuf/ByteOutput;


# direct methods
.method constructor <init>(Lcom/google/protobuf/ByteOutput;I)V
    .locals 2
    .param p1, "out"    # Lcom/google/protobuf/ByteOutput;
    .param p2, "bufferSize"    # I

    .line 1988
    invoke-direct {p0, p2}, Lcom/google/protobuf/CodedOutputStream$AbstractBufferedEncoder;-><init>(I)V

    .line 1989
    if-eqz p1, :cond_0

    .line 1992
    iput-object p1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/protobuf/ByteOutput;

    .line 1993
    return-void

    .line 1990
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doFlush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2278
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/protobuf/ByteOutput;

    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/protobuf/ByteOutput;->write([BII)V

    .line 2279
    iput v3, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2280
    return-void
.end method

.method private flushIfNotAvailable(I)V
    .locals 2
    .param p1, "requiredSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2272
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2273
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2275
    :cond_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2235
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    if-lez v0, :cond_0

    .line 2237
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2239
    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 2
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2131
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-ne v0, v1, :cond_0

    .line 2132
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    .line 2136
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2257
    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2258
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2259
    .local v0, "length":I
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ByteOutput;->write(Ljava/nio/ByteBuffer;)V

    .line 2260
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2261
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2243
    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2244
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteOutput;->write([BII)V

    .line 2245
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2246
    return-void
.end method

.method public writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2037
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2038
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2039
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer(B)V

    .line 2040
    return-void
.end method

.method public writeByteArray(I[B)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2056
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArray(I[BII)V

    .line 2057
    return-void
.end method

.method public writeByteArray(I[BII)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2063
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2064
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeByteArrayNoTag([BII)V

    .line 2065
    return-void
.end method

.method public writeByteArrayNoTag([BII)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2083
    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2084
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    .line 2085
    return-void
.end method

.method public writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2070
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2071
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2072
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeRawBytes(Ljava/nio/ByteBuffer;)V

    .line 2073
    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2050
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2051
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 2052
    return-void
.end method

.method public writeBytesNoTag(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2077
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2078
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/ByteOutput;)V

    .line 2079
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2016
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2017
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2018
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    .line 2019
    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2156
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2157
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed32NoTag(I)V

    .line 2158
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2030
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2031
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2032
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    .line 2033
    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2168
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2169
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferFixed64NoTag(J)V

    .line 2170
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2002
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2003
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2004
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferInt32NoTag(I)V

    .line 2005
    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2140
    if-ltz p1, :cond_0

    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    goto :goto_0

    .line 2144
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt64NoTag(J)V

    .line 2146
    :goto_0
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2265
    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2266
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2267
    .local v0, "length":I
    iget-object v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/protobuf/ByteOutput;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ByteOutput;->writeLazy(Ljava/nio/ByteBuffer;)V

    .line 2268
    iget v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2269
    return-void
.end method

.method public writeLazy([BII)V
    .locals 1
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2250
    invoke-virtual {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flush()V

    .line 2251
    iget-object v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->out:Lcom/google/protobuf/ByteOutput;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ByteOutput;->writeLazy([BII)V

    .line 2252
    iget v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2253
    return-void
.end method

.method public writeMessage(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2101
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2102
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    .line 2103
    return-void
.end method

.method public writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2126
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2127
    return-void
.end method

.method public writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2108
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2109
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2110
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2111
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2112
    return-void
.end method

.method public writeRawBytes(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2089
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2090
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->write([BII)V

    goto :goto_0

    .line 2092
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2093
    .local v0, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2094
    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->write(Ljava/nio/ByteBuffer;)V

    .line 2096
    .end local v0    # "duplicated":Ljava/nio/ByteBuffer;
    :goto_0
    return-void
.end method

.method public writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2117
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2118
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32(II)V

    .line 2119
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2120
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2121
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2044
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeTag(II)V

    .line 2045
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeStringNoTag(Ljava/lang/String;)V

    .line 2046
    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2177
    .local v0, "maxLength":I
    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v1

    .line 2181
    .local v1, "maxLengthVarIntSize":I
    add-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    if-le v2, v3, :cond_0

    .line 2186
    new-array v2, v0, [B

    .line 2187
    .local v2, "encodedBytes":[B
    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2188
    .local v4, "actualLength":I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 2189
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeLazy([BII)V

    .line 2190
    return-void

    .line 2194
    .end local v2    # "encodedBytes":[B
    .end local v4    # "actualLength":I
    :cond_0
    add-int v2, v1, v0

    iget v3, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 2196
    invoke-direct {p0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->doFlush()V

    .line 2199
    :cond_1
    iget v2, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2203
    .local v2, "oldPosition":I
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->computeUInt32SizeNoTag(I)I

    move-result v3

    .line 2205
    .local v3, "minLengthVarIntSize":I
    if-ne v3, v1, :cond_2

    .line 2206
    add-int v4, v2, v3

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2207
    iget-object v4, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->limit:I

    iget v7, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v6, v7

    invoke-static {p1, v4, v5, v6}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v4

    .line 2210
    .local v4, "newPosition":I
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2211
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    .line 2212
    .local v5, "length":I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2213
    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2214
    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2215
    .end local v4    # "newPosition":I
    .end local v5    # "length":I
    goto :goto_0

    .line 2216
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v4

    .line 2217
    .local v4, "length":I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2218
    iget-object v5, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->buffer:[B

    iget v6, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    invoke-static {p1, v5, v6, v4}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v5

    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2219
    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I
    :try_end_0
    .catch Lcom/google/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2228
    .end local v3    # "minLengthVarIntSize":I
    .end local v4    # "length":I
    :catch_0
    move-exception v3

    .line 2229
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {v4, v3}, Lcom/google/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 2221
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 2223
    .local v3, "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    iget v4, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    iget v5, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    sub-int/2addr v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->totalBytesWritten:I

    .line 2224
    iput v2, p0, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->position:I

    .line 2227
    invoke-virtual {p0, p1, v3}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->inefficientWriteStringNoTag(Ljava/lang/String;Lcom/google/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 2230
    .end local v3    # "e":Lcom/google/protobuf/Utf8$UnpairedSurrogateException;
    :goto_0
    nop

    .line 2231
    return-void
.end method

.method public writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1997
    invoke-static {p1, p2}, Lcom/google/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->writeUInt32NoTag(I)V

    .line 1998
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2009
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2010
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2011
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2012
    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2150
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2151
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt32NoTag(I)V

    .line 2152
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2023
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2024
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferTag(II)V

    .line 2025
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    .line 2026
    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2162
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->flushIfNotAvailable(I)V

    .line 2163
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream$ByteOutputEncoder;->bufferUInt64NoTag(J)V

    .line 2164
    return-void
.end method
