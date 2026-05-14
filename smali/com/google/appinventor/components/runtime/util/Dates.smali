.class public final Lcom/google/appinventor/components/runtime/util/Dates;
.super Ljava/lang/Object;
.source "Dates.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field public static final DATE_APRIL:I = 0x3

.field public static final DATE_AUGUST:I = 0x7

.field public static final DATE_DAY:I = 0x5

.field public static final DATE_DECEMBER:I = 0xb

.field public static final DATE_FEBRUARY:I = 0x1

.field public static final DATE_FRIDAY:I = 0x6

.field public static final DATE_HOUR:I = 0xb

.field public static final DATE_JANUARY:I = 0x0

.field public static final DATE_JULY:I = 0x6

.field public static final DATE_JUNE:I = 0x5

.field public static final DATE_MARCH:I = 0x2

.field public static final DATE_MAY:I = 0x4

.field public static final DATE_MILLISECOND:I = 0xe

.field public static final DATE_MINUTE:I = 0xc

.field public static final DATE_MONDAY:I = 0x2

.field public static final DATE_MONTH:I = 0x2

.field public static final DATE_NOVEMBER:I = 0xa

.field public static final DATE_OCTOBER:I = 0x9

.field public static final DATE_SATURDAY:I = 0x7

.field public static final DATE_SECOND:I = 0xd

.field public static final DATE_SEPTEMBER:I = 0x8

.field public static final DATE_SUNDAY:I = 0x1

.field public static final DATE_THURSDAY:I = 0x5

.field public static final DATE_TUESDAY:I = 0x3

.field public static final DATE_WEDNESDAY:I = 0x4

.field public static final DATE_WEEK:I = 0x3

.field public static final DATE_YEAR:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static ConvertDuration(JI)J
    .locals 6
    .param p0, "duration"    # J
    .param p2, "intervalKind"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 175
    const-wide/16 v0, 0x18

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3c

    sparse-switch p2, :sswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal date/time interval kind in function Duration()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :sswitch_0
    div-long v0, p0, v2

    return-wide v0

    .line 185
    :sswitch_1
    div-long v0, p0, v2

    div-long/2addr v0, v4

    return-wide v0

    .line 183
    :sswitch_2
    div-long v0, p0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    return-wide v0

    .line 181
    :sswitch_3
    div-long v2, p0, v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    div-long/2addr v2, v0

    return-wide v2

    .line 179
    :sswitch_4
    div-long v2, p0, v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    div-long/2addr v2, v0

    const-wide/16 v0, 0x7

    div-long/2addr v2, v0

    return-wide v2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public static DateAdd(Ljava/util/Calendar;II)V
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "intervalKind"    # I
    .param p2, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 82
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal date/time interval kind in function DateAdd()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 94
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static DateAddInMillis(Ljava/util/Calendar;J)V
    .locals 4
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "millis"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 107
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 108
    .local v0, "dateInMillis":J
    add-long v2, v0, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    return-void
.end method

.method public static DateInstant(III)Ljava/util/Calendar;
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 254
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "year_str":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "month_str":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "day_str":Ljava/lang/String;
    const-string v3, "0"

    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_0
    if-ge p2, v4, :cond_1

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "date":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateValue(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v4

    return-object v4
.end method

.method public static DateValue(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 129
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 130
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->tryParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 131
    return-object v0
.end method

.method public static Day(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 162
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static FormatDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 222
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 223
    .local v0, "formatdate":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v1, "MMM d, yyyy"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static FormatDateTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 202
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 203
    .local v0, "formatdate":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string v1, "MMM d, yyyy hh:mm:ss a"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 208
    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static FormatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 241
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Hour(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 295
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static Minute(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 306
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static Month(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 322
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static MonthName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 333
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%1$tB"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Now()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 343
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    return-object v0
.end method

.method public static Second(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 354
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static TimeInstant(II)Ljava/util/Calendar;
    .locals 5
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 276
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "hour_str":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "minute_str":Ljava/lang/String;
    const-string v2, "0"

    const/16 v3, 0xa

    if-ge p0, v3, :cond_0

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    if-ge p1, v3, :cond_1

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "time":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/Dates;->DateValue(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3
.end method

.method public static Timer()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Weekday(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 378
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 389
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "%1$tA"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Year(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "date"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private static tryParseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 135
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MM/dd/yyyy hh:mm:ss a"

    aput-object v2, v0, v1

    const-string v2, "MM/dd/yyyy HH:mm:ss"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "MM/dd/yyyy hh:mm a"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "MM/dd/yyyy HH:mm"

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "MM/dd/yyyy"

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "hh:mm:ss a"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "HH:mm:ss"

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "hh:mm a"

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string v2, "HH:mm"

    const/16 v3, 0x8

    aput-object v2, v0, v3

    .line 146
    .local v0, "formats":[Ljava/lang/String;
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 148
    .local v3, "format":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 149
    :catch_0
    move-exception v4

    .line 146
    .end local v3    # "format":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "illegal date/time format in function DateValue()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
