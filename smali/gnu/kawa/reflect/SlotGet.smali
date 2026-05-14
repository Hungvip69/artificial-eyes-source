.class public Lgnu/kawa/reflect/SlotGet;
.super Lgnu/mapping/Procedure2;
.source "SlotGet.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final field:Lgnu/kawa/reflect/SlotGet;

.field static noClasses:[Ljava/lang/Class;

.field public static final slotRef:Lgnu/kawa/reflect/SlotGet;

.field public static final staticField:Lgnu/kawa/reflect/SlotGet;


# instance fields
.field isStatic:Z

.field setter:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    .line 16
    new-instance v1, Lgnu/kawa/reflect/SlotGet;

    const-string v2, "field"

    sget-object v3, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v1, v2, v0, v3}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v1, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    .line 18
    new-instance v1, Lgnu/kawa/reflect/SlotGet;

    const-string v2, "slot-ref"

    sget-object v3, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v1, v2, v0, v3}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v1, Lgnu/kawa/reflect/SlotGet;->slotRef:Lgnu/kawa/reflect/SlotGet;

    .line 20
    new-instance v0, Lgnu/kawa/reflect/SlotGet;

    const/4 v1, 0x1

    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    const-string v3, "static-field"

    invoke-direct {v0, v3, v1, v2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V

    sput-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z

    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 27
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileReflect:validateApplySlotGet"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/SlotGet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLgnu/mapping/Procedure;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z
    .param p3, "setter"    # Lgnu/mapping/Procedure;

    .line 33
    invoke-direct {p0, p1, p2}, Lgnu/kawa/reflect/SlotGet;-><init>(Ljava/lang/String;Z)V

    .line 34
    iput-object p3, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    .line 35
    return-void
.end method

.method static coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 186
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 187
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 188
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    .line 189
    move-object v0, p0

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "argument is neither Class nor Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fname"    # Ljava/lang/String;

    .line 39
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;
    .locals 5

    .line 97
    if-eqz p0, :cond_0

    invoke-static {p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 98
    :goto_0
    const-string v1, "length"

    if-ne p3, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 107
    :cond_1
    const-string v1, "class"

    if-ne p3, v1, :cond_2

    .line 108
    return-object v0

    .line 109
    :cond_2
    nop

    .line 110
    const/16 v1, 0x27

    const/4 v2, 0x1

    if-eqz p3, :cond_5

    .line 115
    :try_start_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_1

    .line 117
    :catch_0
    move-exception v3

    .line 119
    const/4 v3, 0x0

    .line 121
    :goto_1
    if-eqz v3, :cond_5

    .line 123
    if-eqz p0, :cond_4

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    goto :goto_2

    .line 125
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot access non-static field \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p6, v4, v3}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 135
    :catch_1
    move-exception v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 131
    :catch_2
    move-exception v3

    .line 133
    nop

    .line 138
    const/4 v3, 0x1

    goto :goto_4

    .line 145
    :cond_5
    :goto_3
    const/4 v3, 0x0

    :goto_4
    nop

    .line 146
    nop

    .line 149
    if-eqz p4, :cond_6

    :goto_5
    goto :goto_6

    :cond_6
    :try_start_2
    const-string p4, "get"

    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    .line 151
    :goto_6
    sget-object v4, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p4, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 156
    goto :goto_9

    .line 174
    :catch_3
    move-exception p0

    goto :goto_b

    .line 170
    :catch_4
    move-exception p0

    goto :goto_c

    .line 166
    :catch_5
    move-exception p0

    goto/16 :goto_e

    .line 152
    :catch_6
    move-exception p4

    .line 153
    if-eqz p5, :cond_7

    :goto_7
    goto :goto_8

    :cond_7
    :try_start_3
    const-string p4, "is"

    invoke-static {p4, p2}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_7

    .line 155
    :goto_8
    sget-object p2, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v0, p5, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    move-object p4, p5

    .line 158
    :goto_9
    if-eqz p0, :cond_9

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    goto :goto_a

    .line 160
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot call non-static getter method \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_9
    :goto_a
    sget-object p0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 163
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p6, p1, p0}, Lgnu/expr/Language;->coerceToObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 164
    return-object p0

    .line 174
    :goto_b
    move v2, v3

    goto :goto_d

    .line 172
    :goto_c
    nop

    .line 176
    nop

    .line 177
    :goto_d
    if-eqz v2, :cond_a

    .line 178
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "illegal access for field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no such field "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :goto_e
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    goto :goto_10

    :goto_f
    throw p0

    :goto_10
    goto :goto_f
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 3
    .param p0, "clas"    # Lgnu/bytecode/ObjectType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "caller"    # Lgnu/bytecode/ClassType;

    .line 213
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 215
    .local v0, "field":Lgnu/bytecode/Field;
    if-eqz v0, :cond_1

    .line 217
    if-nez p2, :cond_0

    .line 218
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 219
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    return-object v0

    .line 224
    :cond_1
    const-string v1, "get"

    invoke-static {v1, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "getname":Ljava/lang/String;
    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 226
    .local v2, "method":Lgnu/bytecode/Method;
    if-nez v2, :cond_2

    .line 227
    return-object v0

    .line 229
    :cond_2
    return-object v2
.end method

.method public static makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;
    .locals 3
    .param p0, "value"    # Lgnu/expr/Expression;
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 357
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 358
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 359
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 360
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method public static staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fname"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-virtual {v0, p0, p1}, Lgnu/kawa/reflect/SlotGet;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    .local v0, "getName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 51
    .local v1, "isName":Ljava/lang/String;
    instance-of v2, p2, Lgnu/bytecode/Field;

    if-eqz v2, :cond_0

    .line 53
    move-object v2, p2

    check-cast v2, Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "fname":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    goto :goto_2

    .line 56
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    instance-of v2, p2, Lgnu/bytecode/Method;

    if-eqz v2, :cond_3

    .line 58
    move-object v2, p2

    check-cast v2, Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "mname":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 60
    .restart local v3    # "name":Ljava/lang/String;
    const-string v4, "get"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    move-object v0, v2

    goto :goto_0

    .line 62
    :cond_1
    const-string v4, "is"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    move-object v1, v2

    .line 64
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 65
    .local v2, "fname":Ljava/lang/String;
    goto :goto_2

    .line 66
    .end local v2    # "fname":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    instance-of v2, p2, Lgnu/mapping/SimpleSymbol;

    if-nez v2, :cond_5

    instance-of v2, p2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 78
    :cond_4
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x2

    const-string v4, "string"

    invoke-direct {v2, p0, v3, p2, v4}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_5
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .restart local v3    # "name":Ljava/lang/String;
    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .restart local v2    # "fname":Ljava/lang/String;
    :goto_2
    const-string v4, "class"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 81
    const-string v2, "class"

    goto :goto_3

    .line 82
    :cond_6
    const-string v4, "length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 83
    const-string v2, "length"

    .line 84
    :cond_7
    :goto_3
    iget-boolean v4, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v10

    move-object v5, p1

    move-object v6, v3

    move-object v7, v2

    move-object v8, v0

    move-object v9, v1

    invoke-static/range {v4 .. v10}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 16
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 235
    .local v3, "args":[Lgnu/expr/Expression;
    const/4 v4, 0x0

    aget-object v5, v3, v4

    .line 236
    .local v5, "arg0":Lgnu/expr/Expression;
    const/4 v6, 0x1

    aget-object v7, v3, v6

    .line 237
    .local v7, "arg1":Lgnu/expr/Expression;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v8

    .line 238
    .local v8, "language":Lgnu/expr/Language;
    iget-boolean v9, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-eqz v9, :cond_0

    invoke-virtual {v8, v5}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v9

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    .line 240
    .local v9, "type":Lgnu/bytecode/Type;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    .line 242
    .local v10, "code":Lgnu/bytecode/CodeAttr;
    instance-of v11, v9, Lgnu/bytecode/ObjectType;

    if-eqz v11, :cond_8

    instance-of v11, v7, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_8

    .line 244
    move-object v11, v9

    check-cast v11, Lgnu/bytecode/ObjectType;

    .line 245
    .local v11, "ctype":Lgnu/bytecode/ObjectType;
    move-object v12, v7

    check-cast v12, Lgnu/expr/QuoteExp;

    invoke-virtual {v12}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 246
    .local v12, "part":Ljava/lang/Object;
    instance-of v13, v12, Lgnu/bytecode/Field;

    if-eqz v13, :cond_5

    .line 248
    move-object v13, v12

    check-cast v13, Lgnu/bytecode/Field;

    .line 249
    .local v13, "field":Lgnu/bytecode/Field;
    invoke-virtual {v13}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v14

    .line 250
    .local v14, "modifiers":I
    and-int/lit8 v15, v14, 0x8

    if-eqz v15, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 251
    .local v6, "isStaticField":Z
    :goto_1
    aget-object v4, v3, v4

    if-eqz v6, :cond_2

    sget-object v15, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_2

    :cond_2
    invoke-static {v11}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v15

    :goto_2
    invoke-virtual {v4, v1, v15}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 254
    if-eqz v6, :cond_4

    .line 256
    const/4 v4, 0x0

    .line 286
    .local v4, "inlined":Z
    if-nez v4, :cond_3

    .line 287
    invoke-virtual {v10, v13}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 288
    .end local v4    # "inlined":Z
    :cond_3
    goto :goto_3

    .line 290
    :cond_4
    invoke-virtual {v10, v13}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 291
    :goto_3
    invoke-virtual {v13}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v8, v4}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 292
    .local v4, "ftype":Lgnu/bytecode/Type;
    invoke-virtual {v2, v1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 293
    return-void

    .line 295
    .end local v4    # "ftype":Lgnu/bytecode/Type;
    .end local v6    # "isStaticField":Z
    .end local v13    # "field":Lgnu/bytecode/Field;
    .end local v14    # "modifiers":I
    :cond_5
    instance-of v6, v12, Lgnu/bytecode/Method;

    if-eqz v6, :cond_8

    .line 297
    move-object v6, v12

    check-cast v6, Lgnu/bytecode/Method;

    .line 298
    .local v6, "method":Lgnu/bytecode/Method;
    invoke-virtual {v6}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v13

    .line 299
    .local v13, "modifiers":I
    invoke-virtual {v6}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v14

    .line 300
    .local v14, "isStaticMethod":Z
    aget-object v4, v3, v4

    if-eqz v14, :cond_6

    sget-object v15, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_4

    :cond_6
    invoke-static {v11}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v15

    :goto_4
    invoke-virtual {v4, v1, v15}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 303
    if-eqz v14, :cond_7

    .line 304
    invoke-virtual {v10, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_5

    .line 306
    :cond_7
    invoke-virtual {v10, v6}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 307
    :goto_5
    invoke-virtual {v6}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 308
    return-void

    .line 311
    .end local v6    # "method":Lgnu/bytecode/Method;
    .end local v11    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v12    # "part":Ljava/lang/Object;
    .end local v13    # "modifiers":I
    .end local v14    # "isStaticMethod":Z
    :cond_8
    invoke-static {v7}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "name":Ljava/lang/String;
    instance-of v11, v9, Lgnu/bytecode/ArrayType;

    if-eqz v11, :cond_9

    const-string v11, "length"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-nez v11, :cond_9

    .line 314
    aget-object v4, v3, v4

    invoke-static {v9}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v11

    invoke-virtual {v4, v1, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 315
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 316
    sget-object v4, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 317
    return-void

    .line 319
    :cond_9
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 320
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 6
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 324
    array-length v0, p1

    .line 325
    .local v0, "nargs":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 327
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 328
    .local v1, "arg0":Lgnu/expr/Expression;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    .line 329
    .local v3, "arg1":Lgnu/expr/Expression;
    instance-of v4, v3, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_2

    .line 331
    move-object v4, v3

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 332
    .local v4, "part":Ljava/lang/Object;
    instance-of v5, v4, Lgnu/bytecode/Field;

    if-eqz v5, :cond_0

    .line 333
    move-object v2, v4

    check-cast v2, Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    return-object v2

    .line 334
    :cond_0
    instance-of v5, v4, Lgnu/bytecode/Method;

    if-eqz v5, :cond_1

    .line 335
    move-object v2, v4

    check-cast v2, Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    return-object v2

    .line 336
    :cond_1
    iget-boolean v5, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    instance-of v5, v5, Lgnu/bytecode/ArrayType;

    if-eqz v5, :cond_2

    const-string v5, "length"

    invoke-static {v3, v2}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    sget-object v2, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    return-object v2

    .line 341
    .end local v1    # "arg0":Lgnu/expr/Expression;
    .end local v3    # "arg1":Lgnu/expr/Expression;
    .end local v4    # "part":Ljava/lang/Object;
    :cond_2
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v1
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 1

    .line 346
    iget-object v0, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    invoke-super {p0}, Lgnu/mapping/Procedure2;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/kawa/reflect/SlotGet;->setter:Lgnu/mapping/Procedure;

    :goto_0
    return-object v0
.end method

.method public set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 203
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, p1, v1, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .line 195
    array-length v0, p1

    .line 196
    .local v0, "nargs":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 198
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {p0, v1, v2, v3}, Lgnu/kawa/reflect/SlotGet;->set2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    return-void

    .line 197
    :cond_0
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-virtual {p0}, Lgnu/kawa/reflect/SlotGet;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1
.end method
