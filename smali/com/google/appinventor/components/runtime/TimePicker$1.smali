.class Lcom/google/appinventor/components/runtime/TimePicker$1;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TimePicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/TimePicker;

    .line 174
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "selectedHour"    # I
    .param p3, "selectedMinute"    # I

    .line 177
    invoke-virtual {p1}, Landroid/widget/TimePicker;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/TimePicker;->-$$Nest$fputhour(Lcom/google/appinventor/components/runtime/TimePicker;I)V

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/TimePicker;->-$$Nest$fputminute(Lcom/google/appinventor/components/runtime/TimePicker;I)V

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/TimePicker;->-$$Nest$fgethour(Lcom/google/appinventor/components/runtime/TimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/TimePicker;->-$$Nest$fgetminute(Lcom/google/appinventor/components/runtime/TimePicker;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/TimePicker;->-$$Nest$fputinstant(Lcom/google/appinventor/components/runtime/TimePicker;Ljava/util/Calendar;)V

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker$1;->this$0:Lcom/google/appinventor/components/runtime/TimePicker;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TimePicker;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/TimePicker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TimePicker$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/TimePicker$1$1;-><init>(Lcom/google/appinventor/components/runtime/TimePicker$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_0
    return-void
.end method
