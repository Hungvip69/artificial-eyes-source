.class public Lcom/google/api/client/json/webtoken/JsonWebSignature;
.super Lcom/google/api/client/json/webtoken/JsonWebToken;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;,
        Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    }
.end annotation


# instance fields
.field private final signatureBytes:[B

.field private final signedContentBytes:[B


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;[B[B)V
    .locals 1
    .param p1, "header"    # Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .param p2, "payload"    # Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .param p3, "signatureBytes"    # [B
    .param p4, "signedContentBytes"    # [B

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken;-><init>(Lcom/google/api/client/json/webtoken/JsonWebToken$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)V

    .line 76
    invoke-static {p3}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    .line 77
    invoke-static {p4}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    .line 78
    return-void
.end method

.method private static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 7

    .line 430
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 431
    .local v1, "factory":Ljavax/net/ssl/TrustManagerFactory;
    move-object v2, v0

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 432
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 433
    .local v5, "manager":Ljavax/net/ssl/TrustManager;
    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    .line 434
    move-object v2, v5

    check-cast v2, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 432
    .end local v5    # "manager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    :cond_1
    return-object v0

    .line 440
    .end local v1    # "factory":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/security/KeyStoreException;
    return-object v0

    .line 438
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    .line 439
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0
.end method

.method public static parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .locals 1
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "tokenString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    invoke-static {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;

    move-result-object v0

    return-object v0
.end method

.method public static parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 1
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .line 469
    new-instance v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    invoke-direct {v0, p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method public static signUsingRsaSha256(Ljava/security/PrivateKey;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;)Ljava/lang/String;
    .locals 5
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p2, "header"    # Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .param p3, "payload"    # Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    invoke-virtual {p1, p2}, Lcom/google/api/client/json/JsonFactory;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {p1, p3}, Lcom/google/api/client/json/JsonFactory;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v2

    .line 574
    .local v2, "contentBytes":[B
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getSha256WithRsaSignatureAlgorithm()Ljava/security/Signature;

    move-result-object v3

    .line 573
    invoke-static {v3, p0, v2}, Lcom/google/api/client/util/SecurityUtils;->sign(Ljava/security/Signature;Ljava/security/PrivateKey;[B)[B

    move-result-object v3

    .line 575
    .local v3, "signature":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1

    .line 347
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public final getSignatureBytes()[B
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final getSignedContentBytes()[B
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final verifySignature()Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 420
    invoke-static {}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 421
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_0

    .line 422
    const/4 v1, 0x0

    return-object v1

    .line 424
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->verifySignature(Ljavax/net/ssl/X509TrustManager;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public final verifySignature(Ljavax/net/ssl/X509TrustManager;)Ljava/security/cert/X509Certificate;
    .locals 5
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getX509Certificates()Ljava/util/List;

    move-result-object v0

    .line 390
    .local v0, "x509Certificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "algorithm":Ljava/lang/String;
    const-string v3, "RS256"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getSha256WithRsaSignatureAlgorithm()Ljava/security/Signature;

    move-result-object v1

    iget-object v3, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    iget-object v4, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    invoke-static {v1, p1, v0, v3, v4}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 396
    :cond_1
    const-string v3, "ES256"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getEs256SignatureAlgorithm()Ljava/security/Signature;

    move-result-object v1

    iget-object v3, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    invoke-static {v3}, Lcom/google/api/client/json/webtoken/DerEncoder;->encode([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    invoke-static {v1, p1, v0, v3, v4}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    .line 399
    :cond_2
    return-object v1

    .line 391
    .end local v2    # "algorithm":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v1
.end method

.method public final verifySignature(Ljava/security/PublicKey;)Z
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "algorithm":Ljava/lang/String;
    const-string v1, "RS256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getSha256WithRsaSignatureAlgorithm()Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    iget-object v3, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    invoke-static {v1, p1, v2, v3}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result v1

    return v1

    .line 364
    :cond_0
    const-string v1, "ES256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getEs256SignatureAlgorithm()Ljava/security/Signature;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signatureBytes:[B

    invoke-static {v2}, Lcom/google/api/client/json/webtoken/DerEncoder;->encode([B)[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature;->signedContentBytes:[B

    invoke-static {v1, p1, v2, v3}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result v1

    return v1

    .line 367
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
