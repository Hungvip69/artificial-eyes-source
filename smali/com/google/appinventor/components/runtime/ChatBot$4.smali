.class Lcom/google/appinventor/components/runtime/ChatBot$4;
.super Ljava/lang/Object;
.source "ChatBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChatBot;->ConverseWithImage(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChatBot;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChatBot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChatBot;

    .line 384
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot$4;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot$4;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    const/4 v1, -0x1

    const-string v2, "Invalid input to ChatBot"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/ChatBot;->ErrorOccurred(ILjava/lang/String;)V

    .line 388
    return-void
.end method
