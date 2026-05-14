package com.google.api.client.util.store;

import com.google.api.client.util.IOUtils;
import com.google.api.client.util.Lists;
import com.google.api.client.util.Maps;
import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class AbstractMemoryDataStore<V extends Serializable> extends AbstractDataStore<V> {
    protected HashMap<String, byte[]> keyValueMap;
    private final Lock lock;

    protected AbstractMemoryDataStore(DataStoreFactory dataStoreFactory, String id) {
        super(dataStoreFactory, id);
        this.lock = new ReentrantLock();
        this.keyValueMap = Maps.newHashMap();
    }

    @Override // com.google.api.client.util.store.DataStore
    public final Set<String> keySet() throws IOException {
        this.lock.lock();
        try {
            return Collections.unmodifiableSet(this.keyValueMap.keySet());
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public final Collection<V> values() throws IOException {
        this.lock.lock();
        try {
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            for (byte[] bytes : this.keyValueMap.values()) {
                arrayListNewArrayList.add(IOUtils.deserialize(bytes));
            }
            return Collections.unmodifiableList(arrayListNewArrayList);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public final V get(String str) throws IOException {
        if (str == null) {
            return null;
        }
        this.lock.lock();
        try {
            return (V) IOUtils.deserialize(this.keyValueMap.get(str));
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public final DataStore<V> set(String key, V value) throws IOException {
        Preconditions.checkNotNull(key);
        Preconditions.checkNotNull(value);
        this.lock.lock();
        try {
            this.keyValueMap.put(key, IOUtils.serialize(value));
            save();
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public DataStore<V> delete(String key) throws IOException {
        if (key == null) {
            return this;
        }
        this.lock.lock();
        try {
            this.keyValueMap.remove(key);
            save();
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.DataStore
    public final DataStore<V> clear() throws IOException {
        this.lock.lock();
        try {
            this.keyValueMap.clear();
            save();
            return this;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public boolean containsKey(String key) throws IOException {
        if (key == null) {
            return false;
        }
        this.lock.lock();
        try {
            return this.keyValueMap.containsKey(key);
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public boolean containsValue(V value) throws IOException {
        if (value == null) {
            return false;
        }
        this.lock.lock();
        try {
            byte[] serialized = IOUtils.serialize(value);
            for (byte[] bytes : this.keyValueMap.values()) {
                if (Arrays.equals(serialized, bytes)) {
                    this.lock.unlock();
                    return true;
                }
            }
            return false;
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public boolean isEmpty() throws IOException {
        this.lock.lock();
        try {
            return this.keyValueMap.isEmpty();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
    public int size() throws IOException {
        this.lock.lock();
        try {
            return this.keyValueMap.size();
        } finally {
            this.lock.unlock();
        }
    }

    public void save() throws IOException {
    }

    public String toString() {
        return DataStoreUtils.toString(this);
    }
}
