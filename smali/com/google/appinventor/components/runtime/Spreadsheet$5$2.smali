.class Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$5;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$5;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    .line 786
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 789
    const-string v0, "Error occurred in DeleteSheet"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;->val$e:Ljava/lang/Exception;

    const-string v2, "SPREADSHEET"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeleteSheet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 791
    return-void
.end method
