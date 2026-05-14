.class Lcom/google/appinventor/components/runtime/Spreadsheet$5;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->DeleteSheet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 763
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->val$sheetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 768
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    new-instance v1, Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->val$sheetName:Ljava/lang/String;

    .line 769
    invoke-static {v2, v0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;->setSheetId(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;

    move-result-object v1

    .line 770
    .local v1, "deleteSheetRequest":Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    new-instance v3, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/Request;->setDeleteSheet(Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v3, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 773
    invoke-virtual {v3, v2}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v3

    .line 774
    .local v3, "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    .line 775
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->val$sheetName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mremoveSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    .line 778
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$5;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v1    # "deleteSheetRequest":Lcom/google/api/services/sheets/v4/model/DeleteSheetRequest;
    .end local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    .end local v3    # "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    goto :goto_0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$5$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$5;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 795
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
