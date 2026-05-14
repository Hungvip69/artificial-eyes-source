.class Lcom/google/appinventor/components/runtime/Twitter$6$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$6;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Twitter$6;

    .line 609
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$6$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$6$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$6;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$6;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetmentions(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$6$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$6;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$6;->replies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/Status;

    .line 613
    .local v1, "status":Ltwitter4j/Status;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$6$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$6;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$6;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetmentions(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-interface {v1}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v1    # "status":Ltwitter4j/Status;
    goto :goto_0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$6$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$6;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$6;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$6$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$6;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$6;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetmentions(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->MentionsReceived(Ljava/util/List;)V

    .line 617
    return-void
.end method
