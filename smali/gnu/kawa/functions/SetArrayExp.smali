.class Lgnu/kawa/functions/SetArrayExp;
.super Lgnu/expr/ApplyExp;
.source "CompilationHelpers.java"


# static fields
.field public static final typeSetArray:Lgnu/bytecode/ClassType;


# instance fields
.field elementType:Lgnu/bytecode/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const-string v0, "gnu.kawa.functions.SetArray"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V
    .locals 4
    .param p1, "array"    # Lgnu/expr/Expression;
    .param p2, "arrayType"    # Lgnu/bytecode/ArrayType;

    .line 177
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    new-instance v2, Lgnu/expr/QuoteExp;

    sget-object v3, Lgnu/kawa/functions/SetArrayExp;->typeSetArray:Lgnu/bytecode/ClassType;

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 178
    invoke-virtual {p2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    .line 179
    return-void
.end method


# virtual methods
.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 6
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;
    .param p3, "required"    # Lgnu/bytecode/Type;
    .param p4, "decl"    # Lgnu/expr/Declaration;

    .line 184
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 185
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 186
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lgnu/kawa/functions/SetArrayExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 189
    .local v1, "array":Lgnu/expr/Expression;
    const/4 v4, 0x3

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 190
    .local v4, "xargs":[Lgnu/expr/Expression;
    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 191
    aget-object v5, v0, v5

    aput-object v5, v4, v3

    .line 192
    aget-object v3, v0, v3

    aput-object v3, v4, v2

    .line 193
    new-instance v2, Lgnu/kawa/reflect/ArraySet;

    iget-object v3, p0, Lgnu/kawa/functions/SetArrayExp;->elementType:Lgnu/bytecode/Type;

    invoke-direct {v2, v3}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    .line 194
    .local v2, "arrSetter":Lgnu/kawa/reflect/ArraySet;
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v3, p3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 196
    .end local v1    # "array":Lgnu/expr/Expression;
    .end local v2    # "arrSetter":Lgnu/kawa/reflect/ArraySet;
    .end local v4    # "xargs":[Lgnu/expr/Expression;
    :cond_0
    return-object p1
.end method
