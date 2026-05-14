package com.google.api.client.testing.util;

import com.google.api.client.util.BackOff;
import com.google.api.client.util.Preconditions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class MockBackOff implements BackOff {
    private long backOffMillis;
    private int maxTries = 10;
    private int numTries;

    @Override // com.google.api.client.util.BackOff
    public void reset() throws IOException {
        this.numTries = 0;
    }

    @Override // com.google.api.client.util.BackOff
    public long nextBackOffMillis() throws IOException {
        if (this.numTries >= this.maxTries || this.backOffMillis == -1) {
            return -1L;
        }
        this.numTries++;
        return this.backOffMillis;
    }

    public MockBackOff setBackOffMillis(long backOffMillis) {
        Preconditions.checkArgument(backOffMillis == -1 || backOffMillis >= 0);
        this.backOffMillis = backOffMillis;
        return this;
    }

    public MockBackOff setMaxTries(int maxTries) {
        Preconditions.checkArgument(maxTries >= 0);
        this.maxTries = maxTries;
        return this;
    }

    public final int getMaxTries() {
        return this.maxTries;
    }

    public final int getNumberOfTries() {
        return this.numTries;
    }
}
