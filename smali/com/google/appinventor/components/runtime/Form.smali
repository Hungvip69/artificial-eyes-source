.class public Lcom/google/appinventor/components/runtime/Form;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "Form.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;
.implements Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x1f
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;,
        Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    }
.end annotation


# static fields
.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR_DARK:I

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field public static final MAX_PERMISSION_NONCE:I = 0x186a0

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static final SWITCH_FORM_REQUEST_CODE:I = 0x1

.field private static _initialized:Z

.field protected static activeForm:Lcom/google/appinventor/components/runtime/Form;

.field private static applicationIsBeingClosed:Z

.field private static minimumToastWait:J

.field private static nextRequestCode:I

.field private static sCompatibilityMode:Z

.field private static showListsAsJson:Z


# instance fields
.field private aboutScreen:Ljava/lang/String;

.field private accentColor:I

.field private actionBarEnabled:Z

.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final activityResultMultiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/ActivityResultListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private allChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field protected final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private bigDefaultText:Z

.field private closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private compatScalingFactor:F

.field protected componentName:Ljava/lang/String;

.field private defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

.field private deviceDensity:F

.field private dimChanges:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private formHeight:I

.field protected formName:Ljava/lang/String;

.field private formWidth:I

.field private frameLayout:Landroid/widget/FrameLayout;

.field private fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

.field private highContrast:Z

.field private horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private keyboardShown:Z

.field private lastToastTime:J

.field private nextFormName:Ljava/lang/String;

.field private final onClearListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnClearListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onCreateOptionsMenuListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onDestroyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onInitializeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/OnInitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onNewIntentListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnNewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOptionsItemSelectedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onOrientationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onPauseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private final permissionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionRandom:Ljava/util/Random;

.field private final permissionRegistry:Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private primaryColor:I

.field private primaryColorDark:I

.field private progress:Landroid/app/ProgressDialog;

.field private scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

.field private screenInitialized:Z

.field private scrollable:Z

.field private showStatusBar:Z

.field private showTitle:Z

.field protected startupValue:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field private usesDarkTheme:Z

.field private usesDefaultBackground:Z

.field private verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetframeLayout(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonInitializeListeners(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissionHandlers(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissionRandom(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputscreenInitialized(Lcom/google/appinventor/components/runtime/Form;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseApplicationFromMenu(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecomputeLayout(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAboutApplicationNotification(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showAboutApplicationNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowExitApplicationNotification(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->showExitApplicationNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsCompatibilityMode()Z
    .locals 1

    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 153
    nop

    .line 154
    const-string v0, "&HFF303F9F"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    .line 155
    nop

    .line 156
    const-string v0, "&HFFFF4081"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    .line 183
    const/4 v0, 0x2

    sput v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    .line 272
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    .line 289
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 139
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->allChildren:Ljava/util/List;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 192
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 211
    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 212
    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 215
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    .line 216
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 217
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 230
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    .line 232
    new-instance v1, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;-><init>()V

    .line 233
    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMinSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    .line 234
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMinSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    .line 235
    const-string v2, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMinSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    .line 236
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMaxSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    .line 237
    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMinSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    .line 238
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMinSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    .line 239
    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMinSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    .line 240
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->recordMaxSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRegistry:Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    .line 242
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    .line 245
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    .line 246
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 247
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    .line 248
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    .line 249
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    .line 250
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    .line 251
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    .line 252
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    .line 253
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    .line 256
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    .line 259
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    .line 260
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    .line 263
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    .line 265
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRandom:Ljava/util/Random;

    .line 269
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 286
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 312
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private closeApplication()V
    .locals 2

    .line 2565
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    .line 2567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v1, "Screen1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 2577
    :cond_0
    return-void
.end method

.method private closeApplicationFromMenu()V
    .locals 0

    .line 2556
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2557
    return-void
.end method

.method private static decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "functionName"    # Ljava/lang/String;

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decodeJSONStringForForm -- decoding JSON representation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v0, ""

    .line 643
    .local v0, "valueFromJSON":Ljava/lang/Object;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 644
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeJSONStringForForm -- got decoded JSON:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    sget-object v4, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    const/16 v5, 0x387

    invoke-virtual {v3, v4, p1, v5, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 651
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method public static finishActivity()V
    .locals 2

    .line 2498
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2499
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2503
    return-void

    .line 2501
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithResult(Ljava/lang/Object;)V
    .locals 3
    .param p0, "result"    # Ljava/lang/Object;

    .line 2507
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_1

    .line 2508
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 2509
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->setResult(Ljava/lang/Object;)V

    .line 2510
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    goto :goto_0

    .line 2512
    :cond_0
    const-string v0, "close screen with value"

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2513
    .local v0, "jString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2514
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "APP_INVENTOR_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2515
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2516
    .end local v0    # "jString":Ljava/lang/String;
    .end local v1    # "resultIntent":Landroid/content/Intent;
    nop

    .line 2520
    :goto_0
    return-void

    .line 2518
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishActivityWithTextResult(Ljava/lang/String;)V
    .locals 2
    .param p0, "result"    # Ljava/lang/String;

    .line 2524
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2526
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "APP_INVENTOR_RESULT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2527
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->closeForm(Landroid/content/Intent;)V

    .line 2528
    .end local v0    # "resultIntent":Landroid/content/Intent;
    nop

    .line 2531
    return-void

    .line 2529
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finishApplication()V
    .locals 2

    .line 2544
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2545
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->closeApplicationFromBlocks()V

    .line 2549
    return-void

    .line 2547
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .line 716
    sget-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne p2, v0, :cond_0

    .line 717
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 719
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static generateNewRequestCode()I
    .locals 2

    .line 735
    sget v0, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 2455
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public static getCompatibilityMode()Z
    .locals 1

    .line 2826
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    return v0
.end method

.method public static getStartText()Ljava/lang/String;
    .locals 2

    .line 2466
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2467
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    return-object v0

    .line 2469
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStartValue()Ljava/lang/Object;
    .locals 2

    .line 2484
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2485
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    const-string v1, "get start value"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2487
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;

    .line 2330
    const-string v0, ""

    .line 2331
    .local v0, "jsonResult":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonEncodeForForm -- creating JSON representation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Form"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonEncodeForForm -- got JSON representation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    goto :goto_0

    .line 2336
    :catch_0
    move-exception v1

    .line 2337
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    sget-object v3, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 2340
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 2337
    const/16 v4, 0x388

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2342
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private populatePermissions()V
    .locals 3

    .line 447
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 449
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    nop

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Form"

    const-string v2, "Exception while attempting to learn permissions."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private recomputeLayout()V
    .locals 8

    .line 1262
    const-string v0, "recomputeLayout called"

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1268
    .local v0, "needsTitleBar":Z
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1269
    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 1270
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1286
    :cond_2
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-eqz v4, :cond_3

    .line 1287
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1288
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_4

    .line 1291
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    goto :goto_1

    .line 1294
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 1296
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1300
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1302
    const-string v2, "About to create a new ScaledFrameLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    new-instance v1, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    .line 1304
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1307
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1311
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->requestLayout()V

    .line 1312
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$8;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Form$8;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1329
    return-void
.end method

.method private setBackground(Landroid/view/View;)V
    .locals 4
    .param p1, "bgview"    # Landroid/view/View;

    .line 2812
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2813
    .local v0, "setDraw":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, -0x1

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 2814
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2815
    iget v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 2818
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 2819
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    :cond_2
    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v0, v1

    .line 2821
    :goto_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2822
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 2823
    return-void
.end method

.method private static setBigDefaultTextRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 3
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p1, "enabled"    # Z

    .line 1208
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Component;

    .line 1209
    .local v1, "child":Lcom/google/appinventor/components/runtime/Component;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/ComponentContainer;

    if-eqz v2, :cond_0

    .line 1210
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/Form;->setBigDefaultTextRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    goto :goto_1

    .line 1211
    :cond_0
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    if-eqz v2, :cond_1

    .line 1212
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    invoke-interface {v2, p1}, Lcom/google/appinventor/components/runtime/AccessibleComponent;->setLargeFont(Z)V

    .line 1214
    .end local v1    # "child":Lcom/google/appinventor/components/runtime/Component;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1215
    :cond_2
    return-void
.end method

.method private static setHighContrastRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 3
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p1, "enabled"    # Z

    .line 1169
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Component;

    .line 1170
    .local v1, "child":Lcom/google/appinventor/components/runtime/Component;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/ComponentContainer;

    if-eqz v2, :cond_0

    .line 1171
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/Form;->setHighContrastRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    goto :goto_1

    .line 1172
    :cond_0
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    if-eqz v2, :cond_1

    .line 1173
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/AccessibleComponent;

    invoke-interface {v2, p1}, Lcom/google/appinventor/components/runtime/AccessibleComponent;->setHighContrast(Z)V

    .line 1175
    .end local v1    # "child":Lcom/google/appinventor/components/runtime/Component;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1176
    :cond_2
    return-void
.end method

.method private showAboutApplicationNotification()V
    .locals 5

    .line 2654
    const-string v0, "About this app"

    .line 2655
    .local v0, "title":Ljava/lang/String;
    const-string v1, "<p><small><em>Invented with MIT App Inventor<br>appinventor.mit.edu</em></small></p>"

    .line 2657
    .local v1, "MITtagline":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2658
    .local v2, "message":Ljava/lang/String;
    const-string v3, "\\n"

    const-string v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2659
    const-string v3, "Got it"

    .line 2660
    .local v3, "buttonText":Ljava/lang/String;
    invoke-static {p0, v2, v0, v3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    return-void
.end method

.method private showExitApplicationNotification()V
    .locals 13

    .line 2632
    const-string v9, "Stop application?"

    .line 2633
    .local v9, "title":Ljava/lang/String;
    const-string v10, "Stop this application and exit? You\'ll need to relaunch the application to use it again."

    .line 2635
    .local v10, "message":Ljava/lang/String;
    const-string v11, "Stop and exit"

    .line 2636
    .local v11, "positiveButton":Ljava/lang/String;
    const-string v12, "Don\'t stop"

    .line 2639
    .local v12, "negativeButton":Ljava/lang/String;
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$13;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Form$13;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2640
    .local v6, "stopApplication":Ljava/lang/Runnable;
    new-instance v7, Lcom/google/appinventor/components/runtime/Form$14;

    invoke-direct {v7, p0}, Lcom/google/appinventor/components/runtime/Form$14;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2641
    .local v7, "doNothing":Ljava/lang/Runnable;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v2, v9

    move-object v3, v11

    move-object v4, v12

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2651
    return-void
.end method

.method public static switchForm(Ljava/lang/String;)V
    .locals 2
    .param p0, "nextFormName"    # Ljava/lang/String;

    .line 2271
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2272
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2276
    return-void

    .line 2274
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchFormWithStartValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "nextFormName"    # Ljava/lang/String;
    .param p1, "startValue"    # Ljava/lang/Object;

    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open another screen with start value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_0

    .line 2289
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->startNewForm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2293
    return-void

    .line 2291
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activeForm is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 2376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 2377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2378
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 0

    .line 2365
    return-object p0
.end method

.method protected $define()V
    .locals 1

    .line 875
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 2370
    return-object p0
.end method

.method public AboutScreen()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Information about the screen.  It appears when \"About this Application\" is selected from the system menu. Use it to inform people about your app.  In multiple screen apps, each screen has its own AboutScreen info."
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    return-object v0
.end method

.method public AboutScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "aboutScreen"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1475
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->aboutScreen:Ljava/lang/String;

    .line 1476
    return-void
.end method

.method public AccentColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2139
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    return v0
.end method

.method public AccentColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the accent color used for highlights and other user interface accents."
        userVisible = false
    .end annotation

    .line 2128
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->accentColor:I

    .line 2129
    return-void
.end method

.method public ActionBar(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1638
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1640
    return-void

    .line 1642
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1643
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setActionBarEnabled(Z)V

    .line 1644
    if-eqz p1, :cond_1

    .line 1645
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->hideTitleBar()V

    .line 1646
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    goto :goto_0

    .line 1648
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->maybeShowTitleBar()V

    .line 1649
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 1651
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    .line 1653
    :cond_2
    return-void
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the screen are aligned  horizontally. The choices are: 1 = left aligned, 3 = horizontally centered,  2 = right aligned."
    .end annotation

    .line 1665
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 4
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1682
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    .line 1683
    .local v0, "align":Lcom/google/appinventor/components/common/HorizontalAlignment;
    if-nez v0, :cond_0

    .line 1684
    nop

    .line 1685
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1684
    const-string v1, "HorizontalAlignment"

    const/16 v3, 0x579

    invoke-virtual {p0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1686
    return-void

    .line 1688
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 1689
    return-void
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 1
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 1706
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 1707
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 1708
    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom. Vertical alignment has no effect if the screen is scrollable."
    .end annotation

    .line 1721
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignVertical(I)V
    .locals 4
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1740
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    .line 1741
    .local v0, "align":Lcom/google/appinventor/components/common/VerticalAlignment;
    if-nez v0, :cond_0

    .line 1742
    nop

    .line 1743
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1742
    const-string v1, "VerticalAlignment"

    const/16 v3, 0x57a

    invoke-virtual {p0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1744
    return-void

    .line 1746
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 1747
    return-void
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 1755
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 1
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 1764
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 1765
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 1766
    return-void
.end method

.method public AppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the display name of the installed application in the phone.If the AppName is blank, it will be set to the name of the project when the project is built."
        userVisible = false
    .end annotation

    .line 2085
    return-void
.end method

.method public AskForPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Ask the user to grant access to a dangerous permission."
    .end annotation

    .line 1125
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1128
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$7;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1138
    return-void
.end method

.method public AskForPermissionAbstract(Lcom/google/appinventor/components/common/Permission;)V
    .locals 1
    .param p1, "permission"    # Lcom/google/appinventor/components/common/Permission;

    .line 1224
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->AskForPermission(Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public BackPressed()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Device back button pressed."
    .end annotation

    .line 595
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackPressed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1339
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    goto :goto_0

    .line 1356
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    .line 1357
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 1360
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1361
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .line 1392
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    .line 1395
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    goto :goto_1

    .line 1396
    :catch_0
    move-exception v0

    .line 1397
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundImagePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Form"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1400
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 1401
    return-void
.end method

.method public BigDefaultText(Z)V
    .locals 0
    .param p1, "bigDefaultText"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1201
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->bigDefaultText:Z

    .line 1202
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setBigDefaultTextRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 1203
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1204
    return-void
.end method

.method public BigDefaultText()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, we will use high contrast mode"
    .end annotation

    .line 1187
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->bigDefaultText:Z

    return v0
.end method

.method public BlocksToolkit(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "subset_json"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Choose the set of components you\u2019ll need for your project. A smaller set is good for beginner projects, while experts can use all options to build complex apps. For example, the Beginner Toolkit gives you access to all the features you need for our novice tutorials and curriculum.</p><p>You can always change your toolkit in Project Properties, so your choice now won\u2019t limit the future possibilities for your app.</p>"
        userVisible = false
    .end annotation

    .line 2237
    return-void
.end method

.method public CloseScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for closing current screen and returning  to the previous screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 1834
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_0

    .line 1835
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1837
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public CloseScreenAnimation(Ljava/lang/String;)V
    .locals 4
    .param p1, "animType"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1851
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 1852
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    if-nez v0, :cond_0

    .line 1853
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Screen"

    const/16 v3, 0x389

    invoke-virtual {p0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1855
    return-void

    .line 1857
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 1858
    return-void
.end method

.method public CloseScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 1867
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 0
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1878
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1879
    return-void
.end method

.method public DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1414
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    .line 1415
    return-void
.end method

.method public ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an error occurs. Only some errors will raise this condition.  For those errors, the system will show a notification by default.  You can use this event handler to prescribe an error behavior different than the default."
    .end annotation

    .line 958
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", functionName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", messages = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Form"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    nop

    .line 964
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const/4 v1, 0x3

    aput-object p4, v3, v1

    .line 963
    const-string v1, "ErrorOccurred"

    invoke-static {p0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_0

    .line 971
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    .line 973
    :cond_0
    return-void
.end method

.method public ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "buttonText"    # Ljava/lang/String;

    .line 978
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "componentType":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 980
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ErrorOccurred, errorNumber = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", componentType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", functionName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", messages = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Form"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    nop

    .line 984
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    const/4 v2, 0x2

    aput-object v1, v3, v2

    const/4 v1, 0x3

    aput-object p4, v3, v1

    .line 983
    const-string v1, "ErrorOccurred"

    invoke-static {p0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-eqz v1, :cond_0

    .line 991
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5, p6}, Lcom/google/appinventor/components/runtime/Notifier;->ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_0
    return-void
.end method

.method public Height()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen height (y-size)."
    .end annotation

    .line 2205
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    return v0
.end method

.method public HideKeyboard()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the onscreen soft keyboard."
    .end annotation

    .line 2834
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2835
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2836
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2838
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2839
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2840
    return-void
.end method

.method public HighContrast(Z)V
    .locals 0
    .param p1, "highContrast"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1163
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->highContrast:Z

    .line 1164
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setHighContrastRecursive(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 1165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1166
    return-void
.end method

.method public HighContrast()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, we will use high contrast mode"
    .end annotation

    .line 1149
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->highContrast:Z

    return v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1893
    return-void
.end method

.method public Initialize()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The Initialize event is run when the Screen starts and is only run once per screen."
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$3;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 941
    return-void
.end method

.method public NSBluetoothAlwaysUsageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1933
    return-void
.end method

.method public NSBluetoothPeripheralUsageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1941
    return-void
.end method

.method public NSCameraUsageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1962
    return-void
.end method

.method public NSContactsUsageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1948
    return-void
.end method

.method public NSLocationWhenInUseUsageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1976
    return-void
.end method

.method public NSMicrophoneUsageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1955
    return-void
.end method

.method public NSSpeechRecognitionUsageDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 1969
    return-void
.end method

.method public OpenScreenAnimation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The animation for switching to another screen. Valid options are default, fade, zoom, slidehorizontal, slidevertical, and none"
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1781
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public OpenScreenAnimation(Ljava/lang/String;)V
    .locals 4
    .param p1, "animType"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1794
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 1795
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    if-nez v0, :cond_0

    .line 1796
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Screen"

    const/16 v3, 0x389

    invoke-virtual {p0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1798
    return-void

    .line 1800
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 1801
    return-void
.end method

.method public OpenScreenAnimationAbstract()Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 0
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1820
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 1821
    return-void
.end method

.method public OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "otherScreenName"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when another screen has closed and control has returned to this screen."
    .end annotation

    .line 2348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 2349
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OtherScreenClosed, otherScreenName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2348
    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "OtherScreenClosed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 2351
    return-void
.end method

.method public PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1083
    const-string v0, "android.permission."

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1087
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string v3, "PermissionDenied"

    invoke-static {p0, v3, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v1

    const/16 v1, 0x38c

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1090
    :cond_1
    return-void
.end method

.method public PermissionGranted(Ljava/lang/String;)V
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Permission;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to handle when the app user has granted a needed permission. This event is only run when permission is granted in response to the AskForPermission method."
    .end annotation

    .line 1102
    const-string v0, "android.permission."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1106
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "PermissionGranted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1107
    return-void
.end method

.method public Platform()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The platform the app is running on, for example \"Android\" or \"iOS\"."
    .end annotation

    .line 2248
    const-string v0, "Android"

    return-object v0
.end method

.method public PlatformVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The dotted version number of the platform, such as 4.2.2 or 10.0. This is platform specific and there is no guarantee that it has a particular format."
    .end annotation

    .line 2261
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public PrimaryColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2102
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColor:I

    return v0
.end method

.method public PrimaryColor(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for Material UI elements, such as the ActionBar."
        userVisible = false
    .end annotation

    .line 2092
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setPrimaryColor(I)V

    .line 2093
    return-void
.end method

.method public PrimaryColorDark()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 2120
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    return v0
.end method

.method public PrimaryColorDark(I)V
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF303F9F"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This is the primary color used for darker elements in Material UI."
        userVisible = false
    .end annotation

    .line 2110
    iput p1, p0, Lcom/google/appinventor/components/runtime/Form;->primaryColorDark:I

    .line 2111
    return-void
.end method

.method ReplayFormOrientation()V
    .locals 5

    .line 702
    const-string v0, "Form"

    const-string v1, "ReplayFormOrientation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 704
    .local v0, "temp":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 706
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    .line 707
    .local v2, "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->dim:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v4, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    if-ne v3, v4, :cond_0

    .line 708
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    goto :goto_1

    .line 710
    :cond_0
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v4, v2, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;->length:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 712
    .end local v2    # "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    :goto_1
    goto :goto_0

    .line 713
    :cond_1
    return-void
.end method

.method public ScreenOrientation()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The requested screen orientation, specified as a text value.  Commonly used values are landscape, portrait, sensor, user and unspecified.  See the Android developer documentation for ActivityInfo.Screen_Orientation for the complete list of possible settings."
    .end annotation

    .line 1559
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ScreenOrientation(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenOrientation"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenOrientation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "unspecified"
        editorType = "screen_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1625
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    .line 1626
    .local v0, "orientation":Lcom/google/appinventor/components/common/ScreenOrientation;
    if-nez v0, :cond_0

    .line 1627
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "ScreenOrientation"

    const/16 v3, 0x385

    invoke-virtual {p0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1629
    return-void

    .line 1631
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V

    .line 1632
    return-void
.end method

.method public ScreenOrientationAbstract()Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1

    .line 1567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getRequestedOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1593
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1583
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1587
    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1585
    :pswitch_2
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1591
    :pswitch_3
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1589
    :pswitch_4
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1573
    :pswitch_5
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1577
    :pswitch_6
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1569
    :pswitch_7
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1581
    :pswitch_8
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1575
    :pswitch_9
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1571
    :pswitch_a
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    .line 1579
    :pswitch_b
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ScreenOrientationAbstract(Lcom/google/appinventor/components/common/ScreenOrientation;)V
    .locals 4
    .param p1, "orientation"    # Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 1602
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenOrientation;->getOrientationConstant()I

    move-result v0

    .line 1603
    .local v0, "orientationConst":I
    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 1604
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "ScreenOrientation"

    const/16 v3, 0x385

    invoke-virtual {p0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1606
    return-void

    .line 1608
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setRequestedOrientation(I)V

    .line 1609
    return-void
.end method

.method public ScreenOrientationChanged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Screen orientation changed"
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 946
    .local v1, "onOrientationChangeListener":Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;->onOrientationChange()V

    .line 947
    .end local v1    # "onOrientationChangeListener":Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;
    goto :goto_0

    .line 948
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ScreenOrientationChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method public Scrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1252
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1253
    return-void

    .line 1256
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    .line 1257
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->recomputeLayout()V

    .line 1258
    return-void
.end method

.method public Scrollable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "When checked, there will be a vertical scrollbar on the screen, and the height of the application can exceed the physical height of the device. When unchecked, the application height is constrained to the height of the device."
    .end annotation

    .line 1238
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->scrollable:Z

    return v0
.end method

.method public ShowListsAsJson(Z)V
    .locals 0
    .param p1, "asJson"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If false, lists will be converted to strings using Lisp notation, i.e., as symbols separated by spaces, e.g., (a 1 b2 (c d). If true, lists will appear as in Json or Python, e.g.  [\"a\", 1, \"b\", 2, [\"c\", \"d\"]].  This property appears only in Screen 1, and the value for Screen 1 determines the behavior for all screens. The property defaults to \"true\" meaning that the App Inventor programmer must explicitly set it to \"false\" if Lisp syntax is desired. In older versions of App Inventor, this setting defaulted to false. Older projects should not have been affected by this default settings update."
        userVisible = false
    .end annotation

    .line 2055
    sput-boolean p1, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    .line 2056
    return-void
.end method

.method public ShowListsAsJson()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 2068
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->showListsAsJson:Z

    return v0
.end method

.method public ShowStatusBar(Z)V
    .locals 3
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1530
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    if-eq p1, v0, :cond_1

    .line 1531
    const/16 v0, 0x800

    const/16 v1, 0x400

    if-eqz p1, :cond_0

    .line 1532
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 1533
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 1535
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1536
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 1538
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    .line 1540
    :cond_1
    return-void
.end method

.method public ShowStatusBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The status bar is the topmost bar on the screen. This property reports whether the status bar is visible."
    .end annotation

    .line 1517
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showStatusBar:Z

    return v0
.end method

.method public Sizing(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "Responsive"
        editorType = "sizing"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to fixed,  screen layouts will be created for a single fixed-size screen and autoscaled. If set to responsive, screen layouts will use the actual resolution of the device.  See the documentation on responsive design in App Inventor for more information. This property appears on Screen1 only and controls the sizing for all screens in the app."
        userVisible = false
    .end annotation

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sizing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/4 v0, 0x0

    .line 2001
    .local v0, "topinset":I
    const/4 v2, 0x0

    .line 2004
    .local v2, "bottominset":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_0

    .line 2006
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 2007
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 2009
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 2010
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    .line 2011
    const-string v3, "Fixed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2012
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 2013
    iget v3, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    .line 2014
    iget v3, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    goto :goto_0

    .line 2016
    :cond_1
    const/4 v3, 0x0

    sput-boolean v3, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    .line 2018
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 2019
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 2020
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2022
    :cond_3
    iget v3, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/Form;->formHeight:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " formHeight = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    return-void
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 2
    .param p1, "theme"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AppTheme.Light.DarkActionBar"
        editorType = "theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Pick a design theme for your app. Themes change the appearance of an app, such as how buttons and text look. The most common themes are: </p> <ul> <li> <code>Classic</code>: This theme stays consistent whether you are looking at an Android, iOS, or the screen layout in App Inventor\u2019s designer. Choose Classic if you want detailed control of the appearance of your app. </li><li> <code>Device Default</code>: This theme makes your app resemble the other apps on your device. With the default theme, however, your app won\u2019t look consistent across Android, iOS, and App Inventor\u2019s designer. The best way to see the true appearance of your app is to view it using the Companion.</ul>"
        userVisible = false
    .end annotation

    .line 2164
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDefaultBackground:Z

    const-string v1, "AppTheme"

    if-eqz v0, :cond_1

    .line 2165
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2166
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    goto :goto_0

    .line 2168
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Form;->backgroundColor:I

    .line 2170
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setBackground(Landroid/view/View;)V

    .line 2172
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    .line 2173
    const-string v0, "Classic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2174
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->CLASSIC:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_1

    .line 2175
    :cond_2
    const-string v0, "AppTheme.Light.DarkActionBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2176
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DEVICE_DEFAULT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_1

    .line 2177
    :cond_3
    const-string v0, "AppTheme.Light"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2178
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->BLACK_TITLE_TEXT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    goto :goto_1

    .line 2179
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    .line 2181
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V

    .line 2183
    :cond_5
    :goto_1
    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The caption for the form, which apears in the title bar"
    .end annotation

    .line 1429
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1442
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    .line 1443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 1447
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->updateTitle()V

    .line 1448
    return-void
.end method

.method public TitleVisible(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1499
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    if-eq p1, v0, :cond_1

    .line 1500
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    .line 1501
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setActionBarVisible(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    goto :goto_0

    .line 1504
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->maybeShowTitleBar()V

    .line 1507
    :cond_1
    :goto_0
    return-void
.end method

.method public TitleVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title bar is the top gray bar on the screen. This property reports whether the title bar is visible."
    .end annotation

    .line 1486
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    return v0
.end method

.method public TutorialURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A URL to use to populate the Tutorial Sidebar while editing a project. Used as a teaching aid."
        userVisible = false
    .end annotation

    .line 2224
    return-void
.end method

.method public VersionCode(I)V
    .locals 0
    .param p1, "vCode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "An integer value which must be incremented each time a new Android Application Package File (APK) is created for the Google Play Store."
        userVisible = false
    .end annotation

    .line 1909
    return-void
.end method

.method public VersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A string which can be changed to allow Google Play Store users to distinguish between different versions of the App."
        userVisible = false
    .end annotation

    .line 1925
    return-void
.end method

.method public Width()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Screen width (x-size)."
    .end annotation

    .line 2193
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form.Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->formWidth:I

    return v0
.end method

.method public addAboutInfoToMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2610
    const/4 v0, 0x2

    const-string v1, "About this application"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$12;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$12;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2612
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2618
    .local v0, "aboutAppItem":Landroid/view/MenuItem;
    const v1, 0x1080093

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2619
    return-void
.end method

.method public addExitButtonToMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2598
    const/4 v0, 0x1

    const-string v1, "Stop this application"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$11;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Form$11;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 2600
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2606
    .local v0, "stopApplicationItem":Landroid/view/MenuItem;
    const v1, 0x108005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2607
    return-void
.end method

.method public askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;

    .line 2936
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 2937
    .local v0, "permissionsToAsk":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2938
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2939
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2940
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2943
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2945
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onGranted()V

    goto :goto_1

    .line 2948
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$16;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form$16;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2975
    :goto_1
    return-void
.end method

.method public askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "responseRequestor"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 2911
    move-object v0, p0

    .line 2912
    .local v0, "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2914
    const/4 v1, 0x1

    invoke-interface {p2, p1, v1}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 2915
    return-void

    .line 2917
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$15;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Form$15;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2928
    return-void
.end method

.method public assertPermission(Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 2885
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2888
    return-void

    .line 2886
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/errors/PermissionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .locals 6
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2757
    const-string v0, "Form"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Initialize"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2764
    .local v1, "method":Ljava/lang/reflect/Method;
    nop

    .line 2766
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling Initialize method for Object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2771
    nop

    .line 2772
    return-void

    .line 2768
    :catch_0
    move-exception v2

    .line 2769
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 2761
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 2763
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return-void

    .line 2758
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 2759
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return-void
.end method

.method public canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;

    .line 881
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    if-nez v0, :cond_1

    if-ne p1, p0, :cond_0

    .line 882
    const-string v0, "Initialize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 884
    .local v0, "canDispatch":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 887
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 890
    :cond_2
    return v0
.end method

.method public clear()V
    .locals 3

    .line 2665
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clear called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2667
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 2672
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 2673
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2674
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2675
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2676
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2677
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2679
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2680
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2681
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z

    .line 2684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 2685
    .local v1, "onClearListener":Lcom/google/appinventor/components/runtime/OnClearListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnClearListener;->onClear()V

    .line 2686
    .end local v1    # "onClearListener":Lcom/google/appinventor/components/runtime/OnClearListener;
    goto :goto_0

    .line 2688
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2689
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Form.clear() About to do moby GC!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2690
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2691
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 2692
    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 0

    .line 2552
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 2553
    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 1
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .line 2535
    if-eqz p1, :cond_0

    .line 2536
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Form;->setResult(ILandroid/content/Intent;)V

    .line 2538
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    .line 2539
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 2540
    return-void
.end method

.method public compatScalingFactor()F
    .locals 1

    .line 2392
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    return v0
.end method

.method protected defaultPropertyValues()V
    .locals 3

    .line 456
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->actionBarEnabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    .line 461
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->Scrollable(Z)V

    .line 462
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast(Z)V

    .line 463
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText(Z)V

    .line 464
    const-string v1, "Responsive"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 465
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AboutScreen(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->BackgroundImage(Ljava/lang/String;)V

    .line 467
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignHorizontal(I)V

    .line 468
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->AlignVertical(I)V

    .line 469
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->Title(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowStatusBar(Z)V

    .line 471
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->TitleVisible(Z)V

    .line 472
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->ShowListsAsJson(Z)V

    .line 473
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->ActionBar(Z)V

    .line 474
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->AccentColor(I)V

    .line 475
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColor(I)V

    .line 476
    sget v1, Lcom/google/appinventor/components/runtime/Form;->DEFAULT_PRIMARY_COLOR_DARK:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->PrimaryColorDark(I)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->BackgroundColor(I)V

    .line 478
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 479
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->CloseScreenAnimationAbstract(Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 480
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope(Lcom/google/appinventor/components/common/FileScope;)V

    .line 481
    return-void
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/Object;

    .line 2699
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnStopListener;

    if-eqz v0, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2702
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    if-eqz v0, :cond_1

    .line 2703
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2705
    :cond_1
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    if-eqz v0, :cond_2

    .line 2706
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2708
    :cond_2
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    if-eqz v0, :cond_3

    .line 2709
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2711
    :cond_3
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    if-eqz v0, :cond_4

    .line 2712
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2714
    :cond_4
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    if-eqz v0, :cond_5

    .line 2715
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2717
    :cond_5
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    if-eqz v0, :cond_6

    .line 2718
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2720
    :cond_6
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    if-eqz v0, :cond_7

    .line 2721
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2723
    :cond_7
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    if-eqz v0, :cond_8

    .line 2724
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2726
    :cond_8
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Deleteable;

    if-eqz v0, :cond_9

    .line 2727
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/Deleteable;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/Deleteable;->onDelete()V

    .line 2729
    :cond_9
    return-void
.end method

.method public deviceDensity()F
    .locals 1

    .line 2388
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    return v0
.end method

.method public varargs dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .line 1029
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$5;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$5;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1035
    return-void
.end method

.method public varargs dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "errorNumber"    # I
    .param p4, "messageArgs"    # [Ljava/lang/Object;

    .line 1044
    new-instance v6, Lcom/google/appinventor/components/runtime/Form$6;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Form$6;-><init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1056
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 904
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "notAlreadyHandled"    # Z
    .param p4, "args"    # [Ljava/lang/Object;

    .line 910
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "exception"    # Lcom/google/appinventor/components/runtime/errors/PermissionException;

    .line 1005
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->printStackTrace()V

    .line 1006
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void
.end method

.method public dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "functionName"    # Ljava/lang/String;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 1019
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$4;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1025
    return-void
.end method

.method public doesAppDeclarePermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 3008
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dontGrabTouchEventsForComponent()V
    .locals 2

    .line 2738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2739
    return-void
.end method

.method public declared-synchronized fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # I
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p3, "data"    # Ljava/lang/Object;

    monitor-enter p0

    .line 2808
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2808
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "action":I
    .end local p2    # "source":Lcom/google/appinventor/components/runtime/VideoPlayer;
    .end local p3    # "data":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "asset"    # Ljava/lang/String;

    .line 3018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3063
    .local v0, "extPkgName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cache"    # Ljava/lang/String;

    .line 3022
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 2382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 3026
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->defaultFileScope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 0

    .line 2358
    return-object p0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 2695
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPrivatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 3037
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    .line 2856
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->usesDarkTheme:Z

    return v0
.end method

.method public isDeniedPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 2868
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 2869
    return v2

    .line 2870
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionRegistry:Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->needsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2871
    return v2

    .line 2873
    :cond_1
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method protected maybeShowTitleBar()V
    .locals 1

    .line 2848
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Form;->showTitle:Z

    if-eqz v0, :cond_0

    .line 2849
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->maybeShowTitleBar()V

    goto :goto_0

    .line 2851
    :cond_0
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->hideTitleBar()V

    .line 2853
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onActivityResult, requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 613
    if-eqz p3, :cond_0

    const-string v0, "APP_INVENTOR_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "resultString":Ljava/lang/String;
    goto :goto_0

    .line 616
    .end local v0    # "resultString":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .line 618
    .restart local v0    # "resultString":Ljava/lang/String;
    :goto_0
    const-string v1, "other screen closed"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->decodeJSONStringForForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 620
    .local v1, "decodedResult":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    .end local v0    # "resultString":Ljava/lang/String;
    .end local v1    # "decodedResult":Ljava/lang/Object;
    goto :goto_2

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 624
    .local v0, "component":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    if-eqz v0, :cond_2

    .line 625
    invoke-interface {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 628
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 629
    .local v1, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    if-eqz v1, :cond_3

    .line 630
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/appinventor/components/runtime/ActivityResultListener;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 631
    .local v5, "listener":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    invoke-interface {v5, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 630
    .end local v5    # "listener":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 635
    .end local v0    # "component":Lcom/google/appinventor/components/runtime/ActivityResultListener;
    .end local v1    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    :cond_3
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->BackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->closeAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 589
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onBackPressed()V

    .line 591
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 485
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 486
    const-string v0, "Form"

    const-string v1, "onConfigurationChanged() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 488
    .local v0, "newOrientation":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/Form$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Form$2;-><init>(Lcom/google/appinventor/components/runtime/Form;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 333
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 337
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Form$1;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 354
    .local v1, "lastDot":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    .line 355
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Form "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Form"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 358
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeForm is now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    .line 361
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->deviceDensity:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceDensity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->computeCompatibleScaling(Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    .line 363
    iget v2, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compatScalingFactor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v2, Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 365
    new-instance v2, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v2, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 367
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 368
    sget-boolean v5, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    const-string v6, " formName = "

    const/4 v7, 0x1

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string v8, "Screen1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    sget-boolean v5, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MULTI: _initialized = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sput-boolean v7, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 375
    sget-boolean v5, Lcom/google/appinventor/components/runtime/ReplApplication;->installed:Z

    if-eqz v5, :cond_0

    .line 376
    const-string v2, "MultiDex already installed."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    goto :goto_0

    .line 379
    :cond_0
    const-string v3, "Please Wait..."

    const-string v5, "Installation Finishing"

    invoke-static {p0, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    .line 380
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 381
    new-instance v3, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;-><init>(Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller-IA;)V

    new-array v2, v7, [Lcom/google/appinventor/components/runtime/Form;

    aput-object p0, v2, v4

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 384
    :cond_1
    sget-boolean v2, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NO MULTI: _initialized = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sput-boolean v7, Lcom/google/appinventor/components/runtime/Form;->_initialized:Z

    .line 386
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 388
    :goto_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .line 846
    packed-switch p1, :pswitch_data_0

    .line 850
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 848
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->createFullScreenVideoDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method onCreateFinish()V
    .locals 5

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateFinish called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->populatePermissions()V

    .line 414
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->defaultPropertyValues()V

    .line 417
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 418
    .local v0, "startIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    const-string v1, "APP_INVENTOR_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->startupValue:Ljava/lang/String;

    .line 422
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;-><init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    .line 426
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 427
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 428
    .local v2, "softInputMode":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v3

    or-int/lit8 v4, v2, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 432
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$define()V

    .line 439
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Initialize()V

    .line 440
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 2586
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2589
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addExitButtonToMenu(Landroid/view/Menu;)V

    .line 2590
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->addAboutInfoToMenu(Landroid/view/Menu;)V

    .line 2591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 2592
    .local v1, "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 2593
    .end local v1    # "onCreateOptionsMenuListener":Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;
    goto :goto_0

    .line 2594
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    .line 825
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 826
    .local v1, "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnDestroyListener;->onDestroy()V

    .line 827
    .end local v1    # "onDestroyListener":Lcom/google/appinventor/components/runtime/OnDestroyListener;
    goto :goto_0

    .line 830
    :cond_0
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onDestroy()V

    .line 831
    return-void
.end method

.method public onGlobalLayout()V
    .locals 10

    .line 553
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 554
    .local v0, "totalHeight":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v1

    .line 555
    .local v1, "scaledHeight":I
    sub-int v2, v0, v1

    .line 559
    .local v2, "heightDiff":I
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 560
    .local v3, "diffPercent":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGlobalLayout(): diffPercent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Form"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    float-to-double v6, v3

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v6, v8

    if-gez v4, :cond_0

    .line 563
    const-string v4, "keyboard hidden!"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    if-eqz v4, :cond_1

    .line 565
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 566
    sget-boolean v4, Lcom/google/appinventor/components/runtime/Form;->sCompatibilityMode:Z

    if-eqz v4, :cond_1

    .line 567
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Form;->compatScalingFactor:F

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 568
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    goto :goto_0

    .line 572
    :cond_0
    const-string v4, "keyboard shown!"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Form;->keyboardShown:Z

    .line 574
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    if-eqz v4, :cond_1

    .line 575
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setScale(F)V

    .line 576
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form;->scaleLayout:Lcom/google/appinventor/components/runtime/ScaledFrameLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate()V

    .line 579
    :cond_1
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 776
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 777
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 779
    .local v1, "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnNewIntentListener;->onNewIntent(Landroid/content/Intent;)V

    .line 780
    .end local v1    # "onNewIntentListener":Lcom/google/appinventor/components/runtime/OnNewIntentListener;
    goto :goto_0

    .line 781
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 2623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 2624
    .local v1, "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2625
    const/4 v0, 0x1

    return v0

    .line 2627
    .end local v1    # "onOptionsItemSelectedListener":Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;
    :cond_0
    goto :goto_0

    .line 2628
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .line 789
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPause()V

    .line 790
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 792
    .local v1, "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnPauseListener;->onPause()V

    .line 793
    .end local v1    # "onPauseListener":Lcom/google/appinventor/components/runtime/OnPauseListener;
    goto :goto_0

    .line 794
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 855
    packed-switch p1, :pswitch_data_0

    .line 860
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0

    .line 857
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoUtil:Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->prepareFullScreenVideoDialog(Landroid/app/Dialog;)V

    .line 858
    nop

    .line 862
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xbd
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 2980
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 2981
    .local v0, "responder":Lcom/google/appinventor/components/runtime/PermissionResultHandler;
    const-string v1, "Form"

    if-nez v0, :cond_0

    .line 2983
    const-string v2, "Received permission response which we cannot match."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    return-void

    .line 2986
    :cond_0
    array-length v2, p3

    if-lez v2, :cond_2

    .line 2987
    const/4 v1, 0x0

    aget v2, p3, v1

    if-nez v2, :cond_1

    .line 2988
    aget-object v1, p2, v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2990
    :cond_1
    aget-object v2, p2, v1

    invoke-interface {v0, v2, v1}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2993
    :cond_2
    array-length v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestPermissionsResult: grantResults.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->permissionHandlers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2997
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 740
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onResume()V

    .line 741
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sput-object p0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    .line 746
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Form;->applicationIsBeingClosed:Z

    if-eqz v0, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;->closeApplication()V

    .line 748
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 752
    .local v1, "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnResumeListener;->onResume()V

    .line 753
    .end local v1    # "onResumeListener":Lcom/google/appinventor/components/runtime/OnResumeListener;
    goto :goto_0

    .line 754
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 802
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onStop()V

    .line 803
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Form "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " got onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 805
    .local v1, "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/OnStopListener;->onStop()V

    .line 806
    .end local v1    # "onStopListener":Lcom/google/appinventor/components/runtime/OnStopListener;
    goto :goto_0

    .line 807
    :cond_0
    return-void
.end method

.method public openAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3049
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openAssetForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "asset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3078
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method openAssetInternal(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3084
    const-string v0, "file:///android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3085
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 3086
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 3087
    .end local v1    # "am":Landroid/content/res/AssetManager;
    :cond_0
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3088
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/net/URI;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0

    .line 3090
    :cond_1
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 655
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->generateNewRequestCode()I

    move-result v0

    .line 656
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    return v0
.end method

.method public registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;
    .param p2, "requestCode"    # I

    .line 668
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 669
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    if-nez v0, :cond_0

    .line 670
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    return-void
.end method

.method public registerForOnClear(Lcom/google/appinventor/components/runtime/OnClearListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnClearListener;

    .line 814
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onClearListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    return-void
.end method

.method public registerForOnCreateOptionsMenu(Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnCreateOptionsMenuListener;

    .line 838
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenuListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 839
    return-void
.end method

.method public registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnDestroyListener;

    .line 834
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onDestroyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 835
    return-void
.end method

.method public registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 771
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onInitializeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    return-void
.end method

.method public registerForOnNewIntent(Lcom/google/appinventor/components/runtime/OnNewIntentListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnNewIntentListener;

    .line 784
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onNewIntentListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 785
    return-void
.end method

.method public registerForOnOptionsItemSelected(Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnOptionsItemSelectedListener;

    .line 842
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOptionsItemSelectedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 843
    return-void
.end method

.method public registerForOnOrientationChange(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;

    .line 761
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onOrientationChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    return-void
.end method

.method public registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnPauseListener;

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onPauseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 798
    return-void
.end method

.method public registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnResumeListener;

    .line 757
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method public registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/OnStopListener;

    .line 810
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 811
    return-void
.end method

.method public registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "length"    # I
    .param p3, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .line 724
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;-><init>(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 725
    .local v0, "r":Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
    invoke-direct {p0, p1, p3}, Lcom/google/appinventor/components/runtime/Form;->generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object v1

    .line 726
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    return-void
.end method

.method public runtimeFormErrorOccurredEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errorNumber"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "functionName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FORM_RUNTIME_ERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorNumber is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    sget-object v0, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1069
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 2422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 2423
    .local v0, "cHeight":I
    if-nez v0, :cond_0

    .line 2424
    move v1, p2

    .line 2425
    .local v1, "fHeight":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$10;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$10;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2433
    .end local v1    # "fHeight":I
    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    .line 2434
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v1

    add-int/lit16 v2, p2, 0x3e8

    neg-int v2, v2

    mul-int v1, v1, v2

    div-int/lit8 p2, v1, 0x64

    .line 2437
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 2440
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 2441
    return-void
.end method

.method public setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 2446
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 2397
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 2398
    .local v0, "cWidth":I
    if-nez v0, :cond_0

    .line 2399
    move v1, p2

    .line 2400
    .local v1, "fWidth":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/Form$9;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form$9;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2408
    .end local v1    # "fWidth":I
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Form.setChildWidth(): width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2409
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    .line 2410
    add-int/lit16 v1, p2, 0x3e8

    neg-int v1, v1

    mul-int v1, v1, v0

    div-int/lit8 p2, v1, 0x64

    .line 2414
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 2417
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 2418
    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;

    .line 3097
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->componentName:Ljava/lang/String;

    .line 3098
    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "nextFormName"    # Ljava/lang/String;
    .param p2, "startupValue"    # Ljava/lang/Object;

    .line 2297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNewForm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2301
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2302
    if-nez p2, :cond_0

    const-string v2, "open another screen"

    goto :goto_0

    .line 2303
    :cond_0
    const-string v2, "open another screen with start value"

    :goto_0
    nop

    .line 2305
    .local v2, "functionName":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartNewForm about to JSON encode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/Form;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2308
    .local v3, "jValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartNewForm got JSON encoding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2310
    .end local v3    # "jValue":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 2312
    .restart local v3    # "jValue":Ljava/lang/String;
    :goto_1
    const-string v4, "APP_INVENTOR_START"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2315
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form;->nextFormName:Ljava/lang/String;

    .line 2316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "about to start new form"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startNewForm starting activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2320
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->openAnimType:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    goto :goto_2

    .line 2321
    :catch_0
    move-exception v1

    .line 2322
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/16 v5, 0x386

    invoke-virtual {p0, p0, v2, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2325
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    return-void
.end method

.method protected toastAllowed()Z
    .locals 6

    .line 2745
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2746
    .local v0, "now":J
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    sget-wide v4, Lcom/google/appinventor/components/runtime/Form;->minimumToastWait:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2747
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Form;->lastToastTime:J

    .line 2748
    const/4 v2, 0x1

    return v2

    .line 2750
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/ActivityResultListener;

    .line 677
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 678
    .local v0, "keysToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 679
    .local v2, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 680
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v2    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/appinventor/components/runtime/ActivityResultListener;>;"
    :cond_0
    goto :goto_0

    .line 683
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 684
    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .end local v2    # "key":Ljava/lang/Integer;
    goto :goto_1

    .line 688
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->activityResultMultiMap:Ljava/util/Map;

    .line 689
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 690
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 692
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 693
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 694
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 696
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Set<Lcom/google/appinventor/components/runtime/ActivityResultListener;>;>;"
    :cond_3
    goto :goto_2

    .line 697
    :cond_4
    return-void
.end method

.method public unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "dim"    # Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .line 731
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->dimChanges:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Form;->generateHashCode(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    return-void
.end method

.method protected updateTitle()V
    .locals 2

    .line 2843
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->setTitle(Ljava/lang/String;)V

    .line 2844
    return-void
.end method
