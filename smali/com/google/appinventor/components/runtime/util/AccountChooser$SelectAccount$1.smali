.class Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;
.super Ljava/lang/Object;
.source "AccountChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    .line 191
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->this$0:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->this$0:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->-$$Nest$fgetchooseAccountPrompt(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    .line 196
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->-$$Nest$fgetaccountNames(Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;->this$1:Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    .line 197
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    const-string v1, "AccountChooser"

    const-string v2, "Dialog showing!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method
