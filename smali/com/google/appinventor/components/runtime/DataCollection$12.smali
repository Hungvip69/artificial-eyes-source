.class Lcom/google/appinventor/components/runtime/DataCollection$12;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->importFromSpreadsheetAsync(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$sheetColumns:Ljava/util/concurrent/Future;

.field final synthetic val$sheets:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$useHeaders:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;Lcom/google/appinventor/components/runtime/Spreadsheet;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 748
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$12;, "Lcom/google/appinventor/components/runtime/DataCollection$12;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->val$sheetColumns:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->val$sheets:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->val$useHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 751
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$12;, "Lcom/google/appinventor/components/runtime/DataCollection$12;"
    const/4 v0, 0x0

    .line 754
    .local v0, "dataColumns":Lcom/google/appinventor/components/runtime/util/YailList;
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->val$sheetColumns:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 759
    :goto_0
    goto :goto_1

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 755
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 761
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->val$sheets:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetdataSource(Lcom/google/appinventor/components/runtime/DataCollection;)Lcom/google/appinventor/components/runtime/DataSource;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 762
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetdataSource(Lcom/google/appinventor/components/runtime/DataCollection;)Lcom/google/appinventor/components/runtime/DataSource;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$mupdateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->val$useHeaders:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/DataModel;->importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    .line 766
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$12;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 768
    return-void
.end method
