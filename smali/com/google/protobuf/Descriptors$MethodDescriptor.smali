.class public final Lcom/google/protobuf/Descriptors$MethodDescriptor;
.super Lcom/google/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodDescriptor"
.end annotation


# instance fields
.field private final file:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private inputType:Lcom/google/protobuf/Descriptors$Descriptor;

.field private outputType:Lcom/google/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

.field private final service:Lcom/google/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$ServiceDescriptor;I)V
    .locals 2
    .param p1, "proto"    # Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .param p2, "file"    # Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p3, "parent"    # Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1981
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;-><init>()V

    .line 1982
    iput p4, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->index:I

    .line 1983
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 1984
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1985
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->service:Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    .line 1989
    invoke-static {p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1400(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V

    .line 1990
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$ServiceDescriptor;ILcom/google/protobuf/Descriptors$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .param p2, "x1"    # Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p3, "x2"    # Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/google/protobuf/Descriptors$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1919
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Descriptors$MethodDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$ServiceDescriptor;I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/Descriptors$MethodDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$MethodDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1919
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$MethodDescriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/Descriptors$MethodDescriptor;Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$MethodDescriptor;
    .param p1, "x1"    # Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 1919
    invoke-direct {p0, p1}, Lcom/google/protobuf/Descriptors$MethodDescriptor;->setProto(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1993
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1994
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1400(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$GenericDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 1996
    .local v0, "input":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    instance-of v1, v0, Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    const-string v3, "\" is not a message type."

    const/16 v4, 0x22

    if-eqz v1, :cond_1

    .line 2000
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    iput-object v1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2002
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2003
    invoke-static {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1400(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v1

    iget-object v5, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v5}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {v1, v5, p0, v6}, Lcom/google/protobuf/Descriptors$DescriptorPool;->lookupSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$GenericDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v1

    .line 2005
    .local v1, "output":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    instance-of v5, v1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-eqz v5, :cond_0

    .line 2009
    move-object v2, v1

    check-cast v2, Lcom/google/protobuf/Descriptors$Descriptor;

    iput-object v2, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2010
    return-void

    .line 2006
    :cond_0
    new-instance v5, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2007
    invoke-virtual {v6}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, p0, v3, v2}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v5

    .line 1997
    .end local v1    # "output":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_1
    new-instance v1, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 1998
    invoke-virtual {v5}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v1
.end method

.method private setProto(Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;)V
    .locals 0
    .param p1, "proto"    # Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2014
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 2015
    return-void
.end method


# virtual methods
.method public getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1950
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->file:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1944
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1924
    iget v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->index:I

    return v0
.end method

.method public getInputType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1957
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->inputType:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 1965
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    return-object v0
.end method

.method public getOutputType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1960
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->outputType:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getService()Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    .locals 1

    .line 1954
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->service:Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    return-object v0
.end method

.method public toProto()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 1929
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$MethodDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/google/protobuf/Message;
    .locals 1

    .line 1919
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$MethodDescriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method
