.class Lcom/google/appinventor/components/runtime/Spreadsheet$15;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ReadRange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$rangeReference:Ljava/lang/String;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 1608
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$rangeReference:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$sheetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1611
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$rangeReference:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SPREADSHEET"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetcredentialsPath(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v0, :cond_1

    .line 1617
    nop

    .line 1619
    .local v5, "cleanRangeReference":Ljava/lang/String;
    :try_start_1
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$rangeReference:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1623
    .end local v5    # "cleanRangeReference":Ljava/lang/String;
    .local v0, "cleanRangeReference":Ljava/lang/String;
    nop

    .line 1626
    :try_start_2
    const-string v5, "https://docs.google.com/spreadsheets/d/%s/export?format=csv&range=%s"

    iget-object v6, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    aput-object v0, v7, v3

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1629
    .local v3, "getUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadRange url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1633
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 1634
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1636
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x190

    if-ne v6, v7, :cond_0

    .line 1637
    iget-object v6, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadRange: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1638
    return-void

    .line 1642
    :cond_0
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$smgetResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    .line 1643
    .local v6, "responseContent":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    .line 1645
    .local v7, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v8, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;

    invoke-direct {v9, v1, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet$15$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$15;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1651
    return-void

    .line 1620
    .end local v0    # "cleanRangeReference":Ljava/lang/String;
    .end local v3    # "getUrl":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v6    # "responseContent":Ljava/lang/String;
    .end local v7    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    .local v5, "cleanRangeReference":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v4, "ReadRange: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1622
    return-void

    .line 1655
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "cleanRangeReference":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 1656
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v6

    iget-object v7, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$sheetName:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->val$rangeReference:Ljava/lang/String;

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

    .line 1657
    invoke-virtual {v6, v7, v8}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1659
    .local v6, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v7

    .line 1662
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object/from16 v16, v0

    goto :goto_3

    .line 1667
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1669
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1670
    .local v10, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    .local v11, "cellRow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1672
    .local v13, "cellValue":Ljava/lang/Object;
    const-string v14, "%s"

    if-nez v13, :cond_3

    move-object v15, v5

    goto :goto_2

    :cond_3
    move-object v15, v13

    :goto_2
    move-object/from16 v16, v0

    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .local v16, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v15, v0, v4

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    move-object/from16 v0, v16

    .end local v13    # "cellValue":Ljava/lang/Object;
    goto :goto_1

    .line 1674
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :cond_4
    move-object/from16 v16, v0

    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1675
    move-object/from16 v0, v16

    .end local v10    # "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v11    # "cellRow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1678
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;

    invoke-direct {v3, v1, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet$15$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$15;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1689
    .end local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    goto :goto_4

    .line 1662
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_6
    move-object/from16 v16, v0

    .line 1663
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :goto_3
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v3, "ReadRange: No data found."

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1664
    return-void

    .line 1686
    .end local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :catch_1
    move-exception v0

    .line 1687
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ReadRange Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$15;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1690
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
