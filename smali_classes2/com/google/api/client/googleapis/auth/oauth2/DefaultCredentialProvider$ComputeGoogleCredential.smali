.class Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;
.super Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.source "DefaultCredentialProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeGoogleCredential"
.end annotation


# static fields
.field private static final TOKEN_SERVER_ENCODED_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->getMetadataServerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/computeMetadata/v1/instance/service-accounts/default/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;->TOKEN_SERVER_ENCODED_URL:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .locals 2
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .line 344
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 345
    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;->TOKEN_SERVER_ENCODED_URL:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 344
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V

    .line 348
    return-void
.end method


# virtual methods
.method protected executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;->getTokenServerEncodedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "tokenUrl":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 354
    .local v1, "request":Lcom/google/api/client/http/HttpRequest;
    new-instance v2, Lcom/google/api/client/json/JsonObjectParser;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 355
    .local v2, "parser":Lcom/google/api/client/json/JsonObjectParser;
    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 356
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    const-string v4, "Metadata-Flavor"

    const-string v5, "Google"

    invoke-virtual {v3, v4, v5}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 357
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 358
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    .line 359
    .local v4, "response":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v5

    .line 360
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 361
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 362
    .local v3, "content":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    const-class v7, Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-virtual {v2, v3, v6, v7}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/client/auth/oauth2/TokenResponse;

    return-object v6

    .line 365
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Empty content from metadata token server request."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 369
    .end local v3    # "content":Ljava/io/InputStream;
    :cond_1
    const/16 v6, 0x194

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 370
    new-instance v6, Ljava/io/IOException;

    .line 373
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v3

    .line 370
    const-string v3, "Error code %s trying to get security access token from Compute Engine metadata for the default service account. This may be because the virtual machine instance does not have permission scopes specified."

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 375
    :cond_2
    new-instance v6, Ljava/io/IOException;

    .line 376
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 377
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v3

    aput-object v9, v10, v7

    .line 375
    const-string v3, "Unexpected Error code %s trying to get security access token from Compute Engine metadata for the default service account: %s"

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
