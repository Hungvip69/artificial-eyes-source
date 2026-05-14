.class Lcom/google/appinventor/components/runtime/Twitter$5;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$imagePath:Ljava/lang/String;

.field final synthetic val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .line 548
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 551
    const-string v0, "TweetWithImage"

    const-string v1, "file://"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    .line 553
    .local v3, "cleanImagePath":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$imagePath:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 556
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v1, "imageFilePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    new-instance v4, Ltwitter4j/StatusUpdate;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->val$status:Ljava/lang/String;

    invoke-direct {v4, v5}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    .line 559
    .local v4, "theTweet":Ltwitter4j/StatusUpdate;
    invoke-virtual {v4, v1}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 560
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v5

    invoke-interface {v5, v4}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;

    .line 561
    nop

    .end local v4    # "theTweet":Ltwitter4j/StatusUpdate;
    goto :goto_0

    .line 563
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    new-array v6, v2, [Ljava/lang/Object;

    const/16 v7, 0x13b

    invoke-virtual {v4, v5, v0, v7, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v1    # "imageFilePath":Ljava/io/File;
    .end local v3    # "cleanImagePath":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 566
    :catch_0
    move-exception v1

    .line 567
    .local v1, "e":Ltwitter4j/TwitterException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$5;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    .line 568
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    .line 567
    const/16 v2, 0x132

    invoke-virtual {v3, v4, v0, v2, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 570
    .end local v1    # "e":Ltwitter4j/TwitterException;
    :goto_1
    return-void
.end method
