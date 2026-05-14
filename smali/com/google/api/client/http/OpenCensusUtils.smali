.class public Lcom/google/api/client/http/OpenCensusUtils;
.super Ljava/lang/Object;
.source "OpenCensusUtils.java"


# static fields
.field public static final SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

.field private static final idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile isRecordEvent:Z

.field private static final logger:Ljava/util/logging/Logger;

.field static volatile propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field static volatile propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final tracer:Lio/opencensus/trace/Tracer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const-class v0, Lcom/google/api/client/http/OpenCensusUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/google/api/client/http/HttpRequest;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".execute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 56
    invoke-static {}, Lio/opencensus/trace/Tracing;->getTracer()Lio/opencensus/trace/Tracer;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->tracer:Lio/opencensus/trace/Tracer;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    .line 68
    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

    .line 227
    :try_start_0
    invoke-static {}, Lio/opencensus/contrib/http/util/HttpPropagationUtil;->getCloudTraceFormat()Lio/opencensus/trace/propagation/TextFormat;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    .line 228
    new-instance v0, Lcom/google/api/client/http/OpenCensusUtils$1;

    invoke-direct {v0}, Lcom/google/api/client/http/OpenCensusUtils$1;-><init>()V

    sput-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot initialize default OpenCensus HTTP propagation text format."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {}, Lio/opencensus/trace/Tracing;->getExportComponent()Lio/opencensus/trace/export/ExportComponent;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lio/opencensus/trace/export/ExportComponent;->getSampledSpanStore()Lio/opencensus/trace/export/SampledSpanStore;

    move-result-object v0

    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 243
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/opencensus/trace/export/SampledSpanStore;->registerSpanNamesForCollection(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    goto :goto_1

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/api/client/http/OpenCensusUtils;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot register default OpenCensus span names for collection."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndSpanOptions(Ljava/lang/Integer;)Lio/opencensus/trace/EndSpanOptions;
    .locals 2
    .param p0, "statusCode"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    invoke-static {}, Lio/opencensus/trace/EndSpanOptions;->builder()Lio/opencensus/trace/EndSpanOptions$Builder;

    move-result-object v0

    .line 151
    .local v0, "builder":Lio/opencensus/trace/EndSpanOptions$Builder;
    if-nez p0, :cond_0

    .line 152
    sget-object v1, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 174
    sget-object v1, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    goto :goto_0

    .line 171
    :sswitch_0
    sget-object v1, Lio/opencensus/trace/Status;->UNAVAILABLE:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 172
    goto :goto_0

    .line 168
    :sswitch_1
    sget-object v1, Lio/opencensus/trace/Status;->FAILED_PRECONDITION:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 169
    goto :goto_0

    .line 165
    :sswitch_2
    sget-object v1, Lio/opencensus/trace/Status;->NOT_FOUND:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 166
    goto :goto_0

    .line 162
    :sswitch_3
    sget-object v1, Lio/opencensus/trace/Status;->PERMISSION_DENIED:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 163
    goto :goto_0

    .line 159
    :sswitch_4
    sget-object v1, Lio/opencensus/trace/Status;->UNAUTHENTICATED:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 160
    goto :goto_0

    .line 156
    :sswitch_5
    sget-object v1, Lio/opencensus/trace/Status;->INVALID_ARGUMENT:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 157
    goto :goto_0

    .line 177
    :cond_1
    sget-object v1, Lio/opencensus/trace/Status;->OK:Lio/opencensus/trace/Status;

    invoke-virtual {v0, v1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 179
    :goto_0
    invoke-virtual {v0}, Lio/opencensus/trace/EndSpanOptions$Builder;->build()Lio/opencensus/trace/EndSpanOptions;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_5
        0x191 -> :sswitch_4
        0x193 -> :sswitch_3
        0x194 -> :sswitch_2
        0x19c -> :sswitch_1
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getTracer()Lio/opencensus/trace/Tracer;
    .locals 1

    .line 113
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->tracer:Lio/opencensus/trace/Tracer;

    return-object v0
.end method

.method public static isRecordEvent()Z
    .locals 1

    .line 122
    sget-boolean v0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    return v0
.end method

.method public static propagateTracingContext(Lio/opencensus/trace/Span;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 4
    .param p0, "span"    # Lio/opencensus/trace/Span;
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .line 133
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "span should not be null."

    invoke-static {v2, v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 134
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "headers should not be null."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lio/opencensus/trace/BlankSpan;->INSTANCE:Lio/opencensus/trace/BlankSpan;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    invoke-virtual {p0}, Lio/opencensus/trace/Span;->getContext()Lio/opencensus/trace/SpanContext;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

    invoke-virtual {v0, v1, p1, v2}, Lio/opencensus/trace/propagation/TextFormat;->inject(Lio/opencensus/trace/SpanContext;Ljava/lang/Object;Lio/opencensus/trace/propagation/TextFormat$Setter;)V

    .line 140
    :cond_2
    return-void
.end method

.method static recordMessageEvent(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V
    .locals 3
    .param p0, "span"    # Lio/opencensus/trace/Span;
    .param p1, "size"    # J
    .param p3, "eventType"    # Lio/opencensus/trace/MessageEvent$Type;

    .line 214
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "span should not be null."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 215
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 216
    const-wide/16 p1, 0x0

    .line 218
    :cond_1
    sget-object v0, Lcom/google/api/client/http/OpenCensusUtils;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 219
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lio/opencensus/trace/MessageEvent;->builder(Lio/opencensus/trace/MessageEvent$Type;J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1, p2}, Lio/opencensus/trace/MessageEvent$Builder;->setUncompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lio/opencensus/trace/MessageEvent$Builder;->build()Lio/opencensus/trace/MessageEvent;

    move-result-object v0

    .line 222
    .local v0, "event":Lio/opencensus/trace/MessageEvent;
    invoke-virtual {p0, v0}, Lio/opencensus/trace/Span;->addMessageEvent(Lio/opencensus/trace/MessageEvent;)V

    .line 223
    return-void
.end method

.method public static recordReceivedMessageEvent(Lio/opencensus/trace/Span;J)V
    .locals 1
    .param p0, "span"    # Lio/opencensus/trace/Span;
    .param p1, "size"    # J

    .line 201
    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->RECEIVED:Lio/opencensus/trace/MessageEvent$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/OpenCensusUtils;->recordMessageEvent(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V

    .line 202
    return-void
.end method

.method public static recordSentMessageEvent(Lio/opencensus/trace/Span;J)V
    .locals 1
    .param p0, "span"    # Lio/opencensus/trace/Span;
    .param p1, "size"    # J

    .line 190
    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->SENT:Lio/opencensus/trace/MessageEvent$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/OpenCensusUtils;->recordMessageEvent(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V

    .line 191
    return-void
.end method

.method public static setIsRecordEvent(Z)V
    .locals 0
    .param p0, "recordEvent"    # Z

    .line 104
    sput-boolean p0, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent:Z

    .line 105
    return-void
.end method

.method public static setPropagationTextFormat(Lio/opencensus/trace/propagation/TextFormat;)V
    .locals 0
    .param p0, "textFormat"    # Lio/opencensus/trace/propagation/TextFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    sput-object p0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormat:Lio/opencensus/trace/propagation/TextFormat;

    .line 81
    return-void
.end method

.method public static setPropagationTextFormatSetter(Lio/opencensus/trace/propagation/TextFormat$Setter;)V
    .locals 0
    .param p0, "textFormatSetter"    # Lio/opencensus/trace/propagation/TextFormat$Setter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    sput-object p0, Lcom/google/api/client/http/OpenCensusUtils;->propagationTextFormatSetter:Lio/opencensus/trace/propagation/TextFormat$Setter;

    .line 94
    return-void
.end method
