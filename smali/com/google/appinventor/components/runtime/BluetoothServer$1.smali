.class Lcom/google/appinventor/components/runtime/BluetoothServer$1;
.super Ljava/lang/Object;
.source "BluetoothServer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$uuidString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BluetoothServer;

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$uuidString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$functionName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$1;->val$uuidString:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->-$$Nest$maccept(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
