.class public Lgnu/xquery/util/Compare;
.super Lgnu/mapping/Procedure2;
.source "Compare.java"


# static fields
.field public static final $Eq:Lgnu/xquery/util/Compare;

.field public static final $Ex$Eq:Lgnu/xquery/util/Compare;

.field public static final $Gr:Lgnu/xquery/util/Compare;

.field public static final $Gr$Eq:Lgnu/xquery/util/Compare;

.field public static final $Ls:Lgnu/xquery/util/Compare;

.field public static final $Ls$Eq:Lgnu/xquery/util/Compare;

.field static final LENIENT_COMPARISON:I = 0x40

.field static final LENIENT_EQ:I = 0x48

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4

.field static final TRUE_IF_NAN:I = 0x2

.field static final TRUE_IF_NEQ:I = 0x1

.field static final VALUE_COMPARISON:I = 0x20

.field public static final valEq:Lgnu/xquery/util/Compare;

.field public static final valGe:Lgnu/xquery/util/Compare;

.field public static final valGt:Lgnu/xquery/util/Compare;

.field public static final valLe:Lgnu/xquery/util/Compare;

.field public static final valLt:Lgnu/xquery/util/Compare;

.field public static final valNe:Lgnu/xquery/util/Compare;


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 234
    const-string v0, "="

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Eq:Lgnu/xquery/util/Compare;

    .line 235
    const-string v0, "!="

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ex$Eq:Lgnu/xquery/util/Compare;

    .line 237
    const-string v0, ">"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr:Lgnu/xquery/util/Compare;

    .line 238
    const-string v0, ">="

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Gr$Eq:Lgnu/xquery/util/Compare;

    .line 239
    const-string v0, "<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls:Lgnu/xquery/util/Compare;

    .line 240
    const-string v0, "<="

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->$Ls$Eq:Lgnu/xquery/util/Compare;

    .line 242
    const-string v0, "eq"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valEq:Lgnu/xquery/util/Compare;

    .line 244
    const-string v0, "ne"

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valNe:Lgnu/xquery/util/Compare;

    .line 246
    const-string v0, "gt"

    const/16 v1, 0x30

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGt:Lgnu/xquery/util/Compare;

    .line 248
    const-string v0, "ge"

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valGe:Lgnu/xquery/util/Compare;

    .line 250
    const-string v0, "lt"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLt:Lgnu/xquery/util/Compare;

    .line 252
    const-string v0, "le"

    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lgnu/xquery/util/Compare;->make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/Compare;->valLe:Lgnu/xquery/util/Compare;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 6
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 62
    instance-of v0, p1, Lgnu/mapping/Values;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 64
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    .line 65
    .local v0, "values1":Lgnu/mapping/Values;
    const/4 v3, 0x0

    .line 68
    .local v3, "index":I
    :goto_0
    invoke-virtual {v0, v3}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v4

    .line 69
    .local v4, "next":I
    if-gez v4, :cond_0

    .line 70
    return v1

    .line 71
    :cond_0
    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v5, p2, p3}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    return v2

    .line 73
    :cond_1
    move v3, v4

    .line 74
    .end local v4    # "next":I
    goto :goto_0

    .line 76
    .end local v0    # "values1":Lgnu/mapping/Values;
    .end local v3    # "index":I
    :cond_2
    instance-of v0, p2, Lgnu/mapping/Values;

    if-eqz v0, :cond_5

    .line 78
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Values;

    .line 79
    .local v0, "values2":Lgnu/mapping/Values;
    const/4 v3, 0x0

    .line 82
    .restart local v3    # "index":I
    :goto_1
    invoke-virtual {v0, v3}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v4

    .line 83
    .restart local v4    # "next":I
    if-gez v4, :cond_3

    .line 84
    return v1

    .line 85
    :cond_3
    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, p1, v5, p3}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    return v2

    .line 87
    :cond_4
    move v3, v4

    .line 88
    .end local v4    # "next":I
    goto :goto_1

    .line 90
    .end local v0    # "values2":Lgnu/mapping/Values;
    .end local v3    # "index":I
    :cond_5
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    return v0
.end method

.method public static atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 8
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 104
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_5

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "str":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_0

    .line 108
    move-object p1, v0

    goto :goto_0

    .line 109
    :cond_0
    instance-of v1, p2, Lgnu/math/DateTime;

    if-eqz v1, :cond_1

    .line 110
    move-object v1, p2

    check-cast v1, Lgnu/math/DateTime;

    invoke-virtual {v1}, Lgnu/math/DateTime;->components()I

    move-result v1

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    instance-of v1, p2, Lgnu/math/Duration;

    if-eqz v1, :cond_2

    .line 112
    move-object v1, p2

    check-cast v1, Lgnu/math/Duration;

    invoke-virtual {v1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p1

    goto :goto_0

    .line 113
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 114
    new-instance v1, Lgnu/math/DFloNum;

    invoke-direct {v1, v0}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    .line 115
    :cond_3
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 116
    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v1, v0}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_4
    move-object p1, v0

    .line 120
    .end local v0    # "str":Ljava/lang/String;
    :cond_5
    :goto_0
    instance-of v0, p2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_b

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "str":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    .line 124
    move-object p2, v0

    goto :goto_1

    .line 125
    :cond_6
    instance-of v1, p1, Lgnu/math/DateTime;

    if-eqz v1, :cond_7

    .line 126
    move-object v1, p1

    check-cast v1, Lgnu/math/DateTime;

    invoke-virtual {v1}, Lgnu/math/DateTime;->components()I

    move-result v1

    invoke-static {v0, v1}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object p2

    goto :goto_1

    .line 127
    :cond_7
    instance-of v1, p1, Lgnu/math/Duration;

    if-eqz v1, :cond_8

    .line 128
    move-object v1, p1

    check-cast v1, Lgnu/math/Duration;

    invoke-virtual {v1}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object p2

    goto :goto_1

    .line 129
    :cond_8
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_9

    .line 130
    new-instance v1, Lgnu/math/DFloNum;

    invoke-direct {v1, v0}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    goto :goto_1

    .line 131
    :cond_9
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 132
    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v1, v0}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 134
    :cond_a
    move-object p2, v0

    .line 137
    .end local v0    # "str":Ljava/lang/String;
    :cond_b
    :goto_1
    instance-of v0, p1, Ljava/lang/Number;

    const-string v1, "values cannot be compared"

    const/4 v2, -0x3

    const/4 v3, 0x0

    if-nez v0, :cond_1b

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_c

    goto/16 :goto_9

    .line 183
    :cond_c
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_f

    .line 185
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_e

    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v3, -0x2

    :goto_2
    move v0, v3

    .local v0, "comp":I
    goto :goto_7

    .line 188
    .end local v0    # "comp":I
    :cond_e
    const/4 v0, -0x3

    .restart local v0    # "comp":I
    goto :goto_7

    .line 190
    .end local v0    # "comp":I
    :cond_f
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_13

    .line 192
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    .line 194
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 195
    .local v0, "b1":Z
    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 196
    .local v6, "b2":Z
    if-ne v0, v6, :cond_10

    goto :goto_3

    :cond_10
    if-eqz v6, :cond_11

    const/4 v3, -0x1

    goto :goto_3

    :cond_11
    const/4 v3, 0x1

    :goto_3
    move v0, v3

    .line 197
    .end local v6    # "b2":Z
    .local v0, "comp":I
    goto :goto_7

    .line 199
    .end local v0    # "comp":I
    :cond_12
    const/4 v0, -0x3

    .restart local v0    # "comp":I
    goto :goto_7

    .line 201
    .end local v0    # "comp":I
    :cond_13
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_18

    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_14

    goto :goto_6

    .line 205
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "str1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "str2":Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 209
    invoke-virtual {p3, v0, v6}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .local v7, "comp":I
    goto :goto_4

    .line 212
    .end local v7    # "comp":I
    :cond_15
    invoke-static {v0, v6}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 213
    .restart local v7    # "comp":I
    :goto_4
    if-gez v7, :cond_16

    const/4 v3, -0x1

    goto :goto_5

    :cond_16
    if-lez v7, :cond_17

    const/4 v3, 0x1

    :cond_17
    :goto_5
    move v0, v3

    .end local v7    # "comp":I
    .local v3, "comp":I
    goto :goto_7

    .line 202
    .end local v0    # "str1":Ljava/lang/String;
    .end local v3    # "comp":I
    .end local v6    # "str2":Ljava/lang/String;
    :cond_18
    :goto_6
    const/4 v0, -0x3

    .line 215
    .local v0, "comp":I
    :goto_7
    if-ne v0, v2, :cond_1a

    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_19

    goto :goto_8

    .line 216
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_1a
    :goto_8
    invoke-static {v0, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v1

    return v1

    .line 139
    .end local v0    # "comp":I
    :cond_1b
    :goto_9
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_1f

    .line 141
    instance-of v0, p2, Lgnu/math/Duration;

    if-nez v0, :cond_1c

    .line 142
    const/4 v0, -0x3

    .restart local v0    # "comp":I
    goto/16 :goto_d

    .line 145
    .end local v0    # "comp":I
    :cond_1c
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    .line 146
    .local v0, "d1":Lgnu/math/Duration;
    move-object v3, p2

    check-cast v3, Lgnu/math/Duration;

    .line 147
    .local v3, "d2":Lgnu/math/Duration;
    iget-object v4, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iget-object v5, v3, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v4, v5, :cond_1d

    iget-object v4, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v5, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v4, v5, :cond_1e

    :cond_1d
    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 149
    const/4 v4, -0x3

    move v0, v4

    .local v4, "comp":I
    goto :goto_a

    .line 151
    .end local v4    # "comp":I
    :cond_1e
    invoke-static {v0, v3}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v4

    move v0, v4

    .line 152
    .end local v3    # "d2":Lgnu/math/Duration;
    .local v0, "comp":I
    :goto_a
    goto :goto_d

    .line 154
    .end local v0    # "comp":I
    :cond_1f
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_23

    .line 156
    instance-of v0, p2, Lgnu/math/DateTime;

    if-nez v0, :cond_20

    .line 157
    const/4 v0, -0x3

    .restart local v0    # "comp":I
    goto :goto_d

    .line 160
    .end local v0    # "comp":I
    :cond_20
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    .line 161
    .local v0, "d1":Lgnu/math/DateTime;
    move-object v3, p2

    check-cast v3, Lgnu/math/DateTime;

    .line 162
    .local v3, "d2":Lgnu/math/DateTime;
    invoke-virtual {v0}, Lgnu/math/DateTime;->components()I

    move-result v4

    .line 163
    .local v4, "m1":I
    invoke-virtual {v3}, Lgnu/math/DateTime;->components()I

    move-result v5

    .line 164
    .local v5, "m2":I
    if-eq v4, v5, :cond_21

    .line 165
    const/4 v6, -0x3

    move v0, v6

    .local v6, "comp":I
    goto :goto_b

    .line 166
    .end local v6    # "comp":I
    :cond_21
    invoke-static {p0}, Lgnu/xquery/util/Compare;->equalityComparison(I)Z

    move-result v6

    if-nez v6, :cond_22

    const/16 v6, 0x70

    if-eq v4, v6, :cond_22

    const/16 v6, 0xe

    if-eq v4, v6, :cond_22

    const/16 v6, 0x7e

    if-eq v4, v6, :cond_22

    .line 170
    const/4 v6, -0x3

    move v0, v6

    .restart local v6    # "comp":I
    goto :goto_b

    .line 172
    .end local v6    # "comp":I
    :cond_22
    invoke-static {v0, v3}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result v6

    move v0, v6

    .line 173
    .end local v3    # "d2":Lgnu/math/DateTime;
    .end local v4    # "m1":I
    .end local v5    # "m2":I
    .local v0, "comp":I
    :goto_b
    goto :goto_d

    .line 175
    .end local v0    # "comp":I
    :cond_23
    instance-of v0, p2, Lgnu/math/Duration;

    if-nez v0, :cond_25

    instance-of v0, p2, Lgnu/math/DateTime;

    if-eqz v0, :cond_24

    goto :goto_c

    .line 178
    :cond_24
    invoke-static {p1, p2, v3}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    .restart local v0    # "comp":I
    goto :goto_d

    .line 176
    .end local v0    # "comp":I
    :cond_25
    :goto_c
    const/4 v0, -0x3

    .line 179
    .restart local v0    # "comp":I
    :goto_d
    if-ne v0, v2, :cond_27

    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_26

    goto :goto_e

    .line 180
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_27
    :goto_e
    invoke-static {v0, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v1

    return v1
.end method

.method public static equalityComparison(I)Z
    .locals 4
    .param p0, "flags"    # I

    .line 98
    and-int/lit8 v0, p0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static make(Ljava/lang/String;I)Lgnu/xquery/util/Compare;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 34
    new-instance v0, Lgnu/xquery/util/Compare;

    invoke-direct {v0}, Lgnu/xquery/util/Compare;-><init>()V

    .line 35
    .local v0, "proc":Lgnu/xquery/util/Compare;
    invoke-virtual {v0, p0}, Lgnu/xquery/util/Compare;->setName(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.xquery.util.CompileMisc:validateCompare"

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/Compare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    iput p1, v0, Lgnu/xquery/util/Compare;->flags:I

    .line 39
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 222
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 224
    if-eqz p1, :cond_4

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 225
    :cond_0
    if-eqz p2, :cond_3

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 226
    :cond_1
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    .line 225
    :cond_3
    :goto_1
    return-object p2

    .line 224
    :cond_4
    :goto_2
    return-object p1

    .line 231
    :cond_5
    iget v0, p0, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {v0, p1, p2, v1}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v0
.end method
