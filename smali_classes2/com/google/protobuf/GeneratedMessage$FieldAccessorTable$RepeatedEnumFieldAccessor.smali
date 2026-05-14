.class final Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;
.super Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;
.source "GeneratedMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedEnumFieldAccessor"
.end annotation


# instance fields
.field private addRepeatedValueMethod:Ljava/lang/reflect/Method;

.field private enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

.field private getRepeatedValueMethod:Ljava/lang/reflect/Method;

.field private getRepeatedValueMethodBuilder:Ljava/lang/reflect/Method;

.field private final getValueDescriptorMethod:Ljava/lang/reflect/Method;

.field private setRepeatedValueMethod:Ljava/lang/reflect/Method;

.field private supportUnknownEnumValue:Z

.field private final valueOfMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 7
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "camelCaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessage$Builder;",
            ">;)V"
        }
    .end annotation

    .line 2742
    .local p3, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessage;>;"
    .local p4, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessage$Builder;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2744
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2746
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->type:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "valueOf"

    invoke-static {v0, v3, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    .line 2748
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->type:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    .line 2749
    const-string v3, "getValueDescriptor"

    invoke-static {v0, v3, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    .line 2751
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->supportsUnknownEnumValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->supportUnknownEnumValue:Z

    .line 2752
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->supportUnknownEnumValue:Z

    if-eqz v0, :cond_0

    .line 2753
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

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    .line 2754
    invoke-static {p3, v0, v5}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeatedValueMethod:Ljava/lang/reflect/Method;

    .line 2755
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

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    .line 2756
    invoke-static {p4, v0, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeatedValueMethodBuilder:Ljava/lang/reflect/Method;

    .line 2757
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

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    aput-object v5, v2, v1

    .line 2758
    invoke-static {p4, v0, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->setRepeatedValueMethod:Ljava/lang/reflect/Method;

    .line 2759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add"

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

    .line 2760
    invoke-static {p4, v0, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->addRepeatedValueMethod:Ljava/lang/reflect/Method;

    .line 2762
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeated(Lcom/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2829
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->supportUnknownEnumValue:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2830
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->addRepeatedValueMethod:Ljava/lang/reflect/Method;

    move-object v3, p2

    check-cast v3, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 2831
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 2830
    invoke-static {v0, p1, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2832
    return-void

    .line 2834
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/google/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    .line 2835
    return-void
.end method

.method public get(Lcom/google/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;
    .locals 4
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2789
    .local v0, "newList":Ljava/util/List;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeatedCount(Lcom/google/protobuf/GeneratedMessage$Builder;)I

    move-result v1

    .line 2790
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2791
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2790
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2793
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public get(Lcom/google/protobuf/GeneratedMessage;)Ljava/lang/Object;
    .locals 4
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessage;

    .line 2777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2778
    .local v0, "newList":Ljava/util/List;
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeatedCount(Lcom/google/protobuf/GeneratedMessage;)I

    move-result v1

    .line 2779
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2780
    invoke-virtual {p0, p1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2782
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;
    .locals 4
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "index"    # I

    .line 2809
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->supportUnknownEnumValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeatedValueMethodBuilder:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, p1, v3}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2811
    .local v0, "value":I
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    return-object v1

    .line 2813
    .end local v0    # "value":I
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    .line 2814
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2813
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMessage;I)Ljava/lang/Object;
    .locals 4
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessage;
    .param p2, "index"    # I

    .line 2799
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->supportUnknownEnumValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getRepeatedValueMethod:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v0, p1, v3}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2801
    .local v0, "value":I
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->enumDescriptor:Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumberCreatingIfUnknown(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    return-object v1

    .line 2803
    .end local v0    # "value":I
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->getValueDescriptorMethod:Ljava/lang/reflect/Method;

    .line 2804
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2803
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setRepeated(Lcom/google/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V
    .locals 6
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 2819
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->supportUnknownEnumValue:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->setRepeatedValueMethod:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, p3

    check-cast v4, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 2821
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v2

    .line 2820
    invoke-static {v0, p1, v5}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2822
    return-void

    .line 2824
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedEnumFieldAccessor;->valueOfMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/google/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V

    .line 2826
    return-void
.end method
