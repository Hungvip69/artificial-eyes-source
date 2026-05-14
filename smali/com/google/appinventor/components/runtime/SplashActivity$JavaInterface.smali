.class public Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;
.super Ljava/lang/Object;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/SplashActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/SplashActivity;
    .param p2, "context"    # Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method public askPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/SplashActivity;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public finished()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/SplashActivity;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface$1;-><init>(Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 75
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 76
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Unknown"

    return-object v1
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 54
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 55
    return v2

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    return v2

    .line 60
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
