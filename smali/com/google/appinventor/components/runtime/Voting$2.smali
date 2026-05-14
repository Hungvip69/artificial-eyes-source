.class Lcom/google/appinventor/components/runtime/Voting$2;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting;->postRequestBallot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Voting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Voting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Voting;

    .line 268
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postRequestBallot Failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Voting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Voting$2$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Voting$2$5;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Voting$2;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "result"    # Lorg/json/JSONObject;

    .line 270
    if-nez p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Voting$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Voting$2$1;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void

    .line 281
    :cond_0
    :try_start_0
    const-string v0, "Voting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRequestBallot: ballot retrieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "isPolling"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fputisPolling(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)V

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetisPolling(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "idRequested"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fputidRequested(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)V

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "question"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fputballotQuestion(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    const-string v1, "options"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fputballotOptionsString(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetballotOptionsString(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$mJSONArrayToArrayList(Lcom/google/appinventor/components/runtime/Voting;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fputballotOptions(Lcom/google/appinventor/components/runtime/Voting;Ljava/util/ArrayList;)V

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Voting$2$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Voting$2$2;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Voting$2$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Voting$2$3;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    nop

    .line 321
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Voting$2;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Voting$2$4;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Voting$2$4;-><init>(Lcom/google/appinventor/components/runtime/Voting$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method
