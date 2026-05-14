.class public Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;
.super Ljava/lang/Object;
.source "HoneycombThemeHelper.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;


# instance fields
.field private final activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .line 23
    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestActionBar()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 30
    :cond_0
    return-void
.end method

.method public setActionBarAnimation(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 64
    return-void
.end method

.method public setActionBarVisible(Z)Z
    .locals 7
    .param p1, "visible"    # Z

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 35
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 36
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    check-cast v1, Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    check-cast v3, Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x38b

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "ActionBar"

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 39
    :cond_0
    return v2

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 45
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 56
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "black"    # Z

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 70
    if-eqz p2, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\"black\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/HoneycombThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    .line 78
    :cond_1
    :goto_0
    return-void
.end method
