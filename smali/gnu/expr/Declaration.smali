.class public Lgnu/expr/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CAN_WRITE:I = 0x8

.field public static final CLASS_ACCESS_FLAGS:J = 0x603000000L

.field public static final EARLY_INIT:I = 0x20000000

.field public static final ENUM_ACCESS:J = 0x200000000L

.field public static final EXPORT_SPECIFIED:I = 0x400

.field public static final EXTERNAL_ACCESS:I = 0x80000

.field public static final FIELD_ACCESS_FLAGS:J = 0x78f000000L

.field public static final FIELD_OR_METHOD:I = 0x100000

.field public static final FINAL_ACCESS:J = 0x400000000L

.field static final INDIRECT_BINDING:I = 0x1

.field public static final IS_ALIAS:I = 0x100

.field public static final IS_CONSTANT:I = 0x4000

.field public static final IS_DYNAMIC:I = 0x10000000

.field static final IS_FLUID:I = 0x10

.field public static final IS_IMPORTED:I = 0x20000

.field public static final IS_NAMESPACE_PREFIX:I = 0x200000

.field static final IS_SIMPLE:I = 0x40

.field public static final IS_SINGLE_VALUE:I = 0x40000

.field public static final IS_SYNTAX:I = 0x8000

.field public static final IS_UNKNOWN:I = 0x10000

.field public static final METHOD_ACCESS_FLAGS:J = 0x40f000000L

.field public static final MODULE_REFERENCE:I = 0x40000000

.field public static final NONSTATIC_SPECIFIED:I = 0x1000

.field public static final NOT_DEFINING:I = 0x200

.field public static final PACKAGE_ACCESS:I = 0x8000000

.field static final PRIVATE:I = 0x20

.field public static final PRIVATE_ACCESS:I = 0x1000000

.field public static final PRIVATE_PREFIX:Ljava/lang/String; = "$Prvt$"

.field public static final PRIVATE_SPECIFIED:I = 0x1000000

.field static final PROCEDURE:I = 0x80

.field public static final PROTECTED_ACCESS:I = 0x2000000

.field public static final PUBLIC_ACCESS:I = 0x4000000

.field public static final STATIC_SPECIFIED:I = 0x800

.field public static final TRANSIENT_ACCESS:J = 0x100000000L

.field public static final TYPE_SPECIFIED:I = 0x2000

.field static final UNKNOWN_PREFIX:Ljava/lang/String; = "loc$"

.field public static final VOLATILE_ACCESS:J = 0x80000000L

.field static counter:I


# instance fields
.field public base:Lgnu/expr/Declaration;

.field public context:Lgnu/expr/ScopeExp;

.field evalIndex:I

.field public field:Lgnu/bytecode/Field;

.field filename:Ljava/lang/String;

.field public firstCall:Lgnu/expr/ApplyExp;

.field protected flags:J

.field protected id:I

.field makeLocationMethod:Lgnu/bytecode/Method;

.field next:Lgnu/expr/Declaration;

.field nextCapturedVar:Lgnu/expr/Declaration;

.field position:I

.field symbol:Ljava/lang/Object;

.field protected type:Lgnu/bytecode/Type;

.field protected typeExp:Lgnu/expr/Expression;

.field protected value:Lgnu/expr/Expression;

.field var:Lgnu/bytecode/Variable;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    const-wide/16 v0, 0x40

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 738
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .locals 2
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .line 742
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 743
    iput-object p1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 744
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/Object;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    const-wide/16 v0, 0x40

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 748
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "field"    # Lgnu/bytecode/Field;

    .line 759
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 760
    iput-object p2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 762
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 356
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 528
    const-wide/16 v0, 0x40

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 753
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 754
    invoke-virtual {p0, p2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 755
    return-void
.end method

.method public static followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;
    .locals 3
    .param p0, "decl"    # Lgnu/expr/Declaration;

    .line 943
    nop

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 946
    .local v0, "declValue":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-nez v1, :cond_0

    .line 947
    goto :goto_1

    .line 948
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 949
    .local v1, "rexp":Lgnu/expr/ReferenceExp;
    iget-object v2, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 950
    .local v2, "orig":Lgnu/expr/Declaration;
    if-nez v2, :cond_1

    .line 951
    goto :goto_1

    .line 952
    :cond_1
    move-object p0, v2

    .line 953
    .end local v0    # "declValue":Lgnu/expr/Expression;
    .end local v1    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v2    # "orig":Lgnu/expr/Declaration;
    goto :goto_0

    .line 954
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;
    .locals 1
    .param p0, "proc"    # Lgnu/mapping/Named;

    .line 1097
    invoke-interface {p0}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/expr/Declaration;->getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 5
    .param p0, "proc"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .line 1102
    const/4 v0, 0x0

    .line 1103
    .local v0, "procField":Lgnu/bytecode/Field;
    if-eqz p1, :cond_0

    .line 1130
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 1131
    .local v1, "procClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 1133
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 1134
    .local v2, "procType":Lgnu/bytecode/ClassType;
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 1139
    .end local v1    # "procClass":Ljava/lang/Class;
    .end local v2    # "procType":Lgnu/bytecode/ClassType;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    .line 1141
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v1

    .line 1142
    .local v1, "fflags":I
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    .line 1144
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, p1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1145
    .local v2, "decl":Lgnu/expr/Declaration;
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1146
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_1

    .line 1147
    const-wide/16 v3, 0x4000

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1148
    :cond_1
    return-object v2

    .line 1151
    .end local v1    # "fflags":I
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 5
    .param p0, "cname"    # Ljava/lang/String;
    .param p1, "fname"    # Ljava/lang/String;

    .line 1061
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1062
    .local v0, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 1063
    .local v1, "fld":Lgnu/bytecode/Field;
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, p1, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1064
    .local v2, "decl":Lgnu/expr/Declaration;
    const-wide/16 v3, 0x4800

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1065
    return-object v2
.end method

.method public static getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 1077
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1078
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1079
    .local v1, "fld":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1081
    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Lgnu/expr/Declaration;

    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v4, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1085
    .local v3, "decl":Lgnu/expr/Declaration;
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1086
    const-wide/16 v4, 0x4800

    invoke-virtual {v3, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    return-object v3

    .line 1089
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "decl":Lgnu/expr/Declaration;
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final isUnknown(Lgnu/expr/Declaration;)Z
    .locals 2
    .param p0, "decl"    # Lgnu/expr/Declaration;

    .line 711
    if-eqz p0, :cond_1

    const-wide/32 v0, 0x10000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;
    .locals 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 788
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-nez v0, :cond_5

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 791
    .local v0, "vname":Ljava/lang/String;
    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 792
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_3

    .line 795
    invoke-static {p0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 796
    .local v1, "base":Lgnu/expr/Declaration;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    :goto_0
    iput-object v2, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 797
    .end local v1    # "base":Lgnu/expr/Declaration;
    goto :goto_2

    .line 800
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 802
    .local v1, "type":Lgnu/bytecode/Type;
    :goto_1
    iget-object v2, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v2}, Lgnu/expr/ScopeExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 805
    .end local v0    # "vname":Ljava/lang/String;
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_5
    :goto_2
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public compileStore(Lgnu/expr/Compilation;)V
    .locals 2
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 338
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 339
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 346
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 347
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 350
    :cond_1
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 352
    :goto_0
    return-void
.end method

.method public getAccessFlags(S)S
    .locals 3
    .param p1, "defaultFlags"    # S

    .line 559
    const-wide/32 v0, 0xf000000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "flags":S
    const-wide/32 v1, 0x1000000

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    or-int/lit8 v1, v0, 0x2

    int-to-short v0, v1

    .line 564
    :cond_0
    const-wide/32 v1, 0x2000000

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 565
    or-int/lit8 v1, v0, 0x4

    int-to-short v0, v1

    .line 566
    :cond_1
    const-wide/32 v1, 0x4000000

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    or-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 570
    .end local v0    # "flags":S
    :cond_2
    move v0, p1

    .line 571
    .restart local v0    # "flags":S
    :cond_3
    :goto_0
    const-wide v1, 0x80000000L

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 572
    or-int/lit8 v1, v0, 0x40

    int-to-short v0, v1

    .line 573
    :cond_4
    const-wide v1, 0x100000000L

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 574
    or-int/lit16 v1, v0, 0x80

    int-to-short v0, v1

    .line 575
    :cond_5
    const-wide v1, 0x200000000L

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 576
    or-int/lit16 v1, v0, 0x4000

    int-to-short v0, v1

    .line 577
    :cond_6
    const-wide v1, 0x400000000L

    invoke-virtual {p0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 578
    or-int/lit8 v1, v0, 0x10

    int-to-short v0, v1

    .line 579
    :cond_7
    return v0
.end method

.method public final getCanCall()Z
    .locals 5

    .line 632
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCanRead()Z
    .locals 5

    .line 620
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCanWrite()Z
    .locals 5

    .line 642
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 55
    iget v0, p0, Lgnu/expr/Declaration;->id:I

    return v0
.end method

.method public final getColumnNumber()I
    .locals 2

    .line 861
    iget v0, p0, Lgnu/expr/Declaration;->position:I

    and-int/lit16 v0, v0, 0xfff

    .line 862
    .local v0, "column":I
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public final getConstantValue()Ljava/lang/Object;
    .locals 2

    .line 410
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 411
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_1

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 412
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getContext()Lgnu/expr/ScopeExp;
    .locals 1

    .line 139
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlag(J)Z
    .locals 5
    .param p1, "flag"    # J

    .line 532
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getLineNumber()I
    .locals 2

    .line 855
    iget v0, p0, Lgnu/expr/Declaration;->position:I

    shr-int/lit8 v0, v0, 0xc

    .line 856
    .local v0, "line":I
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSymbol()Ljava/lang/Object;
    .locals 1

    .line 108
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 848
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .line 73
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getTypeExp()Lgnu/expr/Expression;
    .locals 1

    .line 67
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getValue()Lgnu/expr/Expression;
    .locals 4

    .line 371
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v0

    const/16 v1, 0x18

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    :try_start_0
    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    .line 384
    :goto_0
    goto :goto_1

    .line 387
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x2000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eq v0, v1, :cond_1

    .line 392
    :try_start_1
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 393
    .local v0, "val":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 394
    .local v1, "t":Lgnu/bytecode/Type;
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    iput-object v2, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    .end local v0    # "val":Ljava/lang/Object;
    .end local v1    # "t":Lgnu/bytecode/Type;
    goto :goto_1

    .line 396
    :catchall_1
    move-exception v0

    .line 400
    :cond_1
    :goto_1
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getVariable()Lgnu/bytecode/Variable;
    .locals 1

    .line 121
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public final hasConstantValue()Z
    .locals 2

    .line 418
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 419
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public ignorable()Z
    .locals 5

    .line 667
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 669
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v2, 0x10000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    return v1

    .line 671
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 672
    return v2

    .line 673
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 674
    .local v0, "value":Lgnu/expr/Expression;
    if-eqz v0, :cond_6

    instance-of v3, v0, Lgnu/expr/LambdaExp;

    if-nez v3, :cond_3

    goto :goto_0

    .line 676
    :cond_3
    move-object v3, v0

    check-cast v3, Lgnu/expr/LambdaExp;

    .line 677
    .local v3, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1

    .line 675
    .end local v3    # "lexp":Lgnu/expr/LambdaExp;
    :cond_6
    :goto_0
    return v1

    .line 668
    .end local v0    # "value":Lgnu/expr/Expression;
    :cond_7
    :goto_1
    return v1
.end method

.method public final isAlias()Z
    .locals 5

    .line 582
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCompiletimeConstant()Z
    .locals 2

    .line 429
    const-wide/16 v0, 0x4000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFluid()Z
    .locals 5

    .line 587
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIndirectBinding()Z
    .locals 5

    .line 603
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLexical()Z
    .locals 5

    .line 706
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x10010010

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNamespaceDecl()Z
    .locals 5

    .line 597
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x200000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPrivate()Z
    .locals 5

    .line 549
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isProcedureDecl()Z
    .locals 5

    .line 591
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPublic()Z
    .locals 5

    .line 547
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSimple()Z
    .locals 5

    .line 124
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .line 865
    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .locals 4

    .line 692
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    return v0

    .line 694
    :cond_0
    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 697
    :cond_1
    const-wide/16 v2, 0x1000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 698
    return v2

    .line 699
    :cond_2
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 700
    .local v0, "lambda":Lgnu/expr/LambdaExp;
    instance-of v3, v0, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lgnu/expr/ModuleExp;

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 696
    .end local v0    # "lambda":Lgnu/expr/LambdaExp;
    :cond_4
    :goto_1
    return v1
.end method

.method public final isThisParameter()Z
    .locals 2

    .line 660
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    sget-object v1, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 18
    .param p1, "access"    # Lgnu/expr/AccessExp;
    .param p2, "flags"    # I
    .param p3, "comp"    # Lgnu/expr/Compilation;
    .param p4, "target"    # Lgnu/expr/Target;

    .line 164
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v4, Lgnu/expr/IgnoreTarget;

    if-eqz v5, :cond_0

    .line 165
    return-void

    .line 166
    :cond_0
    if-nez v1, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .line 167
    .local v5, "owner":Lgnu/expr/Declaration;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v6, v6, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_4

    .line 169
    iget-object v6, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v6, Lgnu/expr/ReferenceExp;

    .line 170
    .local v6, "rexp":Lgnu/expr/ReferenceExp;
    iget-object v7, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 171
    .local v7, "orig":Lgnu/expr/Declaration;
    if-eqz v7, :cond_4

    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 176
    :cond_3
    invoke-virtual {v7, v6, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 177
    return-void

    .line 180
    .end local v6    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v7    # "orig":Lgnu/expr/Declaration;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 182
    iget-object v6, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/FluidLetExp;

    if-eqz v6, :cond_5

    .line 184
    iget-object v6, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v6, v1, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 185
    return-void

    .line 188
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 189
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 190
    .local v7, "rtype":Lgnu/bytecode/Type;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-nez v8, :cond_b

    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_b

    .line 193
    iget-object v8, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v8, :cond_a

    .line 197
    iget-boolean v8, v3, Lgnu/expr/Compilation;->immediate:Z

    .line 198
    .local v8, "immediate":Z
    iget-object v10, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v10

    const-string v11, "make"

    const/4 v12, 0x2

    if-eqz v10, :cond_7

    .line 200
    const-string v9, "gnu.kawa.reflect.StaticFieldLocation"

    invoke-static {v9}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    .line 201
    .local v9, "ltype":Lgnu/bytecode/ClassType;
    if-eqz v8, :cond_6

    const/4 v12, 0x1

    :cond_6
    invoke-virtual {v9, v11, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v10

    .local v10, "meth":Lgnu/bytecode/Method;
    goto :goto_2

    .line 205
    .end local v9    # "ltype":Lgnu/bytecode/ClassType;
    .end local v10    # "meth":Lgnu/bytecode/Method;
    :cond_7
    const-string v10, "gnu.kawa.reflect.FieldLocation"

    invoke-static {v10}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v10

    .line 206
    .local v10, "ltype":Lgnu/bytecode/ClassType;
    if-eqz v8, :cond_8

    const/4 v9, 0x2

    goto :goto_1

    :cond_8
    const/4 v9, 0x3

    :goto_1
    invoke-virtual {v10, v11, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    .line 208
    .local v9, "meth":Lgnu/bytecode/Method;
    invoke-virtual {v0, v5, v3}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    .line 210
    .local v9, "ltype":Lgnu/bytecode/ClassType;
    .local v10, "meth":Lgnu/bytecode/Method;
    :goto_2
    if-eqz v8, :cond_9

    .line 211
    invoke-virtual {v3, v0}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_3

    .line 214
    :cond_9
    iget-object v11, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 215
    iget-object v11, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 217
    :goto_3
    invoke-virtual {v6, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 218
    move-object v7, v9

    .line 219
    .end local v8    # "immediate":Z
    .end local v9    # "ltype":Lgnu/bytecode/ClassType;
    .end local v10    # "meth":Lgnu/bytecode/Method;
    goto/16 :goto_a

    .line 194
    :cond_a
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "internal error: cannot take location of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    :cond_b
    iget-object v8, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v8, :cond_d

    .line 225
    iget-object v8, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v3, v8}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 226
    iget-object v8, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v3, v8}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 227
    iget-object v8, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v8}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v8

    if-nez v8, :cond_c

    .line 229
    invoke-virtual {v0, v5, v3}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 230
    iget-object v8, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto/16 :goto_5

    .line 233
    :cond_c
    iget-object v8, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_5

    .line 235
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-boolean v8, v3, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v8

    if-nez v8, :cond_10

    .line 238
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v8

    .line 239
    .local v8, "env":Lgnu/mapping/Environment;
    iget-object v10, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v10, v10, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_e

    iget-object v10, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    check-cast v10, Lgnu/mapping/Symbol;

    goto :goto_4

    :cond_e
    iget-object v10, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    .line 241
    .local v10, "sym":Lgnu/mapping/Symbol;
    :goto_4
    const/4 v11, 0x0

    .line 242
    .local v11, "property":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v12

    invoke-virtual {v12}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 244
    sget-object v11, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 245
    :cond_f
    invoke-virtual {v8, v10, v11}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v12

    .line 246
    .local v12, "loc":Lgnu/mapping/Location;
    sget-object v13, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-static {v13}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 247
    .end local v8    # "env":Lgnu/mapping/Environment;
    .end local v10    # "sym":Lgnu/mapping/Symbol;
    .end local v11    # "property":Ljava/lang/Object;
    .end local v12    # "loc":Lgnu/mapping/Location;
    goto/16 :goto_5

    .line 248
    :cond_10
    iget-boolean v8, v3, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v8, :cond_11

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    .local v10, "val":Ljava/lang/Object;
    if-eqz v8, :cond_11

    .line 250
    invoke-virtual {v3, v10, v4}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 251
    return-void

    .line 253
    .end local v10    # "val":Ljava/lang/Object;
    :cond_11
    iget-object v8, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v10, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v8, v10, :cond_13

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v8, v8, Lgnu/expr/LambdaExp;

    if-eqz v8, :cond_12

    iget-object v8, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v8, Lgnu/expr/LambdaExp;

    iget-object v8, v8, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v8, v8, Lgnu/expr/ModuleExp;

    if-nez v8, :cond_13

    .line 257
    :cond_12
    iget-object v8, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v8, v3, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 258
    return-void

    .line 262
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v8

    .line 264
    .local v8, "var":Lgnu/bytecode/Variable;
    iget-object v10, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ClassExp;

    if-eqz v10, :cond_14

    if-nez v8, :cond_14

    const-wide/16 v10, 0x80

    invoke-virtual {v0, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v10, Lgnu/expr/ClassExp;

    move-object v11, v10

    .local v11, "cl":Lgnu/expr/ClassExp;
    invoke-virtual {v10}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 268
    const-string v10, "get"

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "getName":Ljava/lang/String;
    iget-object v12, v11, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    .line 270
    .local v12, "getter":Lgnu/bytecode/Method;
    invoke-virtual {v11, v3}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 271
    invoke-virtual {v6, v12}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 272
    .end local v10    # "getName":Ljava/lang/String;
    .end local v12    # "getter":Lgnu/bytecode/Method;
    goto :goto_5

    .line 275
    .end local v11    # "cl":Lgnu/expr/ClassExp;
    :cond_14
    if-nez v8, :cond_15

    .line 276
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 277
    :cond_15
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 280
    .end local v8    # "var":Lgnu/bytecode/Variable;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-eqz v8, :cond_1a

    and-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_1a

    .line 286
    if-eqz v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getFileName()Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .local v10, "filename":Ljava/lang/String;
    if-eqz v8, :cond_19

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getLineNumber()I

    move-result v8

    move v11, v8

    .local v11, "line":I
    if-lez v8, :cond_19

    .line 292
    const-string v8, "gnu.mapping.UnboundLocationException"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    .line 295
    .local v8, "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v12

    .line 296
    .local v12, "isInTry":Z
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getColumnNumber()I

    move-result v13

    .line 297
    .local v13, "column":I
    new-instance v14, Lgnu/bytecode/Label;

    invoke-direct {v14, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 298
    .local v14, "startTry":Lgnu/bytecode/Label;
    invoke-virtual {v14, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 299
    sget-object v15, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v6, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 300
    new-instance v15, Lgnu/bytecode/Label;

    invoke-direct {v15, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 301
    .local v15, "endTry":Lgnu/bytecode/Label;
    invoke-virtual {v15, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 302
    new-instance v9, Lgnu/bytecode/Label;

    invoke-direct {v9, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 303
    .local v9, "endLabel":Lgnu/bytecode/Label;
    invoke-virtual {v9, v6}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 304
    if-eqz v12, :cond_16

    .line 305
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_6

    .line 307
    :cond_16
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 308
    :goto_6
    const/16 v16, 0x0

    .line 309
    .local v16, "fragment_cookie":I
    if-nez v12, :cond_17

    .line 310
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v16

    move/from16 v0, v16

    goto :goto_7

    .line 309
    :cond_17
    move/from16 v0, v16

    .line 311
    .end local v16    # "fragment_cookie":I
    .local v0, "fragment_cookie":I
    :goto_7
    invoke-virtual {v6, v14, v15, v8}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 313
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 314
    invoke-virtual {v6, v10}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v6, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 316
    invoke-virtual {v6, v13}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 317
    const-string v1, "setLine"

    const/4 v2, 0x3

    invoke-virtual {v8, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v6, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 319
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 320
    if-eqz v12, :cond_18

    .line 321
    invoke-virtual {v9, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    goto :goto_8

    .line 323
    :cond_18
    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    .line 324
    .end local v0    # "fragment_cookie":I
    .end local v8    # "typeUnboundLocationException":Lgnu/bytecode/ClassType;
    .end local v9    # "endLabel":Lgnu/bytecode/Label;
    .end local v12    # "isInTry":Z
    .end local v13    # "column":I
    .end local v14    # "startTry":Lgnu/bytecode/Label;
    .end local v15    # "endTry":Lgnu/bytecode/Label;
    :goto_8
    goto :goto_9

    .line 326
    .end local v10    # "filename":Ljava/lang/String;
    .end local v11    # "line":I
    :cond_19
    sget-object v0, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 328
    :goto_9
    sget-object v7, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 331
    :cond_1a
    :goto_a
    invoke-virtual {v4, v3, v7}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 332
    return-void
.end method

.method loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 3
    .param p1, "owner"    # Lgnu/expr/Declaration;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 153
    if-nez p1, :cond_0

    .line 154
    iget-object p1, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    .line 156
    const/4 v0, 0x0

    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, p2, v1}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 159
    :goto_0
    return-void
.end method

.method public makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 12
    .param p1, "frameType"    # Lgnu/bytecode/ClassType;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "value"    # Lgnu/expr/Expression;

    .line 965
    invoke-virtual {p0}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v0

    .line 966
    .local v0, "external_access":Z
    const/4 v1, 0x0

    .line 967
    .local v1, "fflags":I
    const-wide/16 v2, 0x4000

    invoke-virtual {p0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    .line 968
    .local v2, "isConstant":Z
    const-wide/16 v3, 0x2000

    invoke-virtual {p0, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    .line 969
    .local v3, "typeSpecified":Z
    iget-boolean v4, p2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/ModuleExp;

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 971
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 975
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    iget-boolean v4, p2, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v4, :cond_2

    .line 976
    :cond_1
    or-int/lit8 v1, v1, 0x1

    .line 977
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v4

    if-nez v4, :cond_4

    const-wide/32 v4, 0x10010010

    invoke-virtual {p0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    instance-of v4, p3, Lgnu/expr/ClassExp;

    if-eqz v4, :cond_5

    move-object v4, p3

    check-cast v4, Lgnu/expr/LambdaExp;

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v4

    if-nez v4, :cond_5

    .line 985
    :cond_4
    or-int/lit8 v1, v1, 0x8

    .line 986
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/ModuleExp;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v4, Lgnu/expr/ModuleExp;

    invoke-virtual {v4}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/ClassExp;

    if-nez v4, :cond_7

    iget-object v4, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/ModuleExp;

    if-eqz v4, :cond_8

    .line 991
    :cond_7
    or-int/lit8 v1, v1, 0x10

    .line 992
    :cond_8
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 993
    .local v4, "ftype":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 994
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 995
    :cond_9
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v5

    if-nez v5, :cond_12

    .line 997
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    .line 999
    .local v5, "fname":Ljava/lang/String;
    if-nez v5, :cond_a

    .line 1001
    const-string v5, "$unnamed$0"

    .line 1002
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    .local v6, "nlength":I
    goto :goto_0

    .line 1006
    .end local v6    # "nlength":I
    :cond_a
    invoke-static {v5}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1007
    const-wide/32 v6, 0x10000

    invoke-virtual {p0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1008
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loc$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1009
    :cond_b
    if-eqz v0, :cond_c

    const-wide/32 v6, 0x40000000

    invoke-virtual {p0, v6, v7}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1010
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$Prvt$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1011
    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1013
    .restart local v6    # "nlength":I
    :goto_0
    const/4 v7, 0x0

    .line 1014
    .local v7, "counter":I
    :goto_1
    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 1015
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1016
    :cond_d
    invoke-virtual {p1, v5, v4, v1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v8

    iput-object v8, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 1017
    instance-of v8, p3, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_12

    .line 1019
    move-object v8, p3

    check-cast v8, Lgnu/expr/QuoteExp;

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 1020
    .local v8, "val":Ljava/lang/Object;
    iget-object v9, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1023
    iget-object v9, p2, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v9, v8}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v9

    .line 1024
    .local v9, "literal":Lgnu/expr/Literal;
    iget-object v10, v9, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v10, :cond_e

    .line 1025
    iget-object v10, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iget-object v11, p2, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 1026
    .end local v9    # "literal":Lgnu/expr/Literal;
    :cond_e
    goto :goto_2

    .line 1027
    :cond_f
    instance-of v9, v4, Lgnu/bytecode/PrimType;

    if-nez v9, :cond_10

    const-string v9, "java.lang.String"

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1030
    :cond_10
    instance-of v9, v8, Lgnu/text/Char;

    if-eqz v9, :cond_11

    .line 1031
    move-object v9, v8

    check-cast v9, Lgnu/text/Char;

    invoke-virtual {v9}, Lgnu/text/Char;->intValue()I

    move-result v9

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v8

    .line 1032
    :cond_11
    iget-object v9, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v9, v8, p1}, Lgnu/bytecode/Field;->setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V

    .line 1033
    return-void

    .line 1038
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "nlength":I
    .end local v7    # "counter":I
    .end local v8    # "val":Ljava/lang/Object;
    :cond_12
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz p3, :cond_14

    instance-of v5, p3, Lgnu/expr/ClassExp;

    if-nez v5, :cond_14

    .line 1042
    :cond_13
    invoke-static {p0, p3, p2}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1044
    :cond_14
    return-void
.end method

.method public makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "value"    # Lgnu/expr/Expression;

    .line 959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 960
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0, p1, p2}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 961
    return-void
.end method

.method makeIndirectLocationFor()Lgnu/mapping/Location;
    .locals 2

    .line 1049
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 1051
    .local v0, "sym":Lgnu/mapping/Symbol;
    :goto_0
    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v1

    return-object v1
.end method

.method public maybeIndirectBinding(Lgnu/expr/Compilation;)V
    .locals 2
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 614
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object v1, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v0, v1, :cond_2

    .line 616
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 617
    :cond_2
    return-void
.end method

.method public final needsContext()Z
    .locals 1

    .line 493
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final needsExternalAccess()Z
    .locals 5

    .line 485
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x80020

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v2, 0x200020

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needsInit()Z
    .locals 2

    .line 686
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final nextDecl()Lgnu/expr/Declaration;
    .locals 1

    .line 114
    iget-object v0, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public noteValue(Lgnu/expr/Expression;)V
    .locals 2
    .param p1, "value"    # Lgnu/expr/Expression;

    .line 722
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_1

    .line 724
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    .line 725
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    iput-object p0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 726
    :cond_0
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-eq v0, p1, :cond_3

    .line 730
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/LambdaExp;

    iput-object v1, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 732
    :cond_2
    iput-object v1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 734
    :cond_3
    :goto_0
    return-void
.end method

.method public printInfo(Lgnu/mapping/OutPort;)V
    .locals 2
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 869
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 870
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->printInfo(Ljava/lang/StringBuffer;)V

    .line 871
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method public printInfo(Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 876
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 888
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 889
    iget v0, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 904
    const-string v0, "/fl:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    const-string v0, "(ignorable)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 909
    .local v0, "tx":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 910
    .local v1, "t":Lgnu/bytecode/Type;
    const-string v2, "::"

    if-eqz v0, :cond_1

    instance-of v3, v0, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_1

    .line 912
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 913
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 915
    :cond_1
    iget-object v3, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v3, :cond_2

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v1, v3, :cond_2

    .line 917
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 920
    :cond_2
    :goto_0
    iget-object v2, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v2, :cond_3

    .line 922
    const-string v2, "(base:#"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    iget-object v2, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    iget v2, v2, Lgnu/expr/Declaration;->id:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 924
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 926
    :cond_3
    return-void
.end method

.method public pushIndirectBinding(Lgnu/expr/Compilation;)V
    .locals 6
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 771
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 772
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    if-nez v1, :cond_0

    .line 775
    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/bytecode/Type;

    .line 776
    .local v1, "args":[Lgnu/bytecode/Type;
    const/4 v2, 0x0

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 777
    const/4 v2, 0x1

    sget-object v3, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v3, v1, v2

    .line 778
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v4, 0x9

    const-string v5, "make"

    invoke-virtual {v2, v5, v1, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 783
    .end local v1    # "args":[Lgnu/bytecode/Type;
    :cond_0
    iget-object v1, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 784
    return-void
.end method

.method public final setAlias(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 583
    const-wide/16 v0, 0x100

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanCall()V
    .locals 3

    .line 636
    const/4 v0, 0x1

    const-wide/16 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 637
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 639
    :cond_0
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 2
    .param p1, "called"    # Z

    .line 633
    const-wide/16 v0, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setCanRead()V
    .locals 3

    .line 627
    const/4 v0, 0x1

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 628
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 630
    :cond_0
    return-void
.end method

.method public final setCanRead(Z)V
    .locals 2
    .param p1, "read"    # Z

    .line 623
    const-wide/16 v0, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 624
    return-void
.end method

.method public final setCanWrite()V
    .locals 4

    .line 652
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 653
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 655
    :cond_0
    return-void
.end method

.method public final setCanWrite(Z)V
    .locals 4
    .param p1, "written"    # Z

    .line 646
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    goto :goto_0

    .line 647
    :cond_0
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 648
    :goto_0
    return-void
.end method

.method public setCode(I)V
    .locals 2
    .param p1, "code"    # I

    .line 51
    if-gez p1, :cond_0

    .line 52
    iput p1, p0, Lgnu/expr/Declaration;->id:I

    .line 53
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "code must be negative"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .line 819
    iput-object p1, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 820
    return-void
.end method

.method public final setFlag(J)V
    .locals 2
    .param p1, "flag"    # J

    .line 543
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 544
    return-void
.end method

.method public final setFlag(ZJ)V
    .locals 4
    .param p1, "setting"    # Z
    .param p2, "flag"    # J

    .line 537
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    or-long/2addr v0, p2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    goto :goto_0

    .line 538
    :cond_0
    iget-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lgnu/expr/Declaration;->flags:J

    .line 539
    :goto_0
    return-void
.end method

.method public final setFluid(Z)V
    .locals 2
    .param p1, "fluid"    # Z

    .line 589
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setIndirectBinding(Z)V
    .locals 2
    .param p1, "indirectBinding"    # Z

    .line 609
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 610
    return-void
.end method

.method public final setLine(I)V
    .locals 1
    .param p1, "lineno"    # I

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setLine(II)V

    .line 834
    return-void
.end method

.method public final setLine(II)V
    .locals 1
    .param p1, "lineno"    # I
    .param p2, "colno"    # I

    .line 824
    if-gez p1, :cond_0

    .line 825
    const/4 p1, 0x0

    .line 826
    :cond_0
    if-gez p2, :cond_1

    .line 827
    const/4 p2, 0x0

    .line 828
    :cond_1
    shl-int/lit8 v0, p1, 0xc

    add-int/2addr v0, p2

    iput v0, p0, Lgnu/expr/Declaration;->position:I

    .line 829
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 2
    .param p1, "location"    # Lgnu/text/SourceLocator;

    .line 813
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 814
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setLine(II)V

    .line 815
    return-void
.end method

.method public final setName(Ljava/lang/Object;)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public final setNext(Lgnu/expr/Declaration;)V
    .locals 0
    .param p1, "next"    # Lgnu/expr/Declaration;

    .line 115
    iput-object p1, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setPrivate(Z)V
    .locals 2
    .param p1, "isPrivate"    # Z

    .line 553
    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 554
    return-void
.end method

.method public final setProcedureDecl(Z)V
    .locals 2
    .param p1, "val"    # Z

    .line 593
    const-wide/16 v0, 0x80

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    return-void
.end method

.method public final setSimple(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 128
    const-wide/16 v0, 0x40

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 129
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setSimple(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public final setSyntax()V
    .locals 2

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 135
    const-wide/32 v0, 0x2000c000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 136
    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 79
    iput-object p1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 80
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 81
    :cond_0
    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 82
    return-void
.end method

.method public final setTypeExp(Lgnu/expr/Expression;)V
    .locals 3
    .param p1, "typeExp"    # Lgnu/expr/Expression;

    .line 86
    iput-object p1, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "t":Lgnu/bytecode/Type;
    instance-of v1, p1, Lgnu/expr/TypeValue;

    if-eqz v1, :cond_0

    .line 89
    move-object v1, p1

    check-cast v1, Lgnu/expr/TypeValue;

    invoke-interface {v1}, Lgnu/expr/TypeValue;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v0

    .line 92
    :goto_0
    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 94
    :cond_1
    iput-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 95
    iget-object v1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 96
    :cond_2
    return-void
.end method

.method public final setValue(Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "value"    # Lgnu/expr/Expression;

    .line 405
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-void
.end method

.method shouldEarlyInit()Z
    .locals 2

    .line 424
    const-wide/32 v0, 0x20000000

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isCompiletimeConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Declaration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
