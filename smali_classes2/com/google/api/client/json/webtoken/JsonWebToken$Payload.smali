.class public Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
.super Lcom/google/api/client/json/GenericJson;
.source "JsonWebToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/webtoken/JsonWebToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field private audience:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "aud"
    .end annotation
.end field

.field private expirationTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "exp"
    .end annotation
.end field

.field private issuedAtTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "iat"
    .end annotation
.end field

.field private issuer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "iss"
    .end annotation
.end field

.field private jwtId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "jti"
    .end annotation
.end field

.field private notBeforeTimeSeconds:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nbf"
    .end annotation
.end field

.field private subject:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sub"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "typ"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 1

    .line 355
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

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

    .line 122
    invoke-virtual {p0}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->clone()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v0

    return-object v0
.end method

.method public final getAudience()Ljava/lang/Object;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->audience:Ljava/lang/Object;

    return-object v0
.end method

.method public final getAudienceAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->audience:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->audience:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->audience:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->audience:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getExpirationTimeSeconds()Ljava/lang/Long;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->expirationTimeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getIssuedAtTimeSeconds()Ljava/lang/Long;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->issuedAtTimeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getIssuer()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public final getJwtId()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->jwtId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotBeforeTimeSeconds()Ljava/lang/Long;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->notBeforeTimeSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 350
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object p1

    return-object p1
.end method

.method public setAudience(Ljava/lang/Object;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "audience"    # Ljava/lang/Object;

    .line 285
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->audience:Ljava/lang/Object;

    .line 286
    return-object p0
.end method

.method public setExpirationTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "expirationTimeSeconds"    # Ljava/lang/Long;

    .line 190
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->expirationTimeSeconds:Ljava/lang/Long;

    .line 191
    return-object p0
.end method

.method public setIssuedAtTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "issuedAtTimeSeconds"    # Ljava/lang/Long;

    .line 230
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->issuedAtTimeSeconds:Ljava/lang/Long;

    .line 231
    return-object p0
.end method

.method public setIssuer(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "issuer"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->issuer:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public setJwtId(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "jwtId"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->jwtId:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public setNotBeforeTimeSeconds(Ljava/lang/Long;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "notBeforeTimeSeconds"    # Ljava/lang/Long;

    .line 210
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->notBeforeTimeSeconds:Ljava/lang/Long;

    .line 211
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .line 344
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->subject:Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->type:Ljava/lang/String;

    .line 325
    return-object p0
.end method
