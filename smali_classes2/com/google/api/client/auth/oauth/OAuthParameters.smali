.class public final Lcom/google/api/client/auth/oauth/OAuthParameters;
.super Ljava/lang/Object;
.source "OAuthParameters.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;
    }
.end annotation


# static fields
.field private static final ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field public callback:Ljava/lang/String;

.field public consumerKey:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public realm:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public signatureMethod:Ljava/lang/String;

.field public signer:Lcom/google/api/client/auth/oauth/OAuthSigner;

.field public timestamp:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public verifier:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->RANDOM:Ljava/security/SecureRandom;

    .line 115
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, "-_.~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 254
    if-eqz p3, :cond_0

    .line 255
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 272
    sget-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putParameter(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 267
    .local p1, "parameters":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;>;"
    new-instance v0, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;

    invoke-static {p2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 261
    .local p1, "parameters":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;>;"
    if-eqz p3, :cond_0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameter(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public computeNonce()V
    .locals 2

    .line 122
    sget-object v0, Lcom/google/api/client/auth/oauth/OAuthParameters;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->nonce:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public computeSignature(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;)V
    .locals 13
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "requestUrl"    # Lcom/google/api/client/http/GenericUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signer:Lcom/google/api/client/auth/oauth/OAuthSigner;

    .line 171
    .local v0, "signer":Lcom/google/api/client/auth/oauth/OAuthSigner;
    invoke-interface {v0}, Lcom/google/api/client/auth/oauth/OAuthSigner;->getSignatureMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signatureMethod:Ljava/lang/String;

    .line 173
    .local v1, "signatureMethod":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/TreeMultiset;->create()Lcom/google/common/collect/TreeMultiset;

    move-result-object v2

    .line 174
    .local v2, "parameters":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;>;"
    const-string v3, "oauth_callback"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->callback:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "oauth_consumer_key"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->consumerKey:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "oauth_nonce"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->nonce:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "oauth_signature_method"

    invoke-direct {p0, v2, v3, v1}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "oauth_timestamp"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->timestamp:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "oauth_token"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->token:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v3, "oauth_verifier"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->verifier:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v3, "oauth_version"

    iget-object v4, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->version:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameterIfValueNotNull(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Lcom/google/api/client/http/GenericUrl;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 184
    .local v4, "fieldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 185
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 186
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 187
    .local v6, "name":Ljava/lang/String;
    instance-of v7, v5, Ljava/util/Collection;

    if-eqz v7, :cond_1

    .line 188
    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 189
    .local v8, "repeatedValue":Ljava/lang/Object;
    invoke-direct {p0, v2, v6, v8}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameter(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    .end local v8    # "repeatedValue":Ljava/lang/Object;
    goto :goto_1

    :cond_0
    goto :goto_2

    .line 192
    :cond_1
    invoke-direct {p0, v2, v6, v5}, Lcom/google/api/client/auth/oauth/OAuthParameters;->putParameter(Lcom/google/common/collect/Multiset;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    .end local v4    # "fieldEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_0

    .line 197
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .local v3, "parametersBuf":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 199
    .local v4, "first":Z
    invoke-interface {v2}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x26

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;

    .line 200
    .local v6, "parameter":Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;
    if-eqz v4, :cond_4

    .line 201
    const/4 v4, 0x0

    goto :goto_4

    .line 203
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :goto_4
    invoke-virtual {v6}, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v6}, Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 208
    const/16 v8, 0x3d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .end local v6    # "parameter":Lcom/google/api/client/auth/oauth/OAuthParameters$Parameter;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    goto :goto_3

    .line 211
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "normalizedParameters":Ljava/lang/String;
    new-instance v6, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v6}, Lcom/google/api/client/http/GenericUrl;-><init>()V

    .line 214
    .local v6, "normalized":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {p2}, Lcom/google/api/client/http/GenericUrl;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 215
    .local v8, "scheme":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/google/api/client/http/GenericUrl;->setScheme(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Lcom/google/api/client/http/GenericUrl;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/api/client/http/GenericUrl;->setHost(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Lcom/google/api/client/http/GenericUrl;->getPathParts()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/api/client/http/GenericUrl;->setPathParts(Ljava/util/List;)V

    .line 218
    invoke-virtual {p2}, Lcom/google/api/client/http/GenericUrl;->getPort()I

    move-result v9

    .line 219
    .local v9, "port":I
    const-string v10, "http"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x50

    if-eq v9, v10, :cond_8

    :cond_7
    const-string v10, "https"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x1bb

    if-ne v9, v10, :cond_9

    .line 220
    :cond_8
    const/4 v9, -0x1

    .line 222
    :cond_9
    invoke-virtual {v6, v9}, Lcom/google/api/client/http/GenericUrl;->setPort(I)V

    .line 223
    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "normalizedPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v11, "buf":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v10}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {v5}, Lcom/google/api/client/auth/oauth/OAuthParameters;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "signatureBaseString":Ljava/lang/String;
    invoke-interface {v0, v7}, Lcom/google/api/client/auth/oauth/OAuthSigner;->computeSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signature:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public computeTimestamp()V
    .locals 4

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->timestamp:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public getAuthorizationHeader()Ljava/lang/String;
    .locals 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OAuth"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "realm"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->realm:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "oauth_callback"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->callback:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->consumerKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "oauth_nonce"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->nonce:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "oauth_signature"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "oauth_signature_method"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->signatureMethod:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "oauth_timestamp"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->timestamp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "oauth_token"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->token:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "oauth_verifier"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->verifier:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "oauth_version"

    iget-object v2, p0, Lcom/google/api/client/auth/oauth/OAuthParameters;->version:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/auth/oauth/OAuthParameters;->appendParameter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 277
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth/OAuthParameters;->computeNonce()V

    .line 281
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth/OAuthParameters;->computeTimestamp()V

    .line 283
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/auth/oauth/OAuthParameters;->computeSignature(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    nop

    .line 289
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth/OAuthParameters;->getAuthorizationHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 290
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 286
    .local v1, "io":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 287
    throw v1
.end method
