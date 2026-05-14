.class Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;
.super Ljava/lang/Object;
.source "Ev3TouchSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3TouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 60
    const-string v0, ""

    .line 62
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v2, 0x32

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$mgetPressedValue(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "currentPressedValue":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fgetsavedPressedValue(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v4

    if-gez v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fputsavedPressedValue(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)V

    .line 67
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fgetsavedPressedValue(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_1

    .line 72
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fgetreleasedEventEnabled(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-lt v1, v5, :cond_2

    .line 73
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Pressed()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fgetpressedEventEnabled(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v1, v5, :cond_2

    .line 76
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->Released()V

    .line 79
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fputsavedPressedValue(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;I)V

    .line 82
    .end local v1    # "currentPressedValue":I
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3TouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3TouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3TouchSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3TouchSensor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method
