.class Lcom/google/appinventor/components/runtime/util/MediaUtil$1;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$syncer:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->val$syncer:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->val$syncer:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->error(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->val$syncer:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 436
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil$1;->onSuccess(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
