.class public final Lcom/google/api/client/util/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultKeyStore()Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 47
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getEs256SignatureAlgorithm()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 132
    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaKeyStore()Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 52
    const-string v0, "JKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getPkcs12KeyStore()Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 57
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    return-object v0
.end method

.method public static getRsaKeyFactory()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 117
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getSha1WithRsaSignatureAlgorithm()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 122
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getSha256WithRsaSignatureAlgorithm()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 127
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getX509CertificateFactory()Ljava/security/cert/CertificateFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 227
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method

.method public static loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "keyStream"    # Ljava/io/InputStream;
    .param p2, "storePass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 81
    nop

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 81
    throw v0
.end method

.method public static loadKeyStoreFromCertificates(Ljava/security/KeyStore;Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)V
    .locals 4
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "certificateFactory"    # Ljava/security/cert/CertificateFactory;
    .param p2, "certificateStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "i":I
    invoke-virtual {p1, p2}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 256
    .local v2, "cert":Ljava/security/cert/Certificate;
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 257
    nop

    .end local v2    # "cert":Ljava/security/cert/Certificate;
    add-int/lit8 v0, v0, 0x1

    .line 258
    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public static loadPrivateKeyFromKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "keyStream"    # Ljava/io/InputStream;
    .param p2, "storePass"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "keyPass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 111
    invoke-static {p0, p1, p2}, Lcom/google/api/client/util/SecurityUtils;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p3, p4}, Lcom/google/api/client/util/SecurityUtils;->getPrivateKey(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Ljava/security/Signature;Ljava/security/PrivateKey;[B)[B
    .locals 1
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 147
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 148
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method

.method public static verify(Ljava/security/Signature;Ljavax/net/ssl/X509TrustManager;Ljava/util/List;[B[B)Ljava/security/cert/X509Certificate;
    .locals 11
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p3, "signatureBytes"    # [B
    .param p4, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Signature;",
            "Ljavax/net/ssl/X509TrustManager;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[B[B)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 194
    .local p2, "certChainBase64":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/api/client/util/SecurityUtils;->getX509CertificateFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 197
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 198
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 199
    .local v2, "certificates":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 200
    .local v3, "currentCert":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 201
    .local v5, "certBase64":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v6

    .line 202
    .local v6, "certDer":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 204
    .local v7, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    .line 205
    .local v8, "cert":Ljava/security/cert/Certificate;
    instance-of v9, v8, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v9, :cond_0

    .line 206
    return-object v0

    .line 208
    :cond_0
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "currentCert":I
    .local v9, "currentCert":I
    :try_start_2
    move-object v10, v8

    check-cast v10, Ljava/security/cert/X509Certificate;

    aput-object v10, v2, v3
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    .end local v8    # "cert":Ljava/security/cert/Certificate;
    nop

    .line 212
    .end local v5    # "certBase64":Ljava/lang/String;
    .end local v6    # "certDer":[B
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    move v3, v9

    goto :goto_0

    .line 209
    .restart local v5    # "certBase64":Ljava/lang/String;
    .restart local v6    # "certDer":[B
    .restart local v7    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v9    # "currentCert":I
    .restart local v3    # "currentCert":I
    :catch_1
    move-exception v4

    move v9, v3

    move-object v3, v4

    .line 210
    .local v3, "e":Ljava/security/cert/CertificateException;
    .restart local v9    # "currentCert":I
    :goto_1
    return-object v0

    .line 214
    .end local v5    # "certBase64":Ljava/lang/String;
    .end local v6    # "certDer":[B
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v9    # "currentCert":I
    .local v3, "currentCert":I
    :cond_1
    :try_start_3
    const-string v4, "RSA"

    invoke-interface {p1, v2, v4}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 217
    nop

    .line 218
    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 219
    .local v5, "pubKey":Ljava/security/PublicKey;
    invoke-static {p0, v5, p3, p4}, Lcom/google/api/client/util/SecurityUtils;->verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    aget-object v0, v2, v4

    return-object v0

    .line 222
    :cond_2
    return-object v0

    .line 215
    .end local v5    # "pubKey":Ljava/security/PublicKey;
    :catch_2
    move-exception v4

    .line 216
    .local v4, "e":Ljava/security/cert/CertificateException;
    return-object v0

    .line 195
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certificates":[Ljava/security/cert/X509Certificate;
    .end local v3    # "currentCert":I
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v1

    .line 196
    .local v1, "e":Ljava/security/cert/CertificateException;
    return-object v0
.end method

.method public static verify(Ljava/security/Signature;Ljava/security/PublicKey;[B[B)Z
    .locals 2
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "signatureBytes"    # [B
    .param p3, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 164
    invoke-virtual {p0, p3}, Ljava/security/Signature;->update([B)V

    .line 167
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/security/SignatureException;
    const/4 v1, 0x0

    return v1
.end method
