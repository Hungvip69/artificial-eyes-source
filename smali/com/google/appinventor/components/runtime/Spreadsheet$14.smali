.class Lcom/google/appinventor/components/runtime/Spreadsheet$14;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->WriteCell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
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

    .line 1534
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->val$rangeRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1540
    const-string v0, "SPREADSHEET"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v1

    .line 1546
    .local v1, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->val$rangeRef:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1547
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v2

    const-string v3, "USER_ENTERED"

    .line 1548
    invoke-virtual {v2, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->setValueInputOption(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v2

    .line 1549
    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->execute()Ljava/lang/Object;

    .line 1551
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Spreadsheet$14$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$14$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$14;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    goto/16 :goto_0

    .line 1567
    :catch_0
    move-exception v1

    .line 1568
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WriteCell: Unknown Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriteCell: Unknown Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_1

    .line 1564
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1565
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string v2, "WriteCell: Security Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1566
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriteCell: Security Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_0

    .line 1561
    :catch_2
    move-exception v1

    .line 1562
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WriteCell: IO Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriteCell: IO Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1558
    :catch_3
    move-exception v1

    .line 1559
    .local v1, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    const-string v2, "WriteCell: API Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WriteCell: API Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1570
    .end local v1    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    :goto_0
    nop

    .line 1571
    :goto_1
    return-void
.end method
