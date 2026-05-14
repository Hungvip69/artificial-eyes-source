package com.google.api.client.http;

import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Types;
import com.google.api.client.util.escape.CharEscapers;
import com.google.common.base.Splitter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class UriTemplate {
    private static final String COMPOSITE_NON_EXPLODE_JOINER = ",";
    private static final Map<Character, CompositeOutput> COMPOSITE_PREFIXES = new HashMap();

    static {
        CompositeOutput.values();
    }

    private enum CompositeOutput {
        PLUS('+', "", UriTemplate.COMPOSITE_NON_EXPLODE_JOINER, false, true),
        HASH('#', "#", UriTemplate.COMPOSITE_NON_EXPLODE_JOINER, false, true),
        DOT('.', ".", ".", false, false),
        FORWARD_SLASH('/', "/", "/", false, false),
        SEMI_COLON(';', ";", ";", true, false),
        QUERY('?', "?", "&", true, false),
        AMP('&', "&", "&", true, false),
        SIMPLE(null, "", UriTemplate.COMPOSITE_NON_EXPLODE_JOINER, false, false);

        private final String explodeJoiner;
        private final String outputPrefix;
        private final Character propertyPrefix;
        private final boolean requiresVarAssignment;
        private final boolean reservedExpansion;

        CompositeOutput(Character propertyPrefix, String outputPrefix, String explodeJoiner, boolean requiresVarAssignment, boolean reservedExpansion) {
            this.propertyPrefix = propertyPrefix;
            this.outputPrefix = (String) Preconditions.checkNotNull(outputPrefix);
            this.explodeJoiner = (String) Preconditions.checkNotNull(explodeJoiner);
            this.requiresVarAssignment = requiresVarAssignment;
            this.reservedExpansion = reservedExpansion;
            if (propertyPrefix != null) {
                UriTemplate.COMPOSITE_PREFIXES.put(propertyPrefix, this);
            }
        }

        String getOutputPrefix() {
            return this.outputPrefix;
        }

        String getExplodeJoiner() {
            return this.explodeJoiner;
        }

        boolean requiresVarAssignment() {
            return this.requiresVarAssignment;
        }

        int getVarNameStartIndex() {
            return this.propertyPrefix == null ? 0 : 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getEncodedValue(String value) {
            if (this.reservedExpansion) {
                String encodedValue = CharEscapers.escapeUriPathWithoutReserved(value);
                return encodedValue;
            }
            String encodedValue2 = CharEscapers.escapeUriConformant(value);
            return encodedValue2;
        }
    }

    static CompositeOutput getCompositeOutput(String propertyName) {
        CompositeOutput compositeOutput = COMPOSITE_PREFIXES.get(Character.valueOf(propertyName.charAt(0)));
        return compositeOutput == null ? CompositeOutput.SIMPLE : compositeOutput;
    }

    private static Map<String, Object> getMap(Object obj) {
        Map<String, Object> map = new LinkedHashMap<>();
        for (Map.Entry<String, Object> entry : Data.mapOf(obj).entrySet()) {
            Object value = entry.getValue();
            if (value != null && !Data.isNull(value)) {
                map.put(entry.getKey(), value);
            }
        }
        return map;
    }

    public static String expand(String baseUrl, String uriTemplate, Object parameters, boolean addUnusedParamsAsQueryParams) {
        String pathUri;
        if (uriTemplate.startsWith("/")) {
            GenericUrl url = new GenericUrl(baseUrl);
            url.setRawPath(null);
            pathUri = url.build() + uriTemplate;
        } else if (uriTemplate.startsWith("http://") || uriTemplate.startsWith("https://")) {
            pathUri = uriTemplate;
        } else {
            pathUri = baseUrl + uriTemplate;
        }
        return expand(pathUri, parameters, addUnusedParamsAsQueryParams);
    }

    public static String expand(String pathUri, Object parameters, boolean addUnusedParamsAsQueryParams) {
        int cur;
        Object value;
        String str = pathUri;
        Map<String, Object> variableMap = getMap(parameters);
        StringBuilder pathBuf = new StringBuilder();
        int cur2 = 0;
        int length = pathUri.length();
        while (true) {
            if (cur2 >= length) {
                break;
            }
            int next = str.indexOf(123, cur2);
            if (next == -1) {
                if (cur2 == 0 && !addUnusedParamsAsQueryParams) {
                    return str;
                }
                pathBuf.append(str.substring(cur2));
            } else {
                pathBuf.append(str.substring(cur2, next));
                int close = str.indexOf(125, next + 2);
                cur2 = close + 1;
                String templates = str.substring(next + 1, close);
                CompositeOutput compositeOutput = getCompositeOutput(templates);
                ListIterator<String> templateIterator = Splitter.on(',').splitToList(templates).listIterator();
                boolean isFirstParameter = true;
                while (templateIterator.hasNext()) {
                    String template = templateIterator.next();
                    boolean containsExplodeModifier = template.endsWith("*");
                    int varNameStartIndex = templateIterator.nextIndex() == 1 ? compositeOutput.getVarNameStartIndex() : 0;
                    int varNameEndIndex = template.length();
                    if (containsExplodeModifier) {
                        varNameEndIndex--;
                    }
                    String varName = template.substring(varNameStartIndex, varNameEndIndex);
                    Object value2 = variableMap.remove(varName);
                    if (value2 != null) {
                        if (!isFirstParameter) {
                            cur = cur2;
                            pathBuf.append(compositeOutput.getExplodeJoiner());
                        } else {
                            cur = cur2;
                            pathBuf.append(compositeOutput.getOutputPrefix());
                            isFirstParameter = false;
                        }
                        if (value2 instanceof Iterator) {
                            Iterator<?> iterator = (Iterator) value2;
                            value = getListPropertyValue(varName, iterator, containsExplodeModifier, compositeOutput);
                        } else if ((value2 instanceof Iterable) || value2.getClass().isArray()) {
                            Iterator<?> iterator2 = Types.iterableOf(value2).iterator();
                            value = getListPropertyValue(varName, iterator2, containsExplodeModifier, compositeOutput);
                        } else if (value2.getClass().isEnum()) {
                            String name = FieldInfo.of((Enum<?>) value2).getName();
                            if (name == null) {
                                name = value2.toString();
                            }
                            value = getSimpleValue(varName, name, compositeOutput);
                        } else if (!Data.isValueOfPrimitiveType(value2)) {
                            Map<String, Object> map = getMap(value2);
                            value = getMapPropertyValue(varName, map, containsExplodeModifier, compositeOutput);
                        } else {
                            value = getSimpleValue(varName, value2.toString(), compositeOutput);
                        }
                        pathBuf.append(value);
                        cur2 = cur;
                    }
                }
                str = pathUri;
            }
        }
        if (addUnusedParamsAsQueryParams) {
            GenericUrl.addQueryParams(variableMap.entrySet(), pathBuf, false);
        }
        return pathBuf.toString();
    }

    private static String getSimpleValue(String name, String value, CompositeOutput compositeOutput) {
        return compositeOutput.requiresVarAssignment() ? String.format("%s=%s", name, compositeOutput.getEncodedValue(value)) : compositeOutput.getEncodedValue(value);
    }

    private static String getListPropertyValue(String varName, Iterator<?> iterator, boolean containsExplodeModifier, CompositeOutput compositeOutput) {
        String joiner;
        if (!iterator.hasNext()) {
            return "";
        }
        StringBuilder retBuf = new StringBuilder();
        if (containsExplodeModifier) {
            joiner = compositeOutput.getExplodeJoiner();
        } else {
            joiner = COMPOSITE_NON_EXPLODE_JOINER;
            if (compositeOutput.requiresVarAssignment()) {
                retBuf.append(CharEscapers.escapeUriPath(varName));
                retBuf.append("=");
            }
        }
        while (iterator.hasNext()) {
            if (containsExplodeModifier && compositeOutput.requiresVarAssignment()) {
                retBuf.append(CharEscapers.escapeUriPath(varName));
                retBuf.append("=");
            }
            retBuf.append(compositeOutput.getEncodedValue(iterator.next().toString()));
            if (iterator.hasNext()) {
                retBuf.append(joiner);
            }
        }
        return retBuf.toString();
    }

    private static String getMapPropertyValue(String varName, Map<String, Object> map, boolean containsExplodeModifier, CompositeOutput compositeOutput) {
        String joiner;
        String mapElementsJoiner;
        if (map.isEmpty()) {
            return "";
        }
        StringBuilder retBuf = new StringBuilder();
        if (containsExplodeModifier) {
            joiner = compositeOutput.getExplodeJoiner();
            mapElementsJoiner = "=";
        } else {
            joiner = COMPOSITE_NON_EXPLODE_JOINER;
            mapElementsJoiner = COMPOSITE_NON_EXPLODE_JOINER;
            if (compositeOutput.requiresVarAssignment()) {
                retBuf.append(CharEscapers.escapeUriPath(varName));
                retBuf.append("=");
            }
        }
        Iterator<Map.Entry<String, Object>> mapIterator = map.entrySet().iterator();
        while (mapIterator.hasNext()) {
            Map.Entry<String, Object> entry = mapIterator.next();
            String encodedKey = compositeOutput.getEncodedValue(entry.getKey());
            String encodedValue = compositeOutput.getEncodedValue(entry.getValue().toString());
            retBuf.append(encodedKey);
            retBuf.append(mapElementsJoiner);
            retBuf.append(encodedValue);
            if (mapIterator.hasNext()) {
                retBuf.append(joiner);
            }
        }
        return retBuf.toString();
    }
}
