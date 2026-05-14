.class public Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MergeFromVisitor"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2047
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    invoke-direct {v0}, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;-><init>()V

    sput-object v0, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitBoolean(ZZZZ)Z
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Z
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Z

    .line 2054
    if-eqz p3, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public visitBooleanList(Lcom/google/protobuf/Internal$BooleanList;Lcom/google/protobuf/Internal$BooleanList;)Lcom/google/protobuf/Internal$BooleanList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$BooleanList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$BooleanList;

    .line 2182
    invoke-interface {p1}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 2183
    .local v0, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$BooleanList;->size()I

    move-result v1

    .line 2184
    .local v1, "otherSize":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2185
    invoke-interface {p1}, Lcom/google/protobuf/Internal$BooleanList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2186
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$BooleanList;

    move-result-object p1

    .line 2188
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$BooleanList;->addAll(Ljava/util/Collection;)Z

    .line 2191
    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitByteString(ZLcom/google/protobuf/ByteString;ZLcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Lcom/google/protobuf/ByteString;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Lcom/google/protobuf/ByteString;

    .line 2087
    if-eqz p3, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public visitDouble(ZDZD)D
    .locals 2
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # D
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # D

    .line 2065
    if-eqz p4, :cond_0

    move-wide v0, p5

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    return-wide v0
.end method

.method public visitDoubleList(Lcom/google/protobuf/Internal$DoubleList;Lcom/google/protobuf/Internal$DoubleList;)Lcom/google/protobuf/Internal$DoubleList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$DoubleList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$DoubleList;

    .line 2210
    invoke-interface {p1}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 2211
    .local v0, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$DoubleList;->size()I

    move-result v1

    .line 2212
    .local v1, "otherSize":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2213
    invoke-interface {p1}, Lcom/google/protobuf/Internal$DoubleList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2214
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$DoubleList;

    move-result-object p1

    .line 2216
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$DoubleList;->addAll(Ljava/util/Collection;)Z

    .line 2219
    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitExtensions(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/FieldSet;)Lcom/google/protobuf/FieldSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 2254
    .local p1, "mine":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p2, "other":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object p1

    .line 2257
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 2258
    return-object p1
.end method

.method public visitFloat(ZFZF)F
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # F
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # F

    .line 2070
    if-eqz p3, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public visitFloatList(Lcom/google/protobuf/Internal$FloatList;Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$FloatList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$FloatList;

    .line 2224
    invoke-interface {p1}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 2225
    .local v0, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v1

    .line 2226
    .local v1, "otherSize":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2227
    invoke-interface {p1}, Lcom/google/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2228
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$FloatList;

    move-result-object p1

    .line 2230
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$FloatList;->addAll(Ljava/util/Collection;)Z

    .line 2233
    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitInt(ZIZI)I
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # I
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # I

    .line 2059
    if-eqz p3, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public visitIntList(Lcom/google/protobuf/Internal$IntList;Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$IntList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$IntList;

    .line 2196
    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 2197
    .local v0, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v1

    .line 2198
    .local v1, "otherSize":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2199
    invoke-interface {p1}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2200
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$IntList;

    move-result-object p1

    .line 2202
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$IntList;->addAll(Ljava/util/Collection;)Z

    .line 2205
    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitLazyMessage(Lcom/google/protobuf/LazyFieldLite;Lcom/google/protobuf/LazyFieldLite;)Lcom/google/protobuf/LazyFieldLite;
    .locals 1
    .param p1, "mine"    # Lcom/google/protobuf/LazyFieldLite;
    .param p2, "other"    # Lcom/google/protobuf/LazyFieldLite;

    .line 2157
    if-eqz p2, :cond_1

    .line 2158
    if-nez p1, :cond_0

    .line 2159
    new-instance v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    move-object p1, v0

    .line 2161
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 2163
    :cond_1
    return-object p1
.end method

.method public visitList(Lcom/google/protobuf/Internal$ProtobufList;Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;)",
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "TT;>;"
        }
    .end annotation

    .line 2168
    .local p1, "mine":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TT;>;"
    .local p2, "other":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<TT;>;"
    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 2169
    .local v0, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 2170
    .local v1, "otherSize":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2171
    invoke-interface {p1}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2172
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 2174
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    .line 2177
    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitLong(ZJZJ)J
    .locals 2
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # J
    .param p4, "otherPresent"    # Z
    .param p5, "other"    # J

    .line 2075
    if-eqz p4, :cond_0

    move-wide v0, p5

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    return-wide v0
.end method

.method public visitLongList(Lcom/google/protobuf/Internal$LongList;Lcom/google/protobuf/Internal$LongList;)Lcom/google/protobuf/Internal$LongList;
    .locals 3
    .param p1, "mine"    # Lcom/google/protobuf/Internal$LongList;
    .param p2, "other"    # Lcom/google/protobuf/Internal$LongList;

    .line 2238
    invoke-interface {p1}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 2239
    .local v0, "size":I
    invoke-interface {p2}, Lcom/google/protobuf/Internal$LongList;->size()I

    move-result v1

    .line 2240
    .local v1, "otherSize":I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 2241
    invoke-interface {p1}, Lcom/google/protobuf/Internal$LongList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2242
    add-int v2, v0, v1

    invoke-interface {p1, v2}, Lcom/google/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/google/protobuf/Internal$LongList;

    move-result-object p1

    .line 2244
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/protobuf/Internal$LongList;->addAll(Ljava/util/Collection;)Z

    .line 2247
    :cond_1
    if-lez v0, :cond_2

    move-object v2, p1

    goto :goto_0

    :cond_2
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public visitMap(Lcom/google/protobuf/MapFieldLite;Lcom/google/protobuf/MapFieldLite;)Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;)",
            "Lcom/google/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2271
    .local p1, "mine":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    .local p2, "other":Lcom/google/protobuf/MapFieldLite;, "Lcom/google/protobuf/MapFieldLite<TK;TV;>;"
    invoke-virtual {p2}, Lcom/google/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2272
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2273
    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    .line 2275
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/MapFieldLite;->mergeFrom(Lcom/google/protobuf/MapFieldLite;)V

    .line 2277
    :cond_1
    return-object p1
.end method

.method public visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 2148
    .local p1, "mine":Lcom/google/protobuf/MessageLite;, "TT;"
    .local p2, "other":Lcom/google/protobuf/MessageLite;, "TT;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2149
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    .line 2152
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public visitOneofBoolean(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2092
    return-object p3
.end method

.method public visitOneofByteString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2122
    return-object p3
.end method

.method public visitOneofDouble(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2102
    return-object p3
.end method

.method public visitOneofFloat(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2107
    return-object p3
.end method

.method public visitOneofInt(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2097
    return-object p3
.end method

.method public visitOneofLazyMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2127
    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/LazyFieldLite;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    .line 2128
    .local v0, "lazy":Lcom/google/protobuf/LazyFieldLite;
    :goto_0
    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/LazyFieldLite;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 2129
    return-object v0
.end method

.method public visitOneofLong(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2112
    return-object p3
.end method

.method public visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2134
    if-eqz p1, :cond_0

    .line 2135
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/MessageLite;

    move-object v1, p3

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$MergeFromVisitor;->visitMessage(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0

    .line 2137
    :cond_0
    return-object p3
.end method

.method public visitOneofNotSet(Z)V
    .locals 0
    .param p1, "minePresent"    # Z

    .line 2142
    return-void
.end method

.method public visitOneofString(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/Object;
    .param p3, "other"    # Ljava/lang/Object;

    .line 2117
    return-object p3
.end method

.method public visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "minePresent"    # Z
    .param p2, "mine"    # Ljava/lang/String;
    .param p3, "otherPresent"    # Z
    .param p4, "other"    # Ljava/lang/String;

    .line 2081
    if-eqz p3, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public visitUnknownFields(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;
    .locals 1
    .param p1, "mine"    # Lcom/google/protobuf/UnknownFieldSetLite;
    .param p2, "other"    # Lcom/google/protobuf/UnknownFieldSetLite;

    .line 2265
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    if-ne p2, v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 2266
    :cond_0
    invoke-static {p1, p2}, Lcom/google/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/protobuf/UnknownFieldSetLite;Lcom/google/protobuf/UnknownFieldSetLite;)Lcom/google/protobuf/UnknownFieldSetLite;

    move-result-object v0

    :goto_0
    return-object v0
.end method
