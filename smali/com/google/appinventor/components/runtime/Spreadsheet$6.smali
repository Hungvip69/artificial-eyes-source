.class Lcom/google/appinventor/components/runtime/Spreadsheet$6;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ListSheets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 814
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 819
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->get(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/sheets/v4/model/Spreadsheet;

    .line 820
    .local v1, "spreadsheet":Lcom/google/api/services/sheets/v4/model/Spreadsheet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v2, "sheetNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/model/Spreadsheet;->getSheets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/sheets/v4/model/Sheet;

    .line 822
    .local v4, "sheet":Lcom/google/api/services/sheets/v4/model/Sheet;
    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/Sheet;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetsheetIdMap(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/Sheet;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/Sheet;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getSheetId()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    nop

    .end local v4    # "sheet":Lcom/google/api/services/sheets/v4/model/Sheet;
    goto :goto_0

    .line 825
    :cond_0
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 826
    .local v3, "sheetNamesList":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;

    invoke-direct {v5, p0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$6;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v1    # "spreadsheet":Lcom/google/api/services/sheets/v4/model/Spreadsheet;
    .end local v2    # "sheetNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "sheetNamesList":Lcom/google/appinventor/components/runtime/util/YailList;
    goto :goto_1

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$6$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$6$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$6;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
