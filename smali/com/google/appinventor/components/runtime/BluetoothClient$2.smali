.class Lcom/google/appinventor/components/runtime/BluetoothClient$2;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field final synthetic val$finalAddress:Ljava/lang/String;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$uuidString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 350
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->val$functionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->val$finalAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->val$uuidString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->val$functionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->val$finalAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$2;->val$uuidString:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->-$$Nest$mconnect(Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    return-void
.end method
