package com.google.api.client.googleapis.auth.oauth2;

/* JADX INFO: loaded from: classes2.dex */
class SystemEnvironmentProvider {
    static final SystemEnvironmentProvider INSTANCE = new SystemEnvironmentProvider();

    SystemEnvironmentProvider() {
    }

    String getEnv(String name) {
        return System.getenv(name);
    }

    boolean getEnvEquals(String name, String value) {
        return System.getenv().containsKey(name) && System.getenv(name).equals(value);
    }
}
