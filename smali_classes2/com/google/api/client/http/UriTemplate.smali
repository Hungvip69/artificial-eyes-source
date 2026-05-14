.class public Lcom/google/api/client/http/UriTemplate;
.super Ljava/lang/Object;
.source "UriTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    }
.end annotation


# static fields
.field private static final COMPOSITE_NON_EXPLODE_JOINER:Ljava/lang/String; = ","

.field private static final COMPOSITE_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    .line 62
    invoke-static {}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->values()[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    return-object v0
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 19
    .param p0, "pathUri"    # Ljava/lang/String;
    .param p1, "parameters"    # Ljava/lang/Object;
    .param p2, "addUnusedParamsAsQueryParams"    # Z

    .line 245
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/api/client/http/UriTemplate;->getMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 246
    .local v1, "variableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v2, "pathBuf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 248
    .local v3, "cur":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 249
    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_d

    .line 250
    const/16 v6, 0x7b

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 251
    .local v6, "next":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 252
    if-nez v3, :cond_0

    if-nez p2, :cond_0

    .line 254
    return-object v0

    .line 256
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    goto/16 :goto_7

    .line 259
    :cond_1
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v7, v6, 0x2

    const/16 v8, 0x7d

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 261
    .local v7, "close":I
    add-int/lit8 v3, v7, 0x1

    .line 263
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "templates":Ljava/lang/String;
    invoke-static {v8}, Lcom/google/api/client/http/UriTemplate;->getCompositeOutput(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    move-result-object v9

    .line 265
    .local v9, "compositeOutput":Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    nop

    .line 266
    const/16 v10, 0x2c

    invoke-static {v10}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 267
    .local v10, "templateIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 268
    .local v11, "isFirstParameter":Z
    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 269
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 270
    .local v12, "template":Ljava/lang/String;
    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    .line 272
    .local v13, "containsExplodeModifier":Z
    nop

    .line 273
    invoke-interface {v10}, Ljava/util/ListIterator;->nextIndex()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-virtual {v9}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getVarNameStartIndex()I

    move-result v14

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 274
    .local v14, "varNameStartIndex":I
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    .line 275
    .local v15, "varNameEndIndex":I
    if-eqz v13, :cond_3

    .line 277
    add-int/lit8 v15, v15, -0x1

    .line 280
    :cond_3
    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "varName":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_4

    .line 285
    move-object/from16 v0, p0

    goto :goto_1

    .line 287
    :cond_4
    if-nez v11, :cond_5

    .line 288
    move/from16 v16, v3

    .end local v3    # "cur":I
    .local v16, "cur":I
    invoke-virtual {v9}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 290
    .end local v16    # "cur":I
    .restart local v3    # "cur":I
    :cond_5
    move/from16 v16, v3

    .end local v3    # "cur":I
    .restart local v16    # "cur":I
    invoke-virtual {v9}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getOutputPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const/4 v3, 0x0

    move v11, v3

    .line 293
    :goto_3
    instance-of v3, v0, Ljava/util/Iterator;

    if-eqz v3, :cond_6

    .line 295
    move-object v3, v0

    check-cast v3, Ljava/util/Iterator;

    .line 296
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {v5, v3, v13, v9}, Lcom/google/api/client/http/UriTemplate;->getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_6

    :cond_6
    instance-of v3, v0, Ljava/lang/Iterable;

    if-nez v3, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    .line 301
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 302
    move-object v3, v0

    check-cast v3, Ljava/lang/Enum;

    invoke-static {v3}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_8

    move-object/from16 v18, v3

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    .end local v3    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    :goto_4
    invoke-static {v5, v3, v9}, Lcom/google/api/client/http/UriTemplate;->getSimpleValue(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .end local v18    # "name":Ljava/lang/String;
    goto :goto_6

    :cond_9
    invoke-static {v0}, Lcom/google/api/client/util/Data;->isValueOfPrimitiveType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 306
    invoke-static {v0}, Lcom/google/api/client/http/UriTemplate;->getMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 307
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v5, v3, v13, v9}, Lcom/google/api/client/http/UriTemplate;->getMapPropertyValue(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_6

    .line 310
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v9}, Lcom/google/api/client/http/UriTemplate;->getSimpleValue(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 299
    :cond_b
    :goto_5
    invoke-static {v0}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 300
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {v5, v3, v13, v9}, Lcom/google/api/client/http/UriTemplate;->getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    nop

    .line 312
    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    .end local v0    # "value":Ljava/lang/Object;
    .end local v5    # "varName":Ljava/lang/String;
    .end local v12    # "template":Ljava/lang/String;
    .end local v13    # "containsExplodeModifier":Z
    .end local v14    # "varNameStartIndex":I
    .end local v15    # "varNameEndIndex":I
    move-object/from16 v0, p0

    move/from16 v3, v16

    goto/16 :goto_1

    .line 268
    .end local v16    # "cur":I
    .local v3, "cur":I
    :cond_c
    move/from16 v16, v3

    .line 314
    .end local v3    # "cur":I
    .end local v6    # "next":I
    .end local v7    # "close":I
    .end local v8    # "templates":Ljava/lang/String;
    .end local v9    # "compositeOutput":Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .end local v10    # "templateIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v11    # "isFirstParameter":Z
    .restart local v16    # "cur":I
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 315
    .end local v16    # "cur":I
    .restart local v3    # "cur":I
    :cond_d
    :goto_7
    if-eqz p2, :cond_e

    .line 317
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/google/api/client/http/GenericUrl;->addQueryParams(Ljava/util/Set;Ljava/lang/StringBuilder;Z)V

    .line 319
    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "uriTemplate"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/Object;
    .param p3, "addUnusedParamsAsQueryParams"    # Z

    .line 215
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "url":Lcom/google/api/client/http/GenericUrl;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/GenericUrl;->setRawPath(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "pathUri":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "pathUri":Ljava/lang/String;
    :cond_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "pathUri":Ljava/lang/String;
    goto :goto_1

    .line 221
    .end local v0    # "pathUri":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object v0, p1

    .line 225
    .restart local v0    # "pathUri":Ljava/lang/String;
    :goto_1
    invoke-static {v0, p2, p3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getCompositeOutput(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 172
    .local v0, "compositeOutput":Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .locals 4
    .param p0, "varName"    # Ljava/lang/String;
    .param p2, "containsExplodeModifier"    # Z
    .param p3, "compositeOutput"    # Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "*>;Z",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 346
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const-string v0, ""

    return-object v0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v0, "retBuf":Ljava/lang/StringBuilder;
    const-string v1, "="

    if-eqz p2, :cond_1

    .line 352
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v2

    .local v2, "joiner":Ljava/lang/String;
    goto :goto_0

    .line 354
    .end local v2    # "joiner":Ljava/lang/String;
    :cond_1
    const-string v2, ","

    .line 355
    .restart local v2    # "joiner":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 361
    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->access$100(Lcom/google/api/client/http/UriTemplate$CompositeOutput;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 184
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 185
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 186
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    return-object v0
.end method

.method private static getMapPropertyValue(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .locals 8
    .param p0, "varName"    # Ljava/lang/String;
    .param p2, "containsExplodeModifier"    # Z
    .param p3, "compositeOutput"    # Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 389
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, ""

    return-object v0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v0, "retBuf":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 396
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "joiner":Ljava/lang/String;
    const-string v2, "="

    .local v2, "mapElementsJoiner":Ljava/lang/String;
    goto :goto_0

    .line 399
    .end local v1    # "joiner":Ljava/lang/String;
    .end local v2    # "mapElementsJoiner":Ljava/lang/String;
    :cond_1
    const-string v1, ","

    .line 400
    .restart local v1    # "joiner":Ljava/lang/String;
    const-string v2, ","

    .line 401
    .restart local v2    # "mapElementsJoiner":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 407
    .local v3, "mapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 409
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p3, v5}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->access$100(Lcom/google/api/client/http/UriTemplate$CompositeOutput;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "encodedKey":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->access$100(Lcom/google/api/client/http/UriTemplate$CompositeOutput;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "encodedValue":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "encodedKey":Ljava/lang/String;
    .end local v6    # "encodedValue":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 418
    .end local v3    # "mapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getSimpleValue(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "compositeOutput"    # Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 323
    invoke-virtual {p2}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p2, p1}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->access$100(Lcom/google/api/client/http/UriTemplate$CompositeOutput;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "%s=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_0
    invoke-static {p2, p1}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->access$100(Lcom/google/api/client/http/UriTemplate$CompositeOutput;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
