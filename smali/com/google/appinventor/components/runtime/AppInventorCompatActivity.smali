.class public Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.super Landroid/app/Activity;
.source "AppInventorCompatActivity.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
    }
.end annotation


# static fields
.field static final DEFAULT_PRIMARY_COLOR:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static actionBarEnabled:Z

.field private static classicMode:Z

.field private static currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field private static didSetClassicModeFromYail:Z

.field private static primaryColor:I


# instance fields
.field private appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field frameWithTitle:Landroid/widget/LinearLayout;

.field protected themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

.field titleBar:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-class v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    .line 57
    nop

    .line 58
    const-string v0, "&HFF3F51B5"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->DEFAULT_PRIMARY_COLOR:I

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 61
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    sput-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 66
    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->didSetClassicModeFromYail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applyTheme()V
    .locals 4

    .line 355
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyTheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setClassicMode(Z)V

    .line 357
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$1;->$SwitchMap$com$google$appinventor$components$runtime$AppInventorCompatActivity$Theme:[I

    sget-object v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x23

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    const v1, 0x1030129

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setTheme(I)V

    .line 376
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    goto :goto_0

    .line 369
    :pswitch_1
    const v0, 0x103012c

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setTheme(I)V

    .line 370
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    goto :goto_0

    .line 359
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setClassicMode(Z)V

    .line 360
    const v1, 0x1030005

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setTheme(I)V

    .line 361
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 381
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getPrimaryColor()I
    .locals 1

    .line 272
    sget v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    return v0
.end method

.method protected static isActionBarEnabled()Z
    .locals 1

    .line 251
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    return v0
.end method

.method public static isClassicMode()Z
    .locals 1

    .line 261
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    return v0
.end method

.method public static isEmulator()Z
    .locals 2

    .line 244
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 245
    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 246
    const-string v1, "sdk_gphone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 244
    :goto_1
    return v0
.end method

.method public static setClassicModeFromYail(Z)V
    .locals 3
    .param p0, "newClassicMode"    # Z

    .line 394
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->didSetClassicModeFromYail:Z

    if-nez v0, :cond_0

    .line 395
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting classic mode from YAIL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sput-boolean p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 397
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->didSetClassicModeFromYail:Z

    .line 399
    :cond_0
    return-void
.end method

.method private shouldCreateTitleBar()Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isAppCompatMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isActionBarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    return v1

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    if-eqz v0, :cond_3

    .line 387
    :cond_2
    return v1

    .line 389
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 233
    .local v0, "classicCallback":Landroid/view/Window$Callback;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v2, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v1

    .line 234
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/IllegalStateException;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 237
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 238
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 239
    return-object v1
.end method

.method protected hideTitleBar()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :cond_1
    :goto_0
    return-void
.end method

.method public final isAppCompatMode()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRepl()Z
    .locals 1

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onCreate$0$com-google-appinventor-components-runtime-AppInventorCompatActivity(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "windowInsets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 100
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 101
    .local v0, "insets":Landroidx/core/graphics/Insets;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 102
    .local v1, "ime":Landroidx/core/graphics/Insets;
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    iget v5, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v6, v1, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    instance-of v2, p0, Lcom/google/appinventor/components/runtime/Form;

    if-eqz v2, :cond_0

    .line 105
    move-object v2, p0

    check-cast v2, Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->ReplayFormOrientation()V

    .line 110
    :cond_0
    sget-object v2, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object v2
.end method

.method protected maybeShowTitleBar()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "titleBar visible"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    if-eq v0, v2, :cond_0

    .line 317
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Setting parent visible"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 72
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 73
    sget-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Lcom/google/appinventor/components/runtime/util/theme/ClassicThemeHelper;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/theme/ClassicThemeHelper;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    goto :goto_2

    .line 75
    :cond_2
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v3, 0xe

    if-ge v0, v3, :cond_3

    .line 77
    new-instance v0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;-><init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->requestActionBar()V

    .line 79
    sput-boolean v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    goto :goto_2

    .line 84
    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;-><init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    .line 85
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    sget-object v3, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    if-eq v0, v3, :cond_4

    .line 86
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->applyTheme()V

    .line 88
    :cond_4
    invoke-static {p0, p0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 92
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v0, v2, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->setContentView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->themeHelper:Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;->hasActionBar()Z

    move-result v0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    .line 117
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    .line 118
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->shouldCreateTitleBar()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 119
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const v2, 0x1080095

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const v2, 0x1030053

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x45000000    # -0.001953125f

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 125
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-ge v0, v1, :cond_8

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 137
    :cond_7
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already have a title bar (classic mode): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_8
    :goto_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 184
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    .line 160
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    .line 176
    :cond_0
    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "actionMode"    # Landroidx/appcompat/view/ActionMode;

    .line 204
    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .locals 0
    .param p1, "actionMode"    # Landroidx/appcompat/view/ActionMode;

    .line 199
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 188
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroidx/appcompat/view/ActionMode$Callback;

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setActionBarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 256
    sput-boolean p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    .line 257
    return-void
.end method

.method protected setAppInventorTheme(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;)V
    .locals 1
    .param p1, "theme"    # Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 344
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    if-ne p1, v0, :cond_1

    .line 348
    return-void

    .line 350
    :cond_1
    sput-object p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->currentTheme:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 351
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->applyTheme()V

    .line 352
    return-void
.end method

.method protected setClassicMode(Z)V
    .locals 2
    .param p1, "classic"    # Z

    .line 266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 267
    sput-boolean p1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    .line 269
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->frameWithTitle:Landroid/widget/LinearLayout;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 227
    :goto_0
    return-void
.end method

.method protected setPrimaryColor(I)V
    .locals 4
    .param p1, "color"    # I

    .line 277
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 278
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-nez p1, :cond_0

    sget v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->DEFAULT_PRIMARY_COLOR:I

    goto :goto_0

    :cond_0
    move v1, p1

    .line 279
    .local v1, "newColor":I
    :goto_0
    if-eqz v0, :cond_1

    sget v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    if-eq v1, v2, :cond_1

    .line 281
    sput v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    .line 282
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->primaryColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 288
    :cond_1
    return-void
.end method

.method protected styleTitleBar()V
    .locals 5

    .line 325
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 326
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    sget-boolean v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionBarEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    sget-boolean v2, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->classicMode:Z

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!classicMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionBar = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v0, :cond_1

    .line 330
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getPrimaryColor()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    sget-boolean v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->actionBarEnabled:Z

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    .line 333
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->hideTitleBar()V

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->maybeShowTitleBar()V

    .line 340
    return-void
.end method
