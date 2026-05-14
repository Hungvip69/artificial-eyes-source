.class Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType$1;
.super Ljava/lang/Object;
.source "ImageBotToken.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 1
    .param p1, "number"    # I

    .line 1918
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->forNumber(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1916
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType$1;->findValueByNumber(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object p1

    return-object p1
.end method
