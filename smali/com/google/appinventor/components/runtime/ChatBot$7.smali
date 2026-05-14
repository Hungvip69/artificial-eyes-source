.class Lcom/google/appinventor/components/runtime/ChatBot$7;
.super Ljava/lang/Object;
.source "ChatBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChatBot;->ErrorOccurred(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChatBot;

.field final synthetic val$responseCode:I

.field final synthetic val$responseText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChatBot;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChatBot;

    .line 613
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iput p2, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->val$responseCode:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->val$responseText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 616
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->val$responseCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->val$responseText:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v2, "ErrorOccurred"

    invoke-static {v0, v2, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChatBot;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iget v6, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->val$responseCode:I

    .line 618
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ChatBot$7;->val$responseText:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v5

    aput-object v7, v3, v1

    .line 617
    const/16 v1, 0x1068

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 620
    :cond_0
    return-void
.end method
