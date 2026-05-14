.class Lcom/google/appinventor/components/runtime/Twitter$3;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->resultReturned(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$oauthVerifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .line 400
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetrequestToken(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v0

    .line 406
    .local v0, "resultAccessToken":Ltwitter4j/auth/AccessToken;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fputaccessToken(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V

    .line 407
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetaccessToken(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fputuserName(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$msaveAccessToken(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V

    .line 409
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$3$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Twitter$3$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    nop

    .end local v0    # "resultAccessToken":Ltwitter4j/auth/AccessToken;
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Twitter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 418
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    .line 420
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 418
    const-string v3, "Authorize"

    const/16 v5, 0x130

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 421
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$mdeAuthorize(Lcom/google/appinventor/components/runtime/Twitter;)V

    .line 423
    .end local v0    # "e":Ltwitter4j/TwitterException;
    :goto_0
    return-void
.end method
