.class Lcom/google/appinventor/components/runtime/Form$2;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$newOrientation:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .line 494
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$2;->val$newOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "dispatchEventNow":Z
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    iget v1, p0, Lcom/google/appinventor/components/runtime/Form$2;->val$newOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 499
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 500
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 504
    const/4 v0, 0x1

    .line 508
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 509
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$mrecomputeLayout(Lcom/google/appinventor/components/runtime/Form;)V

    .line 510
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 511
    .local v1, "savedLayout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$2$1;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Form$2$1;-><init>(Lcom/google/appinventor/components/runtime/Form$2;Landroid/widget/FrameLayout;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationChanged()V

    .line 521
    .end local v1    # "savedLayout":Landroid/widget/FrameLayout;
    goto :goto_1

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 525
    :goto_1
    return-void
.end method
