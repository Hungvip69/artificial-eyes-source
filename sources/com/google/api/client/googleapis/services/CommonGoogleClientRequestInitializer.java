package com.google.api.client.googleapis.services;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CommonGoogleClientRequestInitializer implements GoogleClientRequestInitializer {
    private static final String REQUEST_REASON_HEADER_NAME = "X-Goog-Request-Reason";
    private static final String USER_PROJECT_HEADER_NAME = "X-Goog-User-Project";
    private final String key;
    private final String requestReason;
    private final String userAgent;
    private final String userIp;
    private final String userProject;

    @Deprecated
    public CommonGoogleClientRequestInitializer() {
        this(newBuilder());
    }

    @Deprecated
    public CommonGoogleClientRequestInitializer(String key) {
        this(key, null);
    }

    @Deprecated
    public CommonGoogleClientRequestInitializer(String key, String userIp) {
        this(newBuilder().setKey(key).setUserIp(userIp));
    }

    protected CommonGoogleClientRequestInitializer(Builder builder) {
        this.key = builder.getKey();
        this.userIp = builder.getUserIp();
        this.userAgent = builder.getUserAgent();
        this.requestReason = builder.getRequestReason();
        this.userProject = builder.getUserProject();
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Override // com.google.api.client.googleapis.services.GoogleClientRequestInitializer
    public void initialize(AbstractGoogleClientRequest<?> request) throws IOException {
        if (this.key != null) {
            request.put("key", (Object) this.key);
        }
        if (this.userIp != null) {
            request.put("userIp", (Object) this.userIp);
        }
        if (this.userAgent != null) {
            request.getRequestHeaders().setUserAgent(this.userAgent);
        }
        if (this.requestReason != null) {
            request.getRequestHeaders().set(REQUEST_REASON_HEADER_NAME, (Object) this.requestReason);
        }
        if (this.userProject != null) {
            request.getRequestHeaders().set(USER_PROJECT_HEADER_NAME, (Object) this.userProject);
        }
    }

    public final String getKey() {
        return this.key;
    }

    public final String getUserIp() {
        return this.userIp;
    }

    public final String getUserAgent() {
        return this.userAgent;
    }

    public final String getRequestReason() {
        return this.requestReason;
    }

    public final String getUserProject() {
        return this.userProject;
    }

    public static class Builder {
        private String key;
        private String requestReason;
        private String userAgent;
        private String userIp;
        private String userProject;

        public Builder setKey(String key) {
            this.key = key;
            return self();
        }

        public String getKey() {
            return this.key;
        }

        public Builder setUserIp(String userIp) {
            this.userIp = userIp;
            return self();
        }

        public String getUserIp() {
            return this.userIp;
        }

        public Builder setUserAgent(String userAgent) {
            this.userAgent = userAgent;
            return self();
        }

        public String getUserAgent() {
            return this.userAgent;
        }

        public Builder setRequestReason(String requestReason) {
            this.requestReason = requestReason;
            return self();
        }

        public String getRequestReason() {
            return this.requestReason;
        }

        public Builder setUserProject(String userProject) {
            this.userProject = userProject;
            return self();
        }

        public String getUserProject() {
            return this.userProject;
        }

        public CommonGoogleClientRequestInitializer build() {
            return new CommonGoogleClientRequestInitializer(this);
        }

        protected Builder self() {
            return this;
        }

        protected Builder() {
        }
    }
}
