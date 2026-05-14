package com.google.appinventor.components.runtime.repackaged.org.json;

/* JADX INFO: loaded from: classes.dex */
public class CDL {
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
    
        throw r5.syntaxError(new java.lang.StringBuffer().append("Missing close quote '").append(r0).append("'.").toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String getValue(com.google.appinventor.components.runtime.repackaged.org.json.JSONTokener r5) throws com.google.appinventor.components.runtime.repackaged.org.json.JSONException {
        /*
        L1:
            char r0 = r5.next()
            r1 = 32
            if (r0 == r1) goto L1
            r1 = 9
            if (r0 == r1) goto L1
            r1 = 0
            r2 = 0
            switch(r0) {
                case 0: goto L60;
                case 34: goto L22;
                case 39: goto L22;
                case 44: goto L1c;
                default: goto L12;
            }
        L12:
            r5.back()
            r3 = 44
            java.lang.String r3 = r5.nextTo(r3)
            return r3
        L1c:
            r5.back()
            java.lang.String r3 = ""
            return r3
        L22:
            r1 = r0
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
        L28:
            char r0 = r5.next()
            if (r0 != r1) goto L34
        L2f:
            java.lang.String r3 = r2.toString()
            return r3
        L34:
            if (r0 == 0) goto L42
            r3 = 10
            if (r0 == r3) goto L42
            r3 = 13
            if (r0 == r3) goto L42
            r2.append(r0)
            goto L28
        L42:
            java.lang.StringBuffer r3 = new java.lang.StringBuffer
            r3.<init>()
            java.lang.String r4 = "Missing close quote '"
            java.lang.StringBuffer r3 = r3.append(r4)
            java.lang.StringBuffer r3 = r3.append(r1)
            java.lang.String r4 = "'."
            java.lang.StringBuffer r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.google.appinventor.components.runtime.repackaged.org.json.JSONException r3 = r5.syntaxError(r3)
            throw r3
        L60:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.repackaged.org.json.CDL.getValue(com.google.appinventor.components.runtime.repackaged.org.json.JSONTokener):java.lang.String");
    }

    public static JSONArray rowToJSONArray(JSONTokener x) throws JSONException {
        JSONArray ja = new JSONArray();
        while (true) {
            String value = getValue(x);
            char c = x.next();
            if (value == null) {
                return null;
            }
            if (ja.length() == 0 && value.length() == 0 && c != ',') {
                return null;
            }
            ja.put(value);
            while (c != ',') {
                if (c != ' ') {
                    if (c == '\n' || c == '\r' || c == 0) {
                        return ja;
                    }
                    throw x.syntaxError(new StringBuffer().append("Bad character '").append(c).append("' (").append((int) c).append(").").toString());
                }
                c = x.next();
            }
        }
    }

    public static JSONObject rowToJSONObject(JSONArray names, JSONTokener x) throws JSONException {
        JSONArray ja = rowToJSONArray(x);
        if (ja != null) {
            return ja.toJSONObject(names);
        }
        return null;
    }

    public static String rowToString(JSONArray ja) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < ja.length(); i++) {
            if (i > 0) {
                sb.append(',');
            }
            Object object = ja.opt(i);
            if (object != null) {
                String string = object.toString();
                if (string.length() > 0 && (string.indexOf(44) >= 0 || string.indexOf(10) >= 0 || string.indexOf(13) >= 0 || string.indexOf(0) >= 0 || string.charAt(0) == '\"')) {
                    sb.append('\"');
                    int length = string.length();
                    for (int j = 0; j < length; j++) {
                        char c = string.charAt(j);
                        if (c >= ' ' && c != '\"') {
                            sb.append(c);
                        }
                    }
                    sb.append('\"');
                } else {
                    sb.append(string);
                }
            }
        }
        sb.append('\n');
        return sb.toString();
    }

    public static JSONArray toJSONArray(String string) throws JSONException {
        return toJSONArray(new JSONTokener(string));
    }

    public static JSONArray toJSONArray(JSONTokener x) throws JSONException {
        return toJSONArray(rowToJSONArray(x), x);
    }

    public static JSONArray toJSONArray(JSONArray names, String string) throws JSONException {
        return toJSONArray(names, new JSONTokener(string));
    }

    public static JSONArray toJSONArray(JSONArray names, JSONTokener x) throws JSONException {
        if (names == null || names.length() == 0) {
            return null;
        }
        JSONArray ja = new JSONArray();
        while (true) {
            JSONObject jo = rowToJSONObject(names, x);
            if (jo == null) {
                break;
            }
            ja.put(jo);
        }
        if (ja.length() == 0) {
            return null;
        }
        return ja;
    }

    public static String toString(JSONArray ja) throws JSONException {
        JSONArray names;
        JSONObject jo = ja.optJSONObject(0);
        if (jo != null && (names = jo.names()) != null) {
            return new StringBuffer().append(rowToString(names)).append(toString(names, ja)).toString();
        }
        return null;
    }

    public static String toString(JSONArray names, JSONArray ja) throws JSONException {
        if (names == null || names.length() == 0) {
            return null;
        }
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < ja.length(); i++) {
            JSONObject jo = ja.optJSONObject(i);
            if (jo != null) {
                sb.append(rowToString(jo.toJSONArray(names)));
            }
        }
        return sb.toString();
    }
}
