.class public Lcom/google/appinventor/components/runtime/FirebaseDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xa
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that communicates with Firebase to store and retrieve information."
    designerHelpDescription = "Non-visible component that communicates with a Firebase to store and retrieve information."
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;,
        Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Firebase"

.field private static isInitialized:Z

.field private static persist:Z


# instance fields
.field private final activity:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private authListener:Lcom/firebase/client/Firebase$AuthStateListener;

.field private childListener:Lcom/firebase/client/ChildEventListener;

.field private defaultURL:Ljava/lang/String;

.field private developerBucket:Ljava/lang/String;

.field private firebaseToken:Ljava/lang/String;

.field private firebaseURL:Ljava/lang/String;

.field private myFirebase:Lcom/firebase/client/Firebase;

.field private projectBucket:Ljava/lang/String;

.field private useDefault:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirebaseToken(Lcom/google/appinventor/components/runtime/FirebaseDB;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmyFirebase(Lcom/google/appinventor/components/runtime/FirebaseDB;)Lcom/firebase/client/Firebase;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    .line 87
    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 133
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->androidUIHandler:Landroid/os/Handler;

    .line 139
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->activity:Landroid/app/Activity;

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/firebase/client/Firebase;->setAndroidContext(Landroid/content/Context;)V

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    .line 202
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    .line 221
    return-void
.end method

.method private connectFirebase()V
    .locals 5

    .line 587
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->activity:Landroid/app/Activity;

    const-string v1, "Android Too Old"

    const-string v2, "OK"

    const-string v3, "The version of Android on this device is too old to use Firebase."

    invoke-static {v0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void

    .line 592
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_1

    .line 593
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "developers/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    goto :goto_0

    .line 595
    :cond_1
    new-instance v0, Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/client/Firebase;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addChildEventListener(Lcom/firebase/client/ChildEventListener;)Lcom/firebase/client/ChildEventListener;

    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)Lcom/firebase/client/Firebase$AuthStateListener;

    .line 600
    return-void
.end method

.method private firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "toRun"    # Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
    .param p2, "firebase"    # Lcom/firebase/client/Firebase;
    .param p3, "whenDone"    # Ljava/lang/Runnable;

    .line 791
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;->getResult()Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    move-result-object v0

    .line 792
    .local v0, "result":Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/google/appinventor/components/runtime/FirebaseDB$8;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Lcom/firebase/client/Firebase;->runTransaction(Lcom/firebase/client/Transaction$Handler;)V

    .line 828
    return-void
.end method

.method private resetListener()V
    .locals 2

    .line 404
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    if-nez v0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->childListener:Lcom/firebase/client/ChildEventListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeEventListener(Lcom/firebase/client/ChildEventListener;)V

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->authListener:Lcom/firebase/client/Firebase$AuthStateListener;

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->removeAuthStateListener(Lcom/firebase/client/Firebase$AuthStateListener;)V

    .line 413
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    .line 414
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->connectFirebase()V

    .line 415
    return-void
.end method


# virtual methods
.method public AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToAdd"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Append a value to the end of a list atomically. If two devices use this function simultaneously, both will be appended and no data lost."
    .end annotation

    .line 750
    new-instance v4, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal-IA;)V

    .line 751
    .local v4, "result":Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v8

    .line 752
    .local v8, "firebaseChild":Lcom/firebase/client/Firebase;
    new-instance v9, Lcom/google/appinventor/components/runtime/FirebaseDB$7;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/FirebaseDB$7;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Ljava/lang/Object;)V

    .line 787
    .local v0, "toRun":Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
    invoke-direct {p0, v0, v8, v7}, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    .line 788
    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove the tag from Firebase"
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->removeValue()V

    .line 452
    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 557
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 558
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert from JSON."

    const-string v3, "JSON Retrieval Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 562
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    nop

    .line 565
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string v0, "DataChanged"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 566
    return-void
.end method

.method public DefaultURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 645
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    .line 646
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 648
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 650
    :cond_0
    return-void
.end method

.method public DeveloperBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    return-object v0
.end method

.method public DeveloperBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->developerBucket:Ljava/lang/String;

    .line 309
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 310
    return-void
.end method

.method public FirebaseError(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 576
    const-string v0, "Firebase"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FirebaseError"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    .line 580
    .local v0, "dispatched":Z
    if-nez v0, :cond_0

    .line 582
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Continue"

    invoke-static {v2, p1, v1, v3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_0
    return-void
.end method

.method public FirebaseToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public FirebaseToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "JWT"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseToken:Ljava/lang/String;

    .line 358
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 359
    return-void
.end method

.method public FirebaseURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the URL for this FirebaseDB."
        userVisible = false
    .end annotation

    .line 250
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "DEFAULT"

    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public FirebaseURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "DEFAULT"
        editorType = "FirbaseURL"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the URL for this FirebaseDB."
    .end annotation

    .line 269
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    if-nez v0, :cond_1

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 273
    const-string v0, "Firebase"

    const-string v1, "FirebaseURL called before DefaultURL (should not happen!)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->defaultURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    goto :goto_0

    .line 282
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 283
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, ""

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 286
    return-void

    .line 288
    :cond_4
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseURL:Ljava/lang/String;

    .line 289
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->useDefault:Z

    .line 290
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 293
    :goto_0
    return-void
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered by the \"RemoveFirst\" function. The argument \"value\" is the object that was the first in the list, and which is now removed."
    .end annotation

    .line 743
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FirstRemoved"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 744
    return-void
.end method

.method public GetTagList()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the list of tags for this application. When complete a \"TagList\" event will be triggered with the list of known tags."
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    .line 711
    .local v0, "zFireBase":Lcom/firebase/client/Firebase;
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$6;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$6;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    .line 731
    return-void
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/firebase/client/Firebase;->addListenerForSingleValueEvent(Lcom/firebase/client/ValueEventListener;)V

    .line 525
    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 536
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 537
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert from JSON."

    const-string v3, "JSON Retrieval Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 541
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    nop

    .line 544
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string v0, "GotValue"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method public Initialize()V
    .locals 2

    .line 236
    const-string v0, "Firebase"

    const-string v1, "Initalize called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    .line 238
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 239
    return-void
.end method

.method public Persist(Z)V
    .locals 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, variables will retain their values when off-line and the App exits. Values will be uploaded to Firebase the next time the App is run while connected to the network. This is useful for applications which will gather data while not connected to the network. Note: AppendValue and RemoveFirst will not work correctly when off-line, they require a network connection.<br/><br/> <i>Note</i>: If you set Persist on any Firebase component, on any screen, it makes all Firebase components on all screens persistent. This is a limitation of the low level Firebase library. Also be aware that if you want to set persist to true, you should do so before connecting the Companion for incremental development."
        userVisible = false
    .end annotation

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persist Called: Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    if-eq v0, p1, :cond_1

    .line 389
    sget-boolean v0, Lcom/google/appinventor/components/runtime/FirebaseDB;->isInitialized:Z

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lcom/firebase/client/Firebase;->getDefaultConfig()Lcom/firebase/client/Config;

    move-result-object v0

    .line 394
    .local v0, "config":Lcom/firebase/client/Config;
    invoke-virtual {v0, p1}, Lcom/firebase/client/Config;->setPersistenceEnabled(Z)V

    .line 395
    invoke-static {v0}, Lcom/firebase/client/Firebase;->setDefaultConfig(Lcom/firebase/client/Config;)V

    .line 396
    sput-boolean p1, Lcom/google/appinventor/components/runtime/FirebaseDB;->persist:Z

    .line 397
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    goto :goto_0

    .line 390
    .end local v0    # "config":Lcom/firebase/client/Config;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot change the Persist value of Firebase after Application Initialization, this includes the Companion"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    :goto_0
    return-void
.end method

.method public ProjectBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the ProjectBucket for this FirebaseDB."
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectBucket(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ProjectBucket for this FirebaseDB."
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->projectBucket:Ljava/lang/String;

    .line 333
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->resetListener()V

    .line 335
    :cond_0
    return-void
.end method

.method public RemoveFirst(Ljava/lang/String;)V
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the first element of a list and atomically remove it. If two devices use this function simultaneously, one will get the first element and the the other will get the second element, or an error if there is no available element. When the element is available, the \"FirstRemoved\" event will be triggered."
    .end annotation

    .line 657
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal-IA;)V

    .line 658
    .local v0, "result":Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v1, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v1

    .line 659
    .local v1, "firebaseChild":Lcom/firebase/client/Firebase;
    new-instance v8, Lcom/google/appinventor/components/runtime/FirebaseDB$4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v6, v0

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/FirebaseDB$4;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V

    .line 698
    .local v2, "toRun":Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
    new-instance v3, Lcom/google/appinventor/components/runtime/FirebaseDB$5;

    invoke-direct {v3, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$5;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V

    invoke-direct {p0, v2, v1, v3}, Lcom/google/appinventor/components/runtime/FirebaseDB;->firebaseTransaction(Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;Lcom/firebase/client/Firebase;Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 464
    if-eqz p2, :cond_0

    .line 465
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert to JSON."

    const-string v3, "JSON Creation Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 469
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    nop

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0, p1}, Lcom/firebase/client/Firebase;->child(Ljava/lang/String;)Lcom/firebase/client/Firebase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/firebase/client/Firebase;->setValue(Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public TagList(Ljava/util/List;)V
    .locals 2
    .param p1, "value"    # Ljava/util/List;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when we have received the list of known tags. Used with the \"GetTagList\" Function."
    .end annotation

    .line 736
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "TagList"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 737
    return-void
.end method

.method public Unauthenticate()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If you are having difficulty with the Companion and you are switching between different Firebase accounts, you may need to use this function to clear internal Firebase caches. You can just use the \"Do It\" function on this block in the blocks editor. Note: You should not normally need to use this block as part of an application."
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    if-nez v0, :cond_0

    .line 629
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->connectFirebase()V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB;->myFirebase:Lcom/firebase/client/Firebase;

    invoke-virtual {v0}, Lcom/firebase/client/Firebase;->unauth()V

    .line 632
    return-void
.end method
