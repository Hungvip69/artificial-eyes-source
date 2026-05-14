.class public Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Lcom/google/api/client/util/ObjectParser;


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final MEDIA_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->setCharsetParameter(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/UrlEncodedParser;->MEDIA_TYPE:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/Reader;Ljava/lang/Object;)V
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/io/Reader;Ljava/lang/Object;Z)V

    .line 129
    return-void
.end method

.method public static parse(Ljava/io/Reader;Ljava/lang/Object;Z)V
    .locals 19
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "decodeEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 154
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    .line 155
    .local v2, "classInfo":Lcom/google/api/client/util/ClassInfo;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 156
    .local v3, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    const-class v4, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/google/api/client/util/GenericData;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 158
    .local v4, "genericData":Lcom/google/api/client/util/GenericData;
    :goto_0
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 159
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    new-instance v7, Lcom/google/api/client/util/ArrayValueMap;

    invoke-direct {v7, v0}, Lcom/google/api/client/util/ArrayValueMap;-><init>(Ljava/lang/Object;)V

    .line 160
    .local v7, "arrayValueMap":Lcom/google/api/client/util/ArrayValueMap;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 161
    .local v8, "nameWriter":Ljava/io/StringWriter;
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 162
    .local v9, "valueWriter":Ljava/io/StringWriter;
    const/4 v10, 0x1

    .line 165
    .local v10, "readingName":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/Reader;->read()I

    move-result v11

    .line 166
    .local v11, "read":I
    sparse-switch v11, :sswitch_data_0

    .line 237
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .local v17, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "classInfo":Lcom/google/api/client/util/ClassInfo;
    if-eqz v10, :cond_f

    .line 238
    invoke-virtual {v8, v11}, Ljava/io/StringWriter;->write(I)V

    goto/16 :goto_7

    .line 227
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    :sswitch_0
    if-eqz v10, :cond_2

    .line 229
    const/4 v10, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_7

    .line 232
    :cond_2
    invoke-virtual {v9, v11}, Ljava/io/StringWriter;->write(I)V

    .line 234
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_7

    .line 171
    :sswitch_1
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz p2, :cond_3

    invoke-static {v12}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_d

    .line 173
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz p2, :cond_4

    invoke-static {v13}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, "stringValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v12}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v14

    .line 176
    .local v14, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v14, :cond_9

    .line 177
    nop

    .line 178
    invoke-virtual {v14}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v15

    invoke-static {v3, v15}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 180
    .local v15, "type":Ljava/lang/reflect/Type;
    invoke-static {v15}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 182
    nop

    .line 183
    invoke-static {v15}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 184
    .local v5, "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 185
    move-object/from16 v17, v1

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 187
    move-object/from16 v18, v2

    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    invoke-static {v5, v3, v13}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 184
    invoke-virtual {v7, v1, v5, v2}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 188
    .end local v5    # "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_5

    .line 189
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    :cond_5
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    invoke-static {v3, v15}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Iterable;

    .line 188
    invoke-static {v1, v2}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    invoke-virtual {v14, v0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 193
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v1, :cond_6

    .line 194
    invoke-static {v15}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v1

    .line 195
    invoke-virtual {v14, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    :cond_6
    const-class v2, Ljava/lang/Object;

    if-ne v15, v2, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    invoke-static {v15}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 198
    .local v2, "subFieldType":Ljava/lang/reflect/Type;
    :goto_3
    invoke-static {v2, v3, v13}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "subFieldType":Ljava/lang/reflect/Type;
    goto :goto_5

    .line 201
    :cond_8
    invoke-static {v15, v3, v13}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 203
    .end local v15    # "type":Ljava/lang/reflect/Type;
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "classInfo":Lcom/google/api/client/util/ClassInfo;
    :cond_9
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    if-eqz v6, :cond_c

    .line 206
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 207
    .local v1, "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_b

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 209
    if-eqz v4, :cond_a

    .line 210
    invoke-virtual {v4, v12, v1}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    goto :goto_4

    .line 212
    :cond_a
    invoke-interface {v6, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_b
    :goto_4
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 203
    .end local v1    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    :goto_5
    goto :goto_6

    .line 172
    .end local v13    # "stringValue":Ljava/lang/String;
    .end local v14    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    :cond_d
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .line 219
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v17    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    :goto_6
    const/4 v1, 0x1

    .line 220
    .end local v10    # "readingName":Z
    .local v1, "readingName":Z
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 221
    .end local v8    # "nameWriter":Ljava/io/StringWriter;
    .local v2, "nameWriter":Ljava/io/StringWriter;
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 222
    .end local v9    # "valueWriter":Ljava/io/StringWriter;
    .local v5, "valueWriter":Ljava/io/StringWriter;
    const/4 v8, -0x1

    if-ne v11, v8, :cond_e

    .line 223
    nop

    .line 244
    .end local v11    # "read":I
    .end local v12    # "name":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/api/client/util/ArrayValueMap;->setValues()V

    .line 245
    return-void

    .line 222
    .restart local v11    # "read":I
    .restart local v12    # "name":Ljava/lang/String;
    :cond_e
    move v10, v1

    move-object v8, v2

    move-object v9, v5

    goto :goto_7

    .line 240
    .end local v1    # "readingName":Z
    .end local v2    # "nameWriter":Ljava/io/StringWriter;
    .end local v5    # "valueWriter":Ljava/io/StringWriter;
    .end local v12    # "name":Ljava/lang/String;
    .restart local v8    # "nameWriter":Ljava/io/StringWriter;
    .restart local v9    # "valueWriter":Ljava/io/StringWriter;
    .restart local v10    # "readingName":Z
    :cond_f
    invoke-virtual {v9, v11}, Ljava/io/StringWriter;->write(I)V

    .line 243
    .end local v11    # "read":I
    :goto_7
    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x26 -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 85
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "decodeEnabled"    # Z

    .line 96
    if-nez p0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/io/Reader;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .line 105
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "exception":Ljava/io/IOException;
    invoke-static {v0}, Lcom/google/api/client/util/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "valueType"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 248
    .local p1, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 249
    .local v0, "resolved":Ljava/lang/reflect/Type;
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 255
    .local v0, "r":Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0, p3}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 260
    .local v0, "r":Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0, p3}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    instance-of v0, p2, Ljava/lang/Class;

    const-string v1, "dataType has to be of type Class<?>"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 272
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "newInstance":Ljava/lang/Object;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/io/Reader;Ljava/lang/Object;)V

    .line 274
    return-object v0
.end method
