.class public Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;
.super Ljava/lang/RuntimeException;
.source "MultiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MultiThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiThreadException"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method
