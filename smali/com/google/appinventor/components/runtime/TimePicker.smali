.class public Lcom/google/appinventor/components/runtime/TimePicker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "TimePicker.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, launches  a popup dialog to allow the user to select a time.</p>"
    iconName = "images/timePicker.png"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private androidUIHandler:Landroid/os/Handler;

.field private customTime:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hour:I

.field private instant:Ljava/util/Calendar;

.field private minute:I

.field private time:Landroid/app/TimePickerDialog;

.field private timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/TimePicker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethour(Lcom/google/appinventor/components/runtime/TimePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetminute(Lcom/google/appinventor/components/runtime/TimePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputhour(Lcom/google/appinventor/components/runtime/TimePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinstant(Lcom/google/appinventor/components/runtime/TimePicker;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->instant:Ljava/util/Calendar;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputminute(Lcom/google/appinventor/components/runtime/TimePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 63
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->customTime:Z

    .line 173
    new-instance v0, Lcom/google/appinventor/components/runtime/TimePicker$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TimePicker$1;-><init>(Lcom/google/appinventor/components/runtime/TimePicker;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 66
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    .line 67
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    .line 68
    new-instance v1, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TimePicker;->timePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v5, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 69
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->time:Landroid/app/TimePickerDialog;

    .line 71
    iget v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->instant:Ljava/util/Calendar;

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TimePicker;->androidUIHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method


# virtual methods
.method public AfterTimeSet()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a user has set the time in the popup dialog."
    .end annotation

    .line 199
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterTimeSet"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public Hour()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The hour of the last time set using the time picker. The hour is in a 24 hour format. If the last time set was 11:53 pm, this property will return 23."
    .end annotation

    .line 89
    iget v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    return v0
.end method

.method public Instant()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The instant of the last time set using the time picker"
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->instant:Ljava/util/Calendar;

    return-object v0
.end method

.method public LaunchPicker()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the TimePicker dialog."
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TimePicker;->click()V

    .line 157
    return-void
.end method

.method public Minute()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minute of the last time set using the time picker"
    .end annotation

    .line 102
    iget v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    return v0
.end method

.method public SetTimeToDisplay(II)V
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the time to be shown in the Time Picker popup. Current time is shown by default."
    .end annotation

    .line 124
    const/4 v0, 0x0

    const-string v1, "SetTimeToDisplay"

    if-ltz p1, :cond_3

    const/16 v2, 0x17

    if-le p1, v2, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    if-ltz p2, :cond_2

    const/16 v2, 0x3b

    if-le p2, v2, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->time:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, p1, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 130
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->instant:Ljava/util/Calendar;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->customTime:Z

    goto :goto_2

    .line 127
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x8fe

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 125
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x8fd

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 133
    :goto_2
    return-void
.end method

.method public SetTimeToDisplayFromInstant(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the time from the instant to be shown in the Time Picker dialog. Current time is shown by default."
    .end annotation

    .line 144
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Hour(Ljava/util/Calendar;)I

    move-result v0

    .line 145
    .local v0, "hour":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Minute(Ljava/util/Calendar;)I

    move-result v1

    .line 146
    .local v1, "minute":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->time:Landroid/app/TimePickerDialog;

    invoke-virtual {v2, v0, v1}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 147
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object p1

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/TimePicker;->customTime:Z

    .line 149
    return-void
.end method

.method public click()V
    .locals 5

    .line 161
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->customTime:Z

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 164
    .local v1, "h":I
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 165
    .local v2, "m":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TimePicker;->time:Landroid/app/TimePickerDialog;

    invoke-virtual {v3, v1, v2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 166
    iget v3, p0, Lcom/google/appinventor/components/runtime/TimePicker;->hour:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/TimePicker;->minute:I

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->TimeInstant(II)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/TimePicker;->instant:Ljava/util/Calendar;

    .line 167
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "h":I
    .end local v2    # "m":I
    goto :goto_0

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->customTime:Z

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TimePicker;->time:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 171
    return-void
.end method
