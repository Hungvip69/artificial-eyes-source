.class Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;
.super Ljava/lang/Object;
.source "Ev3GyroSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3GyroSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 58
    const-string v0, ""

    .line 60
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v2, 0x32

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$mgetSensorValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D

    move-result-wide v4

    .line 63
    .local v4, "currentValue":D
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fgetpreviousValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v1, v6, v8

    if-gez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fputpreviousValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)V

    .line 65
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fgetmode(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v1

    sget-object v6, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ne v1, v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-gez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fgetmode(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v1

    sget-object v6, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fgetpreviousValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v9

    sub-double v9, v4, v9

    .line 71
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-ltz v1, :cond_3

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-virtual {v1, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fputpreviousValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)V

    .line 78
    .end local v4    # "currentValue":D
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    return-void
.end method
