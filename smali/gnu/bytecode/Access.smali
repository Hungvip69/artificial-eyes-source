.class public Lgnu/bytecode/Access;
.super Ljava/lang/Object;
.source "Access.java"


# static fields
.field public static final ABSTRACT:S = 0x400s

.field public static final ANNOTATION:S = 0x2000s

.field public static final BRIDGE:S = 0x40s

.field public static final CLASS_CONTEXT:C = 'C'

.field public static final CLASS_MODIFIERS:S = 0x7631s

.field public static final ENUM:S = 0x4000s

.field public static final FIELD_CONTEXT:C = 'F'

.field public static final FIELD_MODIFIERS:S = 0x50dfs

.field public static final FINAL:S = 0x10s

.field public static final INNERCLASS_CONTEXT:C = 'I'

.field public static final INNERCLASS_MODIFIERS:S = 0x761fs

.field public static final INTERFACE:S = 0x200s

.field public static final METHOD_CONTEXT:C = 'M'

.field public static final METHOD_MODIFIERS:S = 0x1dffs

.field public static final NATIVE:S = 0x100s

.field public static final PRIVATE:S = 0x2s

.field public static final PROTECTED:S = 0x4s

.field public static final PUBLIC:S = 0x1s

.field public static final STATIC:S = 0x8s

.field public static final STRICT:S = 0x800s

.field public static final SUPER:S = 0x20s

.field public static final SYNCHRONIZED:S = 0x20s

.field public static final SYNTHETIC:S = 0x1000s

.field public static final TRANSIENT:S = 0x80s

.field public static final VARARGS:S = 0x80s

.field public static final VOLATILE:S = 0x40s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "flags"    # I

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(IC)Ljava/lang/String;
    .locals 6
    .param p0, "flags"    # I
    .param p1, "kind"    # C

    .line 71
    const/16 v0, 0x4d

    const/16 v1, 0x43

    if-ne p1, v1, :cond_0

    const/16 v2, 0x7631

    goto :goto_0

    :cond_0
    const/16 v2, 0x49

    if-ne p1, v2, :cond_1

    const/16 v2, 0x761f

    goto :goto_0

    :cond_1
    const/16 v2, 0x46

    if-ne p1, v2, :cond_2

    const/16 v2, 0x50df

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/16 v2, 0x1dff

    goto :goto_0

    :cond_3
    const/16 v2, 0x7fff

    .line 77
    .local v2, "mask":S
    :goto_0
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, p0

    int-to-short v3, v3

    .line 78
    .local v3, "bad_flags":S
    and-int/2addr p0, v2

    .line 79
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v4, "buf":Ljava/lang/StringBuffer;
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_4

    const-string v5, " public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_4
    and-int/lit8 v5, p0, 0x2

    if-eqz v5, :cond_5

    const-string v5, " private"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_5
    and-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_6

    const-string v5, " protected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_6
    and-int/lit8 v5, p0, 0x8

    if-eqz v5, :cond_7

    const-string v5, " static"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_7
    and-int/lit8 v5, p0, 0x10

    if-eqz v5, :cond_8

    const-string v5, " final"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_8
    and-int/lit8 v5, p0, 0x20

    if-eqz v5, :cond_a

    .line 86
    if-ne p1, v1, :cond_9

    const-string v1, " super"

    goto :goto_1

    :cond_9
    const-string v1, " synchronized"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_a
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_c

    .line 88
    if-ne p1, v0, :cond_b

    const-string v1, " bridge"

    goto :goto_2

    :cond_b
    const-string v1, " volatile"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_c
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_e

    .line 90
    if-ne p1, v0, :cond_d

    const-string v0, " varargs"

    goto :goto_3

    :cond_d
    const-string v0, " transient"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_e
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_f

    const-string v0, " native"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :cond_f
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_10

    const-string v0, " interface"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_10
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_11

    const-string v0, " abstract"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_11
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_12

    const-string v0, " strict"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_12
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_13

    const-string v0, " enum"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_13
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_14

    const-string v0, " synthetic"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_14
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_15

    const-string v0, " annotation"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_15
    if-eqz v3, :cond_16

    .line 100
    const-string v0, " unknown-flags:0x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_16
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
