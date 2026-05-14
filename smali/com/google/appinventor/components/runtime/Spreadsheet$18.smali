.class Lcom/google/appinventor/components/runtime/Spreadsheet$18;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$colID:I

.field final synthetic val$exact:Z

.field final synthetic val$fireEvent:Z

.field final synthetic val$sheetName:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;ZIZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 1884
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$sheetName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$fireEvent:Z

    iput p4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$colID:I

    iput-boolean p5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$exact:Z

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1887
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 1891
    :cond_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$sheetName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading Sheet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SPREADSHEET"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetcredentialsPath(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    if-nez v0, :cond_2

    .line 1896
    :try_start_1
    const-string v0, "Reading Sheet: No credentials"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1898
    nop

    .line 1900
    .local v5, "cleanRangeReference":Ljava/lang/String;
    :try_start_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$sheetName:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1904
    .end local v5    # "cleanRangeReference":Ljava/lang/String;
    .local v0, "cleanRangeReference":Ljava/lang/String;
    nop

    .line 1907
    :try_start_3
    const-string v5, "https://docs.google.com/spreadsheets/d/%s/gviz/tq?tqx=out:csv&sheet=%s"

    iget-object v6, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    aput-object v0, v7, v3

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1912
    .local v3, "getUrl":Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 1914
    .local v5, "connection":Ljava/net/HttpURLConnection;
    const-string v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x190

    if-ne v6, v7, :cond_1

    .line 1917
    iget-object v6, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadSheet: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1918
    return-void

    .line 1922
    :cond_1
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$smgetResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v6

    .line 1923
    .local v6, "responseContent":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    .line 1925
    .local v7, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v8, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/google/appinventor/components/runtime/Spreadsheet$18$1;

    invoke-direct {v9, v1, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet$18$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$18;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1958
    return-void

    .line 1901
    .end local v0    # "cleanRangeReference":Ljava/lang/String;
    .end local v3    # "getUrl":Ljava/lang/String;
    .end local v4    # "url":Ljava/net/URL;
    .end local v6    # "responseContent":Ljava/lang/String;
    .end local v7    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    .local v5, "cleanRangeReference":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v4, "ReadRange: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1903
    return-void

    .line 1960
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "cleanRangeReference":Ljava/lang/String;
    :cond_2
    const-string v0, "Reading Sheet: Credentials located."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 1964
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    const-string v6, "Reading Sheet: Got sheet service"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v6

    iget-object v7, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$sheetName:Ljava/lang/String;

    .line 1967
    invoke-virtual {v6, v7, v8}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1968
    .local v6, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    const-string v7, "Got read result"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-virtual {v6}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v7

    .line 1971
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading Sheet: values count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v16, v0

    goto/16 :goto_3

    .line 1979
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1981
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RetriveSheet data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1984
    .local v10, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1985
    .local v11, "cellRow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1986
    .local v13, "cellValue":Ljava/lang/Object;
    const-string v14, "%s"

    if-nez v13, :cond_4

    move-object v15, v5

    goto :goto_2

    :cond_4
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

    .line 1987
    move-object/from16 v0, v16

    .end local v13    # "cellValue":Ljava/lang/Object;
    goto :goto_1

    .line 1988
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    move-object/from16 v0, v16

    .end local v10    # "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v11    # "cellRow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 1990
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :cond_6
    move-object/from16 v16, v0

    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RetriveSheet return rowcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;

    invoke-direct {v3, v1, v8}, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$18;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    goto/16 :goto_4

    .line 1974
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_7
    move-object/from16 v16, v0

    .line 1975
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :goto_3
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v3, "ReadSheet: No data found."

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1976
    return-void

    .line 2046
    .end local v6    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v16    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    :catch_1
    move-exception v0

    .line 2047
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Error in RetrieveSheet: Unknown Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2048
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetrieveSheet: Unknown Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_5

    .line 2043
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2044
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v3, "Error in RetrieveSheet: Security Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2045
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetrieveSheet: Security Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_4

    .line 2040
    :catch_3
    move-exception v0

    .line 2041
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Error in RetrieveSheet: IO Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2042
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetrieveSheet: IO Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 2037
    :catch_4
    move-exception v0

    .line 2038
    .local v0, "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    const-string v3, "Error in RetrieveSheet: API Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2039
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetrieveSheet: API Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 2049
    .end local v0    # "e":Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    :goto_4
    nop

    .line 2050
    :goto_5
    return-void

    .line 1888
    :cond_8
    :goto_6
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v2, "ReadSheet: SpreadsheetID is empty."

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1889
    return-void
.end method
