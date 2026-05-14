.class Lcom/google/appinventor/components/runtime/Form$3;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .line 917
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initialize"

    invoke-static {v0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 921
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$sfgetsCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Fixed"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Responsive"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 926
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fputscreenInitialized(Lcom/google/appinventor/components/runtime/Form;Z)V

    .line 929
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetonInitializeListeners(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 930
    .local v1, "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    .line 931
    .end local v1    # "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    goto :goto_1

    .line 932
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_3

    .line 933
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->HandleReturnValues()V

    goto :goto_2

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 939
    :cond_3
    :goto_2
    return-void
.end method
