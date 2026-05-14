.class Lcom/google/appinventor/components/runtime/TinyWebDB$4;
.super Ljava/lang/Object;
.source "TinyWebDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB;->postGetValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/TinyWebDB;

    .line 273
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$4;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "result"    # Lorg/json/JSONArray;

    .line 275
    if-nez p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$1;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "tagFromWebDB":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    nop

    .line 294
    .local v0, "valueFromWebDB":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/TinyWebDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$2;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    nop

    .line 315
    .end local v0    # "valueFromWebDB":Ljava/lang/Object;
    .end local v1    # "tagFromWebDB":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$4$3;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$4;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method
