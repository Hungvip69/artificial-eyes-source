.class public Lgnu/expr/ReferenceExp;
.super Lgnu/expr/AccessExp;
.source "ReferenceExp.java"


# static fields
.field public static final DONT_DEREFERENCE:I = 0x2

.field public static final PREFER_BINDING2:I = 0x8

.field public static final PROCEDURE_NAME:I = 0x4

.field public static final TYPE_NAME:I = 0x10

.field static counter:I


# instance fields
.field id:I


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;)V
    .locals 1
    .param p1, "binding"    # Lgnu/expr/Declaration;

    .line 66
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    sget v0, Lgnu/expr/ReferenceExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ReferenceExp;->counter:I

    iput v0, p0, Lgnu/expr/ReferenceExp;->id:I

    .line 55
    iput-object p1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V
    .locals 1
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "binding"    # Lgnu/expr/Declaration;

    .line 59
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    sget v0, Lgnu/expr/ReferenceExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ReferenceExp;->counter:I

    iput v0, p0, Lgnu/expr/ReferenceExp;->id:I

    .line 60
    iput-object p1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 61
    iput-object p2, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 62
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 90
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v1, :cond_1

    .line 92
    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 93
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 97
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    goto/16 :goto_2

    .line 102
    :cond_2
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    :cond_3
    :try_start_0
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 110
    :goto_1
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto/16 :goto_2

    .line 112
    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception evaluating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v1, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    new-instance v0, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v0, p1, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    throw v0

    .line 122
    :cond_5
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    if-nez v0, :cond_6

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_8

    :cond_6
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v0, v2, :cond_8

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 128
    :cond_7
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 130
    :cond_8
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 153
    :cond_9
    iget-object v0, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v1, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v1}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget v1, v1, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v0, v0, v1

    .line 154
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    check-cast v0, Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v0

    .line 156
    :cond_a
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 157
    return-void

    .line 134
    :cond_b
    :goto_3
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    check-cast v2, Lgnu/mapping/Symbol;

    goto :goto_4

    :cond_c
    iget-object v2, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 137
    :goto_4
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lgnu/expr/ReferenceExp;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 140
    :cond_d
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 141
    invoke-virtual {v0, v2, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    goto :goto_5

    .line 144
    :cond_e
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v2, v1, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    if-eq v0, v3, :cond_f

    .line 149
    :goto_5
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 150
    return-void

    .line 147
    :cond_f
    new-instance p1, Lgnu/mapping/UnboundLocationException;

    invoke-direct {p1, v2, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 161
    instance-of v0, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lgnu/expr/ConsumerTarget;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ConsumerTarget;->compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget v1, p0, Lgnu/expr/ReferenceExp;->flags:I

    invoke-virtual {v0, p0, v1, p1, p2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 164
    :cond_1
    return-void
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 4
    .param p1, "mapper"    # Lgnu/kawa/util/IdentityHashTable;

    .line 168
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0, v1}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .line 169
    .local v0, "d":Lgnu/expr/Declaration;
    iget-object v1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 170
    .local v1, "s":Ljava/lang/Object;
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v1, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 171
    .local v2, "copy":Lgnu/expr/ReferenceExp;
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getFlags()I

    move-result v3

    iput v3, v2, Lgnu/expr/ReferenceExp;->flags:I

    .line 172
    return-object v2
.end method

.method public final getDontDereference()Z
    .locals 1

    .line 28
    iget v0, p0, Lgnu/expr/ReferenceExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 5

    .line 225
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 226
    .local v0, "decl":Lgnu/expr/Declaration;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    return-object v1

    .line 230
    :cond_1
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 232
    .local v1, "type":Lgnu/bytecode/Type;
    if-eqz v1, :cond_2

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v1, v2, :cond_3

    .line 234
    :cond_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 235
    .local v2, "value":Lgnu/expr/Expression;
    if-eqz v2, :cond_3

    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v2, v3, :cond_3

    .line 239
    iget-object v3, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 240
    .local v3, "save":Lgnu/expr/Expression;
    const/4 v4, 0x0

    iput-object v4, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 241
    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 242
    iput-object v3, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 245
    .end local v2    # "value":Lgnu/expr/Expression;
    .end local v3    # "save":Lgnu/expr/Expression;
    :cond_3
    sget-object v2, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v1, v2, :cond_4

    .line 246
    sget-object v1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 247
    :cond_4
    return-object v1

    .line 227
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_5
    :goto_0
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v1
.end method

.method public final isProcedureName()Z
    .locals 1

    .line 44
    iget v0, p0, Lgnu/expr/ReferenceExp;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingleValue()Z
    .locals 3

    .line 252
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    const-wide/32 v1, 0x40000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_0
    invoke-super {p0}, Lgnu/expr/AccessExp;->isSingleValue()Z

    move-result v0

    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v0}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .param p1, "ps"    # Lgnu/mapping/OutPort;

    .line 207
    const-string v0, "(Ref/"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 208
    iget v0, p0, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    .line 209
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    const/16 v1, 0x2f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 212
    :cond_0
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 213
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 218
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 220
    :cond_2
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public final setDontDereference(Z)V
    .locals 1
    .param p1, "setting"    # Z

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    return-void
.end method

.method public final setProcedureName(Z)V
    .locals 1
    .param p1, "setting"    # Z

    .line 50
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    .line 51
    return-void
.end method

.method public side_effects()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v0

    if-nez v0, :cond_0

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
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefExp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 4
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;
    .param p3, "required"    # Lgnu/bytecode/Type;
    .param p4, "decl"    # Lgnu/expr/Declaration;

    .line 183
    iget-object p4, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 184
    if-eqz p4, :cond_1

    const-wide/32 v0, 0x10000

    invoke-virtual {p4, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-static {p4}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object p4

    .line 187
    invoke-virtual {p4}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 190
    .local v0, "dval":Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 192
    .end local v0    # "dval":Lgnu/expr/Expression;
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Symbol;

    .line 197
    .local v0, "symbol":Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, "fval":Ljava/lang/Object;
    instance-of v3, v1, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_2

    .line 199
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, p2, p3, v2}, Lgnu/expr/QuoteExp;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 201
    .end local v0    # "symbol":Lgnu/mapping/Symbol;
    .end local v1    # "fval":Ljava/lang/Object;
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 202
    return-object p1
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 2

    .line 73
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 76
    .local v0, "dvalue":Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 79
    .end local v0    # "dvalue":Lgnu/expr/Expression;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 177
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
