.class Lcom/google/appinventor/components/runtime/GameClient$13;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .line 605
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$13;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$13;->val$functionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$13;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$13;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$13;->val$functionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$13;->val$message:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "WebServiceError"

    invoke-static {v0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 608
    return-void
.end method
