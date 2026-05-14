.class public final Lcom/google/appinventor/components/runtime/Button;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "Button.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Button with the ability to detect clicks.  Many aspects of its appearance can be changed, as well as whether it is clickable (<code>Enabled</code>), can be changed in the Designer or in the Blocks Editor."
    iconName = "images/button.png"
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 36
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 37
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User tapped and released the button."
    .end annotation

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public LongClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User held the button down."
    .end annotation

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public click()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Button;->Click()V

    .line 44
    return-void
.end method

.method public longClick()Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Button;->LongClick()Z

    move-result v0

    return v0
.end method
