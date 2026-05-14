package com.google.api.client.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
public final class ClassInfo {
    private static final ConcurrentMap<Class<?>, ClassInfo> CACHE = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, ClassInfo> CACHE_IGNORE_CASE = new ConcurrentHashMap();
    private final Class<?> clazz;
    private final boolean ignoreCase;
    private final IdentityHashMap<String, FieldInfo> nameToFieldInfoMap = new IdentityHashMap<>();
    final List<String> names;

    public static ClassInfo of(Class<?> underlyingClass) {
        return of(underlyingClass, false);
    }

    public static ClassInfo of(Class<?> underlyingClass, boolean ignoreCase) {
        if (underlyingClass == null) {
            return null;
        }
        ConcurrentMap<Class<?>, ClassInfo> cache = ignoreCase ? CACHE_IGNORE_CASE : CACHE;
        ClassInfo classInfo = cache.get(underlyingClass);
        ClassInfo v = classInfo;
        if (classInfo == null) {
            ClassInfo newValue = new ClassInfo(underlyingClass, ignoreCase);
            ClassInfo classInfoPutIfAbsent = cache.putIfAbsent(underlyingClass, newValue);
            v = classInfoPutIfAbsent;
            if (classInfoPutIfAbsent == null) {
                return newValue;
            }
        }
        return v;
    }

    public Class<?> getUnderlyingClass() {
        return this.clazz;
    }

    public final boolean getIgnoreCase() {
        return this.ignoreCase;
    }

    public FieldInfo getFieldInfo(String name) {
        if (name != null) {
            if (this.ignoreCase) {
                name = name.toLowerCase(Locale.US);
            }
            name = name.intern();
        }
        return this.nameToFieldInfoMap.get(name);
    }

    public Field getField(String name) {
        FieldInfo fieldInfo = getFieldInfo(name);
        if (fieldInfo == null) {
            return null;
        }
        return fieldInfo.getField();
    }

    public boolean isEnum() {
        return this.clazz.isEnum();
    }

    public Collection<String> getNames() {
        return this.names;
    }

    private ClassInfo(Class<?> srcClass, boolean ignoreCase) {
        List<String> listUnmodifiableList;
        this.clazz = srcClass;
        this.ignoreCase = ignoreCase;
        Preconditions.checkArgument((ignoreCase && srcClass.isEnum()) ? false : true, "cannot ignore case on an enum: " + srcClass);
        TreeSet<String> nameSet = new TreeSet<>(new Comparator<String>() { // from class: com.google.api.client.util.ClassInfo.1
            @Override // java.util.Comparator
            public int compare(String s0, String s1) {
                if (Objects.equal(s0, s1)) {
                    return 0;
                }
                if (s0 == null) {
                    return -1;
                }
                if (s1 == null) {
                    return 1;
                }
                return s0.compareTo(s1);
            }
        });
        for (Field field : srcClass.getDeclaredFields()) {
            FieldInfo fieldInfo = FieldInfo.of(field);
            if (fieldInfo != null) {
                String fieldName = fieldInfo.getName();
                fieldName = ignoreCase ? fieldName.toLowerCase(Locale.US).intern() : fieldName;
                FieldInfo conflictingFieldInfo = this.nameToFieldInfoMap.get(fieldName);
                Preconditions.checkArgument(conflictingFieldInfo == null, "two fields have the same %sname <%s>: %s and %s", ignoreCase ? "case-insensitive " : "", fieldName, field, conflictingFieldInfo == null ? null : conflictingFieldInfo.getField());
                this.nameToFieldInfoMap.put(fieldName, fieldInfo);
                nameSet.add(fieldName);
            }
        }
        Class<?> superClass = srcClass.getSuperclass();
        if (superClass != null) {
            ClassInfo superClassInfo = of(superClass, ignoreCase);
            nameSet.addAll(superClassInfo.names);
            for (Map.Entry<String, FieldInfo> e : superClassInfo.nameToFieldInfoMap.entrySet()) {
                String name = e.getKey();
                if (!this.nameToFieldInfoMap.containsKey(name)) {
                    this.nameToFieldInfoMap.put(name, e.getValue());
                }
            }
        }
        if (nameSet.isEmpty()) {
            listUnmodifiableList = Collections.emptyList();
        } else {
            listUnmodifiableList = Collections.unmodifiableList(new ArrayList(nameSet));
        }
        this.names = listUnmodifiableList;
    }

    public Collection<FieldInfo> getFieldInfos() {
        return Collections.unmodifiableCollection(this.nameToFieldInfoMap.values());
    }
}
