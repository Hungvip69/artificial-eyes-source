.class public final Lcom/google/api/client/util/BackOffUtils;
.super Ljava/lang/Object;
.source "BackOffUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static next(Lcom/google/api/client/util/Sleeper;Lcom/google/api/client/util/BackOff;)Z
    .locals 5
    .param p0, "sleeper"    # Lcom/google/api/client/util/Sleeper;
    .param p1, "backOff"    # Lcom/google/api/client/util/BackOff;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Lcom/google/api/client/util/BackOff;->nextBackOffMillis()J

    move-result-wide v0

    .line 45
    .local v0, "backOffTime":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 46
    const/4 v2, 0x0

    return v2

    .line 48
    :cond_0
    invoke-interface {p0, v0, v1}, Lcom/google/api/client/util/Sleeper;->sleep(J)V

    .line 49
    const/4 v2, 0x1

    return v2
.end method
