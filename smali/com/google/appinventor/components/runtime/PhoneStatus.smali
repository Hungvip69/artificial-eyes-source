.class public Lcom/google/appinventor/components/runtime/PhoneStatus;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PhoneStatus.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that returns information about the phone."
    iconName = "images/phoneip.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "webrtc.jar,google-http-client.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesNativeLibraries;
    v7aLibraries = "libjingle_peerconnection_so.so"
    v8aLibraries = "libjingle_peerconnection_so.so"
    x86_64Libraries = "libjingle_peerconnection_so.so"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStatus"

.field private static final PROJECTS_ACTIVITY_CLASS:Ljava/lang/String;

.field private static activity:Landroid/app/Activity;

.field private static mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

.field private static popup:Ljava/lang/String;

.field private static useWebRTC:Z


# instance fields
.field private firstHmacSeed:Ljava/lang/String;

.field private firstSeed:Ljava/lang/String;

.field private final form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method static bridge synthetic -$$Nest$fgetform(Lcom/google/appinventor/components/runtime/PhoneStatus;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    .line 84
    const-string v0, "No Page Provided!"

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->popup:Ljava/lang/String;

    .line 86
    const-class v0, Lcom/google/appinventor/components/runtime/ProjectsActivity;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->PROJECTS_ACTIVITY_CLASS:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 90
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    .line 91
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 92
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    .line 93
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-nez v0, :cond_0

    .line 94
    sput-object p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    .line 96
    :cond_0
    return-void
.end method

.method public static GetWifiIpAddress()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the IP address of the phone in the form of a String"
    .end annotation

    .line 101
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "wifiManager":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 103
    .local v1, "ip":Landroid/net/DhcpInfo;
    iget v2, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 105
    .local v2, "s_ipAddress":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/PhoneStatus;->intToIp(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "ipAddress":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v3    # "ipAddress":Ljava/lang/String;
    :cond_0
    const-string v3, "Error: No Wifi Connection"

    .line 109
    .restart local v3    # "ipAddress":Ljava/lang/String;
    :goto_0
    return-object v3
.end method

.method public static doFault()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Causes an Exception, used to debug exception processing."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "doFault called!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static doSettings()V
    .locals 2

    .line 389
    const-string v0, "doSettings called."

    const-string v1, "PhoneStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->mainInstance:Lcom/google/appinventor/components/runtime/PhoneStatus;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/PhoneStatus;->OnSettings()V

    goto :goto_0

    .line 393
    :cond_0
    const-string v0, "mainStance is null on doSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-void
.end method

.method public static getPopup()Ljava/lang/String;
    .locals 1

    .line 367
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->popup:Ljava/lang/String;

    return-object v0
.end method

.method public static getUseWebRTC()Z
    .locals 1

    .line 380
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return v0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # I

    .line 402
    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the phone is on Wifi, FALSE otherwise"
    .end annotation

    .line 114
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 116
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 117
    nop

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 120
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    :goto_0
    return v2
.end method

.method public static loadProjects()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays the List of Loaded Cached Projects"
    .end annotation

    .line 372
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 373
    .local v0, "activeForm":Lcom/google/appinventor/components/runtime/Form;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, "projectsIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneStatus;->PROJECTS_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method static startCache()V
    .locals 0

    .line 398
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->startCache()V

    .line 399
    return-void
.end method


# virtual methods
.method public GetInstaller()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the app that installed us"
    .end annotation

    .line 343
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 344
    const-string v0, "edu.mit.appinventor.aicompanion3"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "installer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 346
    const-string v1, "sideloaded"

    return-object v1

    .line 348
    :cond_0
    return-object v0

    .line 351
    .end local v0    # "installer":Ljava/lang/String;
    :cond_1
    const-string v0, "unknown"

    return-object v0
.end method

.method public GetVersionName()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the our VersionName property"
    .end annotation

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 335
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "PhoneStatus"

    const-string v2, "Unable to get VersionName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const-string v1, "UNKNOWN"

    return-object v1
.end method

.method public InstallationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the ACRA Installation ID"
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OnSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 280
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnSettings"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

.method public SdkLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current Android SDK Level"
    .end annotation

    .line 312
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    return v0
.end method

.method public SetPopup(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the content of the Pop-Up page used for the new legacy connection"
    .end annotation

    .line 362
    sput-object p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->popup:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public WebRTC(Z)V
    .locals 0
    .param p1, "useWebRTC"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    sput-boolean p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    .line 293
    return-void
.end method

.method public WebRTC()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If True we are using WebRTC to talk to the server."
    .end annotation

    .line 297
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    return v0
.end method

.method public installURL(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the URL and installs it as an Android Package via the installed browser"
    .end annotation

    .line 256
    :try_start_0
    const-string v0, "edu.mit.appinventor.companionextras.CompanionExtras"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 258
    .local v2, "o":Ljava/lang/Object;
    const-string v3, "Extra1"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 259
    .local v3, "m":Ljava/lang/reflect/Method;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    nop

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?store=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 263
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 264
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method public isDirect()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if we are running in the emulator or USB Connection"
    .end annotation

    .line 205
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.os.Build.VERSION.RELEASE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.os.Build.PRODUCT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect()Z

    move-result v0

    return v0

    .line 213
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAssetsLoaded()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Declare that we have loaded our initial assets and other assets should come from the sdcard"
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setAssetsLoaded()V

    .line 239
    :cond_0
    return-void
.end method

.method public setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "rendezvousServer"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Establish the secret seed for HOTP generation. Return the SHA1 of the provided seed, this will be used to contact the rendezvous server. Note: This code also starts the connection negotiation process if we are using WebRTC. This is a bit of a kludge..."
    .end annotation

    .line 130
    const-string v0, "PhoneStatus"

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    return-object v1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/PhoneStatus$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/PhoneStatus$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneStatus;)V

    const-string v2, "You cannot use two codes with one start up of the Companion. You should restart the Companion and try again."

    const-string v3, "Warning"

    const-string v4, "OK"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    return-object v0

    .line 169
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    .line 179
    sget-boolean v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    if-nez v2, :cond_3

    .line 180
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    .line 185
    :cond_3
    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v1, "Sha1":Ljava/security/MessageDigest;
    nop

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 191
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 192
    .local v2, "result":[B
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 193
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 194
    .local v4, "formatter":Ljava/util/Formatter;
    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    aget-byte v8, v2, v7

    .line 195
    .local v8, "b":B
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v6

    const-string v9, "%02x"

    invoke-virtual {v4, v9, v10}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 194
    .end local v8    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 197
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Seed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstHmacSeed:Ljava/lang/String;

    return-object v0

    .line 186
    .end local v1    # "Sha1":Ljava/security/MessageDigest;
    .end local v2    # "result":[B
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "formatter":Ljava/util/Formatter;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Exception getting SHA1 Instance"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return-object v1
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Really Exit the Application"
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 272
    return-void
.end method

.method public startHTTPD(Z)V
    .locals 1
    .param p1, "secure"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the internal AppInvHTTPD to listen for incoming forms. FOR REPL USE ONLY!"
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method public startWebRTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "rendezvousServer"    # Ljava/lang/String;
    .param p2, "iceServers"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the WebRTC engine"
    .end annotation

    .line 219
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->useWebRTC:Z

    if-nez v0, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v0, "webRTCNativeMgr":Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->firstSeed:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    .line 225
    return-void
.end method
