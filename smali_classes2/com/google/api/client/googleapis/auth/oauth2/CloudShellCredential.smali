.class public Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;
.super Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.source "CloudShellCredential.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACCESS_TOKEN_INDEX:I = 0x2

.field protected static final GET_AUTH_TOKEN_REQUEST:Ljava/lang/String; = "2\n[]"

.field private static final READ_TIMEOUT_MS:I = 0x1388


# instance fields
.field private final authPort:I

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>(ILcom/google/api/client/json/JsonFactory;)V
    .locals 0
    .param p1, "authPort"    # I
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .line 70
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->authPort:I

    .line 72
    iput-object p2, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 73
    return-void
.end method


# virtual methods
.method protected executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/net/Socket;

    const-string v1, "localhost"

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->getAuthPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 83
    .local v0, "socket":Ljava/net/Socket;
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 84
    new-instance v1, Lcom/google/api/client/auth/oauth2/TokenResponse;

    invoke-direct {v1}, Lcom/google/api/client/auth/oauth2/TokenResponse;-><init>()V

    .line 86
    .local v1, "token":Lcom/google/api/client/auth/oauth2/TokenResponse;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    .line 87
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 88
    .local v2, "out":Ljava/io/PrintWriter;
    const-string v3, "2\n[]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 91
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    .local v3, "input":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 95
    iget-object v4, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v4, v3}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v4

    const-class v5, Ljava/util/LinkedList;

    const-class v6, Ljava/lang/Object;

    .line 96
    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v4

    .line 97
    .local v4, "messageArray":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "accessToken":Ljava/lang/String;
    invoke-virtual {v1, v5}, Lcom/google/api/client/auth/oauth2/TokenResponse;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    nop

    .end local v2    # "out":Ljava/io/PrintWriter;
    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v4    # "messageArray":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v5    # "accessToken":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 101
    nop

    .line 102
    return-object v1

    .line 100
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 101
    throw v2
.end method

.method protected getAuthPort()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;->authPort:I

    return v0
.end method
