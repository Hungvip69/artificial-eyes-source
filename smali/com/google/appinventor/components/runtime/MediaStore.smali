.class public final Lcom/google/appinventor/components/runtime/MediaStore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "MediaStore.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with a Web service and stores media files."
    iconName = "images/mediastore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "httpmime.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final LOG_TAG_COMPONENT:Ljava/lang/String; = "MediaStore: "


# instance fields
.field private androidUIHandler:Landroid/os/Handler;

.field protected final componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private serviceURL:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/MediaStore;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 85
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MediaStore;->componentContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->androidUIHandler:Landroid/os/Handler;

    .line 87
    const-string v0, "http://ai-mediaservice.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private getUploadUrl()Ljava/lang/String;
    .locals 8

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    .line 170
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "obj":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 175
    .local v2, "con":Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 178
    const-string v3, "AppInventor"

    .line 179
    .local v3, "USER_AGENT":Ljava/lang/String;
    const-string v4, "User-Agent"

    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v4, "Content-Type"

    const-string v5, "text/plain; charset=utf-8"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    .local v4, "in":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v5, "response":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "inputLine":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 187
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 193
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "obj":Ljava/net/URL;
    .end local v2    # "con":Ljava/net/HttpURLConnection;
    .end local v3    # "USER_AGENT":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "inputLine":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public MediaStored(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 206
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "MediaStored"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public PostMedia(Ljava/lang/String;)V
    .locals 12
    .param p1, "mediafile"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/appinventor/components/runtime/MediaStore$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MediaStore$1;-><init>(Lcom/google/appinventor/components/runtime/MediaStore;)V

    .line 134
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 136
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->create()Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    move-result-object v2

    .line 137
    .local v2, "entityBuilder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 139
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "pathtokens":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "file:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .local v4, "newMediaPath":Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v4    # "newMediaPath":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .line 148
    .restart local v4    # "newMediaPath":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, "media":Ljava/io/File;
    const-string v6, "file"

    new-instance v7, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v7, v5}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)Lorg/apache/http/entity/mime/MultipartEntityBuilder;

    .line 151
    invoke-virtual {v2}, Lorg/apache/http/entity/mime/MultipartEntityBuilder;->build()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 153
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MediaStore;->getUploadUrl()Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "uploadURL":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 155
    .local v8, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v8, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 156
    invoke-interface {v1, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 158
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 159
    .local v10, "httpEntity":Lorg/apache/http/HttpEntity;
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "result":Ljava/lang/String;
    invoke-interface {v0, v11}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entityBuilder":Lorg/apache/http/entity/mime/MultipartEntityBuilder;
    .end local v3    # "pathtokens":[Ljava/lang/String;
    .end local v4    # "newMediaPath":Ljava/lang/String;
    .end local v5    # "media":Ljava/io/File;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v7    # "uploadURL":Ljava/lang/String;
    .end local v8    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v11    # "result":Ljava/lang/String;
    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://ai-mediaservice.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MediaStore;->serviceURL:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "WebServiceError"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 217
    return-void
.end method
