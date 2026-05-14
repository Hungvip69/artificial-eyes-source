.class Lcom/google/appinventor/components/runtime/Twitter$13;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->SearchTwitter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .line 1015
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->tweets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v0

    new-instance v1, Ltwitter4j/Query;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->val$query:Ljava/lang/String;

    invoke-direct {v1, v2}, Ltwitter4j/Query;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->tweets:Ljava/util/List;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$13$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$13$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$13;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1034
    goto :goto_1

    .line 1025
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Ltwitter4j/TwitterException;
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v3, "SearchTwitter"

    .line 1023
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 1022
    const/16 v4, 0x13a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    .end local v0    # "e":Ltwitter4j/TwitterException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$13$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$13$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$13;)V

    goto :goto_0

    .line 1035
    :goto_1
    return-void

    .line 1025
    :goto_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$13;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$13$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Twitter$13$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$13;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1034
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
