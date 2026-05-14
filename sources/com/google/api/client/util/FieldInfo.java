package com.google.api.client.util;

import com.google.common.base.Ascii;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class FieldInfo {
    private static final Map<Field, FieldInfo> CACHE = new WeakHashMap();
    private final Field field;
    private final boolean isPrimitive;
    private final String name;
    private final Method[] setters;

    public static FieldInfo of(Enum<?> enumValue) {
        try {
            FieldInfo result = of(enumValue.getClass().getField(enumValue.name()));
            Preconditions.checkArgument(result != null, "enum constant missing @Value or @NullValue annotation: %s", enumValue);
            return result;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    public static FieldInfo of(Field field) {
        String fieldName;
        if (field == null) {
            return null;
        }
        synchronized (CACHE) {
            FieldInfo fieldInfo = CACHE.get(field);
            boolean isEnumContant = field.isEnumConstant();
            if (fieldInfo == null && (isEnumContant || !Modifier.isStatic(field.getModifiers()))) {
                if (isEnumContant) {
                    Value value = (Value) field.getAnnotation(Value.class);
                    if (value != null) {
                        fieldName = value.value();
                    } else {
                        NullValue nullValue = (NullValue) field.getAnnotation(NullValue.class);
                        if (nullValue == null) {
                            return null;
                        }
                        fieldName = null;
                    }
                } else {
                    Key key = (Key) field.getAnnotation(Key.class);
                    if (key == null) {
                        return null;
                    }
                    fieldName = key.value();
                    field.setAccessible(true);
                }
                if ("##default".equals(fieldName)) {
                    fieldName = field.getName();
                }
                fieldInfo = new FieldInfo(field, fieldName);
                CACHE.put(field, fieldInfo);
            }
            return fieldInfo;
        }
    }

    FieldInfo(Field field, String name) {
        this.field = field;
        this.name = name == null ? null : name.intern();
        this.isPrimitive = Data.isPrimitive(getType());
        this.setters = settersMethodForField(field);
    }

    private Method[] settersMethodForField(Field field) {
        List<Method> methods = new ArrayList<>();
        for (Method method : field.getDeclaringClass().getDeclaredMethods()) {
            if (Ascii.toLowerCase(method.getName()).equals("set" + Ascii.toLowerCase(field.getName())) && method.getParameterTypes().length == 1) {
                methods.add(method);
            }
        }
        return (Method[]) methods.toArray(new Method[0]);
    }

    public Field getField() {
        return this.field;
    }

    public String getName() {
        return this.name;
    }

    public Class<?> getType() {
        return this.field.getType();
    }

    public Type getGenericType() {
        return this.field.getGenericType();
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.field.getModifiers());
    }

    public boolean isPrimitive() {
        return this.isPrimitive;
    }

    public Object getValue(Object obj) {
        return getFieldValue(this.field, obj);
    }

    public void setValue(Object obj, Object value) {
        if (this.setters.length > 0) {
            for (Method method : this.setters) {
                if (value == null || method.getParameterTypes()[0].isAssignableFrom(value.getClass())) {
                    try {
                        method.invoke(obj, value);
                        return;
                    } catch (IllegalAccessException e) {
                    } catch (InvocationTargetException e2) {
                    }
                }
            }
        }
        setFieldValue(this.field, obj, value);
    }

    public ClassInfo getClassInfo() {
        return ClassInfo.of(this.field.getDeclaringClass());
    }

    public <T extends Enum<T>> T enumValue() {
        return (T) Enum.valueOf(this.field.getDeclaringClass(), this.field.getName());
    }

    public static Object getFieldValue(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static void setFieldValue(Field field, Object obj, Object value) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object finalValue = getFieldValue(field, obj);
            if (value == null) {
                if (finalValue == null) {
                    return;
                }
            } else if (value.equals(finalValue)) {
                return;
            }
            throw new IllegalArgumentException("expected final value <" + finalValue + "> but was <" + value + "> on " + field.getName() + " field in " + obj.getClass().getName());
        }
        try {
            field.set(obj, value);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        } catch (SecurityException e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
