.class Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;
.super Ljava/lang/Object;
.source "ZipEntryReader.java"


# static fields
.field private static final CENSIG:J = 0x2014b50L

.field private static final GPBF_ENCRYPTED_FLAG:I = 0x1

.field private static final GPBF_UNSUPPORTED_MASK:I = 0x1

.field static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTime(II)J
    .locals 8
    .param p0, "time"    # I
    .param p1, "modDate"    # I

    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 113
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 114
    shr-int/lit8 v1, p1, 0x9

    and-int/lit8 v1, v1, 0x7f

    add-int/lit16 v2, v1, 0x7bc

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v3, v1, -0x1

    and-int/lit8 v4, p1, 0x1f

    shr-int/lit8 v1, p0, 0xb

    and-int/lit8 v5, v1, 0x1f

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v6, v1, 0x3f

    and-int/lit8 v1, p0, 0x1f

    shl-int/lit8 v7, v1, 0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 117
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method static readEntry(Ljava/nio/ByteBuffer;)Ljava/util/zip/ZipEntry;
    .locals 25
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 53
    .local v1, "sig":I
    int-to-long v2, v1

    const-wide/32 v4, 0x2014b50    # 1.6619997E-316

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 57
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 60
    .local v2, "gpbf":I
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_2

    .line 64
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v3

    .line 65
    .local v4, "compressionMethod":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    and-int/2addr v5, v3

    .line 66
    .local v5, "time":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    and-int/2addr v6, v3

    .line 69
    .local v6, "modDate":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    .line 70
    .local v7, "crc":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v9

    .line 71
    .local v11, "compressedSize":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    int-to-long v13, v13

    and-long/2addr v13, v9

    .line 73
    .local v13, "size":J
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    and-int/2addr v15, v3

    .line 74
    .local v15, "nameLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v16

    and-int v9, v16, v3

    .line 75
    .local v9, "extraLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    and-int/2addr v3, v10

    .line 78
    .local v3, "commentByteCount":I
    const/16 v10, 0x2a

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    move/from16 v16, v1

    move/from16 v19, v2

    .end local v1    # "sig":I
    .end local v2    # "gpbf":I
    .local v16, "sig":I
    .local v19, "gpbf":I
    int-to-long v1, v10

    const-wide v17, 0xffffffffL

    and-long v1, v1, v17

    .line 81
    .local v1, "localHeaderRelOffset":J
    new-array v10, v15, [B

    .line 82
    .local v10, "nameBytes":[B
    move-wide/from16 v17, v1

    .end local v1    # "localHeaderRelOffset":J
    .local v17, "localHeaderRelOffset":J
    array-length v1, v10

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 83
    new-instance v1, Ljava/lang/String;

    move/from16 v20, v15

    .end local v15    # "nameLength":I
    .local v20, "nameLength":I
    array-length v15, v10

    move/from16 v21, v9

    .end local v9    # "extraLength":I
    .local v21, "extraLength":I
    sget-object v9, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v10, v2, v15, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 85
    .local v1, "name":Ljava/lang/String;
    new-instance v9, Ljava/util/zip/ZipEntry;

    invoke-direct {v9, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 86
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9, v4}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 87
    move v15, v3

    .end local v3    # "commentByteCount":I
    .local v15, "commentByteCount":I
    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->getTime(II)J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 89
    invoke-virtual {v9, v7, v8}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 90
    invoke-virtual {v9, v11, v12}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 91
    invoke-virtual {v9, v13, v14}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 95
    if-lez v15, :cond_0

    .line 96
    move v2, v15

    .end local v15    # "commentByteCount":I
    .local v2, "commentByteCount":I
    new-array v3, v2, [B

    .line 97
    .local v3, "commentBytes":[B
    const/4 v15, 0x0

    invoke-virtual {v0, v3, v15, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 98
    new-instance v15, Ljava/lang/String;

    move-object/from16 v22, v1

    .end local v1    # "name":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    array-length v1, v3

    move/from16 v23, v2

    .end local v2    # "commentByteCount":I
    .local v23, "commentByteCount":I
    sget-object v2, Lcom/google/appinventor/components/runtime/multidex/ZipEntryReader;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v24, v4

    const/4 v4, 0x0

    .end local v4    # "compressionMethod":I
    .local v24, "compressionMethod":I
    invoke-direct {v15, v3, v4, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v15}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v3    # "commentBytes":[B
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "commentByteCount":I
    .end local v24    # "compressionMethod":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "compressionMethod":I
    .restart local v15    # "commentByteCount":I
    :cond_0
    move-object/from16 v22, v1

    move/from16 v24, v4

    move/from16 v23, v15

    const/4 v4, 0x0

    .line 101
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "compressionMethod":I
    .end local v15    # "commentByteCount":I
    .restart local v22    # "name":Ljava/lang/String;
    .restart local v23    # "commentByteCount":I
    .restart local v24    # "compressionMethod":I
    :goto_0
    if-lez v21, :cond_1

    .line 102
    move/from16 v1, v21

    .end local v21    # "extraLength":I
    .local v1, "extraLength":I
    new-array v2, v1, [B

    .line 103
    .local v2, "extra":[B
    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v9, v2}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    goto :goto_1

    .line 101
    .end local v1    # "extraLength":I
    .end local v2    # "extra":[B
    .restart local v21    # "extraLength":I
    :cond_1
    move/from16 v1, v21

    .line 107
    .end local v21    # "extraLength":I
    .restart local v1    # "extraLength":I
    :goto_1
    return-object v9

    .line 61
    .end local v5    # "time":I
    .end local v6    # "modDate":I
    .end local v7    # "crc":J
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "nameBytes":[B
    .end local v11    # "compressedSize":J
    .end local v13    # "size":J
    .end local v16    # "sig":I
    .end local v17    # "localHeaderRelOffset":J
    .end local v19    # "gpbf":I
    .end local v20    # "nameLength":I
    .end local v22    # "name":Ljava/lang/String;
    .end local v23    # "commentByteCount":I
    .end local v24    # "compressionMethod":I
    .local v1, "sig":I
    .local v2, "gpbf":I
    :cond_2
    move/from16 v16, v1

    move/from16 v19, v2

    .end local v1    # "sig":I
    .end local v2    # "gpbf":I
    .restart local v16    # "sig":I
    .restart local v19    # "gpbf":I
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid General Purpose Bit Flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, v19

    .end local v19    # "gpbf":I
    .local v3, "gpbf":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v3    # "gpbf":I
    .end local v16    # "sig":I
    .restart local v1    # "sig":I
    :cond_3
    move/from16 v16, v1

    .end local v1    # "sig":I
    .restart local v16    # "sig":I
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Central Directory Entry not found"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
