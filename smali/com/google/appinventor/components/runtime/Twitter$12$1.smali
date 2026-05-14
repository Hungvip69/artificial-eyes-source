.class Lcom/google/appinventor/components/runtime/Twitter$12$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$12;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Twitter$12;

    .line 937
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 939
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettimeline(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 940
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$12;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Status;

    .line 941
    .local v1, "message":Ltwitter4j/Status;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v2, "status":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-interface {v1}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettimeline(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    .end local v1    # "message":Ltwitter4j/Status;
    .end local v2    # "status":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettimeline(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->FriendTimelineReceived(Ljava/util/List;)V

    .line 947
    return-void
.end method
