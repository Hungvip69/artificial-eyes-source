package com.google.api.client.util.store;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class DataStoreUtils {
    public static String toString(DataStore<?> dataStore) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append('{');
            boolean first = true;
            for (String key : dataStore.keySet()) {
                if (first) {
                    first = false;
                } else {
                    sb.append(", ");
                }
                sb.append(key).append('=').append(dataStore.get(key));
            }
            return sb.append('}').toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private DataStoreUtils() {
    }
}
