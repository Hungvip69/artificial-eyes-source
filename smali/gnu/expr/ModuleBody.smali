.class public abstract Lgnu/expr/ModuleBody;
.super Lgnu/mapping/Procedure0;
.source "ModuleBody.java"


# static fields
.field private static exitCounter:I

.field private static mainPrintValues:Z


# instance fields
.field protected runDone:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitDecrement()V
    .locals 3

    const-class v0, Lgnu/expr/ModuleBody;

    monitor-enter v0

    .line 115
    :try_start_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 116
    .local v1, "counter":I
    if-lez v1, :cond_1

    .line 118
    add-int/lit8 v1, v1, -0x1

    .line 119
    if-nez v1, :cond_0

    .line 121
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 124
    :cond_0
    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 114
    .end local v1    # "counter":I
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized exitIncrement()V
    .locals 2

    const-class v0, Lgnu/expr/ModuleBody;

    monitor-enter v0

    .line 103
    :try_start_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    if-nez v1, :cond_0

    .line 104
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I

    .line 105
    :cond_0
    sget v1, Lgnu/expr/ModuleBody;->exitCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lgnu/expr/ModuleBody;->exitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMainPrintValues()Z
    .locals 1

    .line 90
    sget-boolean v0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    return v0
.end method

.method public static runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V
    .locals 1
    .param p0, "ctx"    # Lgnu/mapping/CallContext;
    .param p1, "th"    # Ljava/lang/Throwable;
    .param p2, "save"    # Lgnu/lists/Consumer;

    .line 56
    if-nez p1, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Throwable;
    move-object p1, v0

    .line 67
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iput-object p2, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 68
    if-eqz p1, :cond_3

    .line 70
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    .line 72
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 73
    move-object v0, p1

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 74
    :cond_1
    new-instance v0, Lgnu/mapping/WrappedException;

    invoke-direct {v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 71
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 76
    :cond_3
    return-void
.end method

.method public static setMainPrintValues(Z)V
    .locals 0
    .param p0, "value"    # Z

    .line 95
    sput-boolean p0, Lgnu/expr/ModuleBody;->mainPrintValues:Z

    .line 96
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    iget v0, p1, Lgnu/mapping/CallContext;->pc:I

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 16
    :cond_0
    return-void
.end method

.method public apply0()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 81
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->match0(Lgnu/mapping/CallContext;)I

    .line 82
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 172
    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 180
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 187
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 188
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 189
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 198
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 199
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 200
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 208
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 209
    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 210
    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 211
    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 212
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "method"    # Lgnu/expr/ModuleMethod;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 218
    array-length v0, p2

    .line 219
    .local v0, "count":I
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    .line 220
    .local v1, "num":I
    and-int/lit16 v2, v1, 0xfff

    if-lt v0, v2, :cond_1

    if-ltz v1, :cond_0

    shr-int/lit8 v2, v1, 0xc

    if-gt v0, v2, :cond_1

    .line 223
    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    aget-object v7, p2, v4

    aget-object v8, p2, v3

    aget-object v9, p2, v2

    const/4 v2, 0x3

    aget-object v10, p2, v2

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 232
    :pswitch_1
    aget-object v4, p2, v4

    aget-object v3, p2, v3

    aget-object v2, p2, v2

    invoke-virtual {p0, p1, v4, v3, v2}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 230
    :pswitch_2
    aget-object v2, p2, v4

    aget-object v3, p2, v3

    invoke-virtual {p0, p1, v2, v3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 228
    :pswitch_3
    aget-object v2, p2, v4

    invoke-virtual {p0, p1, v2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 226
    :pswitch_4
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 237
    :cond_1
    :goto_0
    new-instance v2, Lgnu/mapping/WrongArguments;

    invoke-direct {v2, p1, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 242
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 243
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 244
    .local v1, "min":I
    if-lez v1, :cond_0

    .line 245
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 246
    :cond_0
    if-gez v0, :cond_1

    .line 247
    sget-object v2, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    return v2

    .line 248
    :cond_1
    const/4 v2, 0x0

    iput v2, p2, Lgnu/mapping/CallContext;->count:I

    .line 249
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 250
    iput v2, p2, Lgnu/mapping/CallContext;->next:I

    .line 251
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 252
    return v2
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 257
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 258
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 259
    .local v1, "min":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 260
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 261
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 263
    shr-int/lit8 v4, v0, 0xc

    .line 264
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 265
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 266
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 267
    iput v2, p3, Lgnu/mapping/CallContext;->count:I

    .line 268
    iput v2, p3, Lgnu/mapping/CallContext;->where:I

    .line 269
    iput v3, p3, Lgnu/mapping/CallContext;->next:I

    .line 270
    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 272
    return v3

    .line 274
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    .line 275
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 281
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 282
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 283
    .local v1, "min":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 284
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 285
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 287
    shr-int/lit8 v4, v0, 0xc

    .line 288
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 289
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 290
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 291
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 292
    iput v2, p4, Lgnu/mapping/CallContext;->count:I

    .line 293
    const/16 v2, 0x21

    iput v2, p4, Lgnu/mapping/CallContext;->where:I

    .line 295
    iput v3, p4, Lgnu/mapping/CallContext;->next:I

    .line 296
    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 297
    return v3

    .line 299
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 300
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p4}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 306
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 307
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 308
    .local v1, "min":I
    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 309
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 310
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 312
    shr-int/lit8 v4, v0, 0xc

    .line 313
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 314
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 315
    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 316
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 317
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 318
    iput v2, p5, Lgnu/mapping/CallContext;->count:I

    .line 319
    const/16 v2, 0x321

    iput v2, p5, Lgnu/mapping/CallContext;->where:I

    .line 322
    iput v3, p5, Lgnu/mapping/CallContext;->next:I

    .line 323
    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 325
    return v3

    .line 327
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    .line 328
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p5}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "ctx"    # Lgnu/mapping/CallContext;

    .line 334
    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v0

    .line 335
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 336
    .local v1, "min":I
    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 337
    const/high16 v2, -0xf0000

    or-int/2addr v2, v1

    return v2

    .line 338
    :cond_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 340
    shr-int/lit8 v4, v0, 0xc

    .line 341
    .local v4, "max":I
    if-ge v4, v2, :cond_1

    .line 342
    const/high16 v2, -0xe0000

    or-int/2addr v2, v4

    return v2

    .line 343
    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 344
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 345
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 346
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 347
    iput v2, p6, Lgnu/mapping/CallContext;->count:I

    .line 348
    const/16 v2, 0x4321

    iput v2, p6, Lgnu/mapping/CallContext;->where:I

    .line 352
    iput v3, p6, Lgnu/mapping/CallContext;->next:I

    .line 353
    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 355
    return v3

    .line 357
    .end local v4    # "max":I
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    .line 358
    .local v2, "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1, v2, p6}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    return v3
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13
    .param p1, "proc"    # Lgnu/expr/ModuleMethod;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 363
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    invoke-virtual {p1}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v11

    .line 364
    .local v11, "num":I
    and-int/lit16 v12, v11, 0xfff

    .line 365
    .local v12, "min":I
    array-length v0, v9

    if-ge v0, v12, :cond_0

    .line 366
    const/high16 v0, -0xf0000

    or-int/2addr v0, v12

    return v0

    .line 367
    :cond_0
    const/4 v0, 0x0

    if-ltz v11, :cond_1

    .line 369
    array-length v1, v9

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 382
    shr-int/lit8 v1, v11, 0xc

    .line 383
    .local v1, "max":I
    array-length v2, v9

    if-le v2, v1, :cond_1

    .line 384
    const/high16 v0, -0xe0000

    or-int/2addr v0, v1

    return v0

    .line 380
    .end local v1    # "max":I
    :pswitch_0
    aget-object v4, v9, v0

    aget-object v3, v9, v3

    aget-object v5, v9, v2

    const/4 v0, 0x3

    aget-object v6, v9, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 378
    :pswitch_1
    aget-object v4, v9, v0

    aget-object v3, v9, v3

    aget-object v5, v9, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, v4

    move-object v4, v5

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 376
    :pswitch_2
    aget-object v0, v9, v0

    aget-object v1, v9, v3

    invoke-virtual {p0, p1, v0, v1, v10}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 374
    :pswitch_3
    aget-object v0, v9, v0

    invoke-virtual {p0, p1, v0, v10}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 372
    :pswitch_4
    invoke-virtual {p0, p1, v10}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 387
    :cond_1
    iput-object v9, v10, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 388
    array-length v1, v9

    iput v1, v10, Lgnu/mapping/CallContext;->count:I

    .line 389
    iput v0, v10, Lgnu/mapping/CallContext;->where:I

    .line 390
    iput v0, v10, Lgnu/mapping/CallContext;->next:I

    .line 391
    iput-object v8, v10, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 394
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 1

    .line 26
    monitor-enter p0

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    if-eqz v0, :cond_0

    .line 29
    monitor-exit p0

    return-void

    .line 30
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/ModuleBody;->runDone:Z

    .line 31
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/lists/Consumer;)V

    .line 33
    return-void

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run(Lgnu/lists/Consumer;)V
    .locals 4
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 38
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 39
    .local v0, "ctx":Lgnu/mapping/CallContext;
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 40
    .local v1, "save":Lgnu/lists/Consumer;
    iput-object p1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v2, 0x0

    .line 50
    .local v2, "th":Ljava/lang/Throwable;
    goto :goto_0

    .line 47
    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 49
    .local v2, "ex":Ljava/lang/Throwable;
    .local v3, "th":Ljava/lang/Throwable;
    move-object v3, v2

    .line 51
    .end local v3    # "th":Ljava/lang/Throwable;
    .local v2, "th":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0, v2, v1}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    .line 52
    return-void
.end method

.method public run(Lgnu/mapping/CallContext;)V
    .locals 0
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public final runAsMain()V
    .locals 3

    .line 131
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    .line 134
    :try_start_0
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 135
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    .line 138
    .local v1, "out":Lgnu/mapping/OutPort;
    invoke-static {v1}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v2

    iput-object v2, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 139
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 140
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 141
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->freshLine()V

    .line 142
    .end local v1    # "out":Lgnu/mapping/OutPort;
    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleBody;->run()V

    .line 146
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 149
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 150
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v0    # "ctx":Lgnu/mapping/CallContext;
    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 156
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 158
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
