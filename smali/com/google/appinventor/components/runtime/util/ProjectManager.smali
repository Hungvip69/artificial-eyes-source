.class public Lcom/google/appinventor/components/runtime/util/ProjectManager;
.super Ljava/lang/Object;
.source "ProjectManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static form:Lcom/google/appinventor/components/runtime/Form;

.field private static postamble:Ljava/lang/String;

.field private static preamble:Ljava/lang/String;

.field private static preamble1:Ljava/lang/String;

.field private static previousScreen:Ljava/lang/String;

.field private static projectId:Ljava/lang/String;

.field private static projectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 43
    const-string v0, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input -2 (begin (clear-current-form) "

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->preamble:Ljava/lang/String;

    .line 44
    const-string v0, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input -2 (begin  "

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->preamble1:Ljava/lang/String;

    .line 45
    const-string v0, "(call-Initialize-of-components-library))))"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->postamble:Ljava/lang/String;

    .line 46
    const-class v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->previousScreen:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    .local v0, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 153
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 157
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static deleteProject(Ljava/lang/String;)V
    .locals 2
    .param p0, "projectName"    # Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assets/__projects__"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, "projectsDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v1, "projectFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 146
    return-void
.end method

.method public static evalScreenYail(Ljava/lang/String;)V
    .locals 15
    .param p0, "screenName"    # Ljava/lang/String;

    .line 64
    :try_start_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assets/__projects__"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, "projectsDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/google/appinventor/components/runtime/util/ProjectManager;->projectName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v1, "projectFile":Ljava/io/File;
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 68
    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 70
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "entryName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".yail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 75
    .local v6, "input":Ljava/io/InputStream;
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ProjectManager;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "yail":Ljava/lang/String;
    const-string v8, "(require <com.google.youngandroid.runtime>)"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 79
    .local v8, "index":I
    const-string v9, ";;; "

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 80
    .local v9, "index1":I
    add-int/lit8 v10, v8, 0x2b

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "init_yail":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 82
    const-string v11, "Screen1"

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "(clear-current-form) (set-form-name \""

    if-eqz v11, :cond_0

    .line 83
    :try_start_1
    sget-object v11, Lcom/google/appinventor/components/runtime/util/ProjectManager;->preamble1:Ljava/lang/String;

    sget-object v13, Lcom/google/appinventor/components/runtime/util/ProjectManager;->postamble:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\") (clear-init-thunks) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    goto :goto_1

    .line 85
    :cond_0
    sget-object v11, Lcom/google/appinventor/components/runtime/util/ProjectManager;->preamble1:Ljava/lang/String;

    sget-object v13, Lcom/google/appinventor/components/runtime/util/ProjectManager;->postamble:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\") (rename-component \"Screen1\" \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\")  (clear-init-thunks) "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 87
    :goto_1
    sput-object p0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->previousScreen:Ljava/lang/String;

    .line 88
    sget-object v11, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Yail: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v11, Lcom/google/appinventor/components/runtime/util/ProjectManager;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v11, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v11, v7}, Lcom/google/appinventor/components/runtime/ReplForm;->evalScheme(Ljava/lang/String;)V

    .line 90
    sget-object v11, Lcom/google/appinventor/components/runtime/util/ProjectManager;->preamble1:Ljava/lang/String;

    sget-object v12, Lcom/google/appinventor/components/runtime/util/ProjectManager;->postamble:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 91
    sget-object v11, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Init_Yail: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v11, Lcom/google/appinventor/components/runtime/util/ProjectManager;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v11, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v11, v10}, Lcom/google/appinventor/components/runtime/ReplForm;->evalScheme(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryName":Ljava/lang/String;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "yail":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "index1":I
    .end local v10    # "init_yail":Ljava/lang/String;
    :cond_1
    goto/16 :goto_0

    .line 97
    .end local v0    # "projectsDir":Ljava/io/File;
    .end local v1    # "projectFile":Ljava/io/File;
    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_2
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IOException in evalScreenYail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public static getSegmentBySlash(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 161
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "parts":[Ljava/lang/String;
    if-gez p1, :cond_1

    .line 168
    array-length v2, v1

    add-int/2addr p1, v2

    .line 171
    :cond_1
    if-ltz p1, :cond_2

    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 172
    aget-object v0, v1, p1

    return-object v0

    .line 174
    :cond_2
    return-object v0

    .line 162
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static loadAssets()V
    .locals 17

    .line 102
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/appinventor/components/runtime/util/ProjectManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "assets/__projects__"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 104
    .local v1, "projectsDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/ProjectManager;->projectName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v2, "projectFile":Ljava/io/File;
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 106
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    .line 108
    .local v4, "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 109
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 110
    .local v6, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "entryName":Ljava/lang/String;
    const-string v8, "asset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    move-object v8, v7

    .line 113
    .local v8, "assetName":Ljava/lang/String;
    sget-object v9, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAssets: assetName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v9, 0x2800

    new-array v9, v9, [B

    .line 116
    .local v9, "buffer":[B
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v10, "array":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11

    .line 118
    .local v11, "inputStream":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v11, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    move v13, v12

    .local v13, "length":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_0

    .line 119
    const/4 v12, 0x0

    invoke-virtual {v10, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-static {v8, v12}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->UpdateLibraryAsset(Ljava/lang/String;[B)V

    .line 123
    const-string v12, "extension.properties"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 124
    sget-object v12, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found Extension: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v12, -0x2

    invoke-static {v8, v12}, Lcom/google/appinventor/components/runtime/util/ProjectManager;->getSegmentBySlash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, "extensionName":Ljava/lang/String;
    sget-object v14, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "projectsDir":Ljava/io/File;
    .local v16, "projectsDir":Ljava/io/File;
    const-string v1, "Found Extension (truncated): "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v12, :cond_3

    .line 128
    sget-object v1, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adding extension: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    .end local v12    # "extensionName":Ljava/lang/String;
    .end local v16    # "projectsDir":Ljava/io/File;
    .restart local v1    # "projectsDir":Ljava/io/File;
    :cond_1
    move-object/from16 v16, v1

    .end local v1    # "projectsDir":Ljava/io/File;
    .restart local v16    # "projectsDir":Ljava/io/File;
    goto :goto_2

    .line 111
    .end local v8    # "assetName":Ljava/lang/String;
    .end local v9    # "buffer":[B
    .end local v10    # "array":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "length":I
    .end local v16    # "projectsDir":Ljava/io/File;
    .restart local v1    # "projectsDir":Ljava/io/File;
    :cond_2
    move-object/from16 v16, v1

    .line 133
    .end local v1    # "projectsDir":Ljava/io/File;
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "entryName":Ljava/lang/String;
    .restart local v16    # "projectsDir":Ljava/io/File;
    :cond_3
    :goto_2
    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 108
    .end local v16    # "projectsDir":Ljava/io/File;
    .restart local v1    # "projectsDir":Ljava/io/File;
    :cond_4
    move-object/from16 v16, v1

    .line 134
    .end local v1    # "projectsDir":Ljava/io/File;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v16    # "projectsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 135
    move-object v1, v4

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "extensions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "projectFile":Ljava/io/File;
    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v4    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v16    # "projectsDir":Ljava/io/File;
    :cond_5
    goto :goto_3

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/ProjectManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception in loadAssets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static setProjectInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "projectId"    # Ljava/lang/String;
    .param p1, "projectName"    # Ljava/lang/String;

    .line 54
    sput-object p0, Lcom/google/appinventor/components/runtime/util/ProjectManager;->projectId:Ljava/lang/String;

    .line 55
    sput-object p1, Lcom/google/appinventor/components/runtime/util/ProjectManager;->projectName:Ljava/lang/String;

    .line 56
    return-void
.end method
