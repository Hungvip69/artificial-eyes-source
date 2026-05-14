.class public final Lcom/google/api/client/util/escape/CharEscapers;
.super Ljava/lang/Object;
.source "CharEscapers.java"


# static fields
.field private static final APPLICATION_X_WWW_FORM_URLENCODED:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const/4 v1, 0x1

    const-string v2, "-_.*"

    invoke-direct {v0, v2, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->APPLICATION_X_WWW_FORM_URLENCODED:Lcom/google/api/client/util/escape/Escaper;

    .line 32
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 35
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$&,;=+"

    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 38
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$&,;=+/?"

    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 41
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, "-_.!~*\'():$&,;="

    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 44
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .line 122
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decodeUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 140
    if-nez p0, :cond_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    :try_start_0
    const-string v0, "+"

    const-string v1, "%2B"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static escapeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->APPLICATION_X_WWW_FORM_URLENCODED:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriConformant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriPathWithoutReserved(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeUriUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
