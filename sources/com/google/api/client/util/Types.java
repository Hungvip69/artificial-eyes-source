package com.google.api.client.util;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public class Types {
    public static ParameterizedType getSuperParameterizedType(Type type, Class<?> superClass) {
        Class<?> rawType;
        if ((type instanceof Class) || (type instanceof ParameterizedType)) {
            while (type != null && type != Object.class) {
                if (type instanceof Class) {
                    rawType = (Class) type;
                } else {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    Class<?> rawType2 = getRawClass(parameterizedType);
                    if (rawType2 == superClass) {
                        return parameterizedType;
                    }
                    if (superClass.isInterface()) {
                        for (Type interfaceType : rawType2.getGenericInterfaces()) {
                            Class<?> interfaceClass = interfaceType instanceof Class ? (Class) interfaceType : getRawClass((ParameterizedType) interfaceType);
                            if (superClass.isAssignableFrom(interfaceClass)) {
                                type = interfaceType;
                                break;
                            }
                        }
                    }
                    rawType = rawType2;
                }
                type = rawType.getGenericSuperclass();
            }
            return null;
        }
        return null;
    }

    public static boolean isAssignableToOrFrom(Class<?> classToCheck, Class<?> anotherClass) {
        return classToCheck.isAssignableFrom(anotherClass) || anotherClass.isAssignableFrom(classToCheck);
    }

    public static <T> T newInstance(Class<T> clazz) {
        try {
            return clazz.newInstance();
        } catch (IllegalAccessException e) {
            throw handleExceptionForNewInstance(e, clazz);
        } catch (InstantiationException e2) {
            throw handleExceptionForNewInstance(e2, clazz);
        }
    }

    private static IllegalArgumentException handleExceptionForNewInstance(Exception e, Class<?> clazz) {
        StringBuilder buf = new StringBuilder("unable to create new instance of class ").append(clazz.getName());
        ArrayList<String> reasons = new ArrayList<>();
        if (clazz.isArray()) {
            reasons.add("because it is an array");
        } else if (clazz.isPrimitive()) {
            reasons.add("because it is primitive");
        } else if (clazz == Void.class) {
            reasons.add("because it is void");
        } else {
            if (Modifier.isInterface(clazz.getModifiers())) {
                reasons.add("because it is an interface");
            } else if (Modifier.isAbstract(clazz.getModifiers())) {
                reasons.add("because it is abstract");
            }
            if (clazz.getEnclosingClass() != null && !Modifier.isStatic(clazz.getModifiers())) {
                reasons.add("because it is not static");
            }
            if (!Modifier.isPublic(clazz.getModifiers())) {
                reasons.add("possibly because it is not public");
            } else {
                try {
                    clazz.getConstructor(new Class[0]);
                } catch (NoSuchMethodException e2) {
                    reasons.add("because it has no accessible default constructor");
                }
            }
        }
        boolean and = false;
        for (String reason : reasons) {
            if (and) {
                buf.append(" and");
            } else {
                and = true;
            }
            buf.append(" ").append(reason);
        }
        return new IllegalArgumentException(buf.toString(), e);
    }

    public static boolean isArray(Type type) {
        return (type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray());
    }

    public static Type getArrayComponentType(Type array) {
        if (array instanceof GenericArrayType) {
            return ((GenericArrayType) array).getGenericComponentType();
        }
        return ((Class) array).getComponentType();
    }

    public static Class<?> getRawClass(ParameterizedType parameterType) {
        return (Class) parameterType.getRawType();
    }

    public static Type getBound(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (lowerBounds.length != 0) {
            return lowerBounds[0];
        }
        return wildcardType.getUpperBounds()[0];
    }

    public static Type resolveTypeVariable(List<Type> context, TypeVariable<?> typeVariable) {
        Type resolve;
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            Class<?> rawGenericDeclaration = (Class) genericDeclaration;
            int contextIndex = context.size();
            ParameterizedType parameterizedType = null;
            while (parameterizedType == null) {
                contextIndex--;
                if (contextIndex < 0) {
                    break;
                }
                parameterizedType = getSuperParameterizedType(context.get(contextIndex), rawGenericDeclaration);
            }
            if (parameterizedType != null) {
                TypeVariable<?>[] typeParameters = genericDeclaration.getTypeParameters();
                int index = 0;
                while (index < typeParameters.length) {
                    TypeVariable<?> typeParameter = typeParameters[index];
                    if (typeParameter.equals(typeVariable)) {
                        break;
                    }
                    index++;
                }
                Type result = parameterizedType.getActualTypeArguments()[index];
                if ((result instanceof TypeVariable) && (resolve = resolveTypeVariable(context, (TypeVariable) result)) != null) {
                    return resolve;
                }
                return result;
            }
            return null;
        }
        return null;
    }

    public static Class<?> getRawArrayComponentType(List<Type> context, Type componentType) {
        if (componentType instanceof TypeVariable) {
            componentType = resolveTypeVariable(context, (TypeVariable) componentType);
        }
        if (componentType instanceof GenericArrayType) {
            Class<?> raw = getRawArrayComponentType(context, getArrayComponentType(componentType));
            return Array.newInstance(raw, 0).getClass();
        }
        if (componentType instanceof Class) {
            return (Class) componentType;
        }
        if (componentType instanceof ParameterizedType) {
            return getRawClass((ParameterizedType) componentType);
        }
        Preconditions.checkArgument(componentType == null, "wildcard type is not supported: %s", componentType);
        return Object.class;
    }

    public static Type getIterableParameter(Type iterableType) {
        return getActualParameterAtPosition(iterableType, Iterable.class, 0);
    }

    public static Type getMapValueParameter(Type mapType) {
        return getActualParameterAtPosition(mapType, Map.class, 1);
    }

    private static Type getActualParameterAtPosition(Type type, Class<?> superClass, int position) {
        Type resolve;
        ParameterizedType parameterizedType = getSuperParameterizedType(type, superClass);
        if (parameterizedType == null) {
            return null;
        }
        Type valueType = parameterizedType.getActualTypeArguments()[position];
        if ((valueType instanceof TypeVariable) && (resolve = resolveTypeVariable(Arrays.asList(type), (TypeVariable) valueType)) != null) {
            return resolve;
        }
        return valueType;
    }

    public static <T> Iterable<T> iterableOf(final Object value) {
        if (value instanceof Iterable) {
            return (Iterable) value;
        }
        Class<?> valueClass = value.getClass();
        Preconditions.checkArgument(valueClass.isArray(), "not an array or Iterable: %s", valueClass);
        Class<?> subClass = valueClass.getComponentType();
        if (!subClass.isPrimitive()) {
            return Arrays.asList((Object[]) value);
        }
        return new Iterable<T>() { // from class: com.google.api.client.util.Types.1
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return new Iterator<T>() { // from class: com.google.api.client.util.Types.1.1
                    int index = 0;
                    final int length;

                    {
                        this.length = Array.getLength(value);
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.index < this.length;
                    }

                    @Override // java.util.Iterator
                    public T next() {
                        if (!hasNext()) {
                            throw new NoSuchElementException();
                        }
                        Object obj = value;
                        int i = this.index;
                        this.index = i + 1;
                        return (T) Array.get(obj, i);
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        throw new UnsupportedOperationException();
                    }
                };
            }
        };
    }

    public static Object toArray(Collection<?> collection, Class<?> componentType) {
        if (componentType.isPrimitive()) {
            Object array = Array.newInstance(componentType, collection.size());
            int index = 0;
            for (Object value : collection) {
                Array.set(array, index, value);
                index++;
            }
            return array;
        }
        return collection.toArray((Object[]) Array.newInstance(componentType, collection.size()));
    }

    private Types() {
    }
}
