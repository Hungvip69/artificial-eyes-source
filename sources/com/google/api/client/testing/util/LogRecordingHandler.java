package com.google.api.client.testing.util;

import com.google.api.client.util.Lists;
import java.util.List;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

/* JADX INFO: loaded from: classes2.dex */
public class LogRecordingHandler extends Handler {
    private final List<LogRecord> records = Lists.newArrayList();

    @Override // java.util.logging.Handler
    public void publish(LogRecord record) {
        this.records.add(record);
    }

    @Override // java.util.logging.Handler
    public void flush() {
    }

    @Override // java.util.logging.Handler
    public void close() throws SecurityException {
    }

    public List<String> messages() {
        List<String> result = Lists.newArrayList();
        for (LogRecord record : this.records) {
            result.add(record.getMessage());
        }
        return result;
    }
}
