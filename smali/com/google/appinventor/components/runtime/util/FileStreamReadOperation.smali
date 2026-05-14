.class public abstract Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;
.super Lcom/google/appinventor/components/runtime/util/FileReadOperation;
.source "FileStreamReadOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V
    .locals 0
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "async"    # Z

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/google/appinventor/components/runtime/util/FileReadOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Z)V

    .line 39
    return-void
.end method


# virtual methods
.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->process(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method protected process(Ljava/io/InputStream;)Z
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x1

    .line 44
    .local v0, "close":Z
    const/4 v1, 0x0

    .line 46
    .local v1, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->process(Ljava/io/InputStreamReader;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 49
    if-eqz v0, :cond_0

    .line 50
    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 53
    :cond_0
    return v0

    .line 49
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 50
    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 52
    :cond_1
    throw v2
.end method

.method protected process(Ljava/io/InputStreamReader;)Z
    .locals 1
    .param p1, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readReader(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/FileStreamReadOperation;->process(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract process(Ljava/lang/String;)Z
.end method
