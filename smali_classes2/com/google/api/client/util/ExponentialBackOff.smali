.class public Lcom/google/api/client/util/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ExponentialBackOff$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MILLIS:I = 0x1f4

.field public static final DEFAULT_MAX_ELAPSED_TIME_MILLIS:I = 0xdbba0

.field public static final DEFAULT_MAX_INTERVAL_MILLIS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 1.5

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5


# instance fields
.field private currentIntervalMillis:I

.field private final initialIntervalMillis:I

.field private final maxElapsedTimeMillis:I

.field private final maxIntervalMillis:I

.field private final multiplier:D

.field private final nanoClock:Lcom/google/api/client/util/NanoClock;

.field private final randomizationFactor:D

.field startTimeNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    new-instance v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-direct {v0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ExponentialBackOff;-><init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V

    .line 138
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V
    .locals 9
    .param p1, "builder"    # Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->initialIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    .line 143
    iget-wide v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->randomizationFactor:D

    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    .line 144
    iget-wide v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->multiplier:D

    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    .line 145
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    .line 146
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxElapsedTimeMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    .line 147
    iget-object v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->nanoClock:Lcom/google/api/client/util/NanoClock;

    iput-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 148
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 149
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_1

    iget-wide v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    cmpg-double v0, v3, v7

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 150
    iget-wide v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    cmpl-double v0, v3, v7

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 151
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    iget v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    if-lt v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 152
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->reset()V

    .line 154
    return-void
.end method

.method static getRandomValueFromInterval(DDI)I
    .locals 10
    .param p0, "randomizationFactor"    # D
    .param p2, "random"    # D
    .param p4, "currentIntervalMillis"    # I

    .line 187
    int-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    .line 188
    .local v0, "delta":D
    int-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v0

    .line 189
    .local v2, "minInterval":D
    int-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    .line 193
    .local v4, "maxInterval":D
    sub-double v6, v4, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    mul-double v6, v6, p2

    add-double/2addr v6, v2

    double-to-int v6, v6

    .line 194
    .local v6, "randomValue":I
    return v6
.end method

.method private incrementCurrentInterval()V
    .locals 6

    .line 254
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    int-to-double v0, v0

    iget v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 255
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    goto :goto_0

    .line 257
    :cond_0
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 259
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCurrentIntervalMillis()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    return v0
.end method

.method public final getElapsedTimeMillis()J
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getInitialIntervalMillis()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    return v0
.end method

.method public final getMaxElapsedTimeMillis()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    return v0
.end method

.method public final getMaxIntervalMillis()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    return v0
.end method

.method public final getMultiplier()D
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    return-wide v0
.end method

.method public final getRandomizationFactor()D
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    return-wide v0
.end method

.method public nextBackOffMillis()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->getElapsedTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 173
    const-wide/16 v0, -0x1

    return-wide v0

    .line 175
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    .line 176
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/ExponentialBackOff;->getRandomValueFromInterval(DDI)I

    move-result v0

    .line 177
    .local v0, "randomizedInterval":I
    invoke-direct {p0}, Lcom/google/api/client/util/ExponentialBackOff;->incrementCurrentInterval()V

    .line 178
    int-to-long v1, v0

    return-wide v1
.end method

.method public final reset()V
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 159
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    .line 160
    return-void
.end method
