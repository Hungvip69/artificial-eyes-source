.class Lcom/google/appinventor/components/runtime/Spreadsheet$7;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->AddRow(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 881
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$sheetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 885
    const-string v0, "!A"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v1

    .line 887
    .local v1, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$sheetName:Ljava/lang/String;

    .line 888
    invoke-virtual {v2, v3, v4}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 890
    .local v2, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v3

    .line 893
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    .line 896
    .local v5, "maxRow":I
    :goto_0
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$sheetName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$sheetName:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-virtual {v9, v0}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setRange(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v0

    .line 897
    invoke-virtual {v6, v7, v8, v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->append(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Append;

    move-result-object v0

    const-string v6, "USER_ENTERED"

    .line 899
    invoke-virtual {v0, v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Append;->setValueInputOption(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Append;

    move-result-object v0

    const-string v6, "INSERT_ROWS"

    .line 900
    invoke-virtual {v0, v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Append;->setInsertDataOption(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Append;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Append;->execute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/sheets/v4/model/AppendValuesResponse;

    .line 904
    .local v0, "response":Lcom/google/api/services/sheets/v4/model/AppendValuesResponse;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/model/AppendValuesResponse;->getUpdates()Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;->getUpdatedRange()Ljava/lang/String;

    move-result-object v6

    .line 906
    .local v6, "updatedRange":Ljava/lang/String;
    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v4, v7, v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v4, v4, v7

    .line 908
    .local v4, "cell":Ljava/lang/String;
    const-string v7, "[^\\d.]"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 909
    .local v7, "rowNumber":I
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/google/appinventor/components/runtime/Spreadsheet$7$1;

    invoke-direct {v9, p0, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet$7$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$7;I)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 915
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetobservers(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 916
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->val$sheetName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .end local v0    # "response":Lcom/google/api/services/sheets/v4/model/AppendValuesResponse;
    .end local v1    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v2    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v4    # "cell":Ljava/lang/String;
    .end local v5    # "maxRow":I
    .end local v6    # "updatedRange":Ljava/lang/String;
    .end local v7    # "rowNumber":I
    :cond_1
    goto :goto_1

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPREADSHEET"

    const-string v2, "AddRow Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddRow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 922
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
