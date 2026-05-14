.class Lcom/google/appinventor/components/runtime/Texting$5;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;

.field final synthetic val$caller:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .line 1188
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$5;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$5;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$5;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$5$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$5$1;-><init>(Lcom/google/appinventor/components/runtime/Texting$5;)V

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1202
    return-void
.end method
