.class Lcom/google/appinventor/components/runtime/ChatBot$5;
.super Ljava/lang/Object;
.source "ChatBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChatBot;->GotResponse(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChatBot;

.field final synthetic val$responseText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChatBot;

    .line 404
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot$5;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChatBot$5;->val$responseText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot$5;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChatBot$5;->val$responseText:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "GotResponse"

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 408
    return-void
.end method
