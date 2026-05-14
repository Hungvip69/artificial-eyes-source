.class Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;
.super Ljava/lang/Object;
.source "GeneratedMessageV3.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapFieldAccessor"
.end annotation


# instance fields
.field private final field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private final mapEntryMessageDefaultInstance:Lcom/google/protobuf/Message;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "camelCaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder;",
            ">;)V"
        }
    .end annotation

    .line 2199
    .local p3, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageV3;>;"
    .local p4, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageV3$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2200
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2201
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 2202
    const-string v2, "getDefaultInstance"

    invoke-static {p3, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2203
    .local v1, "getDefaultInstanceMethod":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    .line 2204
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageV3;

    .line 2203
    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/MapField;

    move-result-object v0

    .line 2205
    .local v0, "defaultMapField":Lcom/google/protobuf/MapField;
    nop

    .line 2206
    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getMapEntryMessageDefaultInstance()Lcom/google/protobuf/Message;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/google/protobuf/Message;

    .line 2207
    return-void
.end method

.method private getMapField(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/MapField;
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder;",
            ")",
            "Lcom/google/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2217
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->internalGetMapField(I)Lcom/google/protobuf/MapField;

    move-result-object v0

    return-object v0
.end method

.method private getMapField(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/MapField;
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ")",
            "Lcom/google/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2213
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetMapField(I)Lcom/google/protobuf/MapField;

    move-result-object v0

    return-object v0
.end method

.method private getMutableMapField(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/MapField;
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder;",
            ")",
            "Lcom/google/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2222
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2223
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    .line 2222
    invoke-virtual {p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->internalGetMutableMapField(I)Lcom/google/protobuf/MapField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2289
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/google/protobuf/Message;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2290
    return-void
.end method

.method public clear(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2316
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2317
    return-void
.end method

.method public get(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 3
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2238
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeatedCount(Lcom/google/protobuf/GeneratedMessageV3$Builder;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2239
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2241
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 3
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 2228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2229
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeatedCount(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2230
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2232
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getBuilder(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/Message$Builder;
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Nested builder not supported for map fields."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRaw(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2251
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRaw(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 2246
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I

    .line 2269
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;
    .param p2, "index"    # I

    .line 2264
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedBuilder(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Lcom/google/protobuf/Message$Builder;
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I

    .line 2332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Nested builder not supported for map fields."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedCount(Lcom/google/protobuf/GeneratedMessageV3$Builder;)I
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2311
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRepeatedCount(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 2306
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRepeatedRaw(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I

    .line 2279
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedRaw(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;
    .param p2, "index"    # I

    .line 2274
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public has(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Z
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasField() is not supported for repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public has(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 2
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 2294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasField() is not supported for repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2321
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/google/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2256
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->clear(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 2257
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2258
    .local v1, "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    .line 2259
    .end local v1    # "entry":Ljava/lang/Object;
    goto :goto_0

    .line 2260
    :cond_0
    return-void
.end method

.method public setRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 2284
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/Message;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2285
    return-void
.end method
