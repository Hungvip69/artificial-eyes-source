.class Lcom/google/appinventor/components/runtime/Spreadsheet$9;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->ReadColumn(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1030
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$rangeRef:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1035
    move-object/from16 v1, p0

    const-string v2, "SPREADSHEET"

    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetcredentialsPath(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const-string v4, ""

    if-nez v0, :cond_4

    .line 1037
    move-object v5, v4

    .line 1039
    .local v5, "cleanRangeReference":Ljava/lang/String;
    :try_start_1
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$rangeRef:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1043
    .end local v5    # "cleanRangeReference":Ljava/lang/String;
    .local v0, "cleanRangeReference":Ljava/lang/String;
    nop

    .line 1046
    :try_start_2
    const-string v5, "https://docs.google.com/spreadsheets/d/%s/export?format=csv&range=%s"

    iget-object v6, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const/4 v6, 0x1

    aput-object v0, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1049
    .local v5, "getUrl":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadColumn url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 1054
    .local v8, "connection":Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0x190

    if-ne v9, v10, :cond_0

    .line 1057
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadColumn: Bad HTTP Request. Please check the address and try again. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1059
    return-void

    .line 1063
    :cond_0
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$smgetResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v9

    .line 1064
    .local v9, "responseContent":Ljava/lang/String;
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v10

    .line 1065
    .local v10, "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v11, "col":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/lists/LList;

    invoke-virtual {v12}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1067
    .local v13, "elem":Ljava/lang/Object;
    instance-of v14, v13, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v14, :cond_1

    .line 1068
    goto :goto_0

    .line 1069
    :cond_1
    move-object v14, v13

    check-cast v14, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1071
    .local v14, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    const-string v15, "%s"

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v16, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v14, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v16

    :goto_1
    move-object/from16 v17, v0

    .end local v0    # "cleanRangeReference":Ljava/lang/String;
    .local v17, "cleanRangeReference":Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v16, v0, v3

    invoke-static {v15, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    move-object/from16 v0, v17

    .end local v13    # "elem":Ljava/lang/Object;
    .end local v14    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    goto :goto_0

    .line 1074
    .end local v17    # "cleanRangeReference":Ljava/lang/String;
    .restart local v0    # "cleanRangeReference":Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v0

    .end local v0    # "cleanRangeReference":Ljava/lang/String;
    .restart local v17    # "cleanRangeReference":Ljava/lang/String;
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/google/appinventor/components/runtime/Spreadsheet$9$1;

    invoke-direct {v3, v1, v11}, Lcom/google/appinventor/components/runtime/Spreadsheet$9$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$9;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1080
    return-void

    .line 1040
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "responseContent":Ljava/lang/String;
    .end local v10    # "parsedCsv":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v11    # "col":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "cleanRangeReference":Ljava/lang/String;
    .local v5, "cleanRangeReference":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v4, "ReadColumn: Error occurred encoding the query. UTF-8 is unsupported?"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1042
    return-void

    .line 1084
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "cleanRangeReference":Ljava/lang/String;
    :cond_4
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 1086
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v5

    iget-object v6, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->val$rangeRef:Ljava/lang/String;

    .line 1087
    invoke-virtual {v5, v6, v7}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1088
    .local v5, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v5}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v6

    .line 1091
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 1097
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1099
    .local v9, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v4

    goto :goto_3

    :cond_6
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    nop

    .end local v9    # "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_2

    .line 1103
    :cond_7
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Spreadsheet$9$2;

    invoke-direct {v4, v1, v7}, Lcom/google/appinventor/components/runtime/Spreadsheet$9$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$9;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1112
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v5    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5

    .line 1092
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v5    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .restart local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_8
    :goto_4
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v4, "ReadColumn: No data found."

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1093
    return-void

    .line 1109
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v5    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :catch_1
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ReadColumn Error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadColumn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1113
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method
