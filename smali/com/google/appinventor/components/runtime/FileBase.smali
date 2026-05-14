.class public abstract Lcom/google/appinventor/components/runtime/FileBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "FileBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "FileComponent"


# instance fields
.field protected scope:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 48
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 40
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FileBase;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 49
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FileBase;->DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V

    .line 50
    return-void
.end method


# virtual methods
.method public DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FileBase;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 64
    return-void
.end method

.method public LegacyMode(Z)V
    .locals 1
    .param p1, "legacy"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FileBase;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 70
    return-void
.end method

.method public LegacyMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows app to access files from the root of the external storage directory (legacy mode)."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FileBase;->scope:Lcom/google/appinventor/components/common/FileScope;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract afterRead(Ljava/lang/String;)V
.end method

.method protected readFromFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .line 103
    :try_start_0
    new-instance v8, Lcom/google/appinventor/components/runtime/FileBase$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FileBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "ReadFrom"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FileBase;->scope:Lcom/google/appinventor/components/common/FileScope;

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/FileBase$1;-><init>(Lcom/google/appinventor/components/runtime/FileBase;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V

    .line 123
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/FileBase$1;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 127
    :goto_0
    return-void
.end method
