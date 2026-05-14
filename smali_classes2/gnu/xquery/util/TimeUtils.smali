.class public Lgnu/xquery/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field static final currentDateTimeLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgnu/math/DateTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "time"    # Ljava/lang/Object;

    .line 230
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "time"    # Ljava/lang/Object;
    .param p1, "zone"    # Ljava/lang/Object;

    .line 235
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    const-string v0, "adjust-dateTime-to-timezone"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 238
    .local v0, "dtime":Lgnu/math/DateTime;
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 236
    .end local v0    # "dtime":Lgnu/math/DateTime;
    :cond_1
    :goto_0
    return-object p0
.end method

.method static adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "dtime"    # Lgnu/math/DateTime;
    .param p1, "zone"    # Ljava/lang/Object;

    .line 269
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    .line 272
    .local v0, "d":Lgnu/math/Duration;
    invoke-virtual {v0}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v1

    if-nez v1, :cond_2

    .line 274
    invoke-virtual {v0}, Lgnu/math/Duration;->getTotalMinutes()J

    move-result-wide v1

    long-to-int v2, v1

    .line 275
    .local v2, "delta":I
    const/16 v1, -0x348

    if-lt v2, v1, :cond_1

    const/16 v1, 0x348

    if-gt v2, v1, :cond_1

    .line 277
    invoke-virtual {p0, v2}, Lgnu/math/DateTime;->adjustTimezone(I)Lgnu/math/DateTime;

    move-result-object v1

    return-object v1

    .line 276
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "timezone offset out of range"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    .end local v2    # "delta":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "timezone offset with fractional minute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    .end local v0    # "d":Lgnu/math/Duration;
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->withZoneUnspecified()Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "time"    # Ljava/lang/Object;

    .line 243
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "time"    # Ljava/lang/Object;
    .param p1, "zone"    # Ljava/lang/Object;

    .line 248
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    const-string v0, "adjust-date-to-timezone"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 251
    .local v0, "dtime":Lgnu/math/DateTime;
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 249
    .end local v0    # "dtime":Lgnu/math/DateTime;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "time"    # Ljava/lang/Object;

    .line 256
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/TimeUtils;->adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "time"    # Ljava/lang/Object;
    .param p1, "zone"    # Ljava/lang/Object;

    .line 261
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    const-string v0, "adjust-time-to-timezone"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 264
    .local v0, "dtime":Lgnu/math/DateTime;
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 262
    .end local v0    # "dtime":Lgnu/math/DateTime;
    :cond_1
    :goto_0
    return-object p0
.end method

.method static asInteger(I)Lgnu/math/IntNum;
    .locals 1
    .param p0, "value"    # I

    .line 59
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method static coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 3
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 25
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    return-object v0

    .line 27
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:date"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    :goto_0
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method static coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 3
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 15
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    return-object v0

    .line 17
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:dateTime"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_2
    :goto_0
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method static coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;
    .locals 3
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 45
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:duration"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method static coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 3
    .param p0, "fun"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 35
    sget-object v0, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0, p1}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    return-object v0

    .line 37
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "xs:time"

    invoke-direct {v0, p0, v1, p1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_2
    :goto_0
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static currentDate()Lgnu/math/DateTime;
    .locals 2

    .line 341
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static currentDateTime()Lgnu/math/DateTime;
    .locals 2

    .line 322
    sget-object v0, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/DateTime;

    .line 323
    .local v0, "current":Lgnu/math/DateTime;
    if-nez v0, :cond_0

    .line 325
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->now()Lgnu/math/DateTime;

    move-result-object v0

    .line 326
    sget-object v1, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 336
    :cond_0
    return-object v0
.end method

.method public static currentTime()Lgnu/math/DateTime;
    .locals 2

    .line 346
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static dateTime(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 287
    if-eqz p0, :cond_8

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_3

    .line 288
    :cond_0
    if-eqz p1, :cond_7

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 289
    :cond_1
    const-string v0, "dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    .line 290
    .local v1, "date":Lgnu/math/DateTime;
    invoke-static {v0, p1}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    .line 291
    .local v0, "time":Lgnu/math/DateTime;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    .line 293
    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v0, v2}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 295
    invoke-virtual {v1}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 296
    .local v3, "hasZone1":Z
    invoke-virtual {v0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 297
    .local v4, "hasZone2":Z
    if-nez v3, :cond_2

    if-eqz v4, :cond_6

    .line 299
    :cond_2
    invoke-virtual {v1}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v5

    .line 300
    .local v5, "zone1":I
    invoke-virtual {v0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v6

    .line 301
    .local v6, "zone2":I
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-ne v5, v6, :cond_3

    goto :goto_0

    .line 302
    :cond_3
    new-instance v7, Ljava/lang/Error;

    const-string v8, "dateTime: incompatible timezone in arguments"

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 303
    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    move v7, v5

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    invoke-static {v7, v2}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 305
    .end local v5    # "zone1":I
    .end local v6    # "zone2":I
    :cond_6
    sget-object v5, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/kawa/xml/XTimeType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/math/DateTime;

    return-object v5

    .line 288
    .end local v0    # "time":Lgnu/math/DateTime;
    .end local v1    # "date":Lgnu/math/DateTime;
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .end local v3    # "hasZone1":Z
    .end local v4    # "hasZone2":Z
    :cond_7
    :goto_2
    return-object p1

    .line 287
    :cond_8
    :goto_3
    return-object p0
.end method

.method public static dayFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 128
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    const-string v0, "day-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getDay()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static dayFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 76
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    const-string v0, "day-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getDay()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 76
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static daysFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 176
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    const-string v0, "days-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getDays()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 176
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getImplicitTimezone()Lgnu/math/Duration;
    .locals 2

    .line 225
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-static {v0}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method static getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;
    .locals 7
    .param p0, "date"    # Lgnu/math/DateTime;

    .line 94
    invoke-virtual {p0}, Lgnu/math/DateTime;->getSecondsOnly()I

    move-result v0

    .line 95
    .local v0, "seconds":I
    invoke-virtual {p0}, Lgnu/math/DateTime;->getNanoSecondsOnly()I

    move-result v1

    int-to-long v1, v1

    .line 96
    .local v1, "nanos":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 97
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 98
    :cond_0
    int-to-long v3, v0

    const-wide/32 v5, 0x3b9aca00

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 99
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v3
.end method

.method public static hoursFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 82
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    const-string v0, "hours-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getHours()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 82
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static hoursFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 182
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "hours-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getHours()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 182
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static hoursFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 140
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    const-string v0, "hours-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getHours()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static implicitTimezone()Ljava/lang/Object;
    .locals 1

    .line 351
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static minutesFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 88
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    const-string v0, "minutes-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 88
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static minutesFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 188
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    const-string v0, "minutes-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static minutesFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 146
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    const-string v0, "minutes-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static monthFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 122
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "month-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMonth()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static monthFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 70
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    const-string v0, "month-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getMonth()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static monthsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 170
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    const-string v0, "months-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getMonths()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 170
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static now()Lgnu/math/DateTime;
    .locals 1

    .line 282
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0}, Lgnu/kawa/xml/XTimeType;->now()Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;
    .locals 11
    .param p0, "s"    # J
    .param p2, "n"    # I

    .line 194
    if-nez p2, :cond_0

    .line 195
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const/16 v0, 0x9

    .line 198
    .local v0, "scale":I
    long-to-int v1, p0

    int-to-long v1, v1

    cmp-long v3, v1, p0

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 199
    .local v1, "huge":Z
    :goto_0
    if-eqz v1, :cond_2

    int-to-long v2, p2

    goto :goto_1

    :cond_2
    const-wide/32 v2, 0x3b9aca00

    mul-long v2, v2, p0

    int-to-long v4, p2

    add-long/2addr v2, v4

    .line 200
    .local v2, "ns":J
    :goto_1
    const-wide/16 v4, 0xa

    rem-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    .line 202
    div-long/2addr v2, v4

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 205
    :cond_3
    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 206
    .local v4, "dec":Ljava/math/BigDecimal;
    if-eqz v1, :cond_4

    .line 207
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 208
    :cond_4
    return-object v4
.end method

.method public static secondsFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 104
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const-string v0, "seconds-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 104
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static secondsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 213
    if-eqz p0, :cond_2

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    const-string v0, "seconds-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    .line 215
    .local v0, "d":Lgnu/math/Duration;
    invoke-virtual {v0}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v1

    .line 216
    .local v1, "s":I
    invoke-virtual {v0}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v2

    .line 217
    .local v2, "n":I
    if-nez v2, :cond_1

    .line 218
    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 220
    :cond_1
    int-to-long v3, v1

    invoke-static {v3, v4, v2}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 213
    .end local v0    # "d":Lgnu/math/Duration;
    .end local v1    # "s":I
    .end local v2    # "n":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static secondsFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 152
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const-string v0, "seconds-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 152
    :cond_1
    :goto_0
    return-object p0
.end method

.method static timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;
    .locals 1
    .param p0, "time"    # Lgnu/math/DateTime;

    .line 52
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v0

    invoke-static {v0}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static timezoneFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 134
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    const-string v0, "timezone-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 134
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static timezoneFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 110
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "timezone-from-datetime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static timezoneFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 158
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    const-string v0, "timezone-from-time"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 158
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static yearFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 116
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    const-string v0, "year-from-date"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static yearFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 64
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "year-from-dateTime"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/DateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static yearsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 164
    if-eqz p0, :cond_1

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    const-string v0, "years-from-duration"

    invoke-static {v0, p0}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Duration;->getYears()I

    move-result v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 164
    :cond_1
    :goto_0
    return-object p0
.end method
