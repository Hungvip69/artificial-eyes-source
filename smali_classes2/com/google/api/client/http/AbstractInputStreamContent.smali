.class public abstract Lcom/google/api/client/http/AbstractInputStreamContent;
.super Ljava/lang/Object;
.source "AbstractInputStreamContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private closeInputStream:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 54
    return-void
.end method


# virtual methods
.method public final getCloseInputStream()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    return v0
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0
    .param p1, "closeInputStream"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    .line 103
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->closeInputStream:Z

    invoke-static {v0, p1, v1}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 68
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 69
    return-void
.end method
