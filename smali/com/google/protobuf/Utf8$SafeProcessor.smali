.class final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 759
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8([BII)I
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 917
    nop

    :goto_0
    if-ge p1, p2, :cond_0

    aget-byte v0, p0, p1

    if-ltz v0, :cond_0

    .line 918
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 921
    :cond_0
    if-lt p1, p2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8NonAscii([BII)I

    move-result v0

    :goto_1
    return v0
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 930
    nop

    :goto_0
    if-lt p1, p2, :cond_0

    .line 931
    const/4 v0, 0x0

    return v0

    .line 933
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    aget-byte p1, p0, p1

    move v1, p1

    .local v1, "byte1":I
    if-gez p1, :cond_d

    .line 935
    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_3

    .line 938
    if-lt v0, p2, :cond_1

    .line 940
    return v1

    .line 945
    :cond_1
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_2

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    move v0, p1

    .line 947
    .end local p1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    return v2

    .line 949
    :cond_3
    const/16 v4, -0x10

    if-ge v1, v4, :cond_8

    .line 952
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_4

    .line 953
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$400([BII)I

    move-result p1

    return p1

    .line 955
    :cond_4
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aget-byte v0, p0, v0

    move v5, v0

    .local v5, "byte2":I
    if-gt v0, v3, :cond_7

    const/16 v0, -0x60

    if-ne v1, p1, :cond_5

    if-lt v5, v0, :cond_7

    :cond_5
    const/16 p1, -0x13

    if-ne v1, p1, :cond_6

    if-ge v5, v0, :cond_7

    :cond_6
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v4

    if-le v0, v3, :cond_b

    move v4, p1

    .line 962
    .end local p1    # "index":I
    .restart local v4    # "index":I
    :cond_7
    return v2

    .line 967
    .end local v4    # "index":I
    .end local v5    # "byte2":I
    .restart local v0    # "index":I
    :cond_8
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_9

    .line 968
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/Utf8;->access$400([BII)I

    move-result p1

    return p1

    .line 970
    :cond_9
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    move v4, v0

    .local v4, "byte2":I
    if-gt v0, v3, :cond_a

    shl-int/lit8 v0, v1, 0x1c

    add-int/lit8 v5, v4, 0x70

    add-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_a

    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .restart local v0    # "index":I
    aget-byte p1, p0, p1

    if-gt p1, v3, :cond_c

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_b

    :cond_a
    goto :goto_1

    .line 983
    .end local v1    # "byte1":I
    .end local v4    # "byte2":I
    :cond_b
    goto :goto_0

    .line 970
    .end local p1    # "index":I
    .restart local v0    # "index":I
    .restart local v1    # "byte1":I
    .restart local v4    # "byte2":I
    :cond_c
    move p1, v0

    .line 980
    .end local v0    # "index":I
    .restart local p1    # "index":I
    :goto_1
    return v2

    .line 933
    .end local v4    # "byte2":I
    .end local p1    # "index":I
    .restart local v0    # "index":I
    :cond_d
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 10
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 856
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 857
    .local v0, "utf16Length":I
    move v1, p3

    .line 858
    .local v1, "j":I
    const/4 v2, 0x0

    .line 859
    .local v2, "i":I
    add-int v3, p3, p4

    .line 862
    .local v3, "limit":I
    :goto_0
    const/16 v4, 0x80

    if-ge v2, v0, :cond_0

    add-int v5, v2, v1

    if-ge v5, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    if-ge v5, v4, :cond_0

    .line 863
    add-int v4, v1, v2

    int-to-byte v5, v6

    aput-byte v5, p2, v4

    .line 862
    nop

    .end local v6    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 865
    :cond_0
    if-ne v2, v0, :cond_1

    .line 866
    add-int v4, v1, v0

    return v4

    .line 868
    :cond_1
    add-int/2addr v1, v2

    .line 869
    :goto_1
    if-ge v2, v0, :cond_a

    .line 870
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 871
    .local v5, "c":C
    if-ge v5, v4, :cond_2

    if-ge v1, v3, :cond_2

    .line 872
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .local v6, "j":I
    int-to-byte v7, v5

    aput-byte v7, p2, v1

    move v1, v6

    goto/16 :goto_2

    .line 873
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    if-gt v1, v6, :cond_3

    .line 874
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    .line 875
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    goto :goto_2

    .line 876
    :cond_3
    const v6, 0xdfff

    const v7, 0xd800

    if-lt v5, v7, :cond_4

    if-ge v6, v5, :cond_5

    :cond_4
    add-int/lit8 v8, v3, -0x3

    if-gt v1, v8, :cond_5

    .line 878
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    ushr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0x1e0

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    .line 879
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    .line 880
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    and-int/lit8 v7, v5, 0x3f

    or-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v1

    move v1, v6

    goto :goto_2

    .line 881
    .end local v6    # "j":I
    .restart local v1    # "j":I
    :cond_5
    add-int/lit8 v8, v3, -0x4

    if-gt v1, v8, :cond_7

    .line 885
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 886
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "low":C
    invoke-static {v5, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 889
    invoke-static {v5, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 890
    .local v6, "codePoint":I
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .local v8, "j":I
    ushr-int/lit8 v9, v6, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    .line 891
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    ushr-int/lit8 v9, v6, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 892
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "j":I
    .restart local v8    # "j":I
    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v1

    .line 893
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "j":I
    .restart local v1    # "j":I
    and-int/lit8 v9, v6, 0x3f

    or-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, p2, v8

    .line 894
    .end local v6    # "codePoint":I
    .end local v7    # "low":C
    nop

    .line 869
    :goto_2
    nop

    .end local v5    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 887
    .restart local v5    # "c":C
    :cond_6
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v6, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 897
    :cond_7
    if-gt v7, v5, :cond_9

    if-gt v5, v6, :cond_9

    add-int/lit8 v4, v2, 0x1

    .line 898
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 899
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-nez v4, :cond_9

    .line 900
    :cond_8
    new-instance v4, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v4, v2, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v4

    .line 902
    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 905
    .end local v5    # "c":C
    :cond_a
    return v1
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 911
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$SafeProcessor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 912
    return-void
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 7
    .param p1, "state"    # I
    .param p2, "bytes"    # [B
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 762
    if-eqz p1, :cond_11

    .line 770
    if-lt p3, p4, :cond_0

    .line 771
    return p1

    .line 773
    :cond_0
    int-to-byte v0, p1

    .line 775
    .local v0, "byte1":I
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_3

    .line 780
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, p3, 0x1

    .end local p3    # "index":I
    .local v1, "index":I
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v1

    goto/16 :goto_4

    .line 783
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_2
    :goto_0
    return v2

    .line 785
    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_a

    .line 789
    shr-int/lit8 v4, p1, 0x8

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    .line 790
    .local v4, "byte2":I
    if-nez v4, :cond_5

    .line 791
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .local v5, "index":I
    aget-byte v4, p2, p3

    .line 792
    if-lt v5, p4, :cond_4

    .line 793
    invoke-static {v0, v4}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 792
    :cond_4
    move p3, v5

    .line 796
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_5
    if-gt v4, v3, :cond_9

    const/16 v5, -0x60

    if-ne v0, v1, :cond_6

    if-lt v4, v5, :cond_9

    :cond_6
    const/16 v1, -0x13

    if-ne v0, v1, :cond_7

    if-ge v4, v5, :cond_9

    :cond_7
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "index":I
    .restart local v1    # "index":I
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_8

    move p3, v1

    goto :goto_1

    .line 805
    .end local v4    # "byte2":I
    :cond_8
    move p3, v1

    goto :goto_4

    .line 803
    .end local v1    # "index":I
    .restart local v4    # "byte2":I
    .restart local p3    # "index":I
    :cond_9
    :goto_1
    return v2

    .line 809
    .end local v4    # "byte2":I
    :cond_a
    shr-int/lit8 v1, p1, 0x8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    .line 810
    .local v1, "byte2":I
    const/4 v4, 0x0

    .line 811
    .local v4, "byte3":I
    if-nez v1, :cond_c

    .line 812
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    aget-byte v1, p2, p3

    .line 813
    if-lt v5, p4, :cond_b

    .line 814
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 813
    :cond_b
    move p3, v5

    goto :goto_2

    .line 817
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_c
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    .line 819
    :goto_2
    if-nez v4, :cond_e

    .line 820
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    aget-byte v4, p2, p3

    .line 821
    if-lt v5, p4, :cond_d

    .line 822
    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p3

    return p3

    .line 821
    :cond_d
    move p3, v5

    .line 830
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_e
    if-gt v1, v3, :cond_10

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_10

    if-gt v4, v3, :cond_10

    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_f

    move p3, v5

    goto :goto_3

    :cond_f
    move p3, v5

    goto :goto_4

    .line 840
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_10
    :goto_3
    return v2

    .line 845
    .end local v0    # "byte1":I
    .end local v1    # "byte2":I
    .end local v4    # "byte3":I
    :cond_11
    :goto_4
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8([BII)I

    move-result v0

    return v0
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 1
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 851
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$SafeProcessor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method
