.class Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;
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
    name = "SingularFieldAccessor"
.end annotation


# instance fields
.field protected final caseMethod:Ljava/lang/reflect/Method;

.field protected final caseMethodBuilder:Ljava/lang/reflect/Method;

.field protected final clearMethod:Ljava/lang/reflect/Method;

.field protected final field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field protected final getMethodBuilder:Ljava/lang/reflect/Method;

.field protected final hasHasMethod:Z

.field protected final hasMethod:Ljava/lang/reflect/Method;

.field protected final hasMethodBuilder:Ljava/lang/reflect/Method;

.field protected final isOneofField:Z

.field protected final setMethod:Ljava/lang/reflect/Method;

.field protected final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


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

    .line 1922
    .local p3, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageV3;>;"
    .local p4, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageV3$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1923
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 1924
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->isOneofField:Z

    .line 1925
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$1200(Lcom/google/protobuf/Descriptors$FileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->isOneofField:Z

    if-nez v0, :cond_1

    .line 1926
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v3, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasHasMethod:Z

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p3, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->getMethod:Ljava/lang/reflect/Method;

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->getMethodBuilder:Ljava/lang/reflect/Method;

    .line 1929
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->type:Ljava/lang/Class;

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->type:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->setMethod:Ljava/lang/reflect/Method;

    .line 1931
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasHasMethod:Z

    const-string v1, "has"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Class;

    .line 1932
    invoke-static {p3, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v4

    :goto_3
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasMethod:Ljava/lang/reflect/Method;

    .line 1933
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasHasMethod:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    .line 1934
    invoke-static {p4, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v4

    :goto_4
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasMethodBuilder:Ljava/lang/reflect/Method;

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->clearMethod:Ljava/lang/reflect/Method;

    .line 1936
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->isOneofField:Z

    const-string v1, "Case"

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {p3, v0, v5}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v4

    :goto_5
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->caseMethod:Ljava/lang/reflect/Method;

    .line 1938
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->isOneofField:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    :cond_6
    iput-object v4, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->caseMethodBuilder:Ljava/lang/reflect/Method;

    .line 1940
    return-void
.end method

.method private getOneofFieldNumber(Lcom/google/protobuf/GeneratedMessageV3$Builder;)I
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 1963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->caseMethodBuilder:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    return v0
.end method

.method private getOneofFieldNumber(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 2
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 1959
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->caseMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2013
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2048
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->clearMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    return-void
.end method

.method public get(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 1972
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->getMethodBuilder:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 2
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 1968
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Lcom/google/protobuf/Message$Builder;
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2057
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFieldBuilder() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRaw(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 1980
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRaw(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 1976
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I

    .line 1998
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeated(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 2
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;
    .param p2, "index"    # I

    .line 1988
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedBuilder(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Lcom/google/protobuf/Message$Builder;
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I

    .line 2062
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedCount(Lcom/google/protobuf/GeneratedMessageV3$Builder;)I
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2043
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedCount(Lcom/google/protobuf/GeneratedMessageV3;)I
    .locals 2
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 2038
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedRaw(Lcom/google/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I

    .line 2003
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldRaw() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedRaw(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 2
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;
    .param p2, "index"    # I

    .line 1993
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldRaw() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public has(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Z
    .locals 4
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2028
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasHasMethod:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2029
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->isOneofField:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2030
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->getOneofFieldNumber(Lcom/google/protobuf/GeneratedMessageV3$Builder;)I

    move-result v0

    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2032
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 2034
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasMethodBuilder:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public has(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 4
    .param p1, "message"    # Lcom/google/protobuf/GeneratedMessageV3;

    .line 2018
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasHasMethod:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2019
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->isOneofField:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2020
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->getOneofFieldNumber(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result v0

    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2022
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->field:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 2024
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->hasMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public newBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 2

    .line 2052
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Lcom/google/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$SingularFieldAccessor;->setMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    return-void
.end method

.method public setRepeated(Lcom/google/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 2008
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setRepeatedField() called on a singular field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
