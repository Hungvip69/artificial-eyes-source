.class Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;
.super Landroid/os/AsyncTask;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncAuthenticate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .line 1210
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 1214
    const-string v0, "Texting Component"

    const-string v1, "Authenticating"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$sfgetactivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "grandcentral"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1210
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 1225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$fputauthToken(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    .line 1228
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$sfgetactivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Finished authentication"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$mprocessPendingQueue(Lcom/google/appinventor/components/runtime/Texting;)V

    .line 1232
    return-void
.end method
