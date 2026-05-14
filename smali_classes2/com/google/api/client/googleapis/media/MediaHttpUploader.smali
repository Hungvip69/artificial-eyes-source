.class public final Lcom/google/api/client/googleapis/media/MediaHttpUploader;
.super Ljava/lang/Object;
.source "MediaHttpUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;,
        Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    }
.end annotation


# static fields
.field public static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "X-Upload-Content-Length"

.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "X-Upload-Content-Type"

.field public static final DEFAULT_CHUNK_SIZE:I = 0xa00000

.field private static final KB:I = 0x400

.field static final MB:I = 0x100000

.field public static final MINIMUM_CHUNK_SIZE:I = 0x40000


# instance fields
.field private cachedByte:Ljava/lang/Byte;

.field private chunkSize:I

.field private contentInputStream:Ljava/io/InputStream;

.field private currentChunkLength:I

.field private currentRequest:Lcom/google/api/client/http/HttpRequest;

.field private currentRequestContentBuffer:[B

.field private directUploadEnabled:Z

.field private disableGZipContent:Z

.field private initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private initiationRequestMethod:Ljava/lang/String;

.field private isMediaContentLengthCalculated:Z

.field private final mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

.field private mediaContentLength:J

.field mediaContentLengthStr:Ljava/lang/String;

.field private metadata:Lcom/google/api/client/http/HttpContent;

.field private progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field sleeper:Lcom/google/api/client/util/Sleeper;

.field private totalBytesClientSent:J

.field private totalBytesServerReceived:J

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1
    .param p1, "mediaContent"    # Lcom/google/api/client/http/AbstractInputStreamContent;
    .param p2, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p3, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 181
    const-string v0, "POST"

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 213
    const-string v0, "*"

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    .line 226
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    .line 264
    sget-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 286
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/AbstractInputStreamContent;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 287
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 288
    if-nez p3, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 290
    return-void
.end method

.method private buildContentChunk()Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .local v1, "blockSize":I
    goto :goto_0

    .line 583
    .end local v1    # "blockSize":I
    :cond_0
    iget v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    .line 587
    .restart local v1    # "blockSize":I
    :goto_0
    move v0, v1

    .line 588
    .local v0, "actualBlockSize":I
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 590
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->mark(I)V

    .line 592
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/google/api/client/util/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v2

    .line 593
    .local v2, "limitInputStream":Ljava/io/InputStream;
    new-instance v4, Lcom/google/api/client/http/InputStreamContent;

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 594
    invoke-virtual {v5}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/InputStreamContent;->setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v4

    int-to-long v5, v1

    .line 595
    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/api/client/http/InputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v3

    .line 596
    .local v3, "contentChunk":Lcom/google/api/client/http/AbstractInputStreamContent;
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    .line 597
    .end local v2    # "limitInputStream":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 606
    .end local v3    # "contentChunk":Lcom/google/api/client/http/AbstractInputStreamContent;
    :cond_1
    const/4 v2, 0x0

    .line 607
    .local v2, "copyBytes":I
    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    if-nez v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-nez v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    .line 609
    .local v4, "bytesAllowedToRead":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    .line 610
    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-eqz v5, :cond_5

    .line 611
    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    iget-object v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v3

    goto :goto_2

    .line 622
    .end local v4    # "bytesAllowedToRead":I
    :cond_3
    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesClientSent:J

    iget-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 625
    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    iget v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    invoke-static {v4, v5, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-eqz v4, :cond_4

    .line 629
    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v4, v2

    .line 632
    :cond_4
    sub-int v4, v1, v2

    .line 635
    .restart local v4    # "bytesAllowedToRead":I
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v7, v4

    invoke-static {v5, v6, v7, v4}, Lcom/google/api/client/util/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v5

    .line 639
    .local v5, "actualBytesRead":I
    if-ge v5, v4, :cond_8

    .line 640
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v2

    .line 641
    .end local v0    # "actualBlockSize":I
    .local v6, "actualBlockSize":I
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    if-eqz v0, :cond_6

    .line 642
    add-int/lit8 v6, v6, 0x1

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    .line 646
    :cond_6
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    const-string v7, "*"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 649
    iget-wide v7, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    .line 655
    :cond_7
    move v0, v6

    goto :goto_3

    .line 652
    .end local v6    # "actualBlockSize":I
    .restart local v0    # "actualBlockSize":I
    :cond_8
    iget-object v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    aget-byte v6, v6, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    iput-object v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->cachedByte:Ljava/lang/Byte;

    .line 655
    :goto_3
    new-instance v6, Lcom/google/api/client/http/ByteArrayContent;

    iget-object v7, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 656
    invoke-virtual {v7}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    invoke-direct {v6, v7, v8, v3, v0}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[BII)V

    move-object v3, v6

    .line 657
    .restart local v3    # "contentChunk":Lcom/google/api/client/http/AbstractInputStreamContent;
    iget-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesClientSent:J

    .line 660
    .end local v2    # "copyBytes":I
    .end local v4    # "bytesAllowedToRead":I
    .end local v5    # "actualBytesRead":I
    :goto_4
    iput v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I

    .line 663
    if-nez v0, :cond_9

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes */"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "contentRange":Ljava/lang/String;
    goto :goto_5

    .line 669
    .end local v2    # "contentRange":Ljava/lang/String;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    .restart local v2    # "contentRange":Ljava/lang/String;
    :goto_5
    new-instance v4, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;

    invoke-direct {v4, v3, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;-><init>(Lcom/google/api/client/http/AbstractInputStreamContent;Ljava/lang/String;)V

    return-object v4
.end method

.method private directUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 6
    .param p1, "initiationRequestUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 348
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 349
    .local v0, "content":Lcom/google/api/client/http/HttpContent;
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    const-string v2, "uploadType"

    if-eqz v1, :cond_0

    .line 350
    new-instance v1, Lcom/google/api/client/http/MultipartContent;

    invoke-direct {v1}, Lcom/google/api/client/http/MultipartContent;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/api/client/http/HttpContent;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/MultipartContent;->setContentParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;

    move-result-object v0

    .line 351
    const-string v1, "multipart"

    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 353
    :cond_0
    const-string v1, "media"

    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    .line 356
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 357
    .local v1, "request":Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 360
    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 361
    .local v2, "response":Lcom/google/api/client/http/HttpResponse;
    const/4 v3, 0x0

    .line 363
    .local v3, "responseProcessed":Z
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    .line 366
    :cond_1
    sget-object v4, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v4}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    const/4 v3, 0x1

    .line 369
    if-nez v3, :cond_2

    .line 370
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 373
    :cond_2
    return-object v2

    .line 369
    :catchall_0
    move-exception v4

    if-nez v3, :cond_3

    .line 370
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 372
    :cond_3
    throw v4
.end method

.method private executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->disableGZipContent:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/api/client/http/EmptyContent;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {v0}, Lcom/google/api/client/http/GZipEncoding;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;

    .line 568
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequestWithoutGZip(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 569
    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    return-object v0
.end method

.method private executeCurrentRequestWithoutGZip(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    new-instance v0, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 551
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 552
    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    return-object v0
.end method

.method private executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 5
    .param p1, "initiationRequestUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->INITIATION_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 516
    const-string v0, "uploadType"

    const-string v1, "resumable"

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v0}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    .line 518
    .local v0, "content":Lcom/google/api/client/http/HttpContent;
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    .line 519
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 520
    .local v1, "request":Lcom/google/api/client/http/HttpRequest;
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v3}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X-Upload-Content-Type"

    invoke-virtual {v2, v4, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 521
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "X-Upload-Content-Length"

    invoke-virtual {v2, v4, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 524
    :cond_1
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 525
    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 526
    .local v2, "response":Lcom/google/api/client/http/HttpResponse;
    const/4 v3, 0x0

    .line 529
    .local v3, "notificationCompleted":Z
    :try_start_0
    sget-object v4, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->INITIATION_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v4}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    const/4 v3, 0x1

    .line 532
    if-nez v3, :cond_2

    .line 533
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 536
    :cond_2
    return-object v2

    .line 532
    :catchall_0
    move-exception v4

    if-nez v3, :cond_3

    .line 533
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 535
    :cond_3
    throw v4
.end method

.method private getMediaContentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaContentLengthCalculated:Z

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaContentLengthCalculated:Z

    .line 505
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLength:J

    return-wide v0
.end method

.method private getNextByteIndex(Ljava/lang/String;)J
    .locals 4
    .param p1, "rangeHeader"    # Ljava/lang/String;

    .line 721
    if-nez p1, :cond_0

    .line 722
    const-wide/16 v0, 0x0

    return-wide v0

    .line 724
    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private isMediaLengthKnown()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resumableUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 18
    .param p1, "initiationRequestUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeUploadInitiation(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 385
    .local v2, "initialResponse":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    return-object v2

    .line 391
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 393
    .local v0, "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 394
    nop

    .line 397
    iget-object v3, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v3}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    .line 398
    iget-object v3, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    .line 408
    :cond_1
    move-object v3, v0

    .end local v0    # "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    .local v3, "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->buildContentChunk()Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;

    move-result-object v4

    .line 409
    .local v4, "contentChunk":Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    .line 410
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;->getContent()Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 411
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;->getContentRange()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 415
    new-instance v0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;

    iget-object v6, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {v0, v1, v6}, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;-><init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/HttpRequest;)V

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {v1, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequestWithoutGZip(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    move-object v6, v0

    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    goto :goto_1

    .line 422
    .end local v0    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_2
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {v1, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->executeCurrentRequest(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    move-object v6, v0

    .line 424
    .local v6, "response":Lcom/google/api/client/http/HttpResponse;
    :goto_1
    const/4 v7, 0x0

    .line 426
    .local v7, "returningResponse":Z
    :try_start_1
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_5

    .line 427
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    .line 428
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getCloseInputStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 431
    :cond_3
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_COMPLETE:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {v1, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    const/4 v0, 0x1

    .line 433
    .end local v7    # "returningResponse":Z
    .local v0, "returningResponse":Z
    nop

    .line 479
    if-nez v0, :cond_4

    .line 480
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 433
    :cond_4
    return-object v6

    .line 479
    .end local v0    # "returningResponse":Z
    .restart local v7    # "returningResponse":Z
    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_5

    .line 436
    :cond_5
    :try_start_3
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v8, 0x134

    if-eq v0, v8, :cond_8

    .line 437
    :try_start_4
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getCloseInputStream()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 438
    iget-object v0, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 440
    :cond_6
    const/4 v0, 0x1

    .line 441
    .end local v7    # "returningResponse":Z
    .restart local v0    # "returningResponse":Z
    nop

    .line 479
    if-nez v0, :cond_7

    .line 480
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 441
    :cond_7
    return-object v6

    .line 445
    .end local v0    # "returningResponse":Z
    .restart local v7    # "returningResponse":Z
    :cond_8
    :try_start_5
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 446
    .local v0, "updatedUploadUrl":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 447
    :try_start_6
    new-instance v8, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v8, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v8

    .line 452
    :cond_9
    :try_start_7
    invoke-virtual {v6}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/client/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getNextByteIndex(Ljava/lang/String;)J

    move-result-wide v8

    .line 454
    .local v8, "newBytesServerReceived":J
    iget-wide v10, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    sub-long v10, v8, v10

    .line 455
    .local v10, "currentBytesServerReceived":J
    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-ltz v16, :cond_a

    iget v12, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v17, v6

    .end local v6    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v17, "response":Lcom/google/api/client/http/HttpResponse;
    int-to-long v5, v12

    cmp-long v12, v10, v5

    if-gtz v12, :cond_b

    const/4 v5, 0x1

    goto :goto_2

    .end local v17    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v6    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_a
    move-object/from16 v17, v6

    .end local v6    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v17    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_b
    const/4 v5, 0x0

    :goto_2
    :try_start_8
    invoke-static {v5}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 457
    iget v5, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentChunkLength:I

    int-to-long v5, v5

    sub-long/2addr v5, v10

    .line 458
    .local v5, "copyBytes":J
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 459
    cmp-long v12, v5, v14

    if-lez v12, :cond_e

    .line 465
    iget-object v12, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->reset()V

    .line 466
    iget-object v12, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->contentInputStream:Ljava/io/InputStream;

    invoke-virtual {v12, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v14

    .line 467
    .local v14, "actualSkipValue":J
    cmp-long v12, v10, v14

    if-nez v12, :cond_c

    const/4 v12, 0x1

    goto :goto_3

    :cond_c
    const/4 v12, 0x0

    :goto_3
    invoke-static {v12}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 468
    .end local v14    # "actualSkipValue":J
    goto :goto_4

    .line 469
    :cond_d
    cmp-long v12, v5, v14

    if-nez v12, :cond_e

    .line 473
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequestContentBuffer:[B

    .line 475
    :cond_e
    :goto_4
    iput-wide v8, v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    .line 477
    sget-object v12, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->MEDIA_IN_PROGRESS:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {v1, v12}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 479
    .end local v0    # "updatedUploadUrl":Ljava/lang/String;
    .end local v5    # "copyBytes":J
    .end local v8    # "newBytesServerReceived":J
    .end local v10    # "currentBytesServerReceived":J
    if-nez v7, :cond_f

    .line 480
    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 483
    .end local v4    # "contentChunk":Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;
    .end local v7    # "returningResponse":Z
    :cond_f
    goto/16 :goto_0

    .line 479
    .restart local v4    # "contentChunk":Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;
    .restart local v7    # "returningResponse":Z
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v17    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v6    # "response":Lcom/google/api/client/http/HttpResponse;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v17    # "response":Lcom/google/api/client/http/HttpResponse;
    :goto_5
    if-nez v7, :cond_10

    .line 480
    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 482
    :cond_10
    throw v0

    .line 393
    .end local v3    # "uploadUrl":Lcom/google/api/client/http/GenericUrl;
    .end local v4    # "contentChunk":Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;
    .end local v7    # "returningResponse":Z
    .end local v17    # "response":Lcom/google/api/client/http/HttpResponse;
    :catchall_3
    move-exception v0

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 394
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private updateStateAndNotifyListener(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    .locals 1
    .param p1, "uploadState"    # Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 933
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 934
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    invoke-interface {v0, p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;->progressChanged(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V

    .line 937
    :cond_0
    return-void
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .line 823
    iget v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    return v0
.end method

.method public getDisableGZipContent()Z
    .locals 1

    .line 832
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->disableGZipContent:Z

    return v0
.end method

.method public getInitiationHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getInitiationRequestMethod()Ljava/lang/String;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContent:Lcom/google/api/client/http/AbstractInputStreamContent;

    return-object v0
.end method

.method public getMetadata()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getNumBytesUploaded()J
    .locals 2

    .line 924
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    return-wide v0
.end method

.method public getProgress()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->isMediaLengthKnown()Z

    move-result v0

    const-string v1, "Cannot call getProgress() if the specified AbstractInputStreamContent has no content length. Use  getNumBytesUploaded() to denote progress instead."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 965
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->totalBytesServerReceived:J

    long-to-double v0, v0

    .line 966
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->getMediaContentLength()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 965
    :goto_0
    return-wide v0
.end method

.method public getProgressListener()Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    return-object v0
.end method

.method public getSleeper()Lcom/google/api/client/util/Sleeper;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->sleeper:Lcom/google/api/client/util/Sleeper;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUploadState()Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    return-object v0
.end method

.method public isDirectUploadEnabled()Z
    .locals 1

    .line 784
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    return v0
.end method

.method serverErrorCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    const-string v1, "The current request should not be null"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    new-instance v1, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v1}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 709
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->currentRequest:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes */"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->mediaContentLengthStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 710
    return-void
.end method

.method public setChunkSize(I)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 2
    .param p1, "chunkSize"    # I

    .line 812
    if-lez p1, :cond_0

    const/high16 v0, 0x40000

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "chunkSize must be a positive multiple of 262144."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 814
    iput p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->chunkSize:I

    .line 815
    return-object p0
.end method

.method public setDirectUploadEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0
    .param p1, "directUploadEnabled"    # Z

    .line 771
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    .line 772
    return-object p0
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0
    .param p1, "disableGZipContent"    # Z

    .line 852
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->disableGZipContent:Z

    .line 853
    return-object p0
.end method

.method public setInitiationHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0
    .param p1, "initiationHeaders"    # Lcom/google/api/client/http/HttpHeaders;

    .line 908
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 909
    return-object p0
.end method

.method public setInitiationRequestMethod(Ljava/lang/String;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 1
    .param p1, "initiationRequestMethod"    # Ljava/lang/String;

    .line 899
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    const-string v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 901
    const-string v0, "PATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 899
    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 902
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->initiationRequestMethod:Ljava/lang/String;

    .line 903
    return-object p0
.end method

.method public setMetadata(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0
    .param p1, "metadata"    # Lcom/google/api/client/http/HttpContent;

    .line 734
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->metadata:Lcom/google/api/client/http/HttpContent;

    .line 735
    return-object p0
.end method

.method public setProgressListener(Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0
    .param p1, "progressListener"    # Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    .line 791
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->progressListener:Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;

    .line 792
    return-object p0
.end method

.method public setSleeper(Lcom/google/api/client/util/Sleeper;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0
    .param p1, "sleeper"    # Lcom/google/api/client/util/Sleeper;

    .line 871
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 872
    return-object p0
.end method

.method public upload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .param p1, "initiationRequestUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->uploadState:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->NOT_STARTED:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 333
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUploadEnabled:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->directUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 336
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->resumableUpload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
