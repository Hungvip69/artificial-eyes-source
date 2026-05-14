.class Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;
.super Landroid/os/AsyncTask;
.source "FusiontablesControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 514
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->progress:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 513
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .line 528
    const-string v0, "FUSION"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$mgenFusiontablesQuery(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .line 529
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    aget-object v2, p1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetrequestHelper(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 531
    .local v2, "response":Lorg/apache/http/HttpResponse;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 532
    .local v3, "outstream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 533
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 535
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "outstream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 537
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 513
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 548
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "processing query..."

    const/4 v2, 0x1

    const-string v3, "Fusiontables"

    invoke-static {v0, v3, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->progress:Landroid/app/ProgressDialog;

    .line 519
    return-void
.end method
