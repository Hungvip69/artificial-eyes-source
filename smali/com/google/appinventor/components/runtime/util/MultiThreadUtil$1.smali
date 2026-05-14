.class Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$1;
.super Landroid/os/AsyncTask;
.source "MultiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MultiThreadUtil;->runInNewThread(Lcom/google/appinventor/components/runtime/util/YailProcedure;Lcom/google/appinventor/components/runtime/util/YailProcedure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/appinventor/components/runtime/util/YailProcedure;

.field final synthetic val$procedure:Lcom/google/appinventor/components/runtime/util/YailProcedure;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/YailProcedure;Lcom/google/appinventor/components/runtime/util/YailProcedure;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$1;->val$procedure:Lcom/google/appinventor/components/runtime/util/YailProcedure;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$1;->val$callback:Lcom/google/appinventor/components/runtime/util/YailProcedure;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$1;->val$procedure:Lcom/google/appinventor/components/runtime/util/YailProcedure;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailProcedure;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$1;->val$callback:Lcom/google/appinventor/components/runtime/util/YailProcedure;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailProcedure;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
