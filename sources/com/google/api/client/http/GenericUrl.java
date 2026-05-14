package com.google.api.client.http;

import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.escape.CharEscapers;
import com.google.api.client.util.escape.Escaper;
import com.google.api.client.util.escape.PercentEscaper;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class GenericUrl extends GenericData {
    private static final Escaper URI_FRAGMENT_ESCAPER = new PercentEscaper("=&-_.!~*'()@:$,;/?:");
    private String fragment;
    private String host;
    private List<String> pathParts;
    private int port;
    private String scheme;
    private String userInfo;
    private boolean verbatim;

    public GenericUrl() {
        this.port = -1;
    }

    public GenericUrl(String encodedUrl) {
        this(encodedUrl, false);
    }

    public GenericUrl(String encodedUrl, boolean verbatim) {
        this(parseURL(encodedUrl), verbatim);
    }

    public GenericUrl(URI uri) {
        this(uri, false);
    }

    public GenericUrl(URI uri, boolean verbatim) {
        this(uri.getScheme(), uri.getHost(), uri.getPort(), uri.getRawPath(), uri.getRawFragment(), uri.getRawQuery(), uri.getRawUserInfo(), verbatim);
    }

    public GenericUrl(URL url) {
        this(url, false);
    }

    public GenericUrl(URL url, boolean verbatim) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo(), verbatim);
    }

    private GenericUrl(String scheme, String host, int port, String path, String fragment, String query, String userInfo, boolean verbatim) {
        this.port = -1;
        this.scheme = scheme.toLowerCase(Locale.US);
        this.host = host;
        this.port = port;
        this.pathParts = toPathParts(path, verbatim);
        this.verbatim = verbatim;
        if (verbatim) {
            this.fragment = fragment;
            if (query != null) {
                UrlEncodedParser.parse(query, (Object) this, false);
            }
            this.userInfo = userInfo;
            return;
        }
        this.fragment = fragment != null ? CharEscapers.decodeUri(fragment) : null;
        if (query != null) {
            UrlEncodedParser.parse(query, this);
        }
        this.userInfo = userInfo != null ? CharEscapers.decodeUri(userInfo) : null;
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return build().hashCode();
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof GenericUrl)) {
            return false;
        }
        GenericUrl other = (GenericUrl) obj;
        return build().equals(other.build());
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public String toString() {
        return build();
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public GenericUrl clone() {
        GenericUrl result = (GenericUrl) super.clone();
        if (this.pathParts != null) {
            result.pathParts = new ArrayList(this.pathParts);
        }
        return result;
    }

    @Override // com.google.api.client.util.GenericData
    public GenericUrl set(String fieldName, Object value) {
        return (GenericUrl) super.set(fieldName, value);
    }

    public final String getScheme() {
        return this.scheme;
    }

    public final void setScheme(String scheme) {
        this.scheme = (String) Preconditions.checkNotNull(scheme);
    }

    public String getHost() {
        return this.host;
    }

    public final void setHost(String host) {
        this.host = (String) Preconditions.checkNotNull(host);
    }

    public final String getUserInfo() {
        return this.userInfo;
    }

    public final void setUserInfo(String userInfo) {
        this.userInfo = userInfo;
    }

    public int getPort() {
        return this.port;
    }

    public final void setPort(int port) {
        Preconditions.checkArgument(port >= -1, "expected port >= -1");
        this.port = port;
    }

    public List<String> getPathParts() {
        return this.pathParts;
    }

    public void setPathParts(List<String> pathParts) {
        this.pathParts = pathParts;
    }

    public String getFragment() {
        return this.fragment;
    }

    public final void setFragment(String fragment) {
        this.fragment = fragment;
    }

    public final String build() {
        return buildAuthority() + buildRelativeUrl();
    }

    public final String buildAuthority() {
        StringBuilder buf = new StringBuilder();
        buf.append((String) Preconditions.checkNotNull(this.scheme));
        buf.append("://");
        if (this.userInfo != null) {
            buf.append(this.verbatim ? this.userInfo : CharEscapers.escapeUriUserInfo(this.userInfo)).append('@');
        }
        buf.append((String) Preconditions.checkNotNull(this.host));
        int port = this.port;
        if (port != -1) {
            buf.append(':').append(port);
        }
        return buf.toString();
    }

    public final String buildRelativeUrl() {
        StringBuilder buf = new StringBuilder();
        if (this.pathParts != null) {
            appendRawPathFromParts(buf);
        }
        addQueryParams(entrySet(), buf, this.verbatim);
        String fragment = this.fragment;
        if (fragment != null) {
            buf.append('#').append(this.verbatim ? fragment : URI_FRAGMENT_ESCAPER.escape(fragment));
        }
        return buf.toString();
    }

    public final URI toURI() {
        return toURI(build());
    }

    public final URL toURL() {
        return parseURL(build());
    }

    public final URL toURL(String relativeUrl) {
        try {
            URL url = toURL();
            return new URL(url, relativeUrl);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public Object getFirst(String name) {
        Object value = get(name);
        if (value instanceof Collection) {
            Collection<Object> collectionValue = (Collection) value;
            Iterator<Object> iterator = collectionValue.iterator();
            if (iterator.hasNext()) {
                return iterator.next();
            }
            return null;
        }
        return value;
    }

    public Collection<Object> getAll(String name) {
        Object value = get(name);
        if (value == null) {
            return Collections.emptySet();
        }
        if (value instanceof Collection) {
            Collection<Object> collectionValue = (Collection) value;
            return Collections.unmodifiableCollection(collectionValue);
        }
        Collection<Object> collectionValue2 = Collections.singleton(value);
        return collectionValue2;
    }

    public String getRawPath() {
        List<String> pathParts = this.pathParts;
        if (pathParts == null) {
            return null;
        }
        StringBuilder buf = new StringBuilder();
        appendRawPathFromParts(buf);
        return buf.toString();
    }

    public void setRawPath(String encodedPath) {
        this.pathParts = toPathParts(encodedPath, this.verbatim);
    }

    public void appendRawPath(String encodedPath) {
        if (encodedPath != null && encodedPath.length() != 0) {
            List<String> appendedPathParts = toPathParts(encodedPath, this.verbatim);
            if (this.pathParts == null || this.pathParts.isEmpty()) {
                this.pathParts = appendedPathParts;
                return;
            }
            int size = this.pathParts.size();
            this.pathParts.set(size - 1, this.pathParts.get(size - 1) + appendedPathParts.get(0));
            this.pathParts.addAll(appendedPathParts.subList(1, appendedPathParts.size()));
        }
    }

    public static List<String> toPathParts(String encodedPath) {
        return toPathParts(encodedPath, false);
    }

    public static List<String> toPathParts(String encodedPath, boolean verbatim) {
        String sub;
        if (encodedPath == null || encodedPath.length() == 0) {
            return null;
        }
        List<String> result = new ArrayList<>();
        int cur = 0;
        boolean notDone = true;
        while (notDone) {
            int slash = encodedPath.indexOf(47, cur);
            notDone = slash != -1;
            if (notDone) {
                sub = encodedPath.substring(cur, slash);
            } else {
                sub = encodedPath.substring(cur);
            }
            result.add(verbatim ? sub : CharEscapers.decodeUriPath(sub));
            cur = slash + 1;
        }
        return result;
    }

    private void appendRawPathFromParts(StringBuilder buf) {
        int size = this.pathParts.size();
        for (int i = 0; i < size; i++) {
            String pathPart = this.pathParts.get(i);
            if (i != 0) {
                buf.append('/');
            }
            if (pathPart.length() != 0) {
                buf.append(this.verbatim ? pathPart : CharEscapers.escapeUriPath(pathPart));
            }
        }
    }

    static void addQueryParams(Set<Map.Entry<String, Object>> entrySet, StringBuilder buf, boolean verbatim) {
        String name;
        boolean first = true;
        for (Map.Entry<String, Object> nameValueEntry : entrySet) {
            Object value = nameValueEntry.getValue();
            if (value != null) {
                if (verbatim) {
                    name = nameValueEntry.getKey();
                } else {
                    name = CharEscapers.escapeUriQuery(nameValueEntry.getKey());
                }
                if (value instanceof Collection) {
                    Collection<?> collectionValue = (Collection) value;
                    for (Object repeatedValue : collectionValue) {
                        first = appendParam(first, buf, name, repeatedValue, verbatim);
                    }
                } else {
                    first = appendParam(first, buf, name, value, verbatim);
                }
            }
        }
    }

    private static boolean appendParam(boolean first, StringBuilder buf, String name, Object value, boolean verbatim) {
        if (first) {
            first = false;
            buf.append('?');
        } else {
            buf.append('&');
        }
        buf.append(name);
        String stringValue = verbatim ? value.toString() : CharEscapers.escapeUriQuery(value.toString());
        if (stringValue.length() != 0) {
            buf.append('=').append(stringValue);
        }
        return first;
    }

    private static URI toURI(String encodedUrl) {
        try {
            return new URI(encodedUrl);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException(e);
        }
    }

    private static URL parseURL(String encodedUrl) {
        try {
            return new URL(encodedUrl);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
