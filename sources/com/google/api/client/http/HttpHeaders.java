package com.google.api.client.http;

import com.google.api.client.util.ArrayValueMap;
import com.google.api.client.util.Base64;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StringUtils;
import com.google.api.client.util.Throwables;
import com.google.api.client.util.Types;
import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class HttpHeaders extends GenericData {

    @Key(com.google.common.net.HttpHeaders.ACCEPT)
    private List<String> accept;

    @Key(com.google.common.net.HttpHeaders.ACCEPT_ENCODING)
    private List<String> acceptEncoding;

    @Key(com.google.common.net.HttpHeaders.AGE)
    private List<Long> age;

    @Key(com.google.common.net.HttpHeaders.WWW_AUTHENTICATE)
    private List<String> authenticate;

    @Key(com.google.common.net.HttpHeaders.AUTHORIZATION)
    private List<String> authorization;

    @Key(com.google.common.net.HttpHeaders.CACHE_CONTROL)
    private List<String> cacheControl;

    @Key(com.google.common.net.HttpHeaders.CONTENT_ENCODING)
    private List<String> contentEncoding;

    @Key(com.google.common.net.HttpHeaders.CONTENT_LENGTH)
    private List<Long> contentLength;

    @Key(com.google.common.net.HttpHeaders.CONTENT_MD5)
    private List<String> contentMD5;

    @Key(com.google.common.net.HttpHeaders.CONTENT_RANGE)
    private List<String> contentRange;

    @Key(com.google.common.net.HttpHeaders.CONTENT_TYPE)
    private List<String> contentType;

    @Key(com.google.common.net.HttpHeaders.COOKIE)
    private List<String> cookie;

    @Key(com.google.common.net.HttpHeaders.DATE)
    private List<String> date;

    @Key(com.google.common.net.HttpHeaders.ETAG)
    private List<String> etag;

    @Key(com.google.common.net.HttpHeaders.EXPIRES)
    private List<String> expires;

    @Key(com.google.common.net.HttpHeaders.IF_MATCH)
    private List<String> ifMatch;

    @Key(com.google.common.net.HttpHeaders.IF_MODIFIED_SINCE)
    private List<String> ifModifiedSince;

    @Key(com.google.common.net.HttpHeaders.IF_NONE_MATCH)
    private List<String> ifNoneMatch;

    @Key(com.google.common.net.HttpHeaders.IF_RANGE)
    private List<String> ifRange;

    @Key(com.google.common.net.HttpHeaders.IF_UNMODIFIED_SINCE)
    private List<String> ifUnmodifiedSince;

    @Key(com.google.common.net.HttpHeaders.LAST_MODIFIED)
    private List<String> lastModified;

    @Key(com.google.common.net.HttpHeaders.LOCATION)
    private List<String> location;

    @Key("MIME-Version")
    private List<String> mimeVersion;

    @Key(com.google.common.net.HttpHeaders.RANGE)
    private List<String> range;

    @Key(com.google.common.net.HttpHeaders.RETRY_AFTER)
    private List<String> retryAfter;

    @Key(com.google.common.net.HttpHeaders.USER_AGENT)
    private List<String> userAgent;

    @Key(com.google.common.net.HttpHeaders.WARNING)
    private List<String> warning;

    public HttpHeaders() {
        super(EnumSet.of(GenericData.Flags.IGNORE_CASE));
        this.acceptEncoding = new ArrayList(Collections.singleton("gzip"));
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public HttpHeaders clone() {
        return (HttpHeaders) super.clone();
    }

    @Override // com.google.api.client.util.GenericData
    public HttpHeaders set(String fieldName, Object value) {
        return (HttpHeaders) super.set(fieldName, value);
    }

    public final String getAccept() {
        return (String) getFirstHeaderValue(this.accept);
    }

    public HttpHeaders setAccept(String accept) {
        this.accept = getAsList(accept);
        return this;
    }

    public final String getAcceptEncoding() {
        return (String) getFirstHeaderValue(this.acceptEncoding);
    }

    public HttpHeaders setAcceptEncoding(String acceptEncoding) {
        this.acceptEncoding = getAsList(acceptEncoding);
        return this;
    }

    public final String getAuthorization() {
        return (String) getFirstHeaderValue(this.authorization);
    }

    public final List<String> getAuthorizationAsList() {
        return this.authorization;
    }

    public HttpHeaders setAuthorization(String authorization) {
        return setAuthorization(getAsList(authorization));
    }

    public HttpHeaders setAuthorization(List<String> authorization) {
        this.authorization = authorization;
        return this;
    }

    public final String getCacheControl() {
        return (String) getFirstHeaderValue(this.cacheControl);
    }

    public HttpHeaders setCacheControl(String cacheControl) {
        this.cacheControl = getAsList(cacheControl);
        return this;
    }

    public final String getContentEncoding() {
        return (String) getFirstHeaderValue(this.contentEncoding);
    }

    public HttpHeaders setContentEncoding(String contentEncoding) {
        this.contentEncoding = getAsList(contentEncoding);
        return this;
    }

    public final Long getContentLength() {
        return (Long) getFirstHeaderValue(this.contentLength);
    }

    public HttpHeaders setContentLength(Long contentLength) {
        this.contentLength = getAsList(contentLength);
        return this;
    }

    public final String getContentMD5() {
        return (String) getFirstHeaderValue(this.contentMD5);
    }

    public HttpHeaders setContentMD5(String contentMD5) {
        this.contentMD5 = getAsList(contentMD5);
        return this;
    }

    public final String getContentRange() {
        return (String) getFirstHeaderValue(this.contentRange);
    }

    public HttpHeaders setContentRange(String contentRange) {
        this.contentRange = getAsList(contentRange);
        return this;
    }

    public final String getContentType() {
        return (String) getFirstHeaderValue(this.contentType);
    }

    public HttpHeaders setContentType(String contentType) {
        this.contentType = getAsList(contentType);
        return this;
    }

    public final String getCookie() {
        return (String) getFirstHeaderValue(this.cookie);
    }

    public HttpHeaders setCookie(String cookie) {
        this.cookie = getAsList(cookie);
        return this;
    }

    public final String getDate() {
        return (String) getFirstHeaderValue(this.date);
    }

    public HttpHeaders setDate(String date) {
        this.date = getAsList(date);
        return this;
    }

    public final String getETag() {
        return (String) getFirstHeaderValue(this.etag);
    }

    public HttpHeaders setETag(String etag) {
        this.etag = getAsList(etag);
        return this;
    }

    public final String getExpires() {
        return (String) getFirstHeaderValue(this.expires);
    }

    public HttpHeaders setExpires(String expires) {
        this.expires = getAsList(expires);
        return this;
    }

    public final String getIfModifiedSince() {
        return (String) getFirstHeaderValue(this.ifModifiedSince);
    }

    public HttpHeaders setIfModifiedSince(String ifModifiedSince) {
        this.ifModifiedSince = getAsList(ifModifiedSince);
        return this;
    }

    public final String getIfMatch() {
        return (String) getFirstHeaderValue(this.ifMatch);
    }

    public HttpHeaders setIfMatch(String ifMatch) {
        this.ifMatch = getAsList(ifMatch);
        return this;
    }

    public final String getIfNoneMatch() {
        return (String) getFirstHeaderValue(this.ifNoneMatch);
    }

    public HttpHeaders setIfNoneMatch(String ifNoneMatch) {
        this.ifNoneMatch = getAsList(ifNoneMatch);
        return this;
    }

    public final String getIfUnmodifiedSince() {
        return (String) getFirstHeaderValue(this.ifUnmodifiedSince);
    }

    public HttpHeaders setIfUnmodifiedSince(String ifUnmodifiedSince) {
        this.ifUnmodifiedSince = getAsList(ifUnmodifiedSince);
        return this;
    }

    public final String getIfRange() {
        return (String) getFirstHeaderValue(this.ifRange);
    }

    public HttpHeaders setIfRange(String ifRange) {
        this.ifRange = getAsList(ifRange);
        return this;
    }

    public final String getLastModified() {
        return (String) getFirstHeaderValue(this.lastModified);
    }

    public HttpHeaders setLastModified(String lastModified) {
        this.lastModified = getAsList(lastModified);
        return this;
    }

    public final String getLocation() {
        return (String) getFirstHeaderValue(this.location);
    }

    public HttpHeaders setLocation(String location) {
        this.location = getAsList(location);
        return this;
    }

    public final String getMimeVersion() {
        return (String) getFirstHeaderValue(this.mimeVersion);
    }

    public HttpHeaders setMimeVersion(String mimeVersion) {
        this.mimeVersion = getAsList(mimeVersion);
        return this;
    }

    public final String getRange() {
        return (String) getFirstHeaderValue(this.range);
    }

    public HttpHeaders setRange(String range) {
        this.range = getAsList(range);
        return this;
    }

    public final String getRetryAfter() {
        return (String) getFirstHeaderValue(this.retryAfter);
    }

    public HttpHeaders setRetryAfter(String retryAfter) {
        this.retryAfter = getAsList(retryAfter);
        return this;
    }

    public final String getUserAgent() {
        return (String) getFirstHeaderValue(this.userAgent);
    }

    public HttpHeaders setUserAgent(String userAgent) {
        this.userAgent = getAsList(userAgent);
        return this;
    }

    public final String getAuthenticate() {
        return (String) getFirstHeaderValue(this.authenticate);
    }

    public final List<String> getAuthenticateAsList() {
        return this.authenticate;
    }

    public HttpHeaders setAuthenticate(String authenticate) {
        this.authenticate = getAsList(authenticate);
        return this;
    }

    public HttpHeaders addWarning(String warning) {
        if (warning == null) {
            return this;
        }
        if (this.warning == null) {
            this.warning = getAsList(warning);
        } else {
            this.warning.add(warning);
        }
        return this;
    }

    public final List<String> getWarning() {
        if (this.warning == null) {
            return null;
        }
        return new ArrayList(this.warning);
    }

    public final Long getAge() {
        return (Long) getFirstHeaderValue(this.age);
    }

    public HttpHeaders setAge(Long age) {
        this.age = getAsList(age);
        return this;
    }

    public HttpHeaders setBasicAuthentication(String username, String password) {
        String userPass = ((String) Preconditions.checkNotNull(username)) + ":" + ((String) Preconditions.checkNotNull(password));
        String encoded = Base64.encodeBase64String(StringUtils.getBytesUtf8(userPass));
        return setAuthorization("Basic " + encoded);
    }

    private static void addHeader(Logger logger, StringBuilder logbuf, StringBuilder curlbuf, LowLevelHttpRequest lowLevelHttpRequest, String name, Object value, Writer writer) throws IOException {
        if (value == null || Data.isNull(value)) {
            return;
        }
        String stringValue = toStringValue(value);
        String loggedStringValue = stringValue;
        if ((com.google.common.net.HttpHeaders.AUTHORIZATION.equalsIgnoreCase(name) || com.google.common.net.HttpHeaders.COOKIE.equalsIgnoreCase(name)) && (logger == null || !logger.isLoggable(Level.ALL))) {
            loggedStringValue = "<Not Logged>";
        }
        if (logbuf != null) {
            logbuf.append(name).append(": ");
            logbuf.append(loggedStringValue);
            logbuf.append(StringUtils.LINE_SEPARATOR);
        }
        if (curlbuf != null) {
            curlbuf.append(" -H '").append(name).append(": ").append(loggedStringValue).append("'");
        }
        if (lowLevelHttpRequest != null) {
            lowLevelHttpRequest.addHeader(name, stringValue);
        }
        if (writer != null) {
            writer.write(name);
            writer.write(": ");
            writer.write(stringValue);
            writer.write(HTTP.CRLF);
        }
    }

    private static String toStringValue(Object headerValue) {
        if (headerValue instanceof Enum) {
            return FieldInfo.of((Enum<?>) headerValue).getName();
        }
        return headerValue.toString();
    }

    static void serializeHeaders(HttpHeaders headers, StringBuilder logbuf, StringBuilder curlbuf, Logger logger, LowLevelHttpRequest lowLevelHttpRequest) throws IOException {
        serializeHeaders(headers, logbuf, curlbuf, logger, lowLevelHttpRequest, null);
    }

    static void serializeHeaders(HttpHeaders headers, StringBuilder logbuf, StringBuilder curlbuf, Logger logger, LowLevelHttpRequest lowLevelHttpRequest, Writer writer) throws IOException {
        HashSet<String> headerNames = new HashSet<>();
        for (Map.Entry<String, Object> headerEntry : headers.entrySet()) {
            String name = headerEntry.getKey();
            Preconditions.checkArgument(headerNames.add(name), "multiple headers of the same name (headers are case insensitive): %s", name);
            Object value = headerEntry.getValue();
            if (value != null) {
                String displayName = name;
                FieldInfo fieldInfo = headers.getClassInfo().getFieldInfo(name);
                if (fieldInfo != null) {
                    displayName = fieldInfo.getName();
                }
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    for (Object repeatedValue : Types.iterableOf(value)) {
                        addHeader(logger, logbuf, curlbuf, lowLevelHttpRequest, displayName, repeatedValue, writer);
                    }
                } else {
                    addHeader(logger, logbuf, curlbuf, lowLevelHttpRequest, displayName, value, writer);
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }

    public static void serializeHeadersForMultipartRequests(HttpHeaders headers, StringBuilder logbuf, Logger logger, Writer writer) throws IOException {
        serializeHeaders(headers, logbuf, null, logger, null, writer);
    }

    public final void fromHttpResponse(LowLevelHttpResponse response, StringBuilder logger) throws IOException {
        clear();
        ParseHeaderState state = new ParseHeaderState(this, logger);
        int headerCount = response.getHeaderCount();
        for (int i = 0; i < headerCount; i++) {
            parseHeader(response.getHeaderName(i), response.getHeaderValue(i), state);
        }
        state.finish();
    }

    private static class HeaderParsingFakeLevelHttpRequest extends LowLevelHttpRequest {
        private final ParseHeaderState state;
        private final HttpHeaders target;

        HeaderParsingFakeLevelHttpRequest(HttpHeaders target, ParseHeaderState state) {
            this.target = target;
            this.state = state;
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public void addHeader(String name, String value) {
            this.target.parseHeader(name, value, this.state);
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public LowLevelHttpResponse execute() throws IOException {
            throw new UnsupportedOperationException();
        }
    }

    private <T> T getFirstHeaderValue(List<T> internalValue) {
        if (internalValue == null) {
            return null;
        }
        return internalValue.get(0);
    }

    private <T> List<T> getAsList(T passedValue) {
        if (passedValue == null) {
            return null;
        }
        List<T> result = new ArrayList<>();
        result.add(passedValue);
        return result;
    }

    public String getFirstHeaderStringValue(String name) {
        Object value = get(name.toLowerCase(Locale.US));
        if (value == null) {
            return null;
        }
        Class<?> cls = value.getClass();
        if ((value instanceof Iterable) || cls.isArray()) {
            Iterator it = Types.iterableOf(value).iterator();
            if (it.hasNext()) {
                Object repeatedValue = it.next();
                return toStringValue(repeatedValue);
            }
        }
        return toStringValue(value);
    }

    public List<String> getHeaderStringValues(String name) {
        Object value = get(name.toLowerCase(Locale.US));
        if (value == null) {
            return Collections.emptyList();
        }
        Class<?> cls = value.getClass();
        if ((value instanceof Iterable) || cls.isArray()) {
            List<String> values = new ArrayList<>();
            for (Object repeatedValue : Types.iterableOf(value)) {
                values.add(toStringValue(repeatedValue));
            }
            return Collections.unmodifiableList(values);
        }
        return Collections.singletonList(toStringValue(value));
    }

    public final void fromHttpHeaders(HttpHeaders headers) {
        try {
            ParseHeaderState state = new ParseHeaderState(this, null);
            serializeHeaders(headers, null, null, null, new HeaderParsingFakeLevelHttpRequest(this, state));
            state.finish();
        } catch (IOException ex) {
            throw Throwables.propagate(ex);
        }
    }

    private static final class ParseHeaderState {
        final ArrayValueMap arrayValueMap;
        final ClassInfo classInfo;
        final List<Type> context;
        final StringBuilder logger;

        public ParseHeaderState(HttpHeaders headers, StringBuilder logger) {
            Class<?> cls = headers.getClass();
            this.context = Arrays.asList(cls);
            this.classInfo = ClassInfo.of(cls, true);
            this.logger = logger;
            this.arrayValueMap = new ArrayValueMap(headers);
        }

        void finish() {
            this.arrayValueMap.setValues();
        }
    }

    void parseHeader(String headerName, String headerValue, ParseHeaderState state) {
        List<Type> context = state.context;
        ClassInfo classInfo = state.classInfo;
        ArrayValueMap arrayValueMap = state.arrayValueMap;
        StringBuilder logger = state.logger;
        if (logger != null) {
            logger.append(headerName + ": " + headerValue).append(StringUtils.LINE_SEPARATOR);
        }
        FieldInfo fieldInfo = classInfo.getFieldInfo(headerName);
        if (fieldInfo != null) {
            Type type = Data.resolveWildcardTypeOrTypeVariable(context, fieldInfo.getGenericType());
            if (Types.isArray(type)) {
                Class<?> rawArrayComponentType = Types.getRawArrayComponentType(context, Types.getArrayComponentType(type));
                arrayValueMap.put(fieldInfo.getField(), rawArrayComponentType, parseValue(rawArrayComponentType, context, headerValue));
                return;
            } else {
                if (Types.isAssignableToOrFrom(Types.getRawArrayComponentType(context, type), Iterable.class)) {
                    Collection<Object> collection = (Collection) fieldInfo.getValue(this);
                    if (collection == null) {
                        collection = Data.newCollectionInstance(type);
                        fieldInfo.setValue(this, collection);
                    }
                    Type subFieldType = type == Object.class ? null : Types.getIterableParameter(type);
                    collection.add(parseValue(subFieldType, context, headerValue));
                    return;
                }
                fieldInfo.setValue(this, parseValue(type, context, headerValue));
                return;
            }
        }
        ArrayList<String> listValue = (ArrayList) get(headerName);
        if (listValue == null) {
            listValue = new ArrayList<>();
            set(headerName, (Object) listValue);
        }
        listValue.add(headerValue);
    }

    private static Object parseValue(Type valueType, List<Type> context, String value) {
        Type resolved = Data.resolveWildcardTypeOrTypeVariable(context, valueType);
        return Data.parsePrimitiveValue(resolved, value);
    }
}
