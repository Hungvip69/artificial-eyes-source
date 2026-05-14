package com.google.api.client.http;

import com.google.api.client.util.ArrayValueMap;
import com.google.api.client.util.Charsets;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.ObjectParser;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Throwables;
import com.google.api.client.util.Types;
import com.google.api.client.util.escape.CharEscapers;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class UrlEncodedParser implements ObjectParser {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    public static final String MEDIA_TYPE = new HttpMediaType(CONTENT_TYPE).setCharsetParameter(Charsets.UTF_8).build();

    public static void parse(String content, Object data) {
        parse(content, data, true);
    }

    public static void parse(String content, Object data, boolean decodeEnabled) {
        if (content == null) {
            return;
        }
        try {
            parse(new StringReader(content), data, decodeEnabled);
        } catch (IOException exception) {
            throw Throwables.propagate(exception);
        }
    }

    public static void parse(Reader reader, Object data) throws IOException {
        parse(reader, data, true);
    }

    public static void parse(Reader reader, Object data, boolean decodeEnabled) throws IOException {
        Class<?> clazz;
        ClassInfo classInfo;
        Class<?> clazz2 = data.getClass();
        ClassInfo classInfo2 = ClassInfo.of(clazz2);
        List<Type> context = Arrays.asList(clazz2);
        GenericData genericData = GenericData.class.isAssignableFrom(clazz2) ? (GenericData) data : null;
        Map<Object, Object> map = Map.class.isAssignableFrom(clazz2) ? (Map) data : null;
        ArrayValueMap arrayValueMap = new ArrayValueMap(data);
        StringWriter nameWriter = new StringWriter();
        StringWriter valueWriter = new StringWriter();
        boolean readingName = true;
        while (true) {
            int read = reader.read();
            switch (read) {
                case -1:
                case 38:
                    String name = nameWriter.toString();
                    if (decodeEnabled) {
                        name = CharEscapers.decodeUri(name);
                    }
                    if (name.length() == 0) {
                        clazz = clazz2;
                        classInfo = classInfo2;
                    } else {
                        String stringValue = valueWriter.toString();
                        if (decodeEnabled) {
                            stringValue = CharEscapers.decodeUri(stringValue);
                        }
                        FieldInfo fieldInfo = classInfo2.getFieldInfo(name);
                        if (fieldInfo != null) {
                            Type type = Data.resolveWildcardTypeOrTypeVariable(context, fieldInfo.getGenericType());
                            if (Types.isArray(type)) {
                                Class<?> rawArrayComponentType = Types.getRawArrayComponentType(context, Types.getArrayComponentType(type));
                                clazz = clazz2;
                                classInfo = classInfo2;
                                arrayValueMap.put(fieldInfo.getField(), rawArrayComponentType, parseValue(rawArrayComponentType, context, stringValue));
                            } else {
                                clazz = clazz2;
                                classInfo = classInfo2;
                                if (!Types.isAssignableToOrFrom(Types.getRawArrayComponentType(context, type), Iterable.class)) {
                                    fieldInfo.setValue(data, parseValue(type, context, stringValue));
                                } else {
                                    Collection<Object> collection = (Collection) fieldInfo.getValue(data);
                                    if (collection == null) {
                                        collection = Data.newCollectionInstance(type);
                                        fieldInfo.setValue(data, collection);
                                    }
                                    Type subFieldType = type == Object.class ? null : Types.getIterableParameter(type);
                                    collection.add(parseValue(subFieldType, context, stringValue));
                                }
                            }
                        } else {
                            clazz = clazz2;
                            classInfo = classInfo2;
                            if (map != null) {
                                ArrayList<String> listValue = (ArrayList) map.get(name);
                                if (listValue == null) {
                                    listValue = new ArrayList<>();
                                    if (genericData != null) {
                                        genericData.set(name, listValue);
                                    } else {
                                        map.put(name, listValue);
                                    }
                                }
                                listValue.add(stringValue);
                            }
                        }
                    }
                    StringWriter nameWriter2 = new StringWriter();
                    StringWriter valueWriter2 = new StringWriter();
                    if (read != -1) {
                        readingName = true;
                        nameWriter = nameWriter2;
                        valueWriter = valueWriter2;
                    } else {
                        arrayValueMap.setValues();
                        return;
                    }
                    break;
                case 61:
                    if (readingName) {
                        readingName = false;
                        clazz = clazz2;
                        classInfo = classInfo2;
                    } else {
                        valueWriter.write(read);
                        clazz = clazz2;
                        classInfo = classInfo2;
                    }
                    break;
                default:
                    clazz = clazz2;
                    classInfo = classInfo2;
                    if (readingName) {
                        nameWriter.write(read);
                    } else {
                        valueWriter.write(read);
                    }
                    break;
            }
            clazz2 = clazz;
            classInfo2 = classInfo;
        }
    }

    private static Object parseValue(Type valueType, List<Type> context, String value) {
        Type resolved = Data.resolveWildcardTypeOrTypeVariable(context, valueType);
        return Data.parsePrimitiveValue(resolved, value);
    }

    @Override // com.google.api.client.util.ObjectParser
    public <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls) throws IOException {
        return (T) parseAndClose((Reader) new InputStreamReader(inputStream, charset), (Class) cls);
    }

    @Override // com.google.api.client.util.ObjectParser
    public Object parseAndClose(InputStream in, Charset charset, Type dataType) throws IOException {
        InputStreamReader r = new InputStreamReader(in, charset);
        return parseAndClose(r, dataType);
    }

    @Override // com.google.api.client.util.ObjectParser
    public <T> T parseAndClose(Reader reader, Class<T> cls) throws IOException {
        return (T) parseAndClose(reader, (Type) cls);
    }

    @Override // com.google.api.client.util.ObjectParser
    public Object parseAndClose(Reader reader, Type dataType) throws IOException {
        Preconditions.checkArgument(dataType instanceof Class, "dataType has to be of type Class<?>");
        Object newInstance = Types.newInstance((Class) dataType);
        parse(new BufferedReader(reader), newInstance);
        return newInstance;
    }
}
