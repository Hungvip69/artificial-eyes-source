.class Lcom/google/appinventor/components/runtime/BarcodeScanner$1;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BarcodeScanner;

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 116
    if-eqz p2, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/BarcodeScanner;Z)V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    const-string v2, "DoScan"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void
.end method
