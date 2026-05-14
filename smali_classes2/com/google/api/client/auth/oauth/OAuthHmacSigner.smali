.class public final Lcom/google/api/client/auth/oauth/OAuthHmacSigner;
.super Ljava/lang/Object;
.source "OAuthHmacSigner.java"

# interfaces
.implements Lcom/google/api/client/auth/oauth/OAuthSigner;


# instance fields
.field public clientSharedSecret:Ljava/lang/String;

.field public tokenSharedSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "signatureBaseString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "keyBuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth/OAuthHmacSigner;->clientSharedSecret:Ljava/lang/String;

    .line 51
    .local v1, "clientSharedSecret":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 52
    invoke-static {v1}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_0
    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthHmacSigner;->tokenSharedSecret:Ljava/lang/String;

    .line 56
    .local v2, "tokenSharedSecret":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 57
    invoke-static {v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v3}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 62
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 63
    .local v5, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v5, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 64
    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/api/client/util/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "HMAC-SHA1"

    return-object v0
.end method
