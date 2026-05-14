.class public final Lcom/google/api/client/googleapis/apache/GoogleApacheHttpTransport;
.super Ljava/lang/Object;
.source "GoogleApacheHttpTransport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static newTrustedTransport()Lcom/google/api/client/http/apache/ApacheHttpTransport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-static {}, Lorg/apache/http/config/SocketConfig;->custom()Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    .line 52
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setRcvBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lorg/apache/http/config/SocketConfig$Builder;->setSndBufSize(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig$Builder;->build()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    .line 56
    .local v0, "socketConfig":Lorg/apache/http/config/SocketConfig;
    new-instance v1, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    const-wide/16 v2, -0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 60
    .local v1, "connectionManager":Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setValidateAfterInactivity(I)V

    .line 63
    invoke-static {}, Lcom/google/api/client/googleapis/GoogleUtils;->getCertificateTrustStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 64
    .local v2, "trustStore":Ljava/security/KeyStore;
    invoke-static {}, Lcom/google/api/client/util/SslUtils;->getTlsSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 65
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {}, Lcom/google/api/client/util/SslUtils;->getPkixTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/google/api/client/util/SslUtils;->initSslContext(Ljavax/net/ssl/SSLContext;Ljava/security/KeyStore;Ljavax/net/ssl/TrustManagerFactory;)Ljavax/net/ssl/SSLContext;

    .line 66
    new-instance v4, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    invoke-direct {v4, v3}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    .line 68
    .local v4, "socketFactory":Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;
    invoke-static {}, Lorg/apache/http/impl/client/HttpClientBuilder;->create()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lorg/apache/http/impl/client/HttpClientBuilder;->useSystemProperties()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 70
    invoke-virtual {v5, v4}, Lorg/apache/http/impl/client/HttpClientBuilder;->setSSLSocketFactory(Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 71
    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 72
    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/HttpClientBuilder;->setMaxConnTotal(I)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 73
    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/HttpClientBuilder;->setMaxConnPerRoute(I)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    new-instance v6, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;

    .line 74
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;-><init>(Ljava/net/ProxySelector;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/HttpClientBuilder;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 75
    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/HttpClientBuilder;->setConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 76
    invoke-virtual {v5}, Lorg/apache/http/impl/client/HttpClientBuilder;->disableRedirectHandling()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lorg/apache/http/impl/client/HttpClientBuilder;->disableAutomaticRetries()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v5

    .line 78
    invoke-virtual {v5}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object v5

    .line 79
    .local v5, "client":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v6, v5}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>(Lorg/apache/http/client/HttpClient;)V

    return-object v6
.end method
