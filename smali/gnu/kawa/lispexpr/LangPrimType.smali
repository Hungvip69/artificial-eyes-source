.class public Lgnu/kawa/lispexpr/LangPrimType;
.super Lgnu/bytecode/PrimType;
.source "LangPrimType.java"

# interfaces
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final byteType:Lgnu/bytecode/PrimType;

.field public static final charType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final doubleType:Lgnu/bytecode/PrimType;

.field public static final floatType:Lgnu/bytecode/PrimType;

.field public static final intType:Lgnu/bytecode/PrimType;

.field public static final longType:Lgnu/bytecode/PrimType;

.field public static final shortType:Lgnu/bytecode/PrimType;

.field public static final voidType:Lgnu/kawa/lispexpr/LangPrimType;


# instance fields
.field implementationType:Lgnu/bytecode/PrimType;

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    .line 21
    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    .line 22
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 23
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    .line 24
    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    .line 25
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    .line 26
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 28
    new-instance v0, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v0, v1}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 0
    .param p1, "type"    # Lgnu/bytecode/PrimType;

    .line 33
    invoke-direct {p0, p1}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 34
    iput-object p1, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 35
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V
    .locals 0
    .param p1, "type"    # Lgnu/bytecode/PrimType;
    .param p2, "language"    # Lgnu/expr/Language;

    .line 39
    invoke-direct {p0, p1}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    .line 40
    iput-object p2, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    .line 41
    iput-object p1, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .param p1, "nam"    # Ljava/lang/String;
    .param p2, "sig"    # Ljava/lang/String;
    .param p3, "siz"    # I
    .param p4, "reflectClass"    # Ljava/lang/Class;

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Lgnu/expr/Language;)V
    .locals 1
    .param p1, "nam"    # Ljava/lang/String;
    .param p2, "sig"    # Ljava/lang/String;
    .param p3, "siz"    # I
    .param p4, "reflectClass"    # Ljava/lang/Class;
    .param p5, "language"    # Lgnu/expr/Language;

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    .line 54
    iput-object p5, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    .line 55
    return-void
.end method


# virtual methods
.method public charValue(Ljava/lang/Object;)C
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 81
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0

    .line 83
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->charValue()C

    move-result v0

    return v0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/lispexpr/LangPrimType;->reflectClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 65
    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 67
    .local v0, "sig1":C
    sparse-switch v0, :sswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 70
    :sswitch_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v1

    .line 74
    :sswitch_1
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 72
    :sswitch_2
    new-instance v1, Ljava/lang/Character;

    move-object v2, p1

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->charValue()C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    .local v0, "sig1":C
    sparse-switch v0, :sswitch_data_0

    .line 140
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 131
    :sswitch_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    move-object v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 138
    :sswitch_1
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 133
    :sswitch_2
    instance-of v1, p1, Lgnu/text/Char;

    if-eqz v1, :cond_0

    .line 134
    return-object p1

    .line 135
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 7
    .param p1, "other"    # Lgnu/bytecode/Type;

    .line 176
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, "sig1":C
    instance-of v2, p1, Lgnu/bytecode/PrimType;

    const/4 v3, -0x1

    const/16 v4, 0x5a

    const/4 v5, 0x1

    const/16 v6, 0x56

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 180
    .local v2, "sig2":C
    if-ne v0, v2, :cond_0

    .line 181
    return v1

    .line 182
    :cond_0
    if-ne v0, v6, :cond_1

    .line 183
    return v5

    .line 184
    :cond_1
    if-eq v2, v6, :cond_2

    if-ne v2, v4, :cond_3

    .line 185
    :cond_2
    return v3

    .line 187
    .end local v2    # "sig2":C
    :cond_3
    if-eq v0, v6, :cond_7

    if-ne v0, v4, :cond_4

    goto :goto_0

    .line 189
    :cond_4
    const/16 v1, 0x43

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gnu.text.Char"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    return v3

    .line 191
    :cond_5
    instance-of v1, p1, Lgnu/kawa/lispexpr/LangObjType;

    if-eqz v1, :cond_6

    .line 192
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    invoke-static {v1}, Lgnu/kawa/lispexpr/LangPrimType;->swappedCompareResult(I)I

    move-result v1

    return v1

    .line 193
    :cond_6
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    return v1

    .line 188
    :cond_7
    :goto_0
    return v5
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "value"    # Lgnu/expr/Expression;

    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 106
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 107
    .local v0, "sig1":C
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    move-object v2, v1

    .line 121
    .local v1, "scmCharType":Lgnu/bytecode/ClassType;
    .local v2, "charValueMethod":Lgnu/bytecode/Method;
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    .line 110
    .end local v1    # "scmCharType":Lgnu/bytecode/ClassType;
    .end local v2    # "charValueMethod":Lgnu/bytecode/Method;
    :sswitch_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p1}, Lgnu/expr/Language;->emitCoerceToBoolean(Lgnu/bytecode/CodeAttr;)V

    .line 111
    goto :goto_0

    .line 115
    :sswitch_1
    const-string v2, "gnu.text.Char"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 116
    .local v2, "scmCharType":Lgnu/bytecode/ClassType;
    const-string v3, "charValue"

    invoke-virtual {v2, v3, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 117
    .local v1, "charValueMethod":Lgnu/bytecode/Method;
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 118
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 119
    nop

    .line 123
    .end local v1    # "charValueMethod":Lgnu/bytecode/Method;
    .end local v2    # "scmCharType":Lgnu/bytecode/ClassType;
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 8
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 145
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 146
    .local v0, "sig1":C
    const/4 v2, 0x0

    .line 147
    .local v2, "argType":Lgnu/bytecode/Type;
    const/4 v3, 0x0

    .line 148
    .local v3, "cname":Ljava/lang/String;
    const-string v4, "make"

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    const/4 v6, 0x0

    move-object v7, v6

    .line 163
    .local v6, "scmCharType":Lgnu/bytecode/ClassType;
    .local v7, "makeCharMethod":Lgnu/bytecode/Method;
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    .line 151
    .end local v6    # "scmCharType":Lgnu/bytecode/ClassType;
    .end local v7    # "makeCharMethod":Lgnu/bytecode/Method;
    :sswitch_0
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 152
    iget-object v6, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v6, v5, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 153
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 154
    iget-object v6, p0, Lgnu/kawa/lispexpr/LangPrimType;->language:Lgnu/expr/Language;

    invoke-virtual {v6, v1, p1}, Lgnu/expr/Language;->emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V

    .line 155
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 156
    goto :goto_0

    .line 158
    :sswitch_1
    const-string v6, "gnu.text.Char"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 159
    .restart local v6    # "scmCharType":Lgnu/bytecode/ClassType;
    invoke-virtual {v6, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    .line 160
    .restart local v7    # "makeCharMethod":Lgnu/bytecode/Method;
    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 161
    nop

    .line 165
    .end local v6    # "scmCharType":Lgnu/bytecode/ClassType;
    .end local v7    # "makeCharMethod":Lgnu/bytecode/Method;
    :goto_0
    if-eqz v3, :cond_0

    .line 167
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 168
    .local v6, "clas":Lgnu/bytecode/ClassType;
    new-array v5, v5, [Lgnu/bytecode/Type;

    aput-object v2, v5, v1

    move-object v1, v5

    .line 169
    .local v1, "args":[Lgnu/bytecode/Type;
    invoke-virtual {v6, v4, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 171
    .end local v1    # "args":[Lgnu/bytecode/Type;
    .end local v6    # "clas":Lgnu/bytecode/ClassType;
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 88
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    .local v0, "sig1":C
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    .line 100
    .local v1, "scmCharType":Lgnu/bytecode/ClassType;
    invoke-super {p0, p1}, Lgnu/bytecode/PrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_0

    .line 92
    .end local v1    # "scmCharType":Lgnu/bytecode/ClassType;
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 93
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 94
    goto :goto_0

    .line 96
    :sswitch_1
    const-string v1, "gnu.text.Char"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 97
    .restart local v1    # "scmCharType":Lgnu/bytecode/ClassType;
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 98
    nop

    .line 102
    .end local v1    # "scmCharType":Lgnu/bytecode/ClassType;
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 225
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 226
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 2
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "comp"    # Lgnu/expr/Compilation;

    .line 198
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LangPrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 205
    .local v0, "sig1":C
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 206
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {v1, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 208
    :cond_0
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 211
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 213
    :cond_1
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LangPrimType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 214
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 215
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 59
    iget-object v0, p0, Lgnu/kawa/lispexpr/LangPrimType;->implementationType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
