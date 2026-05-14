.class public final Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;
.super Ljava/lang/Object;
.source "RuntimeErrorAlert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeErrorAlert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;->alert(Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static alert(Ljava/lang/Object;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "toast"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "buttonText"    # Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alert("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuntimeErrorAlert"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-nez p2, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <No error message>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 38
    :cond_0
    if-eqz p1, :cond_1

    .line 39
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 43
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v1, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;-><init>(Ljava/lang/Object;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 53
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void
.end method
