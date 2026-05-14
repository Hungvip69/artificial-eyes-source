.class Lcom/google/appinventor/components/runtime/Twitter$7$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$7;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Twitter$7;

    .line 689
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 691
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetfollowers(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 692
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$7;->friends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/User;

    .line 693
    .local v1, "user":Ltwitter4j/User;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetfollowers(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    .end local v1    # "user":Ltwitter4j/User;
    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$7$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$7;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgetfollowers(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Twitter;->FollowersReceived(Ljava/util/List;)V

    .line 696
    return-void
.end method
