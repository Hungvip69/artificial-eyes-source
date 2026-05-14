.class Lcom/google/appinventor/components/runtime/GameClient$2;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GameClient;->GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/GameClient;

.field final synthetic val$contents:Ljava/util/List;

.field final synthetic val$sender:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/GameClient;

    .line 406
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->val$sender:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->val$contents:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->this$0:Lcom/google/appinventor/components/runtime/GameClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->val$sender:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient$2;->val$contents:Ljava/util/List;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v1, "GotMessage"

    invoke-static {v0, v1, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 409
    return-void
.end method
