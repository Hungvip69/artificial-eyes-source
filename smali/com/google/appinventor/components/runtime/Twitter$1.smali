.class Lcom/google/appinventor/components/runtime/Twitter$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->Authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$myConsumerKey:Ljava/lang/String;

.field final synthetic val$myConsumerSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .line 312
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 314
    const-string v0, "Twitter"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$mcheckAccessToken(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$1$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void

    .line 326
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v1

    const-string v2, "appinventor://twitter"

    invoke-interface {v1, v2}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v1

    .line 328
    .local v1, "newRequestToken":Ltwitter4j/auth/RequestToken;
    invoke-virtual {v1}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "authURL":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fputrequestToken(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/RequestToken;)V

    .line 331
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    .line 332
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    .local v3, "browserIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$sfgetWEBVIEW_ACTIVITY_CLASS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetrequestCode(Lcom/google/appinventor/components/runtime/Twitter;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "newRequestToken":Ltwitter4j/auth/RequestToken;
    .end local v2    # "authURL":Ljava/lang/String;
    .end local v3    # "browserIntent":Landroid/content/Intent;
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 345
    .local v1, "ise":Ljava/lang/IllegalStateException;
    const-string v2, "OAuthConsumer was already set: launch IsAuthorized()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$1$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Twitter$1$2;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 337
    .end local v1    # "ise":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 338
    .local v1, "e":Ltwitter4j/TwitterException;
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    .line 341
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 340
    const-string v3, "Authorize"

    const/16 v5, 0x12f

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$1;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Twitter;->DeAuthorize()V

    .line 352
    .end local v1    # "e":Ltwitter4j/TwitterException;
    :goto_0
    nop

    .line 353
    :goto_1
    return-void
.end method
