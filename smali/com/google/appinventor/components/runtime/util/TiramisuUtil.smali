.class public Lcom/google/appinventor/components/runtime/util/TiramisuUtil;
.super Ljava/lang/Object;
.source "TiramisuUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAudioPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 49
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v0

    return v0
.end method

.method public static requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mediaPermission"    # Ljava/lang/String;
    .param p3, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "perm":Ljava/lang/String;
    const-string v1, "content:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 32
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsReadPermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_2

    .line 34
    move-object v0, p2

    goto :goto_0

    .line 37
    :cond_2
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 40
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    invoke-virtual {p0, v0, p3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 42
    const/4 v1, 0x1

    return v1

    .line 44
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public static requestImagePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 54
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v0

    return v0
.end method

.method public static requestVideoPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 59
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestFilePermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v0

    return v0
.end method
