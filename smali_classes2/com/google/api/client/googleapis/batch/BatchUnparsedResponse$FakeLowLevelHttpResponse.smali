.class Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "BatchUnparsedResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakeLowLevelHttpResponse"
.end annotation


# instance fields
.field private headerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headerValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private partContent:Ljava/io/InputStream;

.field private statusCode:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "partContent"    # Ljava/io/InputStream;
    .param p2, "statusCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p3, "headerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->headerNames:Ljava/util/List;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->headerValues:Ljava/util/List;

    .line 361
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->partContent:Ljava/io/InputStream;

    .line 362
    iput p2, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->statusCode:I

    .line 363
    iput-object p3, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->headerNames:Ljava/util/List;

    .line 364
    iput-object p4, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->headerValues:Ljava/util/List;

    .line 365
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->partContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 384
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 409
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 414
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->headerValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .line 394
    const/4 v0, 0x0

    return-object v0
.end method
