.class public Lkawa/standard/sleep;
.super Ljava/lang/Object;
.source "sleep.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .locals 11
    .param p0, "q"    # Lgnu/math/Quantity;

    .line 11
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    .line 14
    .local v0, "u":Lgnu/math/Unit;
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    sget-object v2, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-virtual {v2}, Lgnu/math/NamedUnit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Lkawa/lang/GenericError;

    const-string v2, "bad unit for sleep"

    invoke-direct {v1, v2}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v1

    .line 19
    .local v1, "seconds":D
    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v1

    double-to-long v3, v3

    .line 20
    .local v3, "millis":J
    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double v5, v5, v1

    long-to-double v7, v3

    const-wide v9, 0x412e848000000000L    # 1000000.0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    sub-double/2addr v5, v7

    double-to-int v5, v5

    .line 23
    .local v5, "nanos":I
    :try_start_0
    invoke-static {v3, v4, v5}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    nop

    .line 29
    return-void

    .line 25
    :catch_0
    move-exception v6

    .line 27
    .local v6, "ex":Ljava/lang/InterruptedException;
    new-instance v7, Lkawa/lang/GenericError;

    const-string v8, "sleep was interrupted"

    invoke-direct {v7, v8}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v7
.end method
