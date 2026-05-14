.class final Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;
.super Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;
.source "GeneratedMessageV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingularEnumFieldAccessor"
.end annotation


# instance fields
.field private enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

.field private getValueDescriptorMethod:Ljava/lang/reflect/Method;

.field private getValueMethod:Ljava/lang/reflect/Method;

.field private getValueMethodBuilder:Ljava/lang/reflect/Method;

.field private setValueMethod:Ljava/lang/reflect/Method;

.field private supportUnknownEnumValue:Z

.field private valueOfMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "camelCaseName"    # Ljava/lang/String;
    .param p5, "containingOneofCamelCaseName"    # Ljava/lang/String;
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
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2346
    .local p3, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageV3;>;"
    .local p4, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageV3$Builder;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 2348
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2350
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->type:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "valueOf"

    invoke-static {v0, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    .line 2352
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->type:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    .line 2353
    const-string v3, "getValueDescriptor"

    invoke-static {v0, v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    .line 2355
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->supportsUnknownEnumValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->supportUnknownEnumValue:Z

    .line 2356
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->supportUnknownEnumValue:Z

    if-eqz v0, :cond_0

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Value"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Class;

    .line 2358
    invoke-static {p3, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->getValueMethod:Ljava/lang/reflect/Method;

    .line 2359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Class;

    .line 2360
    invoke-static {p4, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->getValueMethodBuilder:Ljava/lang/reflect/Method;

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    .line 2362
    invoke-static {p4, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->setValueMethod:Ljava/lang/reflect/Method;

    .line 2364
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 3
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2387
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->supportUnknownEnumValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->getValueMethodBuilder:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2389
    .local v0, "value":I
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    return-object v1

    .line 2391
    .end local v0    # "value":I
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 3
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 2378
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->supportUnknownEnumValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->getValueMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2380
    .local v0, "value":I
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    return-object v1

    .line 2382
    .end local v0    # "value":I
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/google/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2396
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->supportUnknownEnumValue:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->setValueMethod:Ljava/lang/reflect/Method;

    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 2398
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 2397
    invoke-static {v0, p1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    return-void

    .line 2401
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->set(Lcom/google/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    .line 2402
    return-void
.end method
