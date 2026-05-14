.class public Lcom/google/api/client/util/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field public static final NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

.field public static final NULL_BIG_INTEGER:Ljava/math/BigInteger;

.field public static final NULL_BOOLEAN:Ljava/lang/Boolean;

.field public static final NULL_BYTE:Ljava/lang/Byte;

.field private static final NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL_CHARACTER:Ljava/lang/Character;

.field public static final NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

.field public static final NULL_DOUBLE:Ljava/lang/Double;

.field public static final NULL_FLOAT:Ljava/lang/Float;

.field public static final NULL_INTEGER:Ljava/lang/Integer;

.field public static final NULL_LONG:Ljava/lang/Long;

.field public static final NULL_SHORT:Ljava/lang/Short;

.field public static final NULL_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_CHARACTER:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BYTE:Ljava/lang/Byte;

    .line 60
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_SHORT:Ljava/lang/Short;

    .line 63
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_INTEGER:Ljava/lang/Integer;

    .line 66
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_FLOAT:Ljava/lang/Float;

    .line 69
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    .line 72
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_DOUBLE:Ljava/lang/Double;

    .line 75
    new-instance v0, Ljava/math/BigInteger;

    const-string v3, "0"

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BIG_INTEGER:Ljava/math/BigInteger;

    .line 78
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

    .line 81
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_CHARACTER:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BYTE:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_SHORT:Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_INTEGER:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_FLOAT:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DOUBLE:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BIG_INTEGER:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/google/api/client/util/DateTime;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 216
    .local p0, "data":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    instance-of v0, p0, Lcom/google/api/client/util/GenericData;

    if-eqz v0, :cond_1

    .line 220
    move-object v0, p0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    return-object v0

    .line 223
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 224
    .local v0, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, "copy":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 226
    .end local v1    # "copy":Ljava/lang/Object;, "TT;"
    :cond_2
    instance-of v1, p0, Lcom/google/api/client/util/ArrayMap;

    if-eqz v1, :cond_3

    .line 227
    move-object v1, p0

    check-cast v1, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v1}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .restart local v1    # "copy":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 228
    .end local v1    # "copy":Ljava/lang/Object;, "TT;"
    :cond_3
    const-string v1, "java.util.Arrays$ArrayList"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 233
    .local v1, "arrayCopy":[Ljava/lang/Object;
    invoke-static {v1, v1}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "copy":Ljava/lang/Object;, "TT;"
    return-object v2

    .line 237
    .end local v1    # "arrayCopy":[Ljava/lang/Object;
    .end local v2    # "copy":Ljava/lang/Object;, "TT;"
    :cond_4
    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, "copy":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-static {p0, v1}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    return-object v1

    .line 217
    .end local v0    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "copy":Ljava/lang/Object;, "TT;"
    :cond_5
    :goto_1
    return-object p0
.end method

.method private static createNullInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 135
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "dims":I
    move-object v2, p0

    .line 140
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 141
    add-int/2addr v0, v1

    .line 142
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    new-array v1, v0, [I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 145
    .end local v0    # "dims":I
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 148
    .local v0, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "enum missing constant with @NullValue annotation: %s"

    invoke-static {v0, v2, v1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    move-result-object v1

    .line 152
    .local v1, "e":Ljava/lang/Enum;
    return-object v1

    .line 155
    .end local v0    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v1    # "e":Ljava/lang/Enum;
    :cond_2
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dest"    # Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 271
    .local v0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ne v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "index":I
    invoke-static {p0}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 277
    .local v3, "value":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v3}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 278
    .end local v3    # "value":Ljava/lang/Object;
    move v1, v4

    goto :goto_1

    .line 279
    .end local v4    # "index":I
    :cond_2
    goto/16 :goto_8

    :cond_3
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 283
    .local v1, "srcCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    .line 286
    .local v2, "destArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 289
    .end local v2    # "destArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    .line 290
    .local v2, "destCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 291
    .local v4, "srcValue":Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v4    # "srcValue":Ljava/lang/Object;
    goto :goto_2

    .line 293
    .end local v1    # "srcCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "destCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_5
    goto/16 :goto_8

    .line 295
    :cond_6
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 296
    .local v1, "isGenericData":Z
    if-nez v1, :cond_a

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    .line 312
    :cond_7
    const-class v2, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 315
    move-object v2, p1

    check-cast v2, Lcom/google/api/client/util/ArrayMap;

    .line 317
    .local v2, "destMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v3, p0

    check-cast v3, Lcom/google/api/client/util/ArrayMap;

    .line 318
    .local v3, "srcMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v4

    .line 319
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_8

    .line 320
    invoke-virtual {v3, v5}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v6

    .line 321
    .local v6, "srcValue":Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    .end local v6    # "srcValue":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 323
    .end local v2    # "destMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "srcMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_8
    goto :goto_8

    .line 326
    :cond_9
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 328
    .local v2, "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    .line 329
    .local v3, "srcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 330
    .local v5, "srcEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v5    # "srcEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_4

    .line 297
    .end local v2    # "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "srcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    move-object v2, p0

    check-cast v2, Lcom/google/api/client/util/GenericData;

    iget-object v2, v2, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    goto :goto_6

    .line 298
    :cond_b
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    :goto_6
    nop

    .line 299
    .local v2, "classInfo":Lcom/google/api/client/util/ClassInfo;
    iget-object v3, v2, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 300
    .local v4, "fieldName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v5

    .line 302
    .local v5, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    invoke-virtual {v5}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v6

    if-nez v6, :cond_d

    .line 304
    if-eqz v1, :cond_c

    invoke-virtual {v5}, Lcom/google/api/client/util/FieldInfo;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_d

    .line 305
    :cond_c
    invoke-virtual {v5, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 306
    .restart local v6    # "srcValue":Ljava/lang/Object;
    if-eqz v6, :cond_d

    .line 307
    invoke-static {v6}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, p1, v7}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v6    # "srcValue":Ljava/lang/Object;
    :cond_d
    goto :goto_7

    .line 312
    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    :cond_e
    nop

    .line 334
    .end local v1    # "isGenericData":Z
    :cond_f
    :goto_8
    return-void
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 167
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 350
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 351
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {v0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 353
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 354
    return v1

    .line 356
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 357
    .local v0, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/math/BigInteger;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_2

    const-class v2, Lcom/google/api/client/util/DateTime;

    if-eq v0, v2, :cond_2

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isValueOfPrimitiveType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "fieldValue"    # Ljava/lang/Object;

    .line 377
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static mapOf(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p0, "data"    # Ljava/lang/Object;
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

    .line 188
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 193
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 194
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0

    .line 196
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v0, Lcom/google/api/client/util/DataMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/util/DataMap;-><init>(Ljava/lang/Object;Z)V

    .line 197
    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0

    .line 189
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 489
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 490
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {v0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 492
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 493
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 495
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 496
    .local v0, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_7

    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_7

    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_7

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 502
    :cond_3
    if-eqz v0, :cond_6

    .line 505
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 508
    :cond_4
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 509
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    return-object v1

    .line 512
    :cond_5
    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 513
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    return-object v1

    .line 503
    .end local v1    # "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create new instance of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 500
    :cond_7
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static newMapInstance(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 532
    .local p0, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2

    const-class v0, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0

    .line 539
    :cond_1
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 540
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-object v0

    .line 533
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public static nullOf(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 116
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 123
    invoke-static {p0}, Lcom/google/api/client/util/Data;->createNullInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "newValue":Ljava/lang/Object;
    sget-object v2, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 126
    move-object v0, v1

    .line 130
    .end local v1    # "newValue":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    .line 131
    .local v1, "tResult":Ljava/lang/Object;, "TT;"
    return-object v1
.end method

.method public static parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "stringValue"    # Ljava/lang/String;

    .line 410
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 411
    .local v0, "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz p0, :cond_1

    if-eqz v0, :cond_10

    .line 412
    :cond_1
    const-class v2, Ljava/lang/Void;

    if-ne v0, v2, :cond_2

    .line 413
    return-object v1

    .line 415
    :cond_2
    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    const-class v1, Ljava/lang/String;

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_9

    .line 420
    :cond_3
    const-class v1, Ljava/lang/Character;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_18

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    goto/16 :goto_8

    .line 427
    :cond_4
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_17

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    goto/16 :goto_7

    .line 430
    :cond_5
    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_16

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    goto/16 :goto_6

    .line 433
    :cond_6
    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_15

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    goto/16 :goto_5

    .line 436
    :cond_7
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_14

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8

    goto/16 :goto_4

    .line 439
    :cond_8
    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_13

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_9

    goto/16 :goto_3

    .line 442
    :cond_9
    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_12

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a

    goto :goto_2

    .line 445
    :cond_a
    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    goto :goto_1

    .line 448
    :cond_b
    const-class v1, Lcom/google/api/client/util/DateTime;

    if-ne v0, v1, :cond_c

    .line 449
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v1

    return-object v1

    .line 451
    :cond_c
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_d

    .line 452
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 454
    :cond_d
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_e

    .line 455
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 457
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 458
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 463
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    move-result-object v1

    .line 464
    .local v1, "result":Ljava/lang/Enum;
    return-object v1

    .line 459
    .end local v1    # "result":Ljava/lang/Enum;
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 460
    const-string v2, "given enum name %s not part of enumeration"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected primitive class, but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    :cond_11
    :goto_1
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 443
    :cond_12
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 440
    :cond_13
    :goto_3
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 437
    :cond_14
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 434
    :cond_15
    :goto_5
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 431
    :cond_16
    :goto_6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 428
    :cond_17
    :goto_7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 421
    :cond_18
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_19

    .line 425
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    return-object v1

    .line 422
    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected type Character/char but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_1a
    :goto_9
    return-object p1
.end method

.method public static resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 556
    .local p0, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 557
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {v0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 560
    :cond_0
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 562
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 563
    .local v0, "resolved":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_1

    .line 564
    move-object p1, v0

    .line 567
    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_2

    .line 568
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, v1, v2

    .line 571
    .end local v0    # "resolved":Ljava/lang/reflect/Type;
    :cond_2
    goto :goto_0

    .line 572
    :cond_3
    return-object p1
.end method
