.class Lcom/google/appinventor/components/runtime/Spreadsheet$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$thisInstance:Lcom/google/appinventor/components/runtime/Spreadsheet;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 358
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$thisInstance:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 362
    const-string v0, "ErrorOccurred"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$thisInstance:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$errorMessage:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v0, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Spreadsheet;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$1;->val$errorMessage:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    const/16 v4, 0x1131

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPREADSHEET"

    const-string v2, "Error in ErrorOccurred event dispatch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
