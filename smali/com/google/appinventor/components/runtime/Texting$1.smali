.class Lcom/google/appinventor/components/runtime/Texting$1;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabled(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;

.field final synthetic val$state:Lcom/google/appinventor/components/common/ReceivingState;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/common/ReceivingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .line 630
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$1;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$1;->val$state:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 633
    const-string v0, "Texting Component"

    if-eqz p2, :cond_0

    .line 634
    const-string v1, "Post Notifications permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$1;->val$state:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V

    goto :goto_0

    .line 637
    :cond_0
    const-string v1, "Post Notifications permission denied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$1;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$1;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    const-string v2, "ReceivingEnabled"

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_0
    return-void
.end method
