.class public Lgnu/kawa/xml/CompileXmlFunctions;
.super Ljava/lang/Object;
.source "CompileXmlFunctions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateApplyMakeUnescapedData(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 12
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 13
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 14
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    .line 15
    new-instance v2, Lgnu/expr/QuoteExp;

    move-object v3, p3

    check-cast v3, Lgnu/kawa/xml/MakeUnescapedData;

    aget-object v1, v0, v1

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lgnu/kawa/xml/MakeUnescapedData;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 16
    :cond_0
    return-object p0
.end method

.method public static validateApplyTreeScanner(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 2
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 22
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 23
    move-object v0, p3

    check-cast v0, Lgnu/kawa/xml/TreeScanner;

    iget-object v0, v0, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    .line 24
    .local v0, "type":Lgnu/lists/NodePredicate;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/bytecode/Type;

    if-eqz v1, :cond_0

    .line 25
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/Type;

    invoke-static {v1}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 26
    :cond_0
    return-object p0
.end method
