.class Lcom/google/appinventor/components/runtime/Spreadsheet$4;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->AddSheet(Ljava/lang/String;)V
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

    .line 701
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->val$sheetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 706
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    new-instance v1, Lcom/google/api/services/sheets/v4/model/AddSheetRequest;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/AddSheetRequest;-><init>()V

    new-instance v2, Lcom/google/api/services/sheets/v4/model/SheetProperties;

    invoke-direct {v2}, Lcom/google/api/services/sheets/v4/model/SheetProperties;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->val$sheetName:Ljava/lang/String;

    .line 709
    invoke-virtual {v2, v3}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->setTitle(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v2

    .line 707
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/AddSheetRequest;->setProperties(Lcom/google/api/services/sheets/v4/model/SheetProperties;)Lcom/google/api/services/sheets/v4/model/AddSheetRequest;

    move-result-object v1

    .line 711
    .local v1, "addSheetRequest":Lcom/google/api/services/sheets/v4/model/AddSheetRequest;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v2, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    new-instance v3, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/api/services/sheets/v4/model/Request;->setAddSheet(Lcom/google/api/services/sheets/v4/model/AddSheetRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v3, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 714
    invoke-virtual {v3, v2}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v3

    .line 715
    .local v3, "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    nop

    .line 716
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetResponse;

    .line 717
    .local v4, "response":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetResponse;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->val$sheetName:Ljava/lang/String;

    .line 718
    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetResponse;->getReplies()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/api/services/sheets/v4/model/Response;

    invoke-virtual {v7}, Lcom/google/api/services/sheets/v4/model/Response;->getAddSheet()Lcom/google/api/services/sheets/v4/model/AddSheetResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/api/services/sheets/v4/model/AddSheetResponse;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getSheetId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 717
    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mupdateSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    .line 721
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/Spreadsheet$4$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$4$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$4;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v1    # "addSheetRequest":Lcom/google/api/services/sheets/v4/model/AddSheetRequest;
    .end local v2    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    .end local v3    # "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    .end local v4    # "response":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetResponse;
    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$4$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$4$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$4;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 738
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
