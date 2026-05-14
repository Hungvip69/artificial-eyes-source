package com.google.api.client.json;

import com.google.api.client.json.JsonPolymorphicTypeMap;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sets;
import com.google.api.client.util.Types;
import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public abstract class JsonParser implements Closeable {
    private static WeakHashMap<Class<?>, Field> cachedTypemapFields = new WeakHashMap<>();
    private static final Lock lock = new ReentrantLock();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public abstract BigInteger getBigIntegerValue() throws IOException;

    public abstract byte getByteValue() throws IOException;

    public abstract String getCurrentName() throws IOException;

    public abstract JsonToken getCurrentToken();

    public abstract BigDecimal getDecimalValue() throws IOException;

    public abstract double getDoubleValue() throws IOException;

    public abstract JsonFactory getFactory();

    public abstract float getFloatValue() throws IOException;

    public abstract int getIntValue() throws IOException;

    public abstract long getLongValue() throws IOException;

    public abstract short getShortValue() throws IOException;

    public abstract String getText() throws IOException;

    public abstract JsonToken nextToken() throws IOException;

    public abstract JsonParser skipChildren() throws IOException;

    public final <T> T parseAndClose(Class<T> cls) throws IOException {
        return (T) parseAndClose((Class) cls, (CustomizeJsonParser) null);
    }

    public final <T> T parseAndClose(Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        try {
            return (T) parse((Class) cls, customizeJsonParser);
        } finally {
            close();
        }
    }

    public final void skipToKey(String keyToFind) throws IOException {
        skipToKey(Collections.singleton(keyToFind));
    }

    public final String skipToKey(Set<String> keysToFind) throws IOException {
        JsonToken curToken = startParsingObjectOrArray();
        while (curToken == JsonToken.FIELD_NAME) {
            String key = getText();
            nextToken();
            if (keysToFind.contains(key)) {
                return key;
            }
            skipChildren();
            curToken = nextToken();
        }
        return null;
    }

    private JsonToken startParsing() throws IOException {
        JsonToken currentToken = getCurrentToken();
        if (currentToken == null) {
            currentToken = nextToken();
        }
        Preconditions.checkArgument(currentToken != null, "no JSON input found");
        return currentToken;
    }

    private JsonToken startParsingObjectOrArray() throws IOException {
        JsonToken currentToken = startParsing();
        switch (currentToken) {
            case START_OBJECT:
                JsonToken currentToken2 = nextToken();
                Preconditions.checkArgument(currentToken2 == JsonToken.FIELD_NAME || currentToken2 == JsonToken.END_OBJECT, currentToken2);
                return currentToken2;
            case START_ARRAY:
                return nextToken();
            default:
                return currentToken;
        }
    }

    public final void parseAndClose(Object destination) throws IOException {
        parseAndClose(destination, (CustomizeJsonParser) null);
    }

    public final void parseAndClose(Object destination, CustomizeJsonParser customizeParser) throws IOException {
        try {
            parse(destination, customizeParser);
        } finally {
            close();
        }
    }

    public final <T> T parse(Class<T> cls) throws IOException {
        return (T) parse((Class) cls, (CustomizeJsonParser) null);
    }

    public final <T> T parse(Class<T> cls, CustomizeJsonParser customizeJsonParser) throws IOException {
        return (T) parse((Type) cls, false, customizeJsonParser);
    }

    public Object parse(Type dataType, boolean close) throws IOException {
        return parse(dataType, close, (CustomizeJsonParser) null);
    }

    public Object parse(Type dataType, boolean close, CustomizeJsonParser customizeParser) throws IOException {
        try {
            if (!Void.class.equals(dataType)) {
                startParsing();
            }
            return parseValue(null, dataType, new ArrayList<>(), null, customizeParser, true);
        } finally {
            if (close) {
                close();
            }
        }
    }

    public final void parse(Object destination) throws IOException {
        parse(destination, (CustomizeJsonParser) null);
    }

    public final void parse(Object destination, CustomizeJsonParser customizeParser) throws IOException {
        ArrayList<Type> context = new ArrayList<>();
        context.add(destination.getClass());
        parse(context, destination, customizeParser);
    }

    private void parse(ArrayList<Type> context, Object destination, CustomizeJsonParser customizeParser) throws IOException {
        Class<?> destinationClass;
        if (destination instanceof GenericJson) {
            ((GenericJson) destination).setFactory(getFactory());
        }
        JsonToken curToken = startParsingObjectOrArray();
        Class<?> destinationClass2 = destination.getClass();
        ClassInfo classInfo = ClassInfo.of(destinationClass2);
        boolean isGenericData = GenericData.class.isAssignableFrom(destinationClass2);
        if (!isGenericData && Map.class.isAssignableFrom(destinationClass2)) {
            Map<String, Object> destinationMap = (Map) destination;
            parseMap(null, destinationMap, Types.getMapValueParameter(destinationClass2), context, customizeParser);
            return;
        }
        JsonToken curToken2 = curToken;
        while (curToken2 == JsonToken.FIELD_NAME) {
            String key = getText();
            nextToken();
            if (customizeParser != null && customizeParser.stopAt(destination, key)) {
                return;
            }
            FieldInfo fieldInfo = classInfo.getFieldInfo(key);
            if (fieldInfo == null) {
                destinationClass = destinationClass2;
                if (isGenericData) {
                    GenericData object = (GenericData) destination;
                    object.set(key, parseValue(null, null, context, destination, customizeParser, true));
                } else {
                    if (customizeParser != null) {
                        customizeParser.handleUnrecognizedKey(destination, key);
                    }
                    skipChildren();
                }
            } else {
                if (fieldInfo.isFinal() && !fieldInfo.isPrimitive()) {
                    throw new IllegalArgumentException("final array/object fields are not supported");
                }
                Field field = fieldInfo.getField();
                int contextSize = context.size();
                context.add(field.getGenericType());
                destinationClass = destinationClass2;
                Object fieldValue = parseValue(field, fieldInfo.getGenericType(), context, destination, customizeParser, true);
                context.remove(contextSize);
                fieldInfo.setValue(destination, fieldValue);
            }
            curToken2 = nextToken();
            destinationClass2 = destinationClass;
        }
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> destinationCollectionClass, Class<T> destinationItemClass) throws IOException {
        return parseArrayAndClose(destinationCollectionClass, destinationItemClass, (CustomizeJsonParser) null);
    }

    public final <T> Collection<T> parseArrayAndClose(Class<?> destinationCollectionClass, Class<T> destinationItemClass, CustomizeJsonParser customizeParser) throws IOException {
        try {
            return parseArray(destinationCollectionClass, destinationItemClass, customizeParser);
        } finally {
            close();
        }
    }

    public final <T> void parseArrayAndClose(Collection<? super T> destinationCollection, Class<T> destinationItemClass) throws IOException {
        parseArrayAndClose(destinationCollection, destinationItemClass, (CustomizeJsonParser) null);
    }

    public final <T> void parseArrayAndClose(Collection<? super T> destinationCollection, Class<T> destinationItemClass, CustomizeJsonParser customizeParser) throws IOException {
        try {
            parseArray(destinationCollection, destinationItemClass, customizeParser);
        } finally {
            close();
        }
    }

    public final <T> Collection<T> parseArray(Class<?> destinationCollectionClass, Class<T> destinationItemClass) throws IOException {
        return parseArray(destinationCollectionClass, destinationItemClass, (CustomizeJsonParser) null);
    }

    public final <T> Collection<T> parseArray(Class<?> cls, Class<T> cls2, CustomizeJsonParser customizeJsonParser) throws IOException {
        Collection<T> collection = (Collection<T>) Data.newCollectionInstance(cls);
        parseArray(collection, cls2, customizeJsonParser);
        return collection;
    }

    public final <T> void parseArray(Collection<? super T> destinationCollection, Class<T> destinationItemClass) throws IOException {
        parseArray(destinationCollection, destinationItemClass, (CustomizeJsonParser) null);
    }

    public final <T> void parseArray(Collection<? super T> destinationCollection, Class<T> destinationItemClass, CustomizeJsonParser customizeParser) throws IOException {
        parseArray(null, destinationCollection, destinationItemClass, new ArrayList<>(), customizeParser);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> void parseArray(Field fieldContext, Collection<T> collection, Type destinationItemType, ArrayList<Type> context, CustomizeJsonParser customizeParser) throws IOException {
        JsonToken curToken = startParsingObjectOrArray();
        while (curToken != JsonToken.END_ARRAY) {
            collection.add(parseValue(fieldContext, destinationItemType, context, collection, customizeParser, true));
            curToken = nextToken();
        }
    }

    private void parseMap(Field fieldContext, Map<String, Object> destinationMap, Type valueType, ArrayList<Type> context, CustomizeJsonParser customizeParser) throws IOException {
        JsonToken curToken = startParsingObjectOrArray();
        while (curToken == JsonToken.FIELD_NAME) {
            String key = getText();
            nextToken();
            if (customizeParser != null && customizeParser.stopAt(destinationMap, key)) {
                return;
            }
            Object value = parseValue(fieldContext, valueType, context, destinationMap, customizeParser, true);
            destinationMap.put(key, value);
            curToken = nextToken();
        }
    }

    private final Object parseValue(Field fieldContext, Type valueType, ArrayList<Type> context, Object destination, CustomizeJsonParser customizeParser, boolean handlePolymorphic) throws IOException {
        Class<?> valueClass;
        Object newInstance;
        int contextSize;
        Class<?> typeClass;
        Collection<Object> collectionValue;
        Type valueType2 = Data.resolveWildcardTypeOrTypeVariable(context, valueType);
        Class<?> valueClass2 = valueType2 instanceof Class ? (Class) valueType2 : null;
        if (!(valueType2 instanceof ParameterizedType)) {
            valueClass = valueClass2;
        } else {
            Class<?> valueClass3 = Types.getRawClass((ParameterizedType) valueType2);
            valueClass = valueClass3;
        }
        if (valueClass == Void.class) {
            skipChildren();
            return null;
        }
        JsonToken token = getCurrentToken();
        try {
            switch (token) {
                case START_OBJECT:
                case FIELD_NAME:
                case END_OBJECT:
                    Preconditions.checkArgument(!Types.isArray(valueType2), "expected object or map type but got %s", valueType2);
                    Field typemapField = handlePolymorphic ? getCachedTypemapFieldFor(valueClass) : null;
                    Object newInstance2 = null;
                    if (valueClass != null && customizeParser != null) {
                        newInstance2 = customizeParser.newInstanceForObject(destination, valueClass);
                    }
                    boolean isMap = valueClass != null && Types.isAssignableToOrFrom(valueClass, Map.class);
                    if (typemapField != null) {
                        newInstance = new GenericJson();
                    } else if (newInstance2 != null) {
                        newInstance = newInstance2;
                    } else if (isMap || valueClass == null) {
                        newInstance = Data.newMapInstance(valueClass);
                    } else {
                        newInstance = Types.newInstance(valueClass);
                    }
                    int contextSize2 = context.size();
                    if (valueType2 != null) {
                        context.add(valueType2);
                    }
                    if (!isMap || GenericData.class.isAssignableFrom(valueClass)) {
                        contextSize = contextSize2;
                    } else {
                        Type subValueType = Map.class.isAssignableFrom(valueClass) ? Types.getMapValueParameter(valueType2) : null;
                        if (subValueType == null) {
                            contextSize = contextSize2;
                        } else {
                            Map<String, Object> destinationMap = (Map) newInstance;
                            parseMap(fieldContext, destinationMap, subValueType, context, customizeParser);
                            return newInstance;
                        }
                    }
                    parse(context, newInstance, customizeParser);
                    if (valueType2 != null) {
                        context.remove(contextSize);
                    }
                    if (typemapField == null) {
                        return newInstance;
                    }
                    Object typeValueObject = ((GenericJson) newInstance).get(typemapField.getName());
                    Preconditions.checkArgument(typeValueObject != null, "No value specified for @JsonPolymorphicTypeMap field");
                    String typeValue = typeValueObject.toString();
                    JsonPolymorphicTypeMap typeMap = (JsonPolymorphicTypeMap) typemapField.getAnnotation(JsonPolymorphicTypeMap.class);
                    JsonPolymorphicTypeMap.TypeDef[] typeDefArrTypeDefinitions = typeMap.typeDefinitions();
                    int length = typeDefArrTypeDefinitions.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            typeClass = null;
                        } else {
                            JsonPolymorphicTypeMap.TypeDef typeDefinition = typeDefArrTypeDefinitions[i];
                            Field typemapField2 = typemapField;
                            if (!typeDefinition.key().equals(typeValue)) {
                                i++;
                                typemapField = typemapField2;
                            } else {
                                typeClass = typeDefinition.ref();
                            }
                        }
                    }
                    Preconditions.checkArgument(typeClass != null, "No TypeDef annotation found with key: " + typeValue);
                    JsonFactory factory = getFactory();
                    JsonParser parser = factory.createJsonParser(factory.toString(newInstance));
                    parser.startParsing();
                    return parser.parseValue(fieldContext, typeClass, context, null, null, false);
                case START_ARRAY:
                case END_ARRAY:
                    boolean isArray = Types.isArray(valueType2);
                    Preconditions.checkArgument(valueType2 == null || isArray || (valueClass != null && Types.isAssignableToOrFrom(valueClass, Collection.class)), "expected collection or array type but got %s", valueType2);
                    Collection<Object> collectionValue2 = null;
                    if (customizeParser != null && fieldContext != null) {
                        collectionValue2 = customizeParser.newInstanceForArray(destination, fieldContext);
                    }
                    if (collectionValue2 != null) {
                        collectionValue = collectionValue2;
                    } else {
                        collectionValue = Data.newCollectionInstance(valueType2);
                    }
                    Type subType = null;
                    if (isArray) {
                        subType = Types.getArrayComponentType(valueType2);
                    } else if (valueClass != null && Iterable.class.isAssignableFrom(valueClass)) {
                        subType = Types.getIterableParameter(valueType2);
                    }
                    Type subType2 = Data.resolveWildcardTypeOrTypeVariable(context, subType);
                    parseArray(fieldContext, collectionValue, subType2, context, customizeParser);
                    if (isArray) {
                        return Types.toArray(collectionValue, Types.getRawArrayComponentType(context, subType2));
                    }
                    return collectionValue;
                case VALUE_TRUE:
                case VALUE_FALSE:
                    Preconditions.checkArgument(valueType2 == null || valueClass == Boolean.TYPE || (valueClass != null && valueClass.isAssignableFrom(Boolean.class)), "expected type Boolean or boolean but got %s", valueType2);
                    return token == JsonToken.VALUE_TRUE ? Boolean.TRUE : Boolean.FALSE;
                case VALUE_NUMBER_FLOAT:
                case VALUE_NUMBER_INT:
                    Preconditions.checkArgument(fieldContext == null || fieldContext.getAnnotation(JsonString.class) == null, "number type formatted as a JSON number cannot use @JsonString annotation");
                    if (valueClass != null && !valueClass.isAssignableFrom(BigDecimal.class)) {
                        if (valueClass == BigInteger.class) {
                            return getBigIntegerValue();
                        }
                        if (valueClass != Double.class && valueClass != Double.TYPE) {
                            if (valueClass != Long.class && valueClass != Long.TYPE) {
                                if (valueClass != Float.class && valueClass != Float.TYPE) {
                                    if (valueClass != Integer.class && valueClass != Integer.TYPE) {
                                        if (valueClass != Short.class && valueClass != Short.TYPE) {
                                            if (valueClass != Byte.class && valueClass != Byte.TYPE) {
                                                throw new IllegalArgumentException("expected numeric type but got " + valueType2);
                                            }
                                            return Byte.valueOf(getByteValue());
                                        }
                                        return Short.valueOf(getShortValue());
                                    }
                                    return Integer.valueOf(getIntValue());
                                }
                                return Float.valueOf(getFloatValue());
                            }
                            return Long.valueOf(getLongValue());
                        }
                        return Double.valueOf(getDoubleValue());
                    }
                    return getDecimalValue();
                case VALUE_STRING:
                    String text = getText().trim().toLowerCase(Locale.US);
                    if ((valueClass != Float.TYPE && valueClass != Float.class && valueClass != Double.TYPE && valueClass != Double.class) || (!text.equals("nan") && !text.equals("infinity") && !text.equals("-infinity"))) {
                        if (valueClass == null || !Number.class.isAssignableFrom(valueClass) || (fieldContext != null && fieldContext.getAnnotation(JsonString.class) != null)) {
                            z = true;
                        }
                        Preconditions.checkArgument(z, "number field formatted as a JSON string must use the @JsonString annotation");
                    }
                    return Data.parsePrimitiveValue(valueType2, getText());
                case VALUE_NULL:
                    Preconditions.checkArgument(valueClass == null || !valueClass.isPrimitive(), "primitive number field but found a JSON null");
                    if (valueClass != null && (valueClass.getModifiers() & 1536) != 0) {
                        if (Types.isAssignableToOrFrom(valueClass, Collection.class)) {
                            return Data.nullOf(Data.newCollectionInstance(valueType2).getClass());
                        }
                        if (Types.isAssignableToOrFrom(valueClass, Map.class)) {
                            return Data.nullOf(Data.newMapInstance(valueClass).getClass());
                        }
                    }
                    return Data.nullOf(Types.getRawArrayComponentType(context, valueType2));
                default:
                    throw new IllegalArgumentException("unexpected JSON node type: " + token);
            }
        } catch (IllegalArgumentException e) {
            StringBuilder contextStringBuilder = new StringBuilder();
            String currentName = getCurrentName();
            if (currentName != null) {
                contextStringBuilder.append("key ").append(currentName);
            }
            if (fieldContext != null) {
                if (currentName != null) {
                    contextStringBuilder.append(", ");
                }
                contextStringBuilder.append("field ").append(fieldContext);
            }
            throw new IllegalArgumentException(contextStringBuilder.toString(), e);
        }
    }

    private static Field getCachedTypemapFieldFor(Class<?> key) {
        if (key == null) {
            return null;
        }
        lock.lock();
        try {
            if (cachedTypemapFields.containsKey(key)) {
                return cachedTypemapFields.get(key);
            }
            Field value = null;
            Collection<FieldInfo> fieldInfos = ClassInfo.of(key).getFieldInfos();
            for (FieldInfo fieldInfo : fieldInfos) {
                Field field = fieldInfo.getField();
                JsonPolymorphicTypeMap typemapAnnotation = (JsonPolymorphicTypeMap) field.getAnnotation(JsonPolymorphicTypeMap.class);
                if (typemapAnnotation != null) {
                    Preconditions.checkArgument(value == null, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", key);
                    Preconditions.checkArgument(Data.isPrimitive(field.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", key, field.getType());
                    value = field;
                    JsonPolymorphicTypeMap.TypeDef[] typeDefs = typemapAnnotation.typeDefinitions();
                    HashSet<String> typeDefKeys = Sets.newHashSet();
                    Preconditions.checkArgument(typeDefs.length > 0, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    int length = typeDefs.length;
                    int i = 0;
                    while (i < length) {
                        JsonPolymorphicTypeMap.TypeDef typeDef = typeDefs[i];
                        Preconditions.checkArgument(typeDefKeys.add(typeDef.key()), "Class contains two @TypeDef annotations with identical key: %s", typeDef.key());
                        i++;
                        value = value;
                    }
                }
            }
            cachedTypemapFields.put(key, value);
            return value;
        } finally {
            lock.unlock();
        }
    }
}
