.class public Lcom/google/appinventor/components/runtime/util/RUtil;
.super Ljava/lang/Object;
.source "RUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needsFilePermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Z
    .locals 4
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileScope"    # Lcom/google/appinventor/components/common/FileScope;

    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 24
    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    return v1

    .line 27
    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "file:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    return v1

    .line 30
    :cond_1
    nop

    .line 37
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isAppSpecificExternalUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 40
    :cond_3
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RUtil$1;->$SwitchMap$com$google$appinventor$components$common$FileScope:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/common/FileScope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x13

    packed-switch v2, :pswitch_data_0

    .line 48
    return v1

    .line 46
    :pswitch_0
    return v0

    .line 44
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 42
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
