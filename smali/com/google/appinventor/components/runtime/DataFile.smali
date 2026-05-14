.class public Lcom/google/appinventor/components/runtime/DataFile;
.super Lcom/google/appinventor/components/runtime/FileBase;
.source "DataFile.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/DataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that allows reading CSV and JSON data. The DataFile contains functionality relevant to accessing CSV or JSON parsed data in the form of rows or columns. Can be used together with the ChartData2D component to import data directly from a file to the Chart. The component may also be dragged and dropped on a Chart after a file has been selected and parsed successfully to create ChartData components automatically from the file onto the Chart."
    iconName = "images/dataFile.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/FileBase;",
        "Lcom/google/appinventor/components/runtime/DataSource<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        "Ljava/util/concurrent/Future<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;>;"
    }
.end annotation


# instance fields
.field private columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

.field private columns:Lcom/google/appinventor/components/runtime/util/YailList;

.field private rows:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final threadRunner:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetcolumnNames(Lcom/google/appinventor/components/runtime/DataFile;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcolumns(Lcom/google/appinventor/components/runtime/DataFile;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrows(Lcom/google/appinventor/components/runtime/DataFile;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 69
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FileBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 71
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 73
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->threadRunner:Ljava/util/concurrent/ExecutorService;

    .line 76
    return-void
.end method

.method private getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .line 147
    .local p1, "propertyCallable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->threadRunner:Ljava/util/concurrent/ExecutorService;

    .line 148
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 156
    :goto_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ColumnNames()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the elements of the first row of the Data File\'s contents."
    .end annotation

    .line 121
    new-instance v0, Lcom/google/appinventor/components/runtime/DataFile$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DataFile$3;-><init>(Lcom/google/appinventor/components/runtime/DataFile;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Columns()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns a list of columns corresponding to the Data File\'s content."
    .end annotation

    .line 103
    new-instance v0, Lcom/google/appinventor/components/runtime/DataFile$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DataFile$2;-><init>(Lcom/google/appinventor/components/runtime/DataFile;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public ReadFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates source file to load data from. The expected format of the contents of the file are either CSV or JSON.Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion.The results of the reading are stored in the Rows, Columns and ColumnNames properties of the component."
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataFile;->readFromFile(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public Rows()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns a list of rows corresponding to the Data File\'s content."
    .end annotation

    .line 86
    new-instance v0, Lcom/google/appinventor/components/runtime/DataFile$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DataFile$1;-><init>(Lcom/google/appinventor/components/runtime/DataFile;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->getYailListPropertyHelper(Ljava/util/concurrent/Callable;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public SourceFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/DataFile;->ReadFile(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method protected afterRead(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    .line 237
    :try_start_1
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getColumnsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 240
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_0
    goto :goto_1

    .line 241
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 244
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v1    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 248
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 251
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 256
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->rows:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    goto :goto_3

    .line 257
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to parse DataFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->columnNames:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 216
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 217
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v1

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataFile;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v1
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataFile;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataFile;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/DataFile$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/DataFile$4;-><init>(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
