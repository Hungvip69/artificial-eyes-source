.class public Lcom/google/api/client/auth/openidconnect/IdToken;
.super Lcom/google/api/client/json/webtoken/JsonWebSignature;
.source "IdToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/auth/openidconnect/IdToken$Payload;[B[B)V
    .locals 0
    .param p1, "header"    # Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .param p2, "payload"    # Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .param p3, "signatureBytes"    # [B
    .param p4, "signedContentBytes"    # [B

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/client/json/webtoken/JsonWebSignature;-><init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;[B[B)V

    .line 56
    return-void
.end method

.method public static parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/auth/openidconnect/IdToken;
    .locals 6
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "idTokenString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    nop

    .line 160
    invoke-static {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    move-result-object v0

    const-class v1, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->setPayloadClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;

    move-result-object v0

    .line 161
    .local v0, "jws":Lcom/google/api/client/json/webtoken/JsonWebSignature;
    new-instance v1, Lcom/google/api/client/auth/openidconnect/IdToken;

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getSignatureBytes()[B

    move-result-object v4

    .line 162
    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getSignedContentBytes()[B

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/api/client/auth/openidconnect/IdToken;-><init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/auth/openidconnect/IdToken$Payload;[B[B)V

    .line 161
    return-object v1
.end method


# virtual methods
.method public getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    return-object v0
.end method

.method public bridge synthetic getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken;->getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public final verifyAudience(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 97
    .local p1, "trustedClientIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken;->getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->getAudienceAsList()Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "audience":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x0

    return v1

    .line 101
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public final verifyExpirationTime(JJ)Z
    .locals 4
    .param p1, "currentTimeMillis"    # J
    .param p3, "acceptableTimeSkewSeconds"    # J

    .line 132
    nop

    .line 133
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken;->getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->getExpirationTimeSeconds()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0
.end method

.method public final verifyIssuedAtTime(JJ)Z
    .locals 4
    .param p1, "currentTimeMillis"    # J
    .param p3, "acceptableTimeSkewSeconds"    # J

    .line 147
    nop

    .line 148
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken;->getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->getIssuedAtTimeSeconds()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0
.end method

.method public final verifyIssuer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "expectedIssuer"    # Ljava/lang/String;

    .line 72
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/openidconnect/IdToken;->verifyIssuer(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final verifyIssuer(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 85
    .local p1, "expectedIssuer":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/client/auth/openidconnect/IdToken;->getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/openidconnect/IdToken$Payload;->getIssuer()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final verifyTime(JJ)Z
    .locals 1
    .param p1, "currentTimeMillis"    # J
    .param p3, "acceptableTimeSkewSeconds"    # J

    .line 116
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/api/client/auth/openidconnect/IdToken;->verifyExpirationTime(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/api/client/auth/openidconnect/IdToken;->verifyIssuedAtTime(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0
.end method
