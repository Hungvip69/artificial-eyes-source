.class public Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;
.super Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;
.source "CommonGoogleJsonClientRequestInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userIp"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method


# virtual methods
.method public final initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    .local p1, "request":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<*>;"
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;->initializeJsonRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V

    .line 122
    return-void
.end method

.method protected initializeJsonRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    .local p1, "request":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<*>;"
    return-void
.end method
