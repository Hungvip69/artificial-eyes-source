.class public Lgnu/kawa/functions/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"


# static fields
.field static final Cc:Lgnu/mapping/Symbol;

.field static final Cf:Lgnu/mapping/Symbol;

.field static final Cn:Lgnu/mapping/Symbol;

.field static final Co:Lgnu/mapping/Symbol;

.field static final Cs:Lgnu/mapping/Symbol;

.field static final Ll:Lgnu/mapping/Symbol;

.field static final Lm:Lgnu/mapping/Symbol;

.field static final Lo:Lgnu/mapping/Symbol;

.field static final Lt:Lgnu/mapping/Symbol;

.field static final Lu:Lgnu/mapping/Symbol;

.field static final Mc:Lgnu/mapping/Symbol;

.field static final Me:Lgnu/mapping/Symbol;

.field static final Mn:Lgnu/mapping/Symbol;

.field static final Nd:Lgnu/mapping/Symbol;

.field static final Nl:Lgnu/mapping/Symbol;

.field static final No:Lgnu/mapping/Symbol;

.field static final Pc:Lgnu/mapping/Symbol;

.field static final Pd:Lgnu/mapping/Symbol;

.field static final Pe:Lgnu/mapping/Symbol;

.field static final Pf:Lgnu/mapping/Symbol;

.field static final Pi:Lgnu/mapping/Symbol;

.field static final Po:Lgnu/mapping/Symbol;

.field static final Ps:Lgnu/mapping/Symbol;

.field static final Sc:Lgnu/mapping/Symbol;

.field static final Sk:Lgnu/mapping/Symbol;

.field static final Sm:Lgnu/mapping/Symbol;

.field static final So:Lgnu/mapping/Symbol;

.field static final Zl:Lgnu/mapping/Symbol;

.field static final Zp:Lgnu/mapping/Symbol;

.field static final Zs:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 207
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    .line 208
    .local v0, "empty":Lgnu/mapping/Namespace;
    const-string v1, "Mc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    .line 209
    const-string v1, "Pc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    .line 210
    const-string v1, "Cc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    .line 211
    const-string v1, "Sc"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    .line 212
    const-string v1, "Pd"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    .line 213
    const-string v1, "Nd"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    .line 214
    const-string v1, "Me"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    .line 215
    const-string v1, "Pe"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    .line 216
    const-string v1, "Pf"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    .line 217
    const-string v1, "Cf"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    .line 218
    const-string v1, "Pi"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    .line 219
    const-string v1, "Nl"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    .line 220
    const-string v1, "Zl"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    .line 221
    const-string v1, "Ll"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    .line 222
    const-string v1, "Sm"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    .line 223
    const-string v1, "Lm"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    .line 224
    const-string v1, "Sk"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    .line 225
    const-string v1, "Mn"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    .line 226
    const-string v1, "Lo"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    .line 227
    const-string v1, "No"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    .line 228
    const-string v1, "Po"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    .line 229
    const-string v1, "So"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    .line 230
    const-string v1, "Zp"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    .line 231
    const-string v1, "Co"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    .line 232
    const-string v1, "Zs"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    .line 233
    const-string v1, "Ps"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    .line 234
    const-string v1, "Cs"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    .line 235
    const-string v1, "Lt"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    .line 236
    const-string v1, "Cn"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    .line 237
    const-string v1, "Lu"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    .line 238
    .end local v0    # "empty":Lgnu/mapping/Namespace;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 31
    .local v1, "wb":Ljava/text/BreakIterator;
    invoke-virtual {v1, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/text/BreakIterator;->first()I

    move-result v2

    .line 33
    .local v2, "start":I
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v3

    .line 34
    .local v3, "end":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "isWord":Z
    move v5, v2

    .local v5, "p":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 40
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    const/4 v4, 0x1

    .line 43
    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46
    .end local v5    # "p":I
    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 47
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 50
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 54
    .local v5, "first":C
    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v6

    .line 55
    .local v6, "title":C
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .end local v4    # "isWord":Z
    .end local v5    # "first":C
    .end local v6    # "title":C
    :goto_3
    move v2, v3

    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    .line 59
    .end local v3    # "end":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 64
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 65
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 66
    const-string v1, ""

    return-object v1

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 72
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 73
    .local v2, "start":I
    const/4 v3, 0x0

    .line 75
    .local v3, "i":I
    :goto_0
    if-ne v3, v0, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 76
    .local v4, "ch":I
    :goto_1
    const/16 v5, 0x3a3

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3c3

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3c2

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    .line 77
    .local v5, "sigma":Z
    :goto_3
    if-ltz v4, :cond_4

    const/16 v6, 0x130

    if-eq v4, v6, :cond_4

    const/16 v6, 0x131

    if-eq v4, v6, :cond_4

    if-eqz v5, :cond_a

    .line 79
    :cond_4
    if-nez v1, :cond_5

    if-ltz v4, :cond_5

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 87
    :cond_5
    if-le v3, v2, :cond_7

    .line 89
    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "converted":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 92
    return-object v6

    .line 93
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v6    # "converted":Ljava/lang/String;
    :cond_7
    if-gez v4, :cond_8

    .line 96
    nop

    .line 103
    .end local v3    # "i":I
    .end local v4    # "ch":I
    .end local v5    # "sigma":Z
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 97
    .restart local v3    # "i":I
    .restart local v4    # "ch":I
    .restart local v5    # "sigma":Z
    :cond_8
    if-eqz v5, :cond_9

    .line 98
    const/16 v4, 0x3c3

    .line 99
    :cond_9
    int-to-char v6, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v2, v3, 0x1

    .line 73
    .end local v4    # "ch":I
    .end local v5    # "sigma":Z
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static generalCategory(I)Lgnu/mapping/Symbol;
    .locals 1
    .param p0, "ch"    # I

    .line 108
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    :pswitch_0
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cn:Lgnu/mapping/Symbol;

    return-object v0

    .line 127
    :pswitch_1
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pf:Lgnu/mapping/Symbol;

    return-object v0

    .line 131
    :pswitch_2
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pi:Lgnu/mapping/Symbol;

    return-object v0

    .line 153
    :pswitch_3
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->So:Lgnu/mapping/Symbol;

    return-object v0

    .line 143
    :pswitch_4
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Sk:Lgnu/mapping/Symbol;

    return-object v0

    .line 117
    :pswitch_5
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Sc:Lgnu/mapping/Symbol;

    return-object v0

    .line 139
    :pswitch_6
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Sm:Lgnu/mapping/Symbol;

    return-object v0

    .line 151
    :pswitch_7
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Po:Lgnu/mapping/Symbol;

    return-object v0

    .line 113
    :pswitch_8
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pc:Lgnu/mapping/Symbol;

    return-object v0

    .line 125
    :pswitch_9
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pe:Lgnu/mapping/Symbol;

    return-object v0

    .line 161
    :pswitch_a
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Ps:Lgnu/mapping/Symbol;

    return-object v0

    .line 119
    :pswitch_b
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Pd:Lgnu/mapping/Symbol;

    return-object v0

    .line 163
    :pswitch_c
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cs:Lgnu/mapping/Symbol;

    return-object v0

    .line 157
    :pswitch_d
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Co:Lgnu/mapping/Symbol;

    return-object v0

    .line 129
    :pswitch_e
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cf:Lgnu/mapping/Symbol;

    return-object v0

    .line 115
    :pswitch_f
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Cc:Lgnu/mapping/Symbol;

    return-object v0

    .line 155
    :pswitch_10
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Zp:Lgnu/mapping/Symbol;

    return-object v0

    .line 135
    :pswitch_11
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Zl:Lgnu/mapping/Symbol;

    return-object v0

    .line 159
    :pswitch_12
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Zs:Lgnu/mapping/Symbol;

    return-object v0

    .line 149
    :pswitch_13
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->No:Lgnu/mapping/Symbol;

    return-object v0

    .line 133
    :pswitch_14
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Nl:Lgnu/mapping/Symbol;

    return-object v0

    .line 121
    :pswitch_15
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Nd:Lgnu/mapping/Symbol;

    return-object v0

    .line 111
    :pswitch_16
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Mc:Lgnu/mapping/Symbol;

    return-object v0

    .line 123
    :pswitch_17
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Me:Lgnu/mapping/Symbol;

    return-object v0

    .line 145
    :pswitch_18
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Mn:Lgnu/mapping/Symbol;

    return-object v0

    .line 147
    :pswitch_19
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lo:Lgnu/mapping/Symbol;

    return-object v0

    .line 141
    :pswitch_1a
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lm:Lgnu/mapping/Symbol;

    return-object v0

    .line 165
    :pswitch_1b
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lt:Lgnu/mapping/Symbol;

    return-object v0

    .line 137
    :pswitch_1c
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Ll:Lgnu/mapping/Symbol;

    return-object v0

    .line 167
    :pswitch_1d
    sget-object v0, Lgnu/kawa/functions/UnicodeUtils;->Lu:Lgnu/mapping/Symbol;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isWhitespace(I)Z
    .locals 4
    .param p0, "ch"    # I

    .line 11
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p0, v0, :cond_8

    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    goto :goto_3

    .line 13
    :cond_0
    const/16 v0, 0x85

    const/4 v2, 0x0

    if-ge p0, v0, :cond_1

    .line 14
    return v2

    .line 15
    :cond_1
    if-eq p0, v0, :cond_7

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_7

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_7

    const/16 v0, 0x180e

    if-ne p0, v0, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    const/16 v0, 0x2000

    if-lt p0, v0, :cond_6

    const/16 v0, 0x3000

    if-le p0, v0, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    const/16 v3, 0x200a

    if-le p0, v3, :cond_5

    const/16 v3, 0x2028

    if-eq p0, v3, :cond_5

    const/16 v3, 0x2029

    if-eq p0, v3, :cond_5

    const/16 v3, 0x202f

    if-eq p0, v3, :cond_5

    const/16 v3, 0x205f

    if-eq p0, v3, :cond_5

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1

    .line 18
    :cond_6
    :goto_1
    return v2

    .line 16
    :cond_7
    :goto_2
    return v1

    .line 12
    :cond_8
    :goto_3
    return v1
.end method
