.class Lcom/google/appinventor/components/runtime/Twitter$7;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->RequestFollowers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .line 674
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->friends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 679
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v1, v2, v3}, Ltwitter4j/Twitter;->getFollowersIDs(J)Ltwitter4j/IDs;

    move-result-object v1

    .line 680
    .local v1, "followerIDs":Ltwitter4j/IDs;
    invoke-interface {v1}, Ltwitter4j/IDs;->getIDs()[J

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 682
    .local v5, "id":J
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->friends:Ljava/util/List;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v8

    invoke-interface {v8, v5, v6}, Ltwitter4j/Twitter;->showUser(J)Ltwitter4j/User;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    nop

    .end local v5    # "id":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "followerIDs":Ltwitter4j/IDs;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$7$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$7$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    goto :goto_2

    .line 689
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 684
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Ltwitter4j/TwitterException;
    :try_start_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v4, "RequestFollowers"

    .line 687
    invoke-virtual {v1}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v0

    .line 685
    const/16 v0, 0x134

    invoke-virtual {v2, v3, v4, v0, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    .end local v1    # "e":Ltwitter4j/TwitterException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$7$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Twitter$7$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V

    goto :goto_1

    .line 699
    :goto_2
    return-void

    .line 689
    :goto_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$7$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Twitter$7$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
