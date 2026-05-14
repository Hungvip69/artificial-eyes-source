.class final Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$DescriptorPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorIntPair"
.end annotation


# instance fields
.field private final descriptor:Lcom/google/protobuf/Descriptors$GenericDescriptor;

.field private final number:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;I)V
    .locals 0
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .param p2, "number"    # I

    .line 2416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2417
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 2418
    iput p2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    .line 2419
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2427
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2428
    return v1

    .line 2430
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    .line 2431
    .local v0, "other":Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/google/protobuf/Descriptors$GenericDescriptor;

    iget-object v3, v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/google/protobuf/Descriptors$GenericDescriptor;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    iget v3, v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 2423
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->descriptor:Lcom/google/protobuf/Descriptors$GenericDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method
