.class public Lcom/google/appinventor/components/runtime/util/YailDictionary;
.super Ljava/util/LinkedHashMap;
.source "YailDictionary.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;,
        Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/appinventor/components/runtime/util/YailObject<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/Object;

.field private static final IDENTITY:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

.field private static final LOG_TAG:Ljava/lang/String; = "YailDictionary"


# instance fields
.field private final keyTransformer:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$2;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary$2;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->IDENTITY:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->IDENTITY:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyTransformer:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 66
    .local p1, "prevMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->IDENTITY:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;)V
    .locals 4
    .param p2, "keyTransformer"    # Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;",
            ")V"
        }
    .end annotation

    .line 69
    .local p1, "prevMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyTransformer:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    .line 71
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 72
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method private static alistLookup(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "alist"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p1, "target"    # Ljava/lang/Object;

    .line 325
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    invoke-virtual {v0}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 326
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1

    .line 327
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 328
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    move-object v0, v1

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 331
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    nop

    .line 334
    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 332
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-object v2

    .line 335
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public static alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 7
    .param p0, "alist"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 173
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 175
    .local v0, "map":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 176
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 178
    .local v3, "currentPair":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 179
    .local v4, "currentKey":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 181
    .local v5, "currentValue":Ljava/lang/Object;
    instance-of v6, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    move-object v6, v5

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 184
    :cond_0
    instance-of v6, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_1

    .line 185
    move-object v6, v5

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "currentPair":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v4    # "currentKey":Ljava/lang/Object;
    .end local v5    # "currentValue":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 192
    :cond_2
    return-object v0
.end method

.method private static allOf(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 315
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 316
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 318
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 320
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static allOf(Ljava/util/List;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 299
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_2

    .line 300
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object v1, p0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 303
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 305
    :cond_0
    return-object v0

    .line 307
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 310
    :cond_2
    return-object p0
.end method

.method private static allOf(Ljava/util/Map;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 294
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    .local v0, "checked":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 198
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 199
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, "processed":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_1

    .line 204
    move-object v5, v4

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    move-object v5, v4

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v5

    aput-object v5, v0, v1

    .line 206
    const/4 v3, 0x1

    goto :goto_1

    .line 208
    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    aput-object v5, v0, v1

    .line 209
    aget-object v5, v0, v1

    if-eq v5, v4, :cond_2

    .line 210
    const/4 v3, 0x1

    goto :goto_1

    .line 214
    :cond_1
    aput-object v4, v0, v1

    .line 216
    :cond_2
    :goto_1
    nop

    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 217
    goto :goto_0

    .line 218
    :cond_3
    if-eqz v3, :cond_4

    .line 219
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    return-object v4

    .line 221
    :cond_4
    return-object p0
.end method

.method private static checkListForDicts(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v3, :cond_0

    .line 229
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->dictToAlist(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_0
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1

    .line 231
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkListForDicts(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 236
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public static dictToAlist(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .param p0, "dict"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 245
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method private getFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p2, "currentKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 253
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v0, "YailDictionary"

    instance-of v1, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    xor-int/lit8 v1, v1, 0x1

    .line 255
    .local v1, "offset":I
    :try_start_0
    instance-of v2, p2, Lgnu/lists/FString;

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 258
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 259
    :cond_1
    instance-of v2, p2, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 260
    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 270
    :cond_2
    nop

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested too large of an index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IndexOutOfBoundsException"

    invoke-direct {v0, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 262
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse key as integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NumberParseException"

    invoke-direct {v0, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "yailList"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "hadPair":Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-virtual {v1}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "currentPair":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 158
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 162
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 165
    :cond_1
    const/4 v0, 0x1

    .line 166
    .end local v2    # "currentPair":Ljava/lang/Object;
    goto :goto_0

    .line 168
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static keyToIndex(Ljava/util/List;Ljava/lang/Object;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 379
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 381
    .local v0, "offset":I
    instance-of v2, p1, Ljava/lang/Number;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 382
    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "index":I
    goto :goto_0

    .line 385
    .end local v2    # "index":I
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    .restart local v2    # "index":I
    nop

    .line 391
    :goto_0
    sub-int/2addr v2, v0

    .line 392
    if-ltz v2, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, v0

    if-ge v2, v4, :cond_1

    .line 402
    return v2

    .line 394
    :cond_1
    :try_start_1
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    add-int v5, v2, v0

    .line 395
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    aput-object v6, v7, v1

    const/16 v1, 0xc81

    invoke-direct {v4, v1, v7}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local v0    # "offset":I
    .end local v2    # "index":I
    .end local p0    # "target":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local p1    # "key":Ljava/lang/Object;
    throw v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    .restart local v0    # "offset":I
    .restart local v2    # "index":I
    .restart local p0    # "target":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local p1    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "YailDictionary"

    const-string v4, "Unable to serialize object as JSON"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSON Error"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 386
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "index":I
    :catch_1
    move-exception v2

    .line 387
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    .line 388
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v3

    const/16 v3, 0xc82

    invoke-direct {v4, v3, v1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v4
.end method

.method private lookupTargetForKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 406
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v0, :cond_0

    .line 407
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v0, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 408
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 409
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 411
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    .line 412
    if-nez p1, :cond_2

    const-string v1, "null"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/16 v1, 0xc83

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0
.end method

.method public static makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1

    .line 81
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    return-object v0
.end method

.method public static makeDictionary(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .line 142
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 145
    .local v2, "currentYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 146
    .local v3, "currentKey":Ljava/lang/Object;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 147
    .local v4, "currentValue":Ljava/lang/Object;
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v2    # "currentYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v3    # "currentKey":Ljava/lang/Object;
    .end local v4    # "currentValue":Ljava/lang/Object;
    goto :goto_0

    .line 150
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .line 94
    .local p0, "prevMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static varargs makeDictionary([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 4
    .param p0, "keysAndValues"    # [Ljava/lang/Object;

    .line 123
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 126
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 127
    .local v0, "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 128
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 124
    .end local v0    # "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected an even number of key-value entries."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/YailObject<",
            "*>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 375
    .local p0, "object":Lcom/google/appinventor/components/runtime/util/YailObject;, "Lcom/google/appinventor/components/runtime/util/YailObject<*>;"
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "root"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 340
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    if-eqz p0, :cond_0

    .line 342
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    return-object p2

    .line 345
    :cond_1
    if-nez p0, :cond_2

    .line 346
    return-object p2

    .line 349
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, "currentKey":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, "childKeys":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    .line 352
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 353
    .local v3, "child":Ljava/lang/Object;
    invoke-static {v3, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 354
    .end local v3    # "child":Ljava/lang/Object;
    goto :goto_0

    :cond_3
    goto :goto_2

    .line 355
    :cond_4
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 356
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 357
    :cond_5
    instance-of v2, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_6

    move-object v2, p0

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    move-object v2, p0

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistLookup(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 359
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_7

    .line 360
    invoke-static {v2, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 362
    .end local v2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_7

    .line 363
    move-object v2, p0

    check-cast v2, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 365
    .local v2, "index":I
    :try_start_0
    move-object v3, p0

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    goto :goto_2

    .line 366
    :catch_0
    move-exception v3

    goto :goto_2

    .line 362
    .end local v2    # "index":I
    :cond_7
    :goto_1
    nop

    .line 370
    :goto_2
    return-object p2
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 514
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyTransformer:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 522
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 525
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 530
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyTransformer:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 534
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I

    .line 569
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 572
    move v0, p1

    .line 573
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

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

    .line 574
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 575
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 577
    :cond_0
    nop

    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, -0x1

    .line 578
    goto :goto_0

    .line 581
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 570
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 276
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v0, p0

    .line 278
    .local v0, "target":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 279
    .local v2, "currentKey":Ljava/lang/Object;
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 280
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 281
    :cond_0
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 283
    :cond_1
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 284
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .end local v2    # "currentKey":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 286
    .restart local v2    # "currentKey":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 290
    .end local v2    # "currentKey":Ljava/lang/Object;
    :cond_3
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 539
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyTransformer:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 543
    instance-of v0, p2, Lgnu/lists/FString;

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 546
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 551
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyTransformer:Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 555
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setPair(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "pair"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public setValueForKeyPath(Ljava/util/List;Ljava/lang/Object;)V
    .locals 5
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 483
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v0, p0

    .line 484
    .local v0, "target":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 487
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    return-void

    .line 491
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 493
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    invoke-direct {p0, v0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->lookupTargetForKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 497
    :cond_1
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v3, :cond_2

    .line 498
    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v3, v2, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 499
    :cond_2
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_3

    .line 500
    move-object v3, v0

    check-cast v3, Lgnu/lists/LList;

    .line 501
    .local v3, "l":Lgnu/lists/LList;
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lgnu/lists/LList;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lgnu/lists/SeqPosition;->set(Ljava/lang/Object;)V

    .line 502
    .end local v3    # "l":Lgnu/lists/LList;
    goto :goto_1

    :cond_3
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 504
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 509
    .end local v2    # "key":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 506
    .restart local v2    # "key":Ljava/lang/Object;
    :cond_4
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v4, 0xc83

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I)V

    throw v3

    .line 510
    .end local v2    # "key":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 561
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSON Error"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
