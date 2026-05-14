.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "MapFeatureContainerBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_CODE_IO_EXCEPTION:I = -0x2

.field private static final ERROR_CODE_MALFORMED_GEOJSON:I = -0x3

.field private static final ERROR_CODE_MALFORMED_URL:I = -0x1

.field private static final ERROR_CODE_UNKNOWN_TYPE:I = -0x4

.field private static final ERROR_IO_EXCEPTION:Ljava/lang/String; = "Unable to download content from URL"

.field private static final ERROR_MALFORMED_GEOJSON:Ljava/lang/String; = "Malformed GeoJSON response. Expected FeatureCollection as root element."

.field private static final ERROR_MALFORMED_URL:Ljava/lang/String; = "The URL is malformed"

.field private static final ERROR_UNKNOWN_TYPE:Ljava/lang/String; = "Unrecognized/invalid type in JSON object"

.field private static final GEOJSON_FEATURECOLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final GEOJSON_FEATURES:Ljava/lang/String; = "features"

.field private static final GEOJSON_GEOMETRYCOLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOJSON_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mperformGet(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->performGet(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 98
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 99
    return-void
.end method

.method private loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 413
    .local v1, "connection":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 414
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 415
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 416
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 417
    .local v3, "responseCode":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "responseMessage":Ljava/lang/String;
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;

    invoke-direct {v6, p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    return-object v0

    .line 428
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "responseCode":I
    .end local v4    # "responseMessage":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 430
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v3, "content":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 433
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 445
    .end local v1    # "connection":Ljava/net/URLConnection;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;

    invoke-direct {v3, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 438
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 439
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;

    invoke-direct {v3, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    .end local v1    # "e":Ljava/net/MalformedURLException;
    nop

    .line 453
    :goto_1
    return-object v0
.end method

.method private performGet(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 398
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->loadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "jsonContent":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "jsonContent":Ljava/lang/String;
    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    const-string v2, "Exception retreiving GeoJSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 405
    const-string v2, "LoadFromURL"

    const/4 v4, -0x4

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on a map feature."
    .end annotation

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureClick"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 150
    :cond_0
    return-void
.end method

.method public FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged a map feature."
    .end annotation

    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureDrag"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 198
    :cond_0
    return-void
.end method

.method public FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 5
    .param p1, "description"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 263
    :try_start_0
    sget-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v0

    .line 264
    .local v0, "feature":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 265
    const-string v1, "No valid feature provided"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 267
    :cond_0
    return-object v0

    .line 268
    .end local v0    # "feature":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to create feature"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 271
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 270
    const-string v2, "FeatureFromDescription"

    const/16 v4, 0xd53

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on a map feature."
    .end annotation

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureLongClick"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 166
    :cond_0
    return-void
.end method

.method public FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started dragging a map feature."
    .end annotation

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureStartDrag"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 182
    :cond_0
    return-void
.end method

.method public FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped dragging a map feature."
    .end annotation

    .line 210
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FeatureStopDrag"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 214
    :cond_0
    return-void
.end method

.method public Features()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of features placed on this %type%. This list also includes any features created by calls to FeatureFromDescription"
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Features(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .param p1, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 109
    .local v1, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->removeFromMap()V

    .line 110
    .end local v1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 113
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    if-eqz v2, :cond_1

    .line 116
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 118
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 120
    return-void
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "GotFeatures"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, "it":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public LoadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An error was encountered while processing a GeoJSON document at the given url. The responseCode parameter will contain an HTTP status code and the errorMessage parameter will contain a detailed error message."
    .end annotation

    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v0, 0x2

    aput-object p3, v1, v0

    const-string v0, "LoadError"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LoadFromURL"

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/16 v2, 0x836

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/16 v2, 0x44d

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 319
    :cond_1
    :goto_0
    return-void
.end method

.method public LoadFromURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Load a feature collection in <a href=\"https://en.wikipedia.org/wiki/GeoJSON\">GeoJSON</a> format from the given url. On success, the event GotFeatures will be raised with the given url and a list of the features parsed from the GeoJSON as a list of (key, value) pairs. On failure, the LoadError event will be raised with any applicable HTTP response code and error message.</p>"
    .end annotation

    .line 232
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 384
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1
    .param p1, "polyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 374
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 369
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 379
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 389
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 458
    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "type":Ljava/lang/String;
    const-string v1, "FeatureCollection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GeometryCollection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    return-void

    .line 468
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 469
    .local v1, "yailFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 359
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.setChildHeight called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 353
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.setChildNeedsLayout called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.setChildWidth called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
