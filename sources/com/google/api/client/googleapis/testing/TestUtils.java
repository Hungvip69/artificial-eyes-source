package com.google.api.client.googleapis.testing;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class TestUtils {
    private static final String UTF_8 = "UTF-8";

    public static Map<String, String> parseQuery(String query) throws IOException {
        Map<String, String> map = new HashMap<>();
        Iterable<String> entries = Splitter.on('&').split(query);
        for (String entry : entries) {
            List<String> sides = Lists.newArrayList(Splitter.on('=').split(entry));
            if (sides.size() != 2) {
                throw new IOException("Invalid Query String");
            }
            String key = URLDecoder.decode(sides.get(0), UTF_8);
            String value = URLDecoder.decode(sides.get(1), UTF_8);
            map.put(key, value);
        }
        return map;
    }

    private TestUtils() {
    }
}
