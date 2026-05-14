.class public Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
.super Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/webtoken/JsonWebSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "alg"
    .end annotation
.end field

.field private critical:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "crit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jwk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jwk"
    .end annotation
.end field

.field private jwkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jku"
    .end annotation
.end field

.field private keyId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "kid"
    .end annotation
.end field

.field private x509Certificates:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5c"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x509Thumbprint:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5t"
    .end annotation
.end field

.field private x509Url:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "x5u"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1

    .line 341
    invoke-super {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->clone()Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getCritical()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->critical:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->critical:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->critical:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 315
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getJwk()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->jwk:Ljava/lang/String;

    return-object v0
.end method

.method public final getJwkUrl()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->jwkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyId()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getX509Certificates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Certificates:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getX509Thumbprint()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Thumbprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getX509Url()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Url:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 336
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object p1

    return-object p1
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->algorithm:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setCritical(Ljava/util/List;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;"
        }
    .end annotation

    .line 330
    .local p1, "critical":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->critical:Ljava/util/List;

    .line 331
    return-object p0
.end method

.method public setJwk(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0
    .param p1, "jwk"    # Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->jwk:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public setJwkUrl(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0
    .param p1, "jwkUrl"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->jwkUrl:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setKeyId(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0
    .param p1, "keyId"    # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->keyId:Ljava/lang/String;

    .line 234
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 151
    invoke-super {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebToken$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;

    .line 152
    return-object p0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Header;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    move-result-object p1

    return-object p1
.end method

.method public setX509Certificates(Ljava/util/List;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;"
        }
    .end annotation

    .line 303
    .local p1, "x509Certificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Certificates:Ljava/util/ArrayList;

    .line 304
    return-object p0
.end method

.method public setX509Thumbprint(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0
    .param p1, "x509Thumbprint"    # Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Thumbprint:Ljava/lang/String;

    .line 278
    return-object p0
.end method

.method public setX509Url(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    .locals 0
    .param p1, "x509Url"    # Ljava/lang/String;

    .line 255
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->x509Url:Ljava/lang/String;

    .line 256
    return-object p0
.end method
