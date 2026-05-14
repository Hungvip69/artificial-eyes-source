.class Lcom/google/appinventor/components/runtime/Spreadsheet$3;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->WriteRow(Ljava/lang/String;ILcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

.field final synthetic val$rangeRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 648
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->val$rangeRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 655
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->val$rangeRef:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 656
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v1

    const-string v2, "USER_ENTERED"

    .line 657
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->setValueInputOption(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->execute()Ljava/lang/Object;

    .line 660
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$3$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$3$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$3;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPREADSHEET"

    const-string v2, "WriteRow Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$3;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriteRow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
