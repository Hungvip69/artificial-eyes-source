.class Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;
.super Ljava/lang/Object;
.source "NxtUltrasonicSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$mgetDistanceValue(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    .line 65
    .local v0, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_5

    .line 67
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .local v1, "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    goto :goto_0

    .line 69
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    :cond_0
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 70
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .restart local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    goto :goto_0

    .line 72
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    :cond_1
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 75
    .restart local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 76
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRange()V

    .line 79
    :cond_2
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRange()V

    .line 82
    :cond_3
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 83
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRange()V

    .line 87
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;)V

    .line 90
    .end local v0    # "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    .end local v1    # "currentState":Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->-$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :cond_6
    return-void
.end method
