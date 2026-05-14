.class Lcom/google/appinventor/components/runtime/Spreadsheet$17;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ClearRange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rangeRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 1822
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$rangeRef:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1826
    const-string v0, "SPREADSHEET"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v1

    .line 1827
    .local v1, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    nop

    .line 1828
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$rangeRef:Ljava/lang/String;

    new-instance v5, Lcom/google/api/services/sheets/v4/model/ClearValuesRequest;

    invoke-direct {v5}, Lcom/google/api/services/sheets/v4/model/ClearValuesRequest;-><init>()V

    .line 1829
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->clear(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ClearValuesRequest;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Clear;

    move-result-object v2

    .line 1830
    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Clear;->execute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/sheets/v4/model/ClearValuesResponse;

    .line 1831
    .local v2, "response":Lcom/google/api/services/sheets/v4/model/ClearValuesResponse;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Spreadsheet;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v4, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$17;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v2    # "response":Lcom/google/api/services/sheets/v4/model/ClearValuesResponse;
    goto/16 :goto_0

    .line 1846
    :catch_0
    move-exception v1

    .line 1847
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error in ClearRange: Unknown Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearRange: Unknown Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_1

    .line 1843
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1844
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string v2, "Error in ClearRange: Security Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1845
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearRange: Security Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_0

    .line 1840
    :catch_2
    move-exception v1

    .line 1841
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Error in ClearRange: IO Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1842
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearRange: IO Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1837
    :catch_3
    move-exception v1

    .line 1838
    .local v1, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    const-string v2, "Error in ClearRange: API Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1839
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClearRange: API Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1849
    .end local v1    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    :goto_0
    nop

    .line 1850
    :goto_1
    return-void
.end method
