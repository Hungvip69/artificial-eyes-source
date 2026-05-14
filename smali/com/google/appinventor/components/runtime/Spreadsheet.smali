.class public Lcom/google/appinventor/components/runtime/Spreadsheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Spreadsheet.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ObservableDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Spreadsheet is a non-visible component for storing and receiving data from a Spreadsheet document using the Google Sheets API. <p>In order to utilize this component, one must first have a Google Developer Account. Then, one must create a new project under that Google Developer Account, enable the Google Sheets API on that project, and finally create a Service Account for the Sheets API.</p><p>Instructions on how to create the Service Account, as well as where to find other relevant information for using the Spreadsheet Component, can be found <a href=\'/reference/other/googlesheets-api-setup.html\'>here</a>.</p>"
    iconName = "images/spreadsheet.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.MAIN"
                        .end subannotation
                    }
                .end subannotation
            }
            name = "com.google.appinventor.components.runtime.WebViewActivity"
            screenOrientation = "behind"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "googlesheets.jar",
        "jackson-core.jar",
        "google-api-client.jar",
        "google-api-client-jackson2.jar",
        "google-http-client.jar",
        "google-http-client-jackson2.jar",
        "google-oauth-client.jar",
        "google-oauth-client-jetty.jar",
        "grpc-context.jar",
        "opencensus.jar",
        "opencensus-contrib-http-util.jar",
        "guava.jar",
        "jetty.jar",
        "jetty-util.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCOUNT_MANAGER",
        "android.permission.GET_ACCOUNTS",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/ObservableDataSource<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        "Ljava/util/concurrent/Future<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INTEGER:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String; = "SPREADSHEET"

.field private static final WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private cachedCredentialsFile:Ljava/io/File;

.field private columns:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private credentialsPath:Ljava/lang/String;

.field private lastTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private final sheetIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

.field private spreadsheetID:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcredentialsPath(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetobservers(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsheetIdMap(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetColString(Lcom/google/appinventor/components/runtime/Spreadsheet;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getSheetID(Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getSheetsService()Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->removeSheetID(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateColumns(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->updateColumns(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->updateSheetID(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 153
    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Spreadsheet;->INTEGER:Ljava/util/regex/Pattern;

    .line 154
    const-class v0, Lcom/google/appinventor/components/runtime/WebViewActivity;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Spreadsheet;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "componentContainer"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 187
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    .line 163
    const-string v0, "App Inventor"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    .line 167
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    .line 173
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 175
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    .line 188
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 189
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    .line 190
    return-void
.end method

.method private authorize()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const-string v0, "SPREADSHEET"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 286
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    .line 285
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    .line 293
    :cond_0
    const/4 v1, 0x0

    .line 295
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 297
    invoke-static {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2

    const-string v3, "https://www.googleapis.com/auth/spreadsheets"

    .line 298
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->createScoped(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2

    .line 299
    .local v2, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->refreshToken()Z

    .line 300
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 303
    nop

    .line 305
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Credential after refresh token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-object v2

    .line 302
    .end local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 303
    throw v2
.end method

.method private getColNum(Ljava/lang/String;)I
    .locals 7
    .param p1, "columnRef"    # Ljava/lang/String;

    .line 341
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    const/4 v0, 0x0

    .line 345
    .local v0, "number":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 346
    .local v4, "c":C
    mul-int/lit8 v5, v0, 0x1a

    add-int/lit8 v6, v4, -0x41

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, 0x1

    .line 345
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_1
    return v0

    .line 342
    .end local v0    # "number":I
    :cond_2
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method private getColString(I)Ljava/lang/String;
    .locals 6
    .param p1, "colNumber"    # I

    .line 325
    if-nez p1, :cond_0

    .line 326
    const-string v0, ""

    return-object v0

    .line 328
    :cond_0
    const/16 v0, 0x1a

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "A"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "B"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "C"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "D"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "E"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "F"

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const-string v2, "G"

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-string v2, "H"

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const-string v2, "I"

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const-string v2, "J"

    const/16 v4, 0x9

    aput-object v2, v1, v4

    const-string v2, "K"

    const/16 v4, 0xa

    aput-object v2, v1, v4

    const-string v2, "L"

    const/16 v4, 0xb

    aput-object v2, v1, v4

    const-string v2, "M"

    const/16 v4, 0xc

    aput-object v2, v1, v4

    const-string v2, "N"

    const/16 v4, 0xd

    aput-object v2, v1, v4

    const-string v2, "O"

    const/16 v4, 0xe

    aput-object v2, v1, v4

    const-string v2, "P"

    const/16 v4, 0xf

    aput-object v2, v1, v4

    const-string v2, "Q"

    const/16 v4, 0x10

    aput-object v2, v1, v4

    const-string v2, "R"

    const/16 v4, 0x11

    aput-object v2, v1, v4

    const-string v2, "S"

    const/16 v4, 0x12

    aput-object v2, v1, v4

    const-string v2, "T"

    const/16 v4, 0x13

    aput-object v2, v1, v4

    const-string v2, "U"

    const/16 v4, 0x14

    aput-object v2, v1, v4

    const-string v2, "V"

    const/16 v4, 0x15

    aput-object v2, v1, v4

    const-string v2, "W"

    const/16 v4, 0x16

    aput-object v2, v1, v4

    const-string v2, "X"

    const/16 v4, 0x17

    aput-object v2, v1, v4

    const-string v2, "Y"

    const/16 v4, 0x18

    aput-object v2, v1, v4

    const-string v2, "Z"

    const/16 v4, 0x19

    aput-object v2, v1, v4

    .line 331
    .local v1, "alphabet":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v2, "colReference":Ljava/lang/StringBuilder;
    :goto_0
    if-lez p1, :cond_1

    .line 333
    add-int/lit8 v4, p1, -0x1

    rem-int/2addr v4, v0

    aget-object v4, v1, v4

    .line 334
    .local v4, "digit":Ljava/lang/String;
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v5, p1, -0x1

    div-int/lit8 p1, v5, 0x1a

    .line 336
    .end local v4    # "digit":Ljava/lang/String;
    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColumn(I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p1, "column"    # I

    .line 2139
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 2141
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 2142
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 2145
    :cond_0
    return-object v0
.end method

.method private getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "column"    # Ljava/lang/String;

    .line 2124
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 2126
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2127
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 2129
    .local v2, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2130
    move-object v0, v2

    .line 2131
    goto :goto_1

    .line 2126
    .end local v2    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2135
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 446
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 449
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 447
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 448
    .local v0, "e":Ljava/net/SocketTimeoutException;
    throw v0
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    const-string v0, "SPREADSHEET"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "encoding":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 421
    const-string v1, "UTF-8"

    .line 423
    :cond_0
    const/4 v2, 0x0

    .line 425
    .local v2, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v3

    .line 426
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 427
    .local v3, "contentLength":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    .line 429
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    nop

    .line 430
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/16 v6, 0x400

    new-array v6, v6, [C

    .line 432
    .local v6, "buf":[C
    :goto_1
    invoke-virtual {v2, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    move v8, v7

    .local v8, "read":I
    if-eq v7, v4, :cond_2

    .line 433
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 435
    return-object v4

    .line 437
    .end local v3    # "contentLength":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "buf":[C
    .end local v8    # "read":I
    :catchall_0
    move-exception v3

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 438
    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized getSheetID(Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I
    .locals 7
    .param p1, "sheetsSvcParam"    # Lcom/google/api/services/sheets/v4/Sheets;
    .param p2, "sheetName"    # Ljava/lang/String;

    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 205
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Spreadsheet;
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->get(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    move-result-object v1

    .line 206
    .local v1, "getSheetRequest":Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->setRanges(Ljava/util/List;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    .line 209
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->setIncludeGridData(Ljava/lang/Boolean;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    .line 210
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->execute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/sheets/v4/model/Spreadsheet;

    .line 211
    .local v4, "testSheet":Lcom/google/api/services/sheets/v4/model/Spreadsheet;
    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/Spreadsheet;->size()I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 212
    monitor-exit p0

    return v0

    .line 214
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/Spreadsheet;->getSheets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/sheets/v4/model/Sheet;

    invoke-virtual {v3}, Lcom/google/api/services/sheets/v4/model/Sheet;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getSheetId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 215
    .local v3, "sheetID":I
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    monitor-exit p0

    return v3

    .line 220
    .end local v1    # "getSheetRequest":Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;
    .end local v2    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "sheetID":I
    .end local v4    # "testSheet":Lcom/google/api/services/sheets/v4/model/Spreadsheet;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSheetID: Unknown Exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    monitor-exit p0

    return v0

    .line 217
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSheetID: IOException - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    monitor-exit p0

    return v0

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    .end local p1    # "sheetsSvcParam":Lcom/google/api/services/sheets/v4/Sheets;
    .end local p2    # "sheetName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getSheetsService()Lcom/google/api/services/sheets/v4/Sheets;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->authorize()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 315
    .local v0, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    new-instance v1, Lcom/google/api/services/sheets/v4/Sheets$Builder;

    new-instance v2, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v2}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .line 316
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/sheets/v4/Sheets$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/Sheets$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Builder;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Builder;->build()Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    .line 320
    .end local v0    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    return-object v0
.end method

.method private declared-synchronized removeSheetID(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Spreadsheet;
    .end local p1    # "sheetName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static sanitizeList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 4
    .param p0, "source"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2171
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2172
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2173
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 2174
    :cond_0
    return-object v0
.end method

.method private static sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 2178
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2179
    return-object p0

    .line 2180
    :cond_0
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_1

    .line 2181
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    invoke-virtual {v0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 2182
    :cond_1
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_2

    .line 2183
    move-object v0, p0

    check-cast v0, Lgnu/math/DFloNum;

    invoke-virtual {v0}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 2184
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2186
    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 2187
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 2188
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2189
    return-object p0

    .line 2191
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2185
    :cond_6
    :goto_0
    return-object p0
.end method

.method private updateColumns(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "parsedCsv"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 2117
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2120
    goto :goto_0

    .line 2118
    :catch_0
    move-exception v0

    .line 2119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 2121
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private declared-synchronized updateSheetID(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "sheetId"    # I

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Spreadsheet;
    .end local p1    # "sheetName":Ljava/lang/String;
    .end local p2    # "sheetId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public AddColumn(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, appends the values to the next empty column of the sheet."
    .end annotation

    .line 1213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1222
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1224
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    .local v3, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1228
    :cond_2
    new-instance v1, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1229
    invoke-virtual {v1, v0}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v1

    .line 1232
    .local v1, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$11;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet$11;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1283
    return-void

    .line 1217
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v1    # "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    :cond_3
    :goto_1
    const-string v0, "AddColumn: Credentials JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1218
    return-void

    .line 1214
    :cond_4
    :goto_2
    const-string v0, "AddColumn: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public AddRow(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, appends the values to the next empty row of the sheet. Additionally, this returns the row number for the new row."
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 872
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v1

    .line 874
    .local v1, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    new-instance v2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v2}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 878
    invoke-virtual {v2, v0}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setRange(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v2

    .line 881
    .local v2, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v3, Lcom/google/appinventor/components/runtime/Spreadsheet$7;

    invoke-direct {v3, p0, p1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet$7;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 924
    return-void

    .line 867
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v1    # "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    :cond_2
    :goto_0
    const-string v0, "AddRow: Credentials JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 868
    return-void

    .line 864
    :cond_3
    :goto_1
    const-string v0, "AddRow: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public AddSheet(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 701
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$4;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 740
    return-void

    .line 697
    :cond_2
    :goto_0
    const-string v0, "AddSheet: Credentials JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 698
    return-void

    .line 694
    :cond_3
    :goto_1
    const-string v0, "AddSheet: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public ApplicationName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App Inventor"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The name of your application, used when making API calls."
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public ClearRange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rangeReference"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Empties the cells in the given range. Once complete, this block triggers the FinishedClearRange callback event."
    .end annotation

    .line 1810
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1813
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1814
    const-string v0, "ClearRange: Credential JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1815
    return-void

    .line 1818
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, "rangeRef":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing Range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPREADSHEET"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$17;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1852
    return-void

    .line 1811
    .end local v0    # "rangeRef":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "ClearRange: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1812
    return-void
.end method

.method public CredentialsJson()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    return-object v0
.end method

.method public CredentialsJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "credentialsPath"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The JSON File with credentials for the Service Account"
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public DeleteSheet(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 763
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$5;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 797
    return-void

    .line 759
    :cond_2
    :goto_0
    const-string v0, "DeleteSheet: Credentials JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 760
    return-void

    .line 756
    :cond_3
    :goto_1
    const-string v0, "DeleteSheet: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered whenever an API call encounters an error. Details about the error are in `errorMessage`."
    .end annotation

    .line 356
    move-object v0, p0

    .line 357
    .local v0, "thisInstance":Lcom/google/appinventor/components/runtime/Spreadsheet;
    const-string v1, "SPREADSHEET"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public FinishedAddColumn(I)V
    .locals 3
    .param p1, "columnNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event will be triggered once the AddColumn method has finished executing and the values on the spreadsheet have been updated. Additionally, this returns the column number for the new column."
    .end annotation

    .line 1294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "FinishedAddColumn"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1295
    return-void
.end method

.method public FinishedAddRow(I)V
    .locals 3
    .param p1, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the AddRow block, called once the values on the table have been updated."
    .end annotation

    .line 935
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "FinishedAddRow"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 936
    return-void
.end method

.method public FinishedAddSheet(Ljava/lang/String;)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the addSheet block, called once the values on the table have been updated."
    .end annotation

    .line 745
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FinishedAddSheet"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 746
    return-void
.end method

.method public FinishedClearRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ClearRange block."
    .end annotation

    .line 1861
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedClearRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1862
    return-void
.end method

.method public FinishedDeleteSheet(Ljava/lang/String;)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the DeleteSheet block, called once the values on the table have been updated."
    .end annotation

    .line 802
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FinishedDeleteSheet"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 803
    return-void
.end method

.method public FinishedRemoveColumn()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the RemoveColumn block, called once the values on the table have been updated."
    .end annotation

    .line 1362
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedRemoveColumn"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1363
    return-void
.end method

.method public FinishedRemoveRow()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the RemoveRow block, called once thevalues on the table have been updated."
    .end annotation

    .line 1000
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedRemoveRow"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1001
    return-void
.end method

.method public FinishedWriteCell()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteCell block."
    .end annotation

    .line 1582
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteCell"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1583
    return-void
.end method

.method public FinishedWriteColumn()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteColumn block, called once thevalues on the table have been updated."
    .end annotation

    .line 1201
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteColumn"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1202
    return-void
.end method

.method public FinishedWriteRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteRange block."
    .end annotation

    .line 1799
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1800
    return-void
.end method

.method public FinishedWriteRow()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteRow block, called after the values on the table have finished updating"
    .end annotation

    .line 683
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteRow"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 684
    return-void
.end method

.method public GetCellReference(II)Ljava/lang/String;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the integer representation of rows and columns to A1-Notation used in Google Sheets for a single cell."
    .end annotation

    .line 385
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "colRange":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public GetRangeReference(IIII)Ljava/lang/String;
    .locals 3
    .param p1, "row1"    # I
    .param p2, "column1"    # I
    .param p3, "row2"    # I
    .param p4, "column2"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the integer representation of rows and columns for the corners of the range to A1-Notation used in Google Sheets."
    .end annotation

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GetCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GetCellReference(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GotCellData(Ljava/lang/String;)V
    .locals 2
    .param p1, "cellData"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadCell block. The `cellData` is the text value in the cell (and not the underlying formula)."
    .end annotation

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GotCellData got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotCellData"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1505
    return-void
.end method

.method public GotColumnData(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After calling the ReadColumn method, the data in the column will be stored as a list of text values in `columnData`."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1124
    .local p1, "columnData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GotColumnData got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotColumnData"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1126
    return-void
.end method

.method public GotFilterResult(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadWithExactQuery or ReadWithPartialQuery block. The `response` is a list of rows numbers and a list of rows containing cell data."
        userVisible = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 412
    .local p1, "returnRows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "returnData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GotFilterResult got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "GotFilterResult"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method public GotRangeData(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadRange block. The `rangeData` is a list of rows with the requested dimensions."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1702
    .local p1, "rangeData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GotRangeData got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotRangeData"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1704
    return-void
.end method

.method public GotRowData(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadRow block. The `rowDataList` is a list of cell values in order of increasing column number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 612
    .local p1, "rowDataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotRowData"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 613
    return-void
.end method

.method public GotSheetData(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadSheet block. The `sheetData` is a list of rows."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2062
    .local p1, "sheetData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GotSheetData got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotSheetData"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2064
    return-void
.end method

.method public GotSheetList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "sheetNames"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ListSheets block, called once the list of sheets has been retrieved."
    .end annotation

    .line 849
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotSheetList"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 850
    return-void
.end method

.method public ListSheets()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Lists the names of all sheets in the spreadsheet. Triggers the GotSheetList callback event with a list of sheet names."
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$6;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 844
    return-void

    .line 810
    :cond_1
    :goto_0
    const-string v0, "ListSheets: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public ReadCell(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "cellReference"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the cell at the given cellReference and triggers the GotCellData callback event."
    .end annotation

    .line 1376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    const-string v0, "[a-zA-Z]+[0-9]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1387
    const-string v0, "ReadCell: Invalid Cell Reference"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1388
    return-void

    .line 1392
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$13;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1493
    return-void

    .line 1377
    :cond_2
    :goto_0
    const-string v0, "ReadCell: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1378
    return-void
.end method

.method public ReadColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the column at the given index and triggers the GotColumnData callback event."
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1023
    :cond_0
    move-object v0, p2

    .line 1024
    .local v0, "colReference":Ljava/lang/String;
    const-string v1, "^[0-9]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1025
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "rangeRef":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$9;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet$9;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1115
    return-void

    .line 1014
    .end local v0    # "colReference":Ljava/lang/String;
    .end local v1    # "rangeRef":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "ReadColumn: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method public ReadRange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rangeReference"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the cells at the given range. Triggers the getRangeReference once complete."
    .end annotation

    .line 1597
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1608
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$15;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1692
    return-void

    .line 1598
    :cond_1
    :goto_0
    const-string v0, "ReadRange: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public ReadRow(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, this method will read the row at the given rowNumber and trigger the GotRowData callback event."
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read Row number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "rangeReference":Ljava/lang/String;
    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$2;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 602
    return-void

    .line 504
    .end local v0    # "rangeReference":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "ReadRow: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public ReadSheet(Ljava/lang/String;)V
    .locals 7
    .param p1, "sheetName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the *entire* Google Sheet document and triggers the GotSheetData callback event."
    .end annotation

    .line 1875
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1879
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1880
    return-void

    .line 1876
    :cond_1
    :goto_0
    const-string v0, "ReadSheet: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1877
    return-void
.end method

.method public ReadWithExactFilter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colID"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Filters a Google Sheet for rows where the given column number matches the provided value."
    .end annotation

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadRowsWithFilter colID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 472
    return-void

    .line 467
    :cond_1
    :goto_0
    const-string v0, "ReadWithExactFilter: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public ReadWithPartialFilter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colID"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Filters a Google Sheet for rows where the given column number contains the provided value string."
    .end annotation

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadWithPartialFilter colID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 489
    return-void

    .line 484
    :cond_1
    :goto_0
    const-string v0, "ReadWithPartialFilter: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public RemoveColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the column with the given column number from the table.This does not clear the column, but removes it entirely."
    .end annotation

    .line 1308
    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "columnNumber":I
    goto :goto_0

    .line 1311
    .end local v0    # "columnNumber":I
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColNum(Ljava/lang/String;)I

    move-result v0

    .line 1314
    .restart local v0    # "columnNumber":I
    :goto_0
    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet$12;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1353
    return-void
.end method

.method public RemoveRow(Ljava/lang/String;I)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowNumber"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the row with the given row number from the table.This does not clear the row, but removes it entirely."
    .end annotation

    .line 949
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$8;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 990
    return-void
.end method

.method RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;
    .locals 8
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "colID"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "exact"    # Z
    .param p5, "fireEvent"    # Z

    .line 1884
    new-instance v7, Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet$18;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;ZIZLjava/lang/String;)V

    return-object v7
.end method

.method public SpreadsheetID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    return-object v0
.end method

.method public SpreadsheetID(Ljava/lang/String;)V
    .locals 2
    .param p1, "spreadsheetID"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The ID for the Google Sheets file you want to edit. You can find the spreadsheetID in the URL of the Google Sheets file. Look for the part between \'/d/\' and \'/edit\' in the URL, e.g. in https://docs.google.com/spreadsheets/d/1234abcd/edit the ID is \'1234abcd\'."
    .end annotation

    .line 253
    const-string v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x3

    aget-object p1, v0, v1

    .line 258
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public WriteCell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "cellReference"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given text or a number as `data`, writes the value into the cell. Once complete, it triggers the FinishedWriteCell callback event"
    .end annotation

    .line 1516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 1517
    const-string v0, "WriteCell: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1518
    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1520
    const-string v0, "WriteCell: Credentials JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1521
    return-void

    .line 1525
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, "rangeRef":Ljava/lang/String;
    new-instance v1, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v1}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1529
    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v3, [Ljava/util/List;

    aput-object v2, v3, v5

    .line 1528
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v1

    .line 1531
    .local v1, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing Cell: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPREADSHEET"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$14;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet$14;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1573
    return-void
.end method

.method public WriteColumn(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, this method will write the values to the column of the sheet and calls the FinishedWriteColumn event once complete."
    .end annotation

    .line 1138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1147
    :cond_1
    move-object v0, p2

    .line 1148
    .local v0, "colReference":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/Spreadsheet;->INTEGER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1149
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object v0

    .line 1151
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    .local v1, "rangeRef":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/LList;

    invoke-virtual {v3}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1156
    .local v4, "o":Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1157
    .local v5, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1158
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1161
    :cond_3
    new-instance v3, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v3}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1162
    invoke-virtual {v3, v2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v3

    .line 1165
    .local v3, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v4, Lcom/google/appinventor/components/runtime/Spreadsheet$10;

    invoke-direct {v4, p0, v1, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet$10;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1192
    return-void

    .line 1142
    .end local v0    # "colReference":Ljava/lang/String;
    .end local v1    # "rangeRef":Ljava/lang/String;
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v3    # "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    :cond_4
    :goto_1
    const-string v0, "WriteColumn: Credentials JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1143
    return-void

    .line 1139
    :cond_5
    :goto_2
    const-string v0, "WriteColumn: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method public WriteRange(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 9
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rangeReference"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given list of lists as `data`, writes the values into the range. The number of rows and columns in the range reference must match the dimensions of the data."
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1721
    const-string v0, "WriteRange: Credentials JSON is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1722
    return-void

    .line 1727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "rangeRef":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing Range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPREADSHEET"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1732
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    const/4 v3, -0x1

    .line 1733
    .local v3, "cols":I
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/LList;

    invoke-virtual {v4}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1734
    .local v5, "elem":Ljava/lang/Object;
    instance-of v6, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v6, :cond_2

    .line 1735
    goto :goto_0

    .line 1736
    :cond_2
    move-object v6, v5

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1738
    .local v6, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v7

    .line 1739
    .local v7, "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 1742
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v3, :cond_4

    .line 1743
    const-string v2, "WriteRange: Rows must have the same length"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1744
    return-void

    .line 1746
    .end local v5    # "elem":Ljava/lang/Object;
    .end local v6    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v7    # "r":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    goto :goto_0

    .line 1749
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 1750
    const-string v2, "WriteRange: Data must be a list of lists."

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1751
    return-void

    .line 1754
    :cond_6
    new-instance v4, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v4}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1755
    invoke-virtual {v4, v1}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v4

    .line 1756
    .local v4, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v4}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getRange()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Body\'s Range in A1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$16;

    invoke-direct {v2, p0, v0, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet$16;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1790
    return-void

    .line 1718
    .end local v0    # "rangeRef":Ljava/lang/String;
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v3    # "cols":I
    .end local v4    # "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    :cond_7
    :goto_1
    const-string v0, "WriteRange: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1719
    return-void
.end method

.method public WriteRow(Ljava/lang/String;ILcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "rowNumber"    # I
    .param p3, "data"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, writes the values to the row of the sheet with the given row number."
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 635
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s!A%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "rangeRef":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    .line 639
    .local v1, "rowValues":Lgnu/lists/LList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 641
    .local v3, "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    new-instance v4, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {v4}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 645
    invoke-virtual {v4, v2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object v4

    .line 648
    .local v4, "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    new-instance v5, Lcom/google/appinventor/components/runtime/Spreadsheet$3;

    invoke-direct {v5, p0, v0, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet$3;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 673
    return-void

    .line 630
    .end local v0    # "rangeRef":Ljava/lang/String;
    .end local v1    # "rowValues":Lgnu/lists/LList;
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v3    # "row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "body":Lcom/google/api/services/sheets/v4/model/ValueRange;
    :cond_2
    :goto_0
    const-string v0, "WriteRow: Credentials JSON file is required."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 631
    return-void

    .line 627
    :cond_3
    :goto_1
    const-string v0, "WriteRow: SpreadsheetID is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 2098
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2099
    return-void
.end method

.method getColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .param p1, "keyColumns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "useHeaders"    # Z

    .line 2149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2150
    .local v0, "resultingColumns":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2151
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2153
    .local v2, "columnName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2154
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .local v3, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    goto :goto_2

    .line 2156
    .end local v3    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_0
    const/4 v3, 0x0

    .line 2157
    .local v3, "colIndex":I
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-char v7, v4, v6

    .line 2158
    .local v7, "c":C
    mul-int/lit8 v3, v3, 0x1a

    .line 2159
    add-int/lit8 v8, v7, -0x41

    add-int/2addr v3, v8

    .line 2157
    .end local v7    # "c":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2161
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumn(I)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v3, v4

    .line 2163
    .local v3, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2150
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2166
    .end local v1    # "i":I
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
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

    .line 2070
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "useHeaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .line 2074
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 2076
    .local v0, "currentTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$19;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$19;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2092
    .local v1, "getDataValueTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 2093
    return-object v1
.end method

.method public notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 2108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 2109
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-interface {v1, p0, v2, v3}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2110
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 2111
    :cond_0
    return-void
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 2103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2104
    return-void
.end method
