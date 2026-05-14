.class public Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
.super Lcom/google/api/client/auth/openidconnect/IdToken;
.source "GoogleIdToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;[B[B)V
    .locals 0
    .param p1, "header"    # Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .param p2, "payload"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .param p3, "signatureBytes"    # [B
    .param p4, "signedContentBytes"    # [B

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/client/auth/openidconnect/IdToken;-><init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/auth/openidconnect/IdToken$Payload;[B[B)V

    .line 72
    return-void
.end method

.method public static parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;
    .locals 6
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "idTokenString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    nop

    .line 58
    invoke-static {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->parser(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    move-result-object v0

    const-class v1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->setPayloadClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;

    move-result-object v0

    .line 59
    .local v0, "jws":Lcom/google/api/client/json/webtoken/JsonWebSignature;
    new-instance v1, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getHeader()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getSignatureBytes()[B

    move-result-object v4

    .line 60
    invoke-virtual {v0}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getSignedContentBytes()[B

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;-><init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;[B[B)V

    .line 59
    return-object v1
.end method


# virtual methods
.method public bridge synthetic getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getPayload()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/google/api/client/auth/openidconnect/IdToken;->getPayload()Lcom/google/api/client/auth/openidconnect/IdToken$Payload;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    return-object v0
.end method

.method public bridge synthetic getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;->getPayload()Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;)Z
    .locals 1
    .param p1, "verifier"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1, p0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdTokenVerifier;->verify(Lcom/google/api/client/googleapis/auth/oauth2/GoogleIdToken;)Z

    move-result v0

    return v0
.end method
