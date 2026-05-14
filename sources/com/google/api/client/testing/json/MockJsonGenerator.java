package com.google.api.client.testing.json;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class MockJsonGenerator extends JsonGenerator {
    private final JsonFactory factory;

    MockJsonGenerator(JsonFactory factory) {
        this.factory = factory;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonGenerator, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartArray() throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndArray() throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartObject() throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndObject() throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeFieldName(String name) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNull() throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeString(String value) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeBoolean(boolean state) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(int v) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(long v) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigInteger v) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(float v) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(double v) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigDecimal v) throws IOException {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(String encodedValue) throws IOException {
    }
}
