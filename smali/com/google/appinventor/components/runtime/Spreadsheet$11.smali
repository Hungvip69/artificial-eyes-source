.class Lcom/google/appinventor/components/runtime/Spreadsheet$11;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->AddColumn(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
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

    .line 1232
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$sheetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1237
    const-string v0, "SPREADSHEET"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v1

    .line 1239
    .local v1, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$sheetName:Ljava/lang/String;

    .line 1240
    invoke-virtual {v2, v3, v4}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1242
    .local v2, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v3

    .line 1244
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 1250
    :cond_0
    const/4 v4, 0x0

    .line 1251
    .local v4, "maxCol":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1252
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v4, v7

    .line 1253
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1254
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 1255
    .local v5, "nextCol":I
    move v6, v5

    .line 1257
    .local v6, "addedColumn":I
    const/16 v7, 0x1a

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "A"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "B"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "C"

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string v8, "D"

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string v8, "E"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const-string v8, "F"

    const/4 v9, 0x5

    aput-object v8, v7, v9

    const-string v8, "G"

    const/4 v9, 0x6

    aput-object v8, v7, v9

    const-string v8, "H"

    const/4 v9, 0x7

    aput-object v8, v7, v9

    const-string v8, "I"

    const/16 v9, 0x8

    aput-object v8, v7, v9

    const-string v8, "J"

    const/16 v9, 0x9

    aput-object v8, v7, v9

    const-string v8, "K"

    const/16 v9, 0xa

    aput-object v8, v7, v9

    const-string v8, "L"

    const/16 v9, 0xb

    aput-object v8, v7, v9

    const-string v8, "M"

    const/16 v9, 0xc

    aput-object v8, v7, v9

    const-string v8, "N"

    const/16 v9, 0xd

    aput-object v8, v7, v9

    const-string v8, "O"

    const/16 v9, 0xe

    aput-object v8, v7, v9

    const-string v8, "P"

    const/16 v9, 0xf

    aput-object v8, v7, v9

    const-string v8, "Q"

    const/16 v9, 0x10

    aput-object v8, v7, v9

    const-string v8, "R"

    const/16 v9, 0x11

    aput-object v8, v7, v9

    const-string v8, "S"

    const/16 v9, 0x12

    aput-object v8, v7, v9

    const-string v8, "T"

    const/16 v9, 0x13

    aput-object v8, v7, v9

    const-string v8, "U"

    const/16 v9, 0x14

    aput-object v8, v7, v9

    const-string v8, "V"

    const/16 v9, 0x15

    aput-object v8, v7, v9

    const-string v8, "W"

    const/16 v9, 0x16

    aput-object v8, v7, v9

    const-string v8, "X"

    const/16 v9, 0x17

    aput-object v8, v7, v9

    const-string v8, "Y"

    const/16 v9, 0x18

    aput-object v8, v7, v9

    const-string v8, "Z"

    const/16 v9, 0x19

    aput-object v8, v7, v9

    .line 1260
    .local v7, "alphabet":[Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v8, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetColString(Lcom/google/appinventor/components/runtime/Spreadsheet;I)Ljava/lang/String;

    move-result-object v8

    .line 1261
    .local v8, "colReference":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$sheetName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1263
    .local v9, "rangeRef":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v10

    iget-object v11, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1264
    invoke-virtual {v10, v11, v9, v12}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v10

    const-string v11, "USER_ENTERED"

    .line 1265
    invoke-virtual {v10, v11}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->setValueInputOption(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v10

    .line 1266
    invoke-virtual {v10}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->execute()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;

    .line 1268
    .local v10, "response":Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;
    iget-object v11, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;

    invoke-direct {v12, p0, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$11;I)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v1    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v2    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v4    # "maxCol":I
    .end local v5    # "nextCol":I
    .end local v6    # "addedColumn":I
    .end local v7    # "alphabet":[Ljava/lang/String;
    .end local v8    # "colReference":Ljava/lang/String;
    .end local v9    # "rangeRef":Ljava/lang/String;
    .end local v10    # "response":Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;
    goto :goto_2

    .line 1245
    .restart local v1    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v2    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .restart local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v5, "AddColumn: No data found"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    return-void

    .line 1277
    .end local v1    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v2    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v1

    .line 1278
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string v2, "AddColumn Security Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddColumn GeneralSecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_3

    .line 1274
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    .line 1275
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AddColumn IO Error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddColumn IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1280
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 1281
    :goto_3
    return-void
.end method
