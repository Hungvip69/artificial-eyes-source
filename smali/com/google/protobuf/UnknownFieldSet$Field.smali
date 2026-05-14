.class public final Lcom/google/protobuf/UnknownFieldSet$Field;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    }
.end annotation


# static fields
.field private static final fieldDefaultInstance:Lcom/google/protobuf/UnknownFieldSet$Field;


# instance fields
.field private fixed32:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fixed64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation
.end field

.field private lengthDelimited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private varint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 733
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/google/protobuf/UnknownFieldSet$Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/UnknownFieldSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/UnknownFieldSet$1;

    .line 713
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSet$Field;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 713
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;
    .param p1, "x1"    # Ljava/util/List;

    .line 713
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 713
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;
    .param p1, "x1"    # Ljava/util/List;

    .line 713
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 713
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;
    .param p1, "x1"    # Ljava/util/List;

    .line 713
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 713
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;
    .param p1, "x1"    # Ljava/util/List;

    .line 713
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 713
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/UnknownFieldSet$Field;
    .param p1, "x1"    # Ljava/util/List;

    .line 713
    iput-object p1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet$Field;
    .locals 1

    .line 731
    sget-object v0, Lcom/google/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/google/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method

.method private getIdentityArray()[Ljava/lang/Object;
    .locals 7

    .line 776
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    iget-object v2, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    iget-object v3, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    iget-object v4, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method

.method public static newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .line 718
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->access$300()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1
    .param p0, "copyFrom"    # Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 726
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 756
    if-ne p0, p1, :cond_0

    .line 757
    const/4 v0, 0x1

    return v0

    .line 759
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/UnknownFieldSet$Field;

    if-nez v0, :cond_1

    .line 760
    const/4 v0, 0x0

    return v0

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 763
    invoke-direct {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v1

    .line 762
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getFixed32List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method public getFixed64List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method public getLengthDelimitedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize(I)I
    .locals 5
    .param p1, "fieldNumber"    # I

    .line 812
    const/4 v0, 0x0

    .line 813
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 814
    .local v2, "value":J
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    .line 815
    .end local v2    # "value":J
    goto :goto_0

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 817
    .local v2, "value":I
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 818
    .end local v2    # "value":I
    goto :goto_1

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 820
    .local v2, "value":J
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v0, v4

    .line 821
    .end local v2    # "value":J
    goto :goto_2

    .line 822
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 823
    .local v2, "value":Lcom/google/protobuf/ByteString;
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 824
    .end local v2    # "value":Lcom/google/protobuf/ByteString;
    goto :goto_3

    .line 825
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UnknownFieldSet;

    .line 826
    .local v2, "value":Lcom/google/protobuf/UnknownFieldSet;
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 827
    .end local v2    # "value":Lcom/google/protobuf/UnknownFieldSet;
    goto :goto_4

    .line 828
    :cond_4
    return v0
.end method

.method public getSerializedSizeAsMessageSetExtension(I)I
    .locals 4
    .param p1, "fieldNumber"    # I

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 851
    .local v2, "value":Lcom/google/protobuf/ByteString;
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 853
    .end local v2    # "value":Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 854
    :cond_0
    return v0
.end method

.method public getVarintList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 768
    invoke-direct {p0}, Lcom/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeAsMessageSetExtensionTo(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 840
    .local v1, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/google/protobuf/ByteString;)V

    .line 841
    .end local v1    # "value":Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 842
    :cond_0
    return-void
.end method

.method public writeTo(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 791
    .local v1, "value":J
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 792
    .end local v1    # "value":J
    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 794
    .local v1, "value":I
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 795
    .end local v1    # "value":I
    goto :goto_1

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 797
    .local v1, "value":J
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 798
    .end local v1    # "value":J
    goto :goto_2

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 800
    .local v1, "value":Lcom/google/protobuf/ByteString;
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 801
    .end local v1    # "value":Lcom/google/protobuf/ByteString;
    goto :goto_3

    .line 802
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet;

    .line 803
    .local v1, "value":Lcom/google/protobuf/UnknownFieldSet;
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 804
    .end local v1    # "value":Lcom/google/protobuf/UnknownFieldSet;
    goto :goto_4

    .line 805
    :cond_4
    return-void
.end method
