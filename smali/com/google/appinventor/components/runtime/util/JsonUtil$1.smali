.class Lcom/google/appinventor/components/runtime/util/JsonUtil$1;
.super Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/JsonUtil;->writeFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$input:Ljava/lang/String;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .locals 0
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "append"    # Z
    .param p7, "async"    # Z

    .line 564
    iput-object p8, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->val$input:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct/range {p0 .. p7}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

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

    .line 564
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->process(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected process(Ljava/io/OutputStream;)Z
    .locals 3
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->val$input:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 569
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    return v0

    .line 571
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    .line 573
    return v0
.end method
