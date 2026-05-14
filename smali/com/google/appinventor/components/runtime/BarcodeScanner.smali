.class public Lcom/google/appinventor/components/runtime/BarcodeScanner;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "BarcodeScanner.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for using the Barcode Scanner to read a barcode"
    iconName = "images/barcodeScanner.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            name = "com.google.zxing.client.android.AppInvCaptureActivity"
            screenOrientation = "landscape"
            stateNotNeeded = "true"
            theme = "@android:style/Theme.NoTitleBar.Fullscreen"
            windowSoftInputMode = "stateAlwaysHidden"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "Barcode.jar,QRGenerator.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.CAMERA"
.end annotation


# static fields
.field private static final LOCAL_SCAN:Ljava/lang/String; = "com.google.zxing.client.android.AppInvCaptureActivity"

.field private static final SCANNER_RESULT_NAME:Ljava/lang/String; = "SCAN_RESULT"

.field private static final SCAN_INTENT:Ljava/lang/String; = "com.google.zxing.client.android.SCAN"


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private useExternalScanner:Z


# direct methods
.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/BarcodeScanner;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 87
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    .line 88
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 89
    return-void
.end method


# virtual methods
.method public AfterScan(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterScan"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public DoScan()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Begins a barcode scan, using the camera. When the scan is complete, the AfterScan event will be raised."
    .end annotation

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 110
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->havePermission:Z

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;-><init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V

    .line 112
    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 125
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.zxing.client.android.AppInvCaptureActivity"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-nez v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    .line 134
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 137
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "BarcodeScanner"

    const/16 v5, 0x5dd

    invoke-virtual {v2, p0, v4, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 140
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text result of the previous scan."
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    return-object v0
.end method

.method public UseExternalScanner(Z)V
    .locals 0
    .param p1, "useExternalScanner"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 189
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    .line 190
    return-void
.end method

.method public UseExternalScanner()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true App Inventor will look for and use an external scanning program such as \"Bar Code Scanner.\""
    .end annotation

    .line 174
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->useExternalScanner:Z

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 144
    iget v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->requestCode:I

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 145
    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->AfterScan(Ljava/lang/String;)V

    .line 152
    :cond_1
    return-void
.end method
