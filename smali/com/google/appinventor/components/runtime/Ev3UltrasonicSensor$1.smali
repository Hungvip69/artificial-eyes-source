.class Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;
.super Ljava/lang/Object;
.source "Ev3UltrasonicSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 65
    const-string v0, ""

    .line 67
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const-wide/16 v2, 0x32

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$mgetDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D

    move-result-wide v4

    .line 70
    .local v4, "currentDistance":D
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetpreviousDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v1, v6, v8

    if-gez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fputpreviousDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)V

    .line 72
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v1

    int-to-double v6, v1

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetpreviousDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v1

    int-to-double v8, v1

    cmpl-double v1, v6, v8

    if-ltz v1, :cond_4

    .line 78
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRange()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v1

    int-to-double v6, v1

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetpreviousDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v1

    int-to-double v8, v1

    cmpg-double v1, v6, v8

    if-gtz v1, :cond_4

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRange()V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetpreviousDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v1

    int-to-double v8, v1

    cmpg-double v1, v6, v8

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgetpreviousDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D

    move-result-wide v6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I

    move-result v1

    int-to-double v8, v1

    cmpl-double v1, v6, v8

    if-lez v1, :cond_4

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRange()V

    .line 87
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fputpreviousDistance(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)V

    .line 90
    .end local v4    # "currentDistance":D
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->-$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method
