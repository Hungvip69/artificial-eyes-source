.class public final Lcom/google/appinventor/components/runtime/Regression;
.super Lcom/google/appinventor/components/runtime/DataCollection;
.source "Regression.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that contains regression models"
    iconName = "images/regression.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/DataCollection<",
        "Lcom/google/appinventor/components/runtime/ComponentContainer;",
        "Lcom/google/appinventor/components/runtime/DataModel<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final LINEAR_REGRESSION:Lcom/google/appinventor/components/common/LinearRegression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/appinventor/components/common/LinearRegression;

    invoke-direct {v0}, Lcom/google/appinventor/components/common/LinearRegression;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Regression;->LINEAR_REGRESSION:Lcom/google/appinventor/components/common/LinearRegression;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 46
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 47
    return-void
.end method

.method public static computeLineOfBestFit(Ljava/util/List;Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .line 58
    .local p0, "x":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p1, "y":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    sget-object v1, Lcom/google/appinventor/components/runtime/Regression;->LINEAR_REGRESSION:Lcom/google/appinventor/components/common/LinearRegression;

    invoke-virtual {v1, p0, p1}, Lcom/google/appinventor/components/common/LinearRegression;->compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public CalculateLineOfBestFitValue(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "xList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "yList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/LOBFValues;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns one of the Line of Best Fit values. A value could be\"slope\", \"Yintercept\", \"correlation coefficient\"or \"predictions\". The block returns the complete dictionary with all values if no specific value string is provided"
    .end annotation

    .line 76
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Regression;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Regression;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Regression;->computeLineOfBestFit(Ljava/util/List;Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    .line 78
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    return-object v0
.end method

.method public ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .locals 0
    .param p2, "keyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 137
    .local p1, "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    return-void
.end method

.method public Clear()V
    .locals 0

    .line 133
    return-void
.end method

.method public DataFileXColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 97
    return-void
.end method

.method public DataFileYColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 109
    return-void
.end method

.method public DataSourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public ElementsFromPairs(Ljava/lang/String;)V
    .locals 0
    .param p1, "elements"    # Ljava/lang/String;

    .line 89
    return-void
.end method

.method public GetAllEntries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 155
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetEntriesWithXValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetEntriesWithYValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p1, "y"    # Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0
    .param p1, "cloudDB"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p2, "tag"    # Ljava/lang/String;

    .line 164
    return-void
.end method

.method public ImportFromDataFile(Lcom/google/appinventor/components/runtime/DataFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dataFile"    # Lcom/google/appinventor/components/runtime/DataFile;
    .param p2, "xValueColumn"    # Ljava/lang/String;
    .param p3, "yValueColumn"    # Ljava/lang/String;

    .line 169
    return-void
.end method

.method public ImportFromList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 129
    return-void
.end method

.method public ImportFromSpreadsheet(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "spreadsheet"    # Lcom/google/appinventor/components/runtime/Spreadsheet;
    .param p2, "xColumn"    # Ljava/lang/String;
    .param p3, "yColumn"    # Ljava/lang/String;
    .param p4, "useHeaders"    # Z

    .line 174
    return-void
.end method

.method public ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
    .locals 0
    .param p1, "tinyDB"    # Lcom/google/appinventor/components/runtime/TinyDB;
    .param p2, "tag"    # Ljava/lang/String;

    .line 160
    return-void
.end method

.method public ImportFromWeb(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "web"    # Lcom/google/appinventor/components/runtime/Web;
    .param p2, "xValueColumn"    # Ljava/lang/String;
    .param p3, "yValueColumn"    # Ljava/lang/String;

    .line 178
    return-void
.end method

.method public RemoveDataSource()V
    .locals 0

    .line 141
    return-void
.end method

.method public Source(Lcom/google/appinventor/components/runtime/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 125
    .local p1, "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    return-void
.end method

.method public SpreadsheetUseHeaders(Z)V
    .locals 0
    .param p1, "useHeaders"    # Z

    .line 93
    return-void
.end method

.method public SpreadsheetXColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 105
    return-void
.end method

.method public SpreadsheetYColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 117
    return-void
.end method

.method public WebXColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 101
    return-void
.end method

.method public WebYColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 113
    return-void
.end method

.method public onDataChange()V
    .locals 0

    .line 183
    return-void
.end method
