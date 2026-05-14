.class public abstract Lcom/google/api/client/json/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private serialize(ZLjava/lang/Object;)V
    .locals 11
    .param p1, "isJsonString"    # Z
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    if-nez p2, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    goto/16 :goto_a

    .line 115
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 116
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 117
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    .line 118
    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 120
    :cond_3
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    .line 121
    move-object v1, p2

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto/16 :goto_a

    .line 122
    :cond_4
    instance-of v1, p2, Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    .line 123
    move-object v1, p2

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto/16 :goto_a

    .line 124
    :cond_5
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 125
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(J)V

    goto/16 :goto_a

    .line 126
    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_8

    .line 127
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 128
    .local v1, "floatValue":F
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(F)V

    .line 130
    .end local v1    # "floatValue":F
    goto/16 :goto_a

    :cond_8
    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_b

    instance-of v1, p2, Ljava/lang/Short;

    if-nez v1, :cond_b

    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_9

    goto :goto_2

    .line 133
    :cond_9
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 134
    .local v4, "doubleValue":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 135
    invoke-virtual {p0, v4, v5}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(D)V

    .line 136
    .end local v4    # "doubleValue":D
    goto/16 :goto_a

    .line 131
    :cond_b
    :goto_2
    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(I)V

    goto/16 :goto_a

    .line 137
    :cond_c
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    .line 138
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_a

    .line 139
    :cond_d
    instance-of v1, p2, Lcom/google/api/client/util/DateTime;

    if-eqz v1, :cond_e

    .line 140
    move-object v1, p2

    check-cast v1, Lcom/google/api/client/util/DateTime;

    invoke-virtual {v1}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 141
    :cond_e
    instance-of v1, p2, Ljava/lang/Iterable;

    if-nez v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    instance-of v1, p2, Ljava/util/Map;

    if-nez v1, :cond_11

    instance-of v1, p2, Lcom/google/api/client/util/GenericData;

    if-nez v1, :cond_11

    .line 144
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartArray()V

    .line 145
    invoke-static {p2}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "o":Ljava/lang/Object;
    invoke-direct {p0, p1, v2}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    .line 147
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_3

    .line 148
    :cond_10
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndArray()V

    goto/16 :goto_a

    .line 149
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    move-object v1, p2

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_12

    .line 152
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    goto :goto_4

    .line 154
    :cond_12
    invoke-virtual {p0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 156
    .end local v1    # "name":Ljava/lang/String;
    :goto_4
    goto :goto_a

    .line 157
    :cond_13
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartObject()V

    .line 159
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_14

    instance-of v1, p2, Lcom/google/api/client/util/GenericData;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    .line 160
    .local v1, "isMapNotGenericData":Z
    :goto_5
    if-eqz v1, :cond_15

    const/4 v4, 0x0

    goto :goto_6

    :cond_15
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v4

    .line 161
    .local v4, "classInfo":Lcom/google/api/client/util/ClassInfo;
    :goto_6
    invoke-static {p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 162
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 163
    .local v7, "fieldValue":Ljava/lang/Object;
    if-eqz v7, :cond_18

    .line 164
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 166
    .local v8, "fieldName":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 167
    move v9, p1

    .local v9, "isJsonStringForField":Z
    goto :goto_9

    .line 169
    .end local v9    # "isJsonStringForField":Z
    :cond_16
    invoke-virtual {v4, v8}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 170
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_17

    const-class v10, Lcom/google/api/client/json/JsonString;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    goto :goto_8

    :cond_17
    const/4 v10, 0x0

    :goto_8
    move v9, v10

    .line 172
    .local v9, "isJsonStringForField":Z
    :goto_9
    invoke-virtual {p0, v8}, Lcom/google/api/client/json/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v9, v7}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    .line 175
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "fieldValue":Ljava/lang/Object;
    .end local v8    # "fieldName":Ljava/lang/String;
    .end local v9    # "isJsonStringForField":Z
    :cond_18
    goto :goto_7

    .line 176
    :cond_19
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndObject()V

    .line 178
    .end local v1    # "isMapNotGenericData":Z
    .end local v4    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    :goto_a
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public enablePrettyPrint()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public final serialize(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
