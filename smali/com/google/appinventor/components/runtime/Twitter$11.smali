.class Lcom/google/appinventor/components/runtime/Twitter$11;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->StopFollowing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .line 902
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$11;->val$user:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 905
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Twitter;->-$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$11;->val$user:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltwitter4j/Twitter;->destroyFriendship(Ljava/lang/String;)Ltwitter4j/User;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Ltwitter4j/TwitterException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$11;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    .line 908
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 907
    const-string v3, "StopFollowing"

    const/16 v5, 0x138

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 910
    .end local v0    # "e":Ltwitter4j/TwitterException;
    :goto_0
    return-void
.end method
