.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
.super Lcom/google/api/client/auth/oauth2/Credential;
.source "GoogleCredential.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final SERVICE_ACCOUNT_FILE_TYPE:Ljava/lang/String; = "service_account"

.field static final USER_FILE_TYPE:Ljava/lang/String; = "authorized_user"

.field private static defaultCredentialProvider:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;


# instance fields
.field private serviceAccountId:Ljava/lang/String;

.field private serviceAccountPrivateKey:Ljava/security/PrivateKey;

.field private serviceAccountPrivateKeyId:Ljava/lang/String;

.field private serviceAccountProjectId:Ljava/lang/String;

.field private serviceAccountScopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceAccountUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;-><init>()V

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->defaultCredentialProvider:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 316
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V

    .line 317
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 325
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$Builder;)V

    .line 326
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountScopes:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountUser:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    goto :goto_2

    .line 330
    :cond_1
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    .line 331
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountProjectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountProjectId:Ljava/lang/String;

    .line 332
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountScopes:Ljava/util/Collection;

    if-nez v0, :cond_2

    .line 334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountScopes:Ljava/util/Collection;

    .line 335
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    .line 336
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 337
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountPrivateKeyId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKeyId:Ljava/lang/String;

    .line 338
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->serviceAccountUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    .line 340
    :goto_2
    return-void
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 2
    .param p0, "credentialStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    nop

    .line 232
    invoke-static {}, Lcom/google/api/client/googleapis/util/Utils;->getDefaultTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    .line 233
    invoke-static {}, Lcom/google/api/client/googleapis/util/Utils;->getDefaultJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    .line 230
    invoke-static {p0, v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public static fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 8
    .param p0, "credentialStream"    # Ljava/io/InputStream;
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Lcom/google/api/client/json/JsonObjectParser;

    invoke-direct {v0, p2}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 254
    .local v0, "parser":Lcom/google/api/client/json/JsonObjectParser;
    sget-object v1, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->UTF_8:Ljava/nio/charset/Charset;

    const-class v2, Lcom/google/api/client/json/GenericJson;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/json/GenericJson;

    .line 256
    .local v1, "fileContents":Lcom/google/api/client/json/GenericJson;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    .local v2, "fileType":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 260
    const-string v3, "authorized_user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-static {v1, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStreamUser(Lcom/google/api/client/json/GenericJson;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v3

    return-object v3

    .line 263
    :cond_0
    const-string v4, "service_account"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    invoke-static {v1, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStreamServiceAccount(Lcom/google/api/client/json/GenericJson;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v3

    return-object v3

    .line 266
    :cond_1
    new-instance v5, Ljava/io/IOException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const-string v3, "Error reading credentials from stream, \'type\' value \'%s\' not recognized. Expecting \'%s\' or \'%s\'."

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error reading credentials from stream, \'type\' field not specified."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static fromStreamServiceAccount(Lcom/google/api/client/json/GenericJson;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 10
    .param p0, "fileContents"    # Lcom/google/api/client/json/GenericJson;
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    const-string v0, "client_id"

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 872
    .local v0, "clientId":Ljava/lang/String;
    const-string v1, "client_email"

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 873
    .local v1, "clientEmail":Ljava/lang/String;
    const-string v2, "private_key"

    invoke-virtual {p0, v2}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 874
    .local v2, "privateKeyPem":Ljava/lang/String;
    const-string v3, "private_key_id"

    invoke-virtual {p0, v3}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 875
    .local v3, "privateKeyId":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 881
    invoke-static {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->privateKeyFromPkcs8(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 883
    .local v4, "privateKey":Ljava/security/PrivateKey;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 885
    .local v5, "emptyScopes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v6, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 886
    invoke-virtual {v6, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v6

    .line 887
    invoke-virtual {v6, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v6

    .line 888
    invoke-virtual {v6, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v6

    .line 889
    invoke-virtual {v6, v5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v6

    .line 890
    invoke-virtual {v6, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKey(Ljava/security/PrivateKey;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v6

    .line 891
    invoke-virtual {v6, v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v6

    .line 892
    .local v6, "credentialBuilder":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    const-string v7, "token_uri"

    invoke-virtual {p0, v7}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 893
    .local v7, "tokenUri":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 894
    invoke-virtual {v6, v7}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 896
    :cond_0
    const-string v8, "project_id"

    invoke-virtual {p0, v8}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 897
    .local v8, "projectId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 898
    invoke-virtual {v6, v8}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountProjectId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 902
    :cond_1
    invoke-virtual {v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v9

    return-object v9

    .line 877
    .end local v4    # "privateKey":Ljava/security/PrivateKey;
    .end local v5    # "emptyScopes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v6    # "credentialBuilder":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .end local v7    # "tokenUri":Ljava/lang/String;
    .end local v8    # "projectId":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error reading service account credential from stream, expecting  \'client_id\', \'client_email\', \'private_key\' and \'private_key_id\'."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static fromStreamUser(Lcom/google/api/client/json/GenericJson;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 5
    .param p0, "fileContents"    # Lcom/google/api/client/json/GenericJson;
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    const-string v0, "client_id"

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 849
    .local v0, "clientId":Ljava/lang/String;
    const-string v1, "client_secret"

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 850
    .local v1, "clientSecret":Ljava/lang/String;
    const-string v2, "refresh_token"

    invoke-virtual {p0, v2}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 851
    .local v2, "refreshToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 856
    new-instance v3, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 857
    invoke-virtual {v3, v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClientSecrets(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v3

    .line 858
    invoke-virtual {v3, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v3

    .line 859
    invoke-virtual {v3, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v3

    .line 860
    invoke-virtual {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v3

    .line 861
    .local v3, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    invoke-virtual {v3, v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 864
    invoke-virtual {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->refreshToken()Z

    .line 865
    return-object v3

    .line 852
    .end local v3    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error reading user credential from stream,  expecting \'client_id\', \'client_secret\' and \'refresh_token\'."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getApplicationDefault()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-static {}, Lcom/google/api/client/googleapis/util/Utils;->getDefaultTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    invoke-static {}, Lcom/google/api/client/googleapis/util/Utils;->getDefaultJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getApplicationDefault(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationDefault(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .param p0, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->defaultCredentialProvider:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;

    invoke-virtual {v0, p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getDefaultCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0
.end method

.method private static privateKeyFromPkcs8(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 7
    .param p0, "privateKeyPem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 908
    .local v0, "reader":Ljava/io/Reader;
    const-string v1, "PRIVATE KEY"

    invoke-static {v0, v1}, Lcom/google/api/client/util/PemReader;->readFirstSectionAndClose(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;

    move-result-object v1

    .line 909
    .local v1, "section":Lcom/google/api/client/util/PemReader$Section;
    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {v1}, Lcom/google/api/client/util/PemReader$Section;->getBase64DecodedBytes()[B

    move-result-object v2

    .line 913
    .local v2, "bytes":[B
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 914
    .local v3, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const/4 v4, 0x0

    .line 916
    .local v4, "unexpectedException":Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getRsaKeyFactory()Ljava/security/KeyFactory;

    move-result-object v5

    .line 917
    .local v5, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v5, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    .local v6, "privateKey":Ljava/security/PrivateKey;
    return-object v6

    .line 921
    .end local v5    # "keyFactory":Ljava/security/KeyFactory;
    .end local v6    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v5

    .line 922
    .local v5, "exception":Ljava/security/spec/InvalidKeySpecException;
    move-object v4, v5

    goto :goto_0

    .line 919
    .end local v5    # "exception":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v5

    .line 920
    .local v5, "exception":Ljava/security/NoSuchAlgorithmException;
    move-object v4, v5

    .line 923
    .end local v5    # "exception":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 924
    :goto_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected exception reading PKCS data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    throw v5

    .line 910
    .end local v2    # "bytes":[B
    .end local v3    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v4    # "unexpectedException":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid PKCS8 data."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public createDelegated(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 503
    return-object p0

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->toBuilder()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 506
    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountUser(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 505
    return-object v0
.end method

.method public createScoped(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;"
        }
    .end annotation

    .line 487
    .local p1, "scopes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 488
    return-object p0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->toBuilder()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 491
    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 490
    return-object v0
.end method

.method public createScopedRequired()Z
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 475
    return v1

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 376
    invoke-super {p0}, Lcom/google/api/client/auth/oauth2/Credential;->executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    return-object v0

    .line 379
    :cond_0
    new-instance v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    invoke-direct {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;-><init>()V

    .line 380
    .local v0, "header":Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    const-string v1, "RS256"

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->setAlgorithm(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 381
    const-string v1, "JWT"

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 382
    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->setKeyId(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 383
    new-instance v1, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    invoke-direct {v1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;-><init>()V

    .line 384
    .local v1, "payload":Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getClock()Lcom/google/api/client/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 385
    .local v2, "currentTime":J
    iget-object v4, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 386
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTokenServerEncodedUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setAudience(Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 387
    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 388
    div-long v4, v2, v4

    const-wide/16 v6, 0xe10

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 389
    iget-object v4, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 390
    const/16 v4, 0x20

    invoke-static {v4}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    move-result-object v4

    iget-object v5, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "scope"

    invoke-virtual {v1, v5, v4}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :try_start_0
    iget-object v4, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 393
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v5

    .line 392
    invoke-static {v4, v5, v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signUsingRsaSha256(Ljava/security/PrivateKey;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "assertion":Ljava/lang/String;
    new-instance v5, Lcom/google/api/client/auth/oauth2/TokenRequest;

    .line 395
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v7

    new-instance v8, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTokenServerEncodedUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    const-string v9, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/api/client/auth/oauth2/TokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 397
    .local v5, "request":Lcom/google/api/client/auth/oauth2/TokenRequest;
    const-string v6, "assertion"

    invoke-virtual {v5, v6, v4}, Lcom/google/api/client/auth/oauth2/TokenRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v5}, Lcom/google/api/client/auth/oauth2/TokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 399
    .end local v4    # "assertion":Ljava/lang/String;
    .end local v5    # "request":Lcom/google/api/client/auth/oauth2/TokenRequest;
    :catch_0
    move-exception v4

    .line 400
    .local v4, "exception":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    .line 401
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5, v4}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 402
    throw v5
.end method

.method public final getServiceAccountId()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAccountPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public final getServiceAccountPrivateKeyId()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAccountProjectId()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceAccountScopes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    return-object v0
.end method

.method public final getServiceAccountScopesAsString()Ljava/lang/String;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/api/client/util/Joiner;->on(C)Lcom/google/api/client/util/Joiner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getServiceAccountUser()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object p1

    return-object p1
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 344
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object p1

    return-object p1
.end method

.method public setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .param p1, "expirationTimeMilliseconds"    # Ljava/lang/Long;

    .line 359
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object p1

    return-object p1
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .param p1, "expiresIn"    # Ljava/lang/Long;

    .line 364
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object p1

    return-object p1
.end method

.method public setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .param p1, "tokenResponse"    # Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 369
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public bridge synthetic setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 2
    .param p1, "refreshToken"    # Ljava/lang/String;

    .line 349
    if-eqz p1, :cond_1

    .line 350
    nop

    .line 351
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    const-string v1, "Please use the Builder and call setJsonFactory, setTransport and setClientSecrets"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 354
    :cond_1
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    return-object v0
.end method

.method public toBuilder()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    .locals 2

    .line 516
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKey:Ljava/security/PrivateKey;

    .line 517
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKey(Ljava/security/PrivateKey;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountPrivateKeyId:Ljava/lang/String;

    .line 518
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountId:Ljava/lang/String;

    .line 519
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountProjectId:Ljava/lang/String;

    .line 520
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountProjectId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountUser:Ljava/lang/String;

    .line 521
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountUser(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->serviceAccountScopes:Ljava/util/Collection;

    .line 522
    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTokenServerEncodedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTokenServerEncodedUrl(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 524
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getClock()Lcom/google/api/client/util/Clock;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClock(Lcom/google/api/client/util/Clock;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v0

    .line 528
    .local v0, "builder":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    .line 530
    return-object v0
.end method
