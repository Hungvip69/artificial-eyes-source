.class Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$2;
.super Ljava/lang/Object;
.source "MultiThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MultiThreadUtil;->runAfterPeriod(JLcom/google/appinventor/components/runtime/util/YailProcedure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$procedure:Lcom/google/appinventor/components/runtime/util/YailProcedure;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/YailProcedure;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$2;->val$procedure:Lcom/google/appinventor/components/runtime/util/YailProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$2;->val$procedure:Lcom/google/appinventor/components/runtime/util/YailProcedure;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailProcedure;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
