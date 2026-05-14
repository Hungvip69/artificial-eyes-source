.class public Lcom/google/appinventor/components/runtime/FilePicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "FilePicker.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x13
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    iconName = "images/filepicker.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private action:Lcom/google/appinventor/components/common/FileAction;

.field private mimeType:Ljava/lang/String;

.field private selection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 45
    sget-object v0, Lcom/google/appinventor/components/common/FileAction;->PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FilePicker;->action:Lcom/google/appinventor/components/common/FileAction;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FilePicker;->selection:Ljava/lang/String;

    .line 47
    const-string v0, "*/*"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FilePicker;->mimeType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private static actionToIntent(Lcom/google/appinventor/components/common/FileAction;)Ljava/lang/String;
    .locals 3
    .param p0, "action"    # Lcom/google/appinventor/components/common/FileAction;

    .line 146
    sget-object v0, Lcom/google/appinventor/components/runtime/FilePicker$1;->$SwitchMap$com$google$appinventor$components$common$FileAction:[I

    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown file action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_0
    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    return-object v0

    .line 150
    :pswitch_1
    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    return-object v0

    .line 148
    :pswitch_2
    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Action()Lcom/google/appinventor/components/common/FileAction;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FilePicker;->action:Lcom/google/appinventor/components/common/FileAction;

    return-object v0
.end method

.method public Action(Lcom/google/appinventor/components/common/FileAction;)V
    .locals 0
    .param p1, "action"    # Lcom/google/appinventor/components/common/FileAction;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Pick Existing File"
        editorArgs = {
            "Pick Existing File",
            "Pick New File",
            "Pick Directory"
        }
        editorType = "choices"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FilePicker;->action:Lcom/google/appinventor/components/common/FileAction;

    .line 68
    return-void
.end method

.method public Action(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/google/appinventor/components/common/FileAction;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FilePicker;->Action(Lcom/google/appinventor/components/common/FileAction;)V

    .line 74
    return-void
.end method

.method public MimeType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FilePicker;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public MimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/FileType;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "*/*"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FilePicker;->mimeType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FilePicker;->selection:Ljava/lang/String;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 4

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FilePicker;->action:Lcom/google/appinventor/components/common/FileAction;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FilePicker;->actionToIntent(Lcom/google/appinventor/components/common/FileAction;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FilePicker;->action:Lcom/google/appinventor/components/common/FileAction;

    sget-object v2, Lcom/google/appinventor/components/common/FileAction;->PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

    if-ne v1, v2, :cond_0

    .line 129
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FilePicker;->action:Lcom/google/appinventor/components/common/FileAction;

    sget-object v2, Lcom/google/appinventor/components/common/FileAction;->PickDirectory:Lcom/google/appinventor/components/common/FileAction;

    if-ne v1, v2, :cond_1

    .line 132
    const-string v1, "Test"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FilePicker;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/16 v1, 0x41

    .line 137
    .local v1, "flags":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FilePicker;->action:Lcom/google/appinventor/components/common/FileAction;

    sget-object v3, Lcom/google/appinventor/components/common/FileAction;->PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

    if-ne v2, v3, :cond_2

    .line 138
    or-int/lit8 v1, v1, 0x2

    .line 140
    :cond_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    .end local v1    # "flags":I
    :goto_0
    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 110
    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 116
    .local v1, "takeFlags":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FilePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 117
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/FilePicker;->selection:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FilePicker;->AfterPicking()V

    .line 119
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "takeFlags":I
    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FilePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Open"

    const/16 v3, 0x1195

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-void
.end method
