.class Lcom/google/appinventor/components/runtime/ChatBot$3;
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

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChatBot;

    .line 377
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$question:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->this$0:Lcom/google/appinventor/components/runtime/ChatBot;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ChatBot;->-$$Nest$fgetuuid(Lcom/google/appinventor/components/runtime/ChatBot;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$question:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChatBot$3;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/ChatBot;->-$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/ChatBot;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 381
    return-void
.end method
