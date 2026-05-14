.class Lcom/google/appinventor/components/runtime/Spreadsheet$2;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ReadRow(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rangeReference:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 517
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->val$rangeReference:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 522
    const-string v0, "SPREADSHEET"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetcredentialsPath(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 524
    move-object v1, v3

    .line 526
    .local v1, "cleanRangeReference":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->val$rangeReference:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 530
    nop

    .line 533
    :try_start_2
    const-string v3, "https://docs.google.com/spreadsheets/d/%s/export?format=csv&range=%s"

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v4

    aput-object v1, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "getUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadRow url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 540
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 541
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x190

    if-ne v5, v6, :cond_0

    .line 544
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadRow: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 545
    return-void

    .line 549
    :cond_0
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$smgetResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v5

    .line 550
    .local v5, "responseContent":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    .line 552
    .local v6, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/LList;

    invoke-virtual {v7}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 553
    .local v8, "elem":Ljava/lang/Object;
    instance-of v9, v8, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v9, :cond_1

    .line 554
    goto :goto_0

    .line 555
    :cond_1
    move-object v7, v8

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 557
    .local v7, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lcom/google/appinventor/components/runtime/Spreadsheet$2$1;

    invoke-direct {v10, p0, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet$2$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$2;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 563
    return-void

    .line 565
    .end local v7    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v8    # "elem":Ljava/lang/Object;
    :cond_2
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v8, "ReadRow: Could not find a row from the HTTP Request."

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 566
    return-void

    .line 527
    .end local v2    # "getUrl":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "responseContent":Ljava/lang/String;
    .end local v6    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_0
    move-exception v2

    .line 528
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v4, "ReadRow: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 529
    return-void

    .line 570
    .end local v1    # "cleanRangeReference":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v1

    .line 571
    .local v1, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->val$rangeReference:Ljava/lang/String;

    .line 572
    invoke-virtual {v5, v6, v7}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 574
    .local v5, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v6

    .line 576
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    .line 581
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 583
    .local v9, "obj":Ljava/lang/Object;
    const-string v10, "%s"

    if-nez v9, :cond_5

    move-object v11, v3

    goto :goto_2

    :cond_5
    move-object v11, v9

    :goto_2
    new-array v12, v2, [Ljava/lang/Object;

    aput-object v11, v12, v4

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    nop

    .end local v9    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 587
    :cond_6
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Spreadsheet$2$2;

    invoke-direct {v3, p0, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet$2$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$2;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 577
    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v3, "ReadRow: No data found"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 599
    .end local v1    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v5    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :goto_4
    goto :goto_5

    .line 596
    :catch_1
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ReadRow Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$2;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadRow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 600
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method
