.class public Lcom/google/api/client/extensions/android2/AndroidHttp;
.super Ljava/lang/Object;
.source "AndroidHttp.java"


# static fields
.field private static final GINGERBREAD:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGingerbreadOrHigher()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public static newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 53
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->isGingerbreadOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    :goto_0
    return-object v0
.end method
