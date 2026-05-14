.class Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rfc3339ParseResult"
.end annotation


# instance fields
.field private final nanos:I

.field private final seconds:J

.field private final timeGiven:Z

.field private final tzShift:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(JIZLjava/lang/Integer;)V
    .locals 0
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I
    .param p4, "timeGiven"    # Z
    .param p5, "tzShift"    # Ljava/lang/Integer;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-wide p1, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->seconds:J

    .line 347
    iput p3, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->nanos:I

    .line 348
    iput-boolean p4, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->timeGiven:Z

    .line 349
    iput-object p5, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->tzShift:Ljava/lang/Integer;

    .line 350
    return-void
.end method

.method synthetic constructor <init>(JIZLjava/lang/Integer;Lcom/google/api/client/util/DateTime$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Z
    .param p5, "x3"    # Ljava/lang/Integer;
    .param p6, "x4"    # Lcom/google/api/client/util/DateTime$1;

    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;-><init>(JIZLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;)Lcom/google/api/client/util/DateTime;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;

    .line 339
    invoke-direct {p0}, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->toDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;)Lcom/google/api/client/util/DateTime$SecondsAndNanos;
    .locals 1
    .param p0, "x0"    # Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;

    .line 339
    invoke-direct {p0}, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->toSecondsAndNanos()Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    move-result-object v0

    return-object v0
.end method

.method private toDateTime()Lcom/google/api/client/util/DateTime;
    .locals 9

    .line 357
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->seconds:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 358
    .local v0, "seconds":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->nanos:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 359
    .local v2, "nanos":J
    new-instance v4, Lcom/google/api/client/util/DateTime;

    iget-boolean v5, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->timeGiven:Z

    xor-int/lit8 v5, v5, 0x1

    add-long v6, v0, v2

    iget-object v8, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->tzShift:Ljava/lang/Integer;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    return-object v4
.end method

.method private toSecondsAndNanos()Lcom/google/api/client/util/DateTime$SecondsAndNanos;
    .locals 5

    .line 363
    new-instance v0, Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    iget-wide v1, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->seconds:J

    iget v3, p0, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->nanos:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/DateTime$SecondsAndNanos;-><init>(JILcom/google/api/client/util/DateTime$1;)V

    return-object v0
.end method
