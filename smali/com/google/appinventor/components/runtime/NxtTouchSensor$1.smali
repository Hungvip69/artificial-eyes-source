.class Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;
.super Ljava/lang/Object;
.source "NxtTouchSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtTouchSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$mgetPressedValue(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    .line 61
    .local v0, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Boolean;>;"
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_3

    .line 62
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->PRESSED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->RELEASED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    .line 64
    .local v1, "currentState":Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 65
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->PRESSED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$fgetpressedEventEnabled(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Pressed()V

    .line 68
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->RELEASED:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$fgetreleasedEventEnabled(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->Released()V

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;)V

    .line 76
    .end local v0    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Boolean;>;"
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtTouchSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->-$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_4
    return-void
.end method
