.class public abstract Lcom/google/appinventor/components/runtime/Picker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "Picker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field protected requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 29
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 30
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 31
    return-void
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterPicking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public BeforePicking()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeforePicking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchFallibleEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public Open()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opens the %type%, as though the user clicked on it."
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Picker;->click()V

    .line 61
    return-void
.end method

.method public click()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Picker;->BeforePicking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Picker;->requestCode:I

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Picker;->requestCode:I

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Picker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Picker;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->OpenScreenAnimation()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "openAnim":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Picker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected abstract getIntent()Landroid/content/Intent;
.end method
