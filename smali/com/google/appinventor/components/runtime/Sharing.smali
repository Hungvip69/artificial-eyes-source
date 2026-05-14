.class public Lcom/google/appinventor/components/runtime/Sharing;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Sharing.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Sharing is a non-visible component that enables sharing files and/or messages between your app and other apps installed on a device. The component will display a list of the installed apps that can handle the information provided, and will allow the user to choose one to share the content with, for instance a mail app, a social network app, a texting app, and so on.<br>The file path can be taken directly from other components such as the Camera or the ImagePicker, but can also be specified directly to read from storage. The default behaviour is to share files from the private data directory associated with your app. If the file path starts with a slash (/), the the file relative to / is shared.<br>Be aware that different devices treat storage differently, so a few things to try if, for instance, you have a file called arrow.gif in the folder <code>Appinventor/assets</code>, would be: <ul><li><code>\"file:///sdcard/Appinventor/assets/arrow.gif\"</code></li> or <li><code>\"/storage/Appinventor/assets/arrow.gif\"</code></li></ul>"
    iconName = "images/sharing.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 72
    return-void
.end method


# virtual methods
.method public ShareFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a file through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the file inserted on it."
    .end annotation

    .line 100
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sharing;->ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public ShareFileWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares both a file and a message through any capable application installed on the phone by displaying a list of available apps and allowing the user to  choose one from the list. The selected app will open with the file and message inserted on it."
    .end annotation

    .line 111
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->getDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "imageFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 124
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "fileExtension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 126
    .local v4, "mime":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v4, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "type":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 129
    const-string v5, "application/octet-stream"

    .line 132
    :cond_2
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 133
    .local v6, "shareableUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v7, "shareIntent":Landroid/content/Intent;
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 138
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v7, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, v7}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 143
    .end local v2    # "fileExtension":Ljava/lang/String;
    .end local v4    # "mime":Landroid/webkit/MimeTypeMap;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "shareableUri":Landroid/net/Uri;
    .end local v7    # "shareIntent":Landroid/content/Intent;
    goto :goto_1

    .line 145
    :cond_4
    const-string v2, "ShareFile"

    .line 146
    .local v2, "eventName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    const-string v2, "ShareFileWithMessage"

    .line 148
    :cond_5
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/16 v5, 0x7d1

    invoke-virtual {v4, p0, v2, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 151
    .end local v2    # "eventName":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public ShareMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shares a message through any capable application installed on the phone by displaying a list of the available apps and allowing the user to choose one from the list. The selected app will open with the message inserted on it."
    .end annotation

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sharing;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
