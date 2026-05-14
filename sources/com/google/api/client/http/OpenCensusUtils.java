package com.google.api.client.http;

import com.google.api.client.util.Preconditions;
import com.google.common.collect.ImmutableList;
import io.opencensus.contrib.http.util.HttpPropagationUtil;
import io.opencensus.trace.BlankSpan;
import io.opencensus.trace.EndSpanOptions;
import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.Span;
import io.opencensus.trace.Status;
import io.opencensus.trace.Tracer;
import io.opencensus.trace.Tracing;
import io.opencensus.trace.propagation.TextFormat;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class OpenCensusUtils {

    @Nullable
    static volatile TextFormat propagationTextFormat;

    @Nullable
    static volatile TextFormat.Setter propagationTextFormatSetter;
    private static final Logger logger = Logger.getLogger(OpenCensusUtils.class.getName());
    public static final String SPAN_NAME_HTTP_REQUEST_EXECUTE = "Sent." + HttpRequest.class.getName() + ".execute";
    private static final Tracer tracer = Tracing.getTracer();
    private static final AtomicLong idGenerator = new AtomicLong();
    private static volatile boolean isRecordEvent = true;

    static {
        propagationTextFormat = null;
        propagationTextFormatSetter = null;
        try {
            propagationTextFormat = HttpPropagationUtil.getCloudTraceFormat();
            propagationTextFormatSetter = new TextFormat.Setter<HttpHeaders>() { // from class: com.google.api.client.http.OpenCensusUtils.1
                public void put(HttpHeaders carrier, String key, String value) {
                    carrier.set(key, (Object) value);
                }
            };
        } catch (Exception e) {
            logger.log(Level.WARNING, "Cannot initialize default OpenCensus HTTP propagation text format.", (Throwable) e);
        }
        try {
            Tracing.getExportComponent().getSampledSpanStore().registerSpanNamesForCollection(ImmutableList.of(SPAN_NAME_HTTP_REQUEST_EXECUTE));
        } catch (Exception e2) {
            logger.log(Level.WARNING, "Cannot register default OpenCensus span names for collection.", (Throwable) e2);
        }
    }

    public static void setPropagationTextFormat(@Nullable TextFormat textFormat) {
        propagationTextFormat = textFormat;
    }

    public static void setPropagationTextFormatSetter(@Nullable TextFormat.Setter textFormatSetter) {
        propagationTextFormatSetter = textFormatSetter;
    }

    public static void setIsRecordEvent(boolean recordEvent) {
        isRecordEvent = recordEvent;
    }

    public static Tracer getTracer() {
        return tracer;
    }

    public static boolean isRecordEvent() {
        return isRecordEvent;
    }

    public static void propagateTracingContext(Span span, HttpHeaders headers) {
        Preconditions.checkArgument(span != null, "span should not be null.");
        Preconditions.checkArgument(headers != null, "headers should not be null.");
        if (propagationTextFormat != null && propagationTextFormatSetter != null && !span.equals(BlankSpan.INSTANCE)) {
            propagationTextFormat.inject(span.getContext(), headers, propagationTextFormatSetter);
        }
    }

    public static EndSpanOptions getEndSpanOptions(@Nullable Integer statusCode) {
        EndSpanOptions.Builder builder = EndSpanOptions.builder();
        if (statusCode == null) {
            builder.setStatus(Status.UNKNOWN);
        } else if (!HttpStatusCodes.isSuccess(statusCode.intValue())) {
            switch (statusCode.intValue()) {
                case HttpStatusCodes.STATUS_CODE_BAD_REQUEST /* 400 */:
                    builder.setStatus(Status.INVALID_ARGUMENT);
                    break;
                case 401:
                    builder.setStatus(Status.UNAUTHENTICATED);
                    break;
                case 403:
                    builder.setStatus(Status.PERMISSION_DENIED);
                    break;
                case 404:
                    builder.setStatus(Status.NOT_FOUND);
                    break;
                case 412:
                    builder.setStatus(Status.FAILED_PRECONDITION);
                    break;
                case 500:
                    builder.setStatus(Status.UNAVAILABLE);
                    break;
                default:
                    builder.setStatus(Status.UNKNOWN);
                    break;
            }
        } else {
            builder.setStatus(Status.OK);
        }
        return builder.build();
    }

    public static void recordSentMessageEvent(Span span, long size) {
        recordMessageEvent(span, size, MessageEvent.Type.SENT);
    }

    public static void recordReceivedMessageEvent(Span span, long size) {
        recordMessageEvent(span, size, MessageEvent.Type.RECEIVED);
    }

    static void recordMessageEvent(Span span, long size, MessageEvent.Type eventType) {
        Preconditions.checkArgument(span != null, "span should not be null.");
        if (size < 0) {
            size = 0;
        }
        MessageEvent event = MessageEvent.builder(eventType, idGenerator.getAndIncrement()).setUncompressedMessageSize(size).build();
        span.addMessageEvent(event);
    }

    private OpenCensusUtils() {
    }
}
