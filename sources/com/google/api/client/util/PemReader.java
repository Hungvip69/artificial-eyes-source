package com.google.api.client.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class PemReader {
    private static final Pattern BEGIN_PATTERN = Pattern.compile("-----BEGIN ([A-Z ]+)-----");
    private static final Pattern END_PATTERN = Pattern.compile("-----END ([A-Z ]+)-----");
    private BufferedReader reader;

    public PemReader(Reader reader) {
        this.reader = new BufferedReader(reader);
    }

    public Section readNextSection() throws IOException {
        return readNextSection(null);
    }

    public Section readNextSection(String titleToLookFor) throws IOException {
        String title = null;
        StringBuilder keyBuilder = null;
        while (true) {
            String line = this.reader.readLine();
            if (line == null) {
                Preconditions.checkArgument(title == null, "missing end tag (%s)", title);
                return null;
            }
            if (keyBuilder == null) {
                Matcher m = BEGIN_PATTERN.matcher(line);
                if (m.matches()) {
                    String curTitle = m.group(1);
                    if (titleToLookFor == null || curTitle.equals(titleToLookFor)) {
                        keyBuilder = new StringBuilder();
                        title = curTitle;
                    }
                }
            } else {
                Matcher m2 = END_PATTERN.matcher(line);
                if (m2.matches()) {
                    String endTitle = m2.group(1);
                    Preconditions.checkArgument(endTitle.equals(title), "end tag (%s) doesn't match begin tag (%s)", endTitle, title);
                    return new Section(title, Base64.decodeBase64(keyBuilder.toString()));
                }
                keyBuilder.append(line);
            }
        }
    }

    public static Section readFirstSectionAndClose(Reader reader) throws IOException {
        return readFirstSectionAndClose(reader, null);
    }

    public static Section readFirstSectionAndClose(Reader reader, String titleToLookFor) throws IOException {
        PemReader pemReader = new PemReader(reader);
        try {
            return pemReader.readNextSection(titleToLookFor);
        } finally {
            pemReader.close();
        }
    }

    public void close() throws IOException {
        this.reader.close();
    }

    public static final class Section {
        private final byte[] base64decodedBytes;
        private final String title;

        Section(String title, byte[] base64decodedBytes) {
            this.title = (String) Preconditions.checkNotNull(title);
            this.base64decodedBytes = (byte[]) Preconditions.checkNotNull(base64decodedBytes);
        }

        public String getTitle() {
            return this.title;
        }

        public byte[] getBase64DecodedBytes() {
            return this.base64decodedBytes;
        }
    }
}
