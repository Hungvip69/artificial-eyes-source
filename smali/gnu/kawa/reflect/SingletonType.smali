.class public Lgnu/kawa/reflect/SingletonType;
.super Lgnu/bytecode/ObjectType;
.source "SingletonType.java"


# static fields
.field static final instance:Lgnu/kawa/reflect/SingletonType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/kawa/reflect/SingletonType;

    const-string v1, "singleton"

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/SingletonType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 47
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p0

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_1

    .line 51
    return-object p0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "value is not a singleton"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getInstance()Lgnu/kawa/reflect/SingletonType;
    .locals 1

    .line 18
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    return-object v0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lgnu/kawa/reflect/SingletonType;->coerceToSingleton(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 5
    .param p1, "other"    # Lgnu/bytecode/Type;

    .line 32
    invoke-static {p1}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    .line 33
    .local v0, "otherRange":I
    and-int/lit16 v1, v0, 0xfff

    .line 34
    .local v1, "otherMin":I
    shr-int/lit8 v2, v0, 0xc

    .line 35
    .local v2, "otherMax":I
    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    if-ne v1, v3, :cond_1

    if-ne v2, v3, :cond_1

    .line 38
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, p1}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    return v3

    .line 39
    :cond_1
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, p1}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v3

    .line 40
    .local v3, "cmp":I
    const/4 v4, -0x1

    if-eqz v3, :cond_3

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 42
    :cond_2
    const/4 v4, -0x2

    return v4

    .line 41
    :cond_3
    :goto_0
    return v4

    .line 36
    .end local v3    # "cmp":I
    :cond_4
    :goto_1
    const/4 v3, -0x3

    return v3
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 61
    const-string v0, "gnu.kawa.reflect.SingletonType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "coerceToSingleton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 63
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 27
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lgnu/kawa/reflect/SingletonType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 67
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/mapping/Values;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
