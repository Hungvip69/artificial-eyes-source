.class public Lcom/google/appinventor/components/runtime/DatePicker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "DatePicker.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, launches a popup dialog to allow the user to select a date.</p>"
    iconName = "images/datePicker.png"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private androidUIHandler:Landroid/os/Handler;

.field private customDate:Z

.field private date:Landroid/app/DatePickerDialog;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private day:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private instant:Ljava/util/Calendar;

.field private javaMonth:I

.field private localizedMonths:[Ljava/lang/String;

.field private month:I

.field private year:I


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/DatePicker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdate(Lcom/google/appinventor/components/runtime/DatePicker;)Landroid/app/DatePickerDialog;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetday(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetjavaMonth(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmonth(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetyear(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputday(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinstant(Lcom/google/appinventor/components/runtime/DatePicker;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputjavaMonth(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmonth(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyear(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 61
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 51
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->localizedMonths:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    .line 185
    new-instance v0, Lcom/google/appinventor/components/runtime/DatePicker$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DatePicker$1;-><init>(Lcom/google/appinventor/components/runtime/DatePicker;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    .line 66
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    .line 67
    iget v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    .line 68
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    .line 69
    iget v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    .line 70
    new-instance v1, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/DatePicker;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v5, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->androidUIHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method


# virtual methods
.method public AfterDateSet()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event that runs after the user chooses a Date in the dialog"
    .end annotation

    .line 215
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterDateSet"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public Day()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the Day of the month that was last picked using the DatePicker."
    .end annotation

    .line 116
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    return v0
.end method

.method public Instant()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the instant of the date that was last picked using the DatePicker."
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    return-object v0
.end method

.method public LaunchPicker()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the DatePicker dialog."
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DatePicker;->click()V

    .line 162
    return-void
.end method

.method public Month()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of the Month that was last picked using the DatePicker. Note that months start in 1 = January, 12 = December."
    .end annotation

    .line 95
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    return v0
.end method

.method public MonthInText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the name of the Month that was last picked using the DatePicker, in textual format."
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->localizedMonths:[Ljava/lang/String;

    iget v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public SetDateToDisplay(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date to be displayed when the date picker opens.\nValid values for the month field are 1-12 and 1-31 for the day field.\n"
    .end annotation

    .line 132
    add-int/lit8 v0, p2, -0x1

    .line 134
    .local v0, "jMonth":I
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p1, v0, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 135
    .local v2, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 136
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .end local v2    # "cal":Ljava/util/GregorianCalendar;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/DatePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x961

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "SetDateToDisplay"

    invoke-virtual {v3, p0, v5, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 140
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 141
    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    .line 143
    return-void
.end method

.method public SetDateToDisplayFromInstant(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date from the instant to be displayed when the date picker opens."
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Year(Ljava/util/Calendar;)I

    move-result v0

    .line 148
    .local v0, "year":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Month(Ljava/util/Calendar;)I

    move-result v1

    .line 149
    .local v1, "month":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Day(Ljava/util/Calendar;)I

    move-result v2

    .line 150
    .local v2, "day":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 151
    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object p1

    .line 152
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    .line 153
    return-void
.end method

.method public Year()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the Year that was last picked using the DatePicker"
    .end annotation

    .line 84
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    return v0
.end method

.method public click()V
    .locals 5

    .line 169
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 172
    .local v1, "year":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 173
    .local v2, "jMonth":I
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 174
    .local v3, "day":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v4, v1, v2, v3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 175
    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v4, v3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    .line 176
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "year":I
    .end local v2    # "jMonth":I
    .end local v3    # "day":I
    goto :goto_0

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 180
    return-void
.end method
