.class public final Lcom/google/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/google/protobuf/TextFormat$Parser;,
        Lcom/google/protobuf/TextFormat$UnknownFieldParseException;,
        Lcom/google/protobuf/TextFormat$ParseException;,
        Lcom/google/protobuf/TextFormat$Tokenizer;,
        Lcom/google/protobuf/TextFormat$TextGenerator;,
        Lcom/google/protobuf/TextFormat$Printer;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final PARSER:Lcom/google/protobuf/TextFormat$Parser;

.field private static final SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    nop

    .line 60
    const-class v0, Lcom/google/protobuf/TextFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$1;)V

    sput-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    .line 63
    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$1;)V

    .line 64
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$100(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    .line 65
    new-instance v0, Lcom/google/protobuf/TextFormat$Printer;

    invoke-direct {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;-><init>(Lcom/google/protobuf/TextFormat$1;)V

    .line 66
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$200(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    .line 1194
    invoke-static {}, Lcom/google/protobuf/TextFormat$Parser;->newBuilder()Lcom/google/protobuf/TextFormat$Parser$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$Parser$Builder;->build()Lcom/google/protobuf/TextFormat$Parser;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/logging/Logger;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$800(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private static digitValue(B)I
    .locals 1
    .param p0, "c"    # B

    .line 1964
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1965
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1966
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 1967
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1969
    :cond_1
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/ByteString;

    .line 1813
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeBytes([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .line 1820
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 1934
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 1927
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParser()Lcom/google/protobuf/TextFormat$Parser;
    .locals 1

    .line 1201
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    return-object v0
.end method

.method private static isHex(B)Z
    .locals 1
    .param p0, "c"    # B

    .line 1953
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOctal(B)Z
    .locals 1
    .param p0, "c"    # B

    .line 1948
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1246
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1247
    return-void
.end method

.method public static merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1221
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V

    .line 1222
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/Readable;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1234
    return-void
.end method

.method public static merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/Readable;
    .param p1, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1211
    sget-object v0, Lcom/google/protobuf/TextFormat;->PARSER:Lcom/google/protobuf/TextFormat$Parser;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V

    .line 1212
    return-void
.end method

.method static parseInt32(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1979
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method static parseInt64(Ljava/lang/String;)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1999
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "isSigned"    # Z
    .param p2, "isLong"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 2017
    const/4 v0, 0x0

    .line 2019
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 2020
    .local v1, "negative":Z
    const-string v2, "-"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2021
    if-eqz p1, :cond_0

    .line 2024
    add-int/lit8 v0, v0, 0x1

    .line 2025
    const/4 v1, 0x1

    goto :goto_0

    .line 2022
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number must be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2028
    :cond_1
    :goto_0
    const/16 v2, 0xa

    .line 2029
    .local v2, "radix":I
    const-string v3, "0x"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2030
    add-int/lit8 v0, v0, 0x2

    .line 2031
    const/16 v2, 0x10

    goto :goto_1

    .line 2032
    :cond_2
    const-string v3, "0"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2033
    const/16 v2, 0x8

    .line 2036
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2038
    .local v3, "numberText":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 2039
    .local v4, "result":J
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    const-string v8, "Number out of range for 32-bit signed integer: "

    const-string v9, "Number out of range for 32-bit unsigned integer: "

    if-ge v6, v7, :cond_8

    .line 2041
    invoke-static {v3, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    .line 2042
    if-eqz v1, :cond_4

    .line 2043
    neg-long v4, v4

    .line 2049
    :cond_4
    if-nez p2, :cond_10

    .line 2050
    if-eqz p1, :cond_6

    .line 2051
    const-wide/32 v6, 0x7fffffff

    cmp-long v9, v4, v6

    if-gtz v9, :cond_5

    const-wide/32 v6, -0x80000000

    cmp-long v9, v4, v6

    if-ltz v9, :cond_5

    goto/16 :goto_3

    .line 2052
    :cond_5
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2056
    :cond_6
    const-wide v6, 0x100000000L

    cmp-long v8, v4, v6

    if-gez v8, :cond_7

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_7

    goto/16 :goto_3

    .line 2057
    :cond_7
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2063
    :cond_8
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 2064
    .local v6, "bigValue":Ljava/math/BigInteger;
    if-eqz v1, :cond_9

    .line 2065
    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 2069
    :cond_9
    if-nez p2, :cond_d

    .line 2070
    if-eqz p1, :cond_b

    .line 2071
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v9, 0x1f

    if-gt v7, v9, :cond_a

    goto :goto_2

    .line 2072
    :cond_a
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2076
    :cond_b
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x20

    if-gt v7, v8, :cond_c

    goto :goto_2

    .line 2077
    :cond_c
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2082
    :cond_d
    if-eqz p1, :cond_f

    .line 2083
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x3f

    if-gt v7, v8, :cond_e

    goto :goto_2

    .line 2084
    :cond_e
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 64-bit signed integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2088
    :cond_f
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x40

    if-gt v7, v8, :cond_11

    .line 2095
    :goto_2
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 2098
    .end local v6    # "bigValue":Ljava/math/BigInteger;
    :cond_10
    :goto_3
    return-wide v4

    .line 2089
    .restart local v6    # "bigValue":Ljava/math/BigInteger;
    :cond_11
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1990
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 2010
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 77
    return-void
.end method

.method public static print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 84
    return-void
.end method

.method public static printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$600(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 212
    return-void
.end method

.method public static printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p1, "value"    # Ljava/lang/Object;

    .line 217
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/TextFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 220
    .end local v0    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, p1, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$700(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 240
    return-void
.end method

.method public static printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;

    .line 157
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 160
    .end local v0    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static printToString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 2
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 171
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "text":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/protobuf/TextFormat;->print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 174
    .end local v0    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;

    .line 185
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v0, "text":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 188
    .end local v0    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static printToUnicodeString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 4
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 199
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "text":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 202
    .end local v0    # "text":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static printUnicode(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 94
    return-void
.end method

.method public static printUnicode(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 3
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;
    .param p1, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/google/protobuf/TextFormat;->UNICODE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v1, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v0, p0, v1}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 104
    return-void
.end method

.method private static printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 4
    .param p0, "tag"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 283
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :pswitch_1
    move-object v0, v3

    check-cast v0, Ljava/util/Locale;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 269
    const-string v0, "0x%08x"

    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 270
    goto :goto_0

    .line 280
    :pswitch_2
    sget-object v0, Lcom/google/protobuf/TextFormat;->DEFAULT_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet;

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 281
    goto :goto_0

    .line 275
    :pswitch_3
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 276
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-static {v1}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 278
    goto :goto_0

    .line 272
    :pswitch_4
    move-object v0, v3

    check-cast v0, Ljava/util/Locale;

    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "0x%016x"

    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 273
    goto :goto_0

    .line 265
    :pswitch_5
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 266
    nop

    .line 285
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static printUnknownFieldValue(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/TextFormat;->printUnknownFieldValue(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 257
    return-void
.end method

.method public static shortDebugString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p1, "value"    # Ljava/lang/Object;

    .line 128
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v1, p0, p1, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$600(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 131
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static shortDebugString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;

    .line 112
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 116
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static shortDebugString(Lcom/google/protobuf/UnknownFieldSet;)Ljava/lang/String;
    .locals 4
    .param p0, "fields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 142
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/google/protobuf/TextFormat;->SINGLE_LINE_PRINTER:Lcom/google/protobuf/TextFormat$Printer;

    new-instance v2, Lcom/google/protobuf/TextFormat$TextGenerator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/TextFormat$TextGenerator;-><init>(Ljava/lang/Appendable;Lcom/google/protobuf/TextFormat$1;)V

    invoke-static {v1, p0, v2}, Lcom/google/protobuf/TextFormat$Printer;->access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 146
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 9
    .param p0, "charString"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .line 1831
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1839
    .local v0, "input":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 1840
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 1841
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1842
    invoke-virtual {v0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    .line 1843
    .local v4, "c":B
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_6

    .line 1844
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1845
    add-int/lit8 v3, v3, 0x1

    .line 1846
    invoke-virtual {v0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v4

    .line 1847
    invoke-static {v4}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1849
    invoke-static {v4}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v5

    .line 1850
    .local v5, "code":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1851
    add-int/lit8 v3, v3, 0x1

    .line 1852
    mul-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v7

    add-int v5, v6, v7

    .line 1854
    :cond_0
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isOctal(B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1855
    add-int/lit8 v3, v3, 0x1

    .line 1856
    mul-int/lit8 v6, v5, 0x8

    invoke-virtual {v0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v7

    add-int v5, v6, v7

    .line 1859
    :cond_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .local v6, "pos":I
    int-to-byte v7, v5

    aput-byte v7, v1, v2

    .line 1860
    .end local v5    # "code":I
    move v2, v6

    goto/16 :goto_2

    .line 1861
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    const/16 v6, 0x27

    sparse-switch v4, :sswitch_data_0

    .line 1891
    new-instance v5, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid escape sequence: \'\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-char v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1875
    :sswitch_0
    const/4 v5, 0x0

    .line 1876
    .restart local v5    # "code":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1877
    add-int/lit8 v3, v3, 0x1

    .line 1878
    invoke-virtual {v0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v5

    .line 1883
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->isHex(B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1884
    add-int/lit8 v3, v3, 0x1

    .line 1885
    mul-int/lit8 v6, v5, 0x10

    invoke-virtual {v0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/TextFormat;->digitValue(B)I

    move-result v7

    add-int v5, v6, v7

    .line 1887
    :cond_3
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    int-to-byte v7, v5

    aput-byte v7, v1, v2

    .line 1888
    goto :goto_1

    .line 1880
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :cond_4
    new-instance v6, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v7, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v6, v7}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1868
    .end local v5    # "code":I
    :sswitch_1
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/16 v5, 0xb

    aput-byte v5, v1, v2

    goto :goto_1

    .line 1867
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_2
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/16 v5, 0x9

    aput-byte v5, v1, v2

    goto :goto_1

    .line 1866
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_3
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/16 v5, 0xd

    aput-byte v5, v1, v2

    goto :goto_1

    .line 1865
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_4
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/16 v5, 0xa

    aput-byte v5, v1, v2

    goto :goto_1

    .line 1864
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_5
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/16 v5, 0xc

    aput-byte v5, v1, v2

    goto :goto_1

    .line 1863
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_6
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/16 v5, 0x8

    aput-byte v5, v1, v2

    goto :goto_1

    .line 1862
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_7
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/4 v5, 0x7

    aput-byte v5, v1, v2

    goto :goto_1

    .line 1869
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_8
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    aput-byte v5, v1, v2

    goto :goto_1

    .line 1870
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_9
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .local v5, "pos":I
    aput-byte v6, v1, v2

    move v6, v5

    goto :goto_1

    .line 1871
    .end local v5    # "pos":I
    .restart local v2    # "pos":I
    :sswitch_a
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .restart local v6    # "pos":I
    const/16 v5, 0x22

    aput-byte v5, v1, v2

    .line 1891
    :goto_1
    move v2, v6

    goto :goto_2

    .line 1896
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :cond_5
    new-instance v5, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v6, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v5, v6}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1900
    :cond_6
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .restart local v5    # "pos":I
    aput-byte v4, v1, v2

    move v2, v5

    .line 1841
    .end local v4    # "c":B
    .end local v5    # "pos":I
    .restart local v2    # "pos":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1904
    .end local v3    # "i":I
    :cond_7
    array-length v3, v1

    if-ne v3, v2, :cond_8

    .line 1905
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    goto :goto_3

    :cond_8
    nop

    .line 1906
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v3

    :goto_3
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x27 -> :sswitch_9
        0x5c -> :sswitch_8
        0x61 -> :sswitch_7
        0x62 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    .line 1943
    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unsignedToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # I

    .line 505
    if-ltz p0, :cond_0

    .line 506
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unsignedToString(J)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # J

    .line 514
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 515
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 519
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 520
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
