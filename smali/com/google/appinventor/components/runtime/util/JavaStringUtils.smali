.class public Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.super Ljava/lang/Object;
.source "JavaStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_TAG_JOIN_STRINGS:Ljava/lang/String; = "JavaJoinListOfStrings"

.field private static final mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final rangeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 165
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder-IA;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 166
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder-IA;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 167
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder-IA;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 168
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator-IA;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->rangeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMappings(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 358
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->rangeComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 362
    .local v0, "ranges":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 366
    .local v3, "keyPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 369
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 372
    .local v5, "replacement":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 374
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 375
    .local v6, "startId":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    .line 381
    .local v7, "endId":I
    new-instance v8, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    invoke-direct {v8, v6, v7, v5}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;-><init>(IILjava/lang/String;)V

    .line 382
    .local v8, "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    invoke-virtual {v0, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v6    # "startId":I
    .end local v7    # "endId":I
    .end local v8    # "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    goto :goto_1

    .line 384
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyPattern":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "replacement":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    .line 398
    .local v2, "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    const/4 v3, 0x0

    iget v4, v2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "left":Ljava/lang/String;
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->text:Ljava/lang/String;

    .line 400
    .local v4, "middle":Ljava/lang/String;
    iget v5, v2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "end":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    .end local v2    # "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    .end local v3    # "left":Ljava/lang/String;
    .end local v4    # "middle":Ljava/lang/String;
    .end local v5    # "end":Ljava/lang/String;
    goto :goto_2

    .line 404
    :cond_2
    return-object p0
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 224
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 226
    .local v3, "item":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 227
    const/4 v1, 0x0

    goto :goto_1

    .line 229
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .end local v3    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 194
    .local p0, "listOfStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "order"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 290
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 294
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v1, "stringMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 305
    .local v3, "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 311
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v3    # "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p2, v2, p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;->changeOrder(Ljava/util/List;Ljava/lang/String;)V

    .line 325
    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->applyMappings(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static replaceAllMappingsDictionaryOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 246
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAllMappingsEarliestOccurrenceOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 274
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAllMappingsLongestStringOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "at"    # Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 214
    const-string v1, ""

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 217
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method
