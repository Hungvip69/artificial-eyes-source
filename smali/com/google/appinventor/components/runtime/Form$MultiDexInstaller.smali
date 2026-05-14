.class Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;
.super Landroid/os/AsyncTask;
.source "Form.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiDexInstaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/google/appinventor/components/runtime/Form;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field ourForm:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "form"    # [Lcom/google/appinventor/components/runtime/Form;

    .line 319
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    .line 320
    const-string v0, "Form"

    const-string v1, "Doing Full MultiDex Install"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->install(Landroid/content/Context;Z)Z

    .line 322
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 314
    check-cast p1, [Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->doInBackground([Lcom/google/appinventor/components/runtime/Form;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Boolean;

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->ourForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->onCreateFinish()V

    .line 327
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form$MultiDexInstaller;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
