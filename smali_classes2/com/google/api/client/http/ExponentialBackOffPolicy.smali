.class public Lcom/google/api/client/http/ExponentialBackOffPolicy;
.super Ljava/lang/Object;
.source "ExponentialBackOffPolicy.java"

# interfaces
.implements Lcom/google/api/client/http/BackOffPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MILLIS:I = 0x1f4

.field public static final DEFAULT_MAX_ELAPSED_TIME_MILLIS:I = 0xdbba0

.field public static final DEFAULT_MAX_INTERVAL_MILLIS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 1.5

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5


# instance fields
.field private final exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>(Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;)V

    .line 114
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iget-object v0, p1, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->build()Lcom/google/api/client/util/ExponentialBackOff;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    .line 122
    return-void
.end method

.method public static builder()Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .line 220
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;

    invoke-direct {v0}, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getCurrentIntervalMillis()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->getCurrentIntervalMillis()I

    move-result v0

    return v0
.end method

.method public final getElapsedTimeMillis()J
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->getElapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInitialIntervalMillis()I
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->getInitialIntervalMillis()I

    move-result v0

    return v0
.end method

.method public final getMaxElapsedTimeMillis()I
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->getMaxElapsedTimeMillis()I

    move-result v0

    return v0
.end method

.method public final getMaxIntervalMillis()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->getMaxIntervalMillis()I

    move-result v0

    return v0
.end method

.method public final getMultiplier()D
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->getMultiplier()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNextBackOffMillis()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->nextBackOffMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRandomizationFactor()D
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->getRandomizationFactor()D

    move-result-wide v0

    return-wide v0
.end method

.method public isBackOffRequired(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .line 134
    sparse-switch p1, :sswitch_data_0

    .line 139
    const/4 v0, 0x0

    return v0

    .line 137
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final reset()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy;->exponentialBackOff:Lcom/google/api/client/util/ExponentialBackOff;

    invoke-virtual {v0}, Lcom/google/api/client/util/ExponentialBackOff;->reset()V

    .line 146
    return-void
.end method
