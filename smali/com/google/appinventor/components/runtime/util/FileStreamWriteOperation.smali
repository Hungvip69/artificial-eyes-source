.class public abstract Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "FileStreamWriteOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V
    .locals 0
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "append"    # Z
    .param p7, "async"    # Z

    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    .line 42
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
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->process(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected final process(Ljava/io/OutputStream;)Z
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x1

    .line 47
    .local v0, "close":Z
    const/4 v1, 0x0

    .line 49
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->process(Ljava/io/OutputStreamWriter;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 52
    if-eqz v0, :cond_0

    .line 53
    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 56
    :cond_0
    return v0

    .line 52
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 53
    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 55
    :cond_1
    throw v2
.end method

.method protected abstract process(Ljava/io/OutputStreamWriter;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
