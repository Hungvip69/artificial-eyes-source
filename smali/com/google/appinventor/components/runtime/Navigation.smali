.class public Lcom/google/appinventor/components/runtime/Navigation;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Navigation.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Navigation"
    iconName = "images/navigation.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field public static final OPEN_ROUTE_SERVICE_URL:Ljava/lang/String; = "https://api.openrouteservice.org/v2/directions/"

.field private static final TAG:Ljava/lang/String; = "Navigation"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private endLocation:Lorg/osmdroid/util/GeoPoint;

.field private language:Ljava/lang/String;

.field private lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private method:Lcom/google/appinventor/components/common/TransportMethod;

.field private serviceUrl:Ljava/lang/String;

.field private startLocation:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method static bridge synthetic -$$Nest$fputlastResponse(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Navigation;->performRequest(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 68
    const-string v0, "https://api.openrouteservice.org/v2/directions/"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    .line 69
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    .line 80
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    .line 81
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    .line 82
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    .line 83
    return-void
.end method

.method private getCoordinates(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;
    .locals 6
    .param p1, "startLocation"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endLocation"    # Lorg/osmdroid/util/GeoPoint;

    .line 424
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    const-class v0, Ljava/lang/Double;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Double;

    .line 425
    .local v0, "coords":[[Ljava/lang/Double;
    aget-object v1, v0, v3

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v3

    .line 426
    aget-object v1, v0, v3

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v2

    .line 427
    aget-object v1, v0, v2

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v3

    .line 428
    aget-object v1, v0, v2

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 429
    return-object v0
.end method

.method private getDirections(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;
    .locals 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 439
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "properties"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "segments"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v2, "steps"

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "instruction"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 440
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 439
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getLineStringCoords(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 433
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "geometry"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "coordinates"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 434
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 435
    .local v0, "coords":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 403
    const-string v0, "UTF-8"

    .line 405
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 408
    .local v1, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 409
    .local v2, "contentLength":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    .line 411
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    nop

    .line 412
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v5, v5, [C

    .line 414
    .local v5, "buf":[C
    :goto_1
    invoke-virtual {v1, v5}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v7, v6

    .local v7, "read":I
    if-eq v6, v3, :cond_2

    .line 415
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 417
    return-object v3

    .line 419
    .end local v2    # "contentLength":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "buf":[C
    .end local v7    # "read":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 420
    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method private performRequest(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 25
    .param p1, "start"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "end"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "method"    # Lcom/google/appinventor/components/common/TransportMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 338
    move-object/from16 v10, p0

    const-string v11, "RequestDirections"

    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/geojson"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 339
    .local v12, "finalUrl":Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 340
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/net/HttpURLConnection;

    .line 341
    .local v14, "connection":Ljava/net/HttpURLConnection;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 342
    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 343
    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "POST"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 345
    const-string v0, "Authorization"

    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    nop

    .line 348
    const/4 v3, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/google/appinventor/components/runtime/Navigation;->getCoordinates(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"coordinates\": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", \"language\": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 350
    .local v2, "coords":Ljava/lang/String;
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    .line 351
    .local v1, "postData":[B
    array-length v0, v1

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 352
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v5, v0

    .line 354
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    array-length v0, v1

    invoke-virtual {v5, v1, v3, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 355
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 357
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 358
    nop

    .line 360
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v4, 0xc8

    const/4 v6, 0x2

    if-eq v0, v4, :cond_0

    .line 361
    :try_start_3
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 362
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 363
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    aput-object v7, v6, v15

    .line 361
    const/16 v4, 0xfa3

    invoke-virtual {v0, v10, v11, v4, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 364
    return-void

    .line 396
    .end local v1    # "postData":[B
    .end local v2    # "coords":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    goto/16 :goto_2

    .line 391
    :catch_0
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 366
    .restart local v1    # "postData":[B
    .restart local v2    # "coords":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :cond_0
    :try_start_4
    invoke-static {v14}, Lcom/google/appinventor/components/runtime/Navigation;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "geoJson":Ljava/lang/String;
    const-string v4, "Navigation"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {v0, v15}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 369
    .local v4, "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v7, "features"

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v8, v7

    .line 370
    .local v8, "features":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 371
    invoke-virtual {v8, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v9, v7

    .line 372
    .local v9, "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "properties"

    aput-object v7, v6, v3

    const-string v7, "summary"

    aput-object v7, v6, v15

    .line 373
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 374
    .local v6, "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v7, "distance"

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-object v15, v6

    .end local v6    # "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .local v15, "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    move-wide/from16 v6, v16

    .line 375
    .local v6, "distance":D
    const-string v3, "duration"

    invoke-virtual {v15, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object/from16 v17, v8

    move-object v3, v9

    .end local v8    # "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v9    # "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .local v3, "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .local v17, "features":Lcom/google/appinventor/components/runtime/util/YailList;
    move-wide/from16 v8, v18

    .line 376
    .local v8, "duration":D
    invoke-direct {v10, v3}, Lcom/google/appinventor/components/runtime/Navigation;->getDirections(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v18

    move-object/from16 v19, v4

    .end local v4    # "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .local v19, "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    move-object/from16 v4, v18

    .line 377
    .local v4, "directions":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-direct {v10, v3}, Lcom/google/appinventor/components/runtime/Navigation;->getLineStringCoords(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v18

    move-object/from16 v20, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v20, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v5, v18

    .line 379
    .local v5, "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    move-object/from16 v18, v0

    .end local v0    # "geoJson":Ljava/lang/String;
    .local v18, "geoJson":Ljava/lang/String;
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v21, v12

    .end local v12    # "finalUrl":Ljava/lang/String;
    .local v21, "finalUrl":Ljava/lang/String;
    :try_start_5
    new-instance v12, Lcom/google/appinventor/components/runtime/Navigation$2;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v22, v1

    .end local v1    # "postData":[B
    .local v22, "postData":[B
    move-object v1, v12

    move-object/from16 v23, v2

    .end local v2    # "coords":Ljava/lang/String;
    .local v23, "coords":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v16, v3

    move-object/from16 v24, v13

    const/4 v13, 0x0

    .end local v3    # "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v13    # "url":Ljava/net/URL;
    .local v16, "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .local v24, "url":Ljava/net/URL;
    move-object/from16 v3, v19

    :try_start_6
    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/Navigation$2;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    invoke-virtual {v0, v12}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    .end local v4    # "directions":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v5    # "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v6    # "distance":D
    .end local v8    # "duration":D
    .end local v15    # "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v16    # "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    goto :goto_1

    .line 396
    .end local v17    # "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v18    # "geoJson":Ljava/lang/String;
    .end local v19    # "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v22    # "postData":[B
    .end local v23    # "coords":Ljava/lang/String;
    .end local v24    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v13

    .end local v13    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto :goto_2

    .line 391
    .end local v24    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object/from16 v24, v13

    const/4 v13, 0x0

    .end local v13    # "url":Ljava/net/URL;
    .restart local v24    # "url":Ljava/net/URL;
    goto :goto_0

    .line 388
    .end local v21    # "finalUrl":Ljava/lang/String;
    .end local v24    # "url":Ljava/net/URL;
    .restart local v0    # "geoJson":Ljava/lang/String;
    .restart local v1    # "postData":[B
    .restart local v2    # "coords":Ljava/lang/String;
    .local v4, "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    .local v8, "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .restart local v12    # "finalUrl":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_1
    move-object/from16 v18, v0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    const/4 v13, 0x0

    .end local v0    # "geoJson":Ljava/lang/String;
    .end local v1    # "postData":[B
    .end local v2    # "coords":Ljava/lang/String;
    .end local v4    # "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v8    # "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v12    # "finalUrl":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v17    # "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .restart local v18    # "geoJson":Ljava/lang/String;
    .restart local v19    # "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .restart local v20    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "finalUrl":Ljava/lang/String;
    .restart local v22    # "postData":[B
    .restart local v23    # "coords":Ljava/lang/String;
    .restart local v24    # "url":Ljava/net/URL;
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v13, [Ljava/lang/Object;

    const/16 v2, 0xfa4

    invoke-virtual {v0, v10, v11, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 357
    .end local v17    # "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v18    # "geoJson":Ljava/lang/String;
    .end local v19    # "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "finalUrl":Ljava/lang/String;
    .end local v22    # "postData":[B
    .end local v23    # "coords":Ljava/lang/String;
    .end local v24    # "url":Ljava/net/URL;
    .restart local v1    # "postData":[B
    .restart local v2    # "coords":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v12    # "finalUrl":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    const/4 v13, 0x0

    .end local v1    # "postData":[B
    .end local v2    # "coords":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v12    # "finalUrl":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v20    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "finalUrl":Ljava/lang/String;
    .restart local v22    # "postData":[B
    .restart local v23    # "coords":Ljava/lang/String;
    .restart local v24    # "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 358
    nop

    .end local v14    # "connection":Ljava/net/HttpURLConnection;
    .end local v21    # "finalUrl":Ljava/lang/String;
    .end local v24    # "url":Ljava/net/URL;
    .end local p1    # "start":Lorg/osmdroid/util/GeoPoint;
    .end local p2    # "end":Lorg/osmdroid/util/GeoPoint;
    .end local p3    # "method":Lcom/google/appinventor/components/common/TransportMethod;
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 391
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v22    # "postData":[B
    .end local v23    # "coords":Ljava/lang/String;
    .restart local v14    # "connection":Ljava/net/HttpURLConnection;
    .restart local v21    # "finalUrl":Ljava/lang/String;
    .restart local v24    # "url":Ljava/net/URL;
    .restart local p1    # "start":Lorg/osmdroid/util/GeoPoint;
    .restart local p2    # "end":Lorg/osmdroid/util/GeoPoint;
    .restart local p3    # "method":Lcom/google/appinventor/components/common/TransportMethod;
    :catch_2
    move-exception v0

    goto :goto_0

    .line 396
    .end local v21    # "finalUrl":Ljava/lang/String;
    .end local v24    # "url":Ljava/net/URL;
    .restart local v12    # "finalUrl":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    .end local v12    # "finalUrl":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v21    # "finalUrl":Ljava/lang/String;
    .restart local v24    # "url":Ljava/net/URL;
    goto :goto_2

    .line 391
    .end local v21    # "finalUrl":Ljava/lang/String;
    .end local v24    # "url":Ljava/net/URL;
    .restart local v12    # "finalUrl":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_3
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    const/4 v13, 0x0

    .line 392
    .end local v12    # "finalUrl":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "finalUrl":Ljava/lang/String;
    .restart local v24    # "url":Ljava/net/URL;
    :goto_0
    :try_start_7
    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v13

    .line 392
    const/16 v2, 0xfa2

    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    nop

    .line 398
    return-void

    .line 396
    :catchall_4
    move-exception v0

    :goto_2
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    throw v0
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "API Key for Open Route Service."
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public EndLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the end location."
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLatitude(D)V
    .locals 4
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 195
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 199
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 198
    const-string v1, "EndLatitude"

    const/16 v3, 0xd55

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 201
    :goto_0
    return-void
.end method

.method public EndLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 10
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the end location."
    .end annotation

    .line 270
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 271
    .local v0, "point":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    .line 272
    .local v1, "latitude":D
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    .line 273
    .local v3, "longitude":D
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "SetEndLocation"

    if-nez v5, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    .line 275
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v6

    .line 274
    const/16 v6, 0xd55

    invoke-interface {v5, p0, v8, v6, v7}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    .line 278
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v6

    .line 277
    const/16 v6, 0xd56

    invoke-interface {v5, p0, v8, v6, v7}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 282
    :goto_0
    return-void
.end method

.method public EndLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the end location."
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLongitude(D)V
    .locals 4
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 213
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 216
    const-string v1, "EndLongitude"

    const/16 v3, 0xd56

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 219
    :goto_0
    return-void
.end method

.method public GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 5
    .param p1, "directions"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "distance"    # D
    .param p5, "duration"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Openrouteservice returns the directions."
    .end annotation

    .line 330
    const-string v0, "Navigation"

    const-string v1, "GotDirections"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    aput-object v2, v3, v0

    invoke-static {p0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "en"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The language to use for textual directions."
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public RequestDirections()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request directions from the routing service."
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Authorization"

    const/16 v3, 0xfa1

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    .line 99
    .local v0, "startLocation":Lorg/osmdroid/util/GeoPoint;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    .line 100
    .local v1, "endLocation":Lorg/osmdroid/util/GeoPoint;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    .line 101
    .local v2, "method":Lcom/google/appinventor/components/common/TransportMethod;
    new-instance v3, Lcom/google/appinventor/components/runtime/Navigation$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Navigation$1;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public ResponseContent()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Content of the last response as a dictionary."
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public StartLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the start location."
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLatitude(D)V
    .locals 4
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 143
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 146
    const-string v1, "StartLatitude"

    const/16 v3, 0xd55

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 149
    :goto_0
    return-void
.end method

.method public StartLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 10
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the start location."
    .end annotation

    .line 177
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 178
    .local v0, "point":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    .line 179
    .local v1, "latitude":D
    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    .line 180
    .local v3, "longitude":D
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "SetStartLocation"

    if-nez v5, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    .line 182
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v6

    .line 181
    const/16 v6, 0xd55

    invoke-interface {v5, p0, v8, v6, v7}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    .line 185
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v6

    .line 184
    const/16 v6, 0xd56

    invoke-interface {v5, p0, v8, v6, v7}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 189
    :goto_0
    return-void
.end method

.method public StartLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the start location."
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLongitude(D)V
    .locals 4
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 161
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 165
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 164
    const-string v1, "StartLongitude"

    const/16 v3, 0xd56

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 167
    :goto_0
    return-void
.end method

.method public TransportationMethod()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TransportationMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/TransportMethod;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "foot-walking"
        editorType = "navigation_method"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The transportation method used for determining the route."
    .end annotation

    .line 262
    invoke-static {p1}, Lcom/google/appinventor/components/common/TransportMethod;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    .line 263
    .local v0, "t":Lcom/google/appinventor/components/common/TransportMethod;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V

    .line 266
    :cond_0
    return-void
.end method

.method public TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 0
    .param p1, "method"    # Lcom/google/appinventor/components/common/TransportMethod;

    .line 245
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/common/TransportMethod;

    .line 246
    return-void
.end method
