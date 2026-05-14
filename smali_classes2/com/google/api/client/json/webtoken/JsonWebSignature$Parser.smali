.class public final Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
.super Ljava/lang/Object;
.source "JsonWebSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/webtoken/JsonWebSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parser"
.end annotation


# instance fields
.field private headerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private payloadClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const-class v0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    .line 486
    const-class v0, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    .line 490
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 491
    return-void
.end method


# virtual methods
.method public getHeaderClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getPayloadClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .locals 11
    .param p1, "tokenString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 529
    .local v1, "firstDot":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 530
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v5

    .line 531
    .local v5, "headerBytes":[B
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 532
    .local v6, "secondDot":I
    if-eq v6, v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 533
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 535
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 536
    .local v0, "payloadBytes":[B
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v4

    .line 537
    .local v4, "signatureBytes":[B
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v7

    .line 539
    .local v7, "signedContentBytes":[B
    iget-object v8, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v10, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    .line 540
    invoke-virtual {v8, v9, v10}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;

    .line 541
    .local v8, "header":Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;
    invoke-virtual {v8}, Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 542
    iget-object v2, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v9, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    .line 543
    invoke-virtual {v2, v3, v9}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    .line 544
    .local v2, "payload":Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;
    new-instance v3, Lcom/google/api/client/json/webtoken/JsonWebSignature;

    invoke-direct {v3, v8, v2, v4, v7}, Lcom/google/api/client/json/webtoken/JsonWebSignature;-><init>(Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;[B[B)V

    return-object v3
.end method

.method public setHeaderClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;"
        }
    .end annotation

    .line 500
    .local p1, "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/api/client/json/webtoken/JsonWebSignature$Header;>;"
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->headerClass:Ljava/lang/Class;

    .line 501
    return-object p0
.end method

.method public setPayloadClass(Ljava/lang/Class;)Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;",
            ">;)",
            "Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;"
        }
    .end annotation

    .line 511
    .local p1, "payloadClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;>;"
    iput-object p1, p0, Lcom/google/api/client/json/webtoken/JsonWebSignature$Parser;->payloadClass:Ljava/lang/Class;

    .line 512
    return-object p0
.end method
