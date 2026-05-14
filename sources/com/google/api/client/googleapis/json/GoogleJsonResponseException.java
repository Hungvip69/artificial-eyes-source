package com.google.api.client.googleapis.json;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class GoogleJsonResponseException extends HttpResponseException {
    private static final long serialVersionUID = 409811126989994864L;
    private final transient GoogleJsonError details;

    public GoogleJsonResponseException(HttpResponseException.Builder builder, GoogleJsonError details) {
        super(builder);
        this.details = details;
    }

    public final GoogleJsonError getDetails() {
        return this.details;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0076 A[Catch: IOException -> 0x009a, PHI: r1 r2 r3
      0x0076: PHI (r1v3 'details' com.google.api.client.googleapis.json.GoogleJsonError) = 
      (r1v1 'details' com.google.api.client.googleapis.json.GoogleJsonError)
      (r1v5 'details' com.google.api.client.googleapis.json.GoogleJsonError)
     binds: [B:32:0x0083, B:23:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0076: PHI (r2v4 'detailString' java.lang.String) = (r2v1 'detailString' java.lang.String), (r2v6 'detailString' java.lang.String) binds: [B:32:0x0083, B:23:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0076: PHI (r3v9 'parser' com.google.api.client.json.JsonParser) = (r3v8 'parser' com.google.api.client.json.JsonParser), (r3v10 'parser' com.google.api.client.json.JsonParser) binds: [B:32:0x0083, B:23:0x0074] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {IOException -> 0x009a, blocks: (B:3:0x0016, B:5:0x001c, B:7:0x0028, B:22:0x0070, B:24:0x0076, B:37:0x008b, B:40:0x0093, B:38:0x008f, B:41:0x0094, B:10:0x002f, B:12:0x003e, B:14:0x0045, B:16:0x0052, B:17:0x0058, B:19:0x0060, B:29:0x007d), top: B:51:0x0016, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.api.client.googleapis.json.GoogleJsonResponseException from(com.google.api.client.json.JsonFactory r7, com.google.api.client.http.HttpResponse r8) throws java.io.IOException {
        /*
            com.google.api.client.http.HttpResponseException$Builder r0 = new com.google.api.client.http.HttpResponseException$Builder
            int r1 = r8.getStatusCode()
            java.lang.String r2 = r8.getStatusMessage()
            com.google.api.client.http.HttpHeaders r3 = r8.getHeaders()
            r0.<init>(r1, r2, r3)
            com.google.api.client.util.Preconditions.checkNotNull(r7)
            r1 = 0
            r2 = 0
            boolean r3 = r8.isSuccessStatusCode()     // Catch: java.io.IOException -> L9a
            if (r3 != 0) goto L94
            java.lang.String r3 = "application/json; charset=UTF-8"
            java.lang.String r4 = r8.getContentType()     // Catch: java.io.IOException -> L9a
            boolean r3 = com.google.api.client.http.HttpMediaType.equalsIgnoreParameters(r3, r4)     // Catch: java.io.IOException -> L9a
            if (r3 == 0) goto L94
            java.io.InputStream r3 = r8.getContent()     // Catch: java.io.IOException -> L9a
            if (r3 == 0) goto L94
            r3 = 0
            java.io.InputStream r4 = r8.getContent()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            com.google.api.client.json.JsonParser r4 = r7.createJsonParser(r4)     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            r3 = r4
            com.google.api.client.json.JsonToken r4 = r3.getCurrentToken()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            if (r4 != 0) goto L43
            com.google.api.client.json.JsonToken r5 = r3.nextToken()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            r4 = r5
        L43:
            if (r4 == 0) goto L6e
            java.lang.String r5 = "error"
            r3.skipToKey(r5)     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            com.google.api.client.json.JsonToken r5 = r3.getCurrentToken()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            com.google.api.client.json.JsonToken r6 = com.google.api.client.json.JsonToken.VALUE_STRING     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            if (r5 != r6) goto L58
            java.lang.String r5 = r3.getText()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            r2 = r5
            goto L6e
        L58:
            com.google.api.client.json.JsonToken r5 = r3.getCurrentToken()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            com.google.api.client.json.JsonToken r6 = com.google.api.client.json.JsonToken.START_OBJECT     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            if (r5 != r6) goto L6e
            java.lang.Class<com.google.api.client.googleapis.json.GoogleJsonError> r5 = com.google.api.client.googleapis.json.GoogleJsonError.class
            java.lang.Object r5 = r3.parseAndClose(r5)     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            com.google.api.client.googleapis.json.GoogleJsonError r5 = (com.google.api.client.googleapis.json.GoogleJsonError) r5     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            r1 = r5
            java.lang.String r5 = r1.toPrettyString()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7c
            r2 = r5
        L6e:
            if (r3 != 0) goto L74
        L70:
            r8.ignore()     // Catch: java.io.IOException -> L9a
            goto L86
        L74:
            if (r1 != 0) goto L86
        L76:
            r3.close()     // Catch: java.io.IOException -> L9a
            goto L86
        L7a:
            r4 = move-exception
            goto L87
        L7c:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L7a
            if (r3 != 0) goto L83
            goto L70
        L83:
            if (r1 != 0) goto L86
            goto L76
        L86:
            goto L99
        L87:
            if (r3 == 0) goto L8f
            if (r1 != 0) goto L92
            r3.close()     // Catch: java.io.IOException -> L9a
            goto L92
        L8f:
            r8.ignore()     // Catch: java.io.IOException -> L9a
        L92:
            throw r4     // Catch: java.io.IOException -> L9a
        L94:
            java.lang.String r3 = r8.parseAsString()     // Catch: java.io.IOException -> L9a
            r2 = r3
        L99:
            goto L9e
        L9a:
            r3 = move-exception
            r3.printStackTrace()
        L9e:
            java.lang.StringBuilder r3 = com.google.api.client.http.HttpResponseException.computeMessageBuffer(r8)
            boolean r4 = com.google.api.client.util.Strings.isNullOrEmpty(r2)
            if (r4 != 0) goto Lb4
            java.lang.String r4 = com.google.api.client.util.StringUtils.LINE_SEPARATOR
            java.lang.StringBuilder r4 = r3.append(r4)
            r4.append(r2)
            r0.setContent(r2)
        Lb4:
            java.lang.String r4 = r3.toString()
            r0.setMessage(r4)
            com.google.api.client.googleapis.json.GoogleJsonResponseException r4 = new com.google.api.client.googleapis.json.GoogleJsonResponseException
            r4.<init>(r0, r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.json.GoogleJsonResponseException.from(com.google.api.client.json.JsonFactory, com.google.api.client.http.HttpResponse):com.google.api.client.googleapis.json.GoogleJsonResponseException");
    }

    public static HttpResponse execute(JsonFactory jsonFactory, HttpRequest request) throws Throwable {
        Preconditions.checkNotNull(jsonFactory);
        boolean originalThrowExceptionOnExecuteError = request.getThrowExceptionOnExecuteError();
        if (originalThrowExceptionOnExecuteError) {
            request.setThrowExceptionOnExecuteError(false);
        }
        HttpResponse response = request.execute();
        request.setThrowExceptionOnExecuteError(originalThrowExceptionOnExecuteError);
        if (!originalThrowExceptionOnExecuteError || response.isSuccessStatusCode()) {
            return response;
        }
        throw from(jsonFactory, response);
    }
}
