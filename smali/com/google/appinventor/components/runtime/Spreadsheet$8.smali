.class Lcom/google/appinventor/components/runtime/Spreadsheet$8;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->RemoveRow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rowNumber:I

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 949
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$sheetName:Ljava/lang/String;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$rowNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 954
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$sheetName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result v1

    .line 956
    .local v1, "gridId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 957
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v3, "RemoveCol: sheetName not found"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 958
    return-void

    .line 961
    :cond_0
    new-instance v2, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    invoke-direct {v2}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;-><init>()V

    new-instance v3, Lcom/google/api/services/sheets/v4/model/DimensionRange;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/DimensionRange;-><init>()V

    .line 964
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setSheetId(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v3

    const-string v4, "ROWS"

    .line 965
    invoke-virtual {v3, v4}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setDimension(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$rowNumber:I

    add-int/lit8 v4, v4, -0x1

    .line 966
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setStartIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->val$rowNumber:I

    .line 967
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/sheets/v4/model/DimensionRange;->setEndIndex(Ljava/lang/Integer;)Lcom/google/api/services/sheets/v4/model/DimensionRange;

    move-result-object v3

    .line 962
    invoke-virtual {v2, v3}, Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;->setRange(Lcom/google/api/services/sheets/v4/model/DimensionRange;)Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;

    move-result-object v2

    .line 969
    .local v2, "deleteRequest":Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 970
    .local v3, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    new-instance v4, Lcom/google/api/services/sheets/v4/model/Request;

    invoke-direct {v4}, Lcom/google/api/services/sheets/v4/model/Request;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/api/services/sheets/v4/model/Request;->setDeleteDimension(Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;)Lcom/google/api/services/sheets/v4/model/Request;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    new-instance v4, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    invoke-direct {v4}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;-><init>()V

    .line 972
    invoke-virtual {v4, v3}, Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;->setRequests(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;

    move-result-object v4

    .line 973
    .local v4, "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->batchUpdate(Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$BatchUpdate;->execute()Ljava/lang/Object;

    .line 976
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$8;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v1    # "gridId":I
    .end local v2    # "deleteRequest":Lcom/google/api/services/sheets/v4/model/DeleteDimensionRequest;
    .end local v3    # "requests":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/services/sheets/v4/model/Request;>;"
    .end local v4    # "body":Lcom/google/api/services/sheets/v4/model/BatchUpdateSpreadsheetRequest;
    goto :goto_0

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPREADSHEET"

    const-string v2, "RemoveRow Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoveRow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 988
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
