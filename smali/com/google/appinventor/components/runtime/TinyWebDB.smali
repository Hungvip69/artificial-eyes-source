.class public Lcom/google/appinventor/components/runtime/TinyWebDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TinyWebDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with a Web service to store and retrieve information."
    iconName = "images/tinyWebDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final GETVALUE_COMMAND:Ljava/lang/String; = "getvalue"

.field private static final LOG_TAG:Ljava/lang/String; = "TinyWebDB"

.field private static final STOREAVALUE_COMMAND:Ljava/lang/String; = "storeavalue"

.field private static final TAG_PARAMETER:Ljava/lang/String; = "tag"

.field private static final VALUE_PARAMETER:Ljava/lang/String; = "value"


# instance fields
.field private androidUIHandler:Landroid/os/Handler;

.field private serviceURL:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostGetValue(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB;->postGetValue(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostStoreValue(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/TinyWebDB;->postStoreValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 88
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->androidUIHandler:Landroid/os/Handler;

    .line 97
    const-string v0, "http://tinywebdb.appinventor.mit.edu/"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->serviceURL:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private postGetValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 273
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$4;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V

    .line 328
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONArray;>;"
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->serviceURL:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "tag"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 331
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 328
    const-string v4, "getvalue"

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 333
    return-void
.end method

.method private postStoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;

    .line 187
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$2;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;)V

    .line 213
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->serviceURL:Ljava/lang/String;

    const-string v3, "storeavalue"

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "tag"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "value"

    .line 218
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 215
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    .line 213
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    nop

    .line 223
    return-void

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert to JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public GetValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a request to the Web service to get the value stored under the given tag. The Web service must decide what to return if there is no value stored under the tag. This component accepts whatever is returned."
    .end annotation

    .line 267
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$3;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;)V

    .line 268
    .local v0, "call":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tagFromWebDB"    # Ljava/lang/String;
    .param p2, "valueFromWebDB"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a GetValue server request has succeeded."
    .end annotation

    .line 345
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "GotValue"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the web service database."
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://tinywebdb.appinventor.mit.edu"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB;->serviceURL:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asks the Web service to store the given value under the given tag"
    .end annotation

    .line 157
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyWebDB$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/TinyWebDB$1;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .local v0, "call":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method public ValueStored()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a StoreValue server request has succeeded."
    .end annotation

    .line 236
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ValueStored"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "WebServiceError"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 358
    return-void
.end method
