.class public final Lcom/google/api/client/util/ArrayValueMap;
.super Ljava/lang/Object;
.source "ArrayValueMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    }
.end annotation


# instance fields
.field private final destination:Ljava/lang/Object;

.field private final fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/api/client/util/ArrayValueMap$ArrayValue;",
            ">;"
        }
    .end annotation
.end field

.field private final keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/ArrayValueMap$ArrayValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "destination"    # Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    .line 86
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 129
    .local p2, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    .line 130
    .local v0, "arrayValue":Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    if-nez v0, :cond_0

    .line 131
    new-instance v1, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-direct {v1, p2}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    .line 132
    iget-object v1, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->addValue(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 112
    .local p2, "arrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    .line 113
    .local v0, "arrayValue":Lcom/google/api/client/util/ArrayValueMap$ArrayValue;
    if-nez v0, :cond_0

    .line 114
    new-instance v1, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-direct {v1, p2}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    .line 115
    iget-object v1, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->addValue(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public setValues()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->keyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    iget-object v2, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 96
    .local v2, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-virtual {v4}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->toArray()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    .end local v2    # "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/ArrayValueMap;->fieldMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/api/client/util/ArrayValueMap;->destination:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;

    invoke-virtual {v4}, Lcom/google/api/client/util/ArrayValueMap$ArrayValue;->toArray()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/google/api/client/util/ArrayValueMap$ArrayValue;>;"
    goto :goto_1

    .line 101
    :cond_1
    return-void
.end method
