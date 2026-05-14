.class Lcom/google/appinventor/components/runtime/Spreadsheet$13;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ReadCell(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$cellReference:Ljava/lang/String;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 1392
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->val$cellReference:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->val$sheetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->val$cellReference:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading Cell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetcredentialsPath(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "%s"

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4

    .line 1401
    move-object v0, v3

    .line 1403
    .local v0, "cleanRangeReference":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->val$cellReference:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v6

    .line 1407
    nop

    .line 1410
    :try_start_2
    const-string v6, "https://docs.google.com/spreadsheets/d/%s/export?format=csv&range=%s"

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v5

    aput-object v0, v8, v4

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1413
    .local v6, "getUrl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadCell url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1417
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 1418
    .local v8, "connection":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0x190

    if-ne v9, v10, :cond_0

    .line 1421
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadCell: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1423
    return-void

    .line 1427
    :cond_0
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$smgetResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v9

    .line 1428
    .local v9, "responseContent":Ljava/lang/String;
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v10

    .line 1430
    .local v10, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/lists/LList;

    invoke-virtual {v11}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1431
    .local v12, "elem":Ljava/lang/Object;
    instance-of v13, v12, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v13, :cond_1

    .line 1432
    goto :goto_0

    .line 1434
    :cond_1
    move-object v11, v12

    check-cast v11, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1435
    .local v11, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v11}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v11, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1437
    .local v2, "cellData":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Spreadsheet$13$1;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet$13$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$13;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1443
    return-void

    .line 1446
    .end local v2    # "cellData":Ljava/lang/String;
    .end local v11    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v12    # "elem":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v3, "ReadCell: Error reading cell data from HTTP Request"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1447
    return-void

    .line 1404
    .end local v6    # "getUrl":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "responseContent":Ljava/lang/String;
    .end local v10    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_0
    move-exception v2

    .line 1405
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v4, "ReadCell: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1406
    return-void

    .line 1451
    .end local v0    # "cleanRangeReference":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 1452
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->val$sheetName:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->val$cellReference:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "!"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1453
    invoke-virtual {v6, v7, v8}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1454
    .local v6, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v7

    .line 1457
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 1468
    :cond_5
    nop

    .line 1469
    nop

    .line 1468
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1469
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_2
    goto :goto_3

    :cond_6
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :goto_3
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    .line 1468
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1470
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Spreadsheet$13$3;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet$13$3;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$13;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v2    # "result":Ljava/lang/String;
    .end local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    goto/16 :goto_5

    .line 1458
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Spreadsheet$13$2;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$13$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$13;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1464
    return-void

    .line 1487
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :catch_1
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error in ReadCell: Unknown Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1489
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadCell: Unknown Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_6

    .line 1484
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1485
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v2, "Error in ReadCell: Security Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1486
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadCell: Security Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_5

    .line 1481
    :catch_3
    move-exception v0

    .line 1482
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Error in ReadCell: IO Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1483
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadCell: IO Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 1478
    :catch_4
    move-exception v0

    .line 1479
    .local v0, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    const-string v2, "Error in ReadCell: API Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1480
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadCell: API Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1490
    .end local v0    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    :goto_5
    nop

    .line 1491
    :goto_6
    return-void
.end method
