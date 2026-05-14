package com.google.api.client.http;

import com.google.api.client.util.Preconditions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class BasicAuthentication implements HttpRequestInitializer, HttpExecuteInterceptor {
    private final String password;
    private final String username;

    public BasicAuthentication(String username, String password) {
        this.username = (String) Preconditions.checkNotNull(username);
        this.password = (String) Preconditions.checkNotNull(password);
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(HttpRequest request) throws IOException {
        request.setInterceptor(this);
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public void intercept(HttpRequest request) throws IOException {
        request.getHeaders().setBasicAuthentication(this.username, this.password);
    }

    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }
}
