.class Lcom/google/appinventor/components/runtime/GameClient$10;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$response:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .line 545
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$10;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$10;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$10;->val$response:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 547
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$10;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$10;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$10;->val$response:Ljava/util/List;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "ServerCommandSuccess"

    invoke-static {v0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 549
    return-void
.end method
