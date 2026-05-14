.class public Lgnu/kawa/xml/MakeText;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeText.java"


# static fields
.field public static final makeText:Lgnu/kawa/xml/MakeText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeText;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeText;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 28
    if-eqz p0, :cond_1

    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 31
    .local v0, "saved":Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 34
    .local v1, "out":Lgnu/lists/Consumer;
    :try_start_0
    invoke-static {p0, v1}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 39
    nop

    .line 40
    return-void

    .line 38
    :catchall_0
    move-exception v2

    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v2

    .line 29
    .end local v0    # "saved":Lgnu/lists/Consumer;
    .end local v1    # "out":Lgnu/lists/Consumer;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/kawa/xml/MakeText;->text$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 45
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .line 19
    if-eqz p1, :cond_1

    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 22
    .local v0, "node":Lgnu/xml/NodeTree;
    new-instance v1, Lgnu/xml/XMLFilter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    invoke-static {p1, v1}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 23
    invoke-static {v0}, Lgnu/kawa/xml/KText;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v1

    return-object v1

    .line 20
    .end local v0    # "node":Lgnu/xml/NodeTree;
    :cond_1
    :goto_0
    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 51
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 52
    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 14
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/ConsumerTarget;

    .line 58
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 59
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 60
    .local v1, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 61
    .local v3, "texp":Lgnu/expr/Expression;
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v4

    .line 62
    .local v4, "cvar":Lgnu/bytecode/Variable;
    instance-of v5, v3, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_1

    .line 64
    move-object v5, v3

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 65
    .local v5, "tval":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 67
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 68
    .local v6, "str":Ljava/lang/String;
    invoke-static {v6}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "segments":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 70
    .local v8, "numSegments":I
    invoke-virtual {v4}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/ClassType;

    .line 71
    .local v9, "ctype":Lgnu/bytecode/ClassType;
    const/4 v10, 0x1

    new-array v10, v10, [Lgnu/bytecode/Type;

    sget-object v11, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v11, v10, v2

    const-string v2, "write"

    invoke-virtual {v9, v2, v10}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 73
    .local v2, "writer":Lgnu/bytecode/Method;
    const/4 v10, 0x0

    .line 74
    .local v10, "segStart":I
    const/4 v11, 0x0

    .local v11, "seg":I
    :goto_0
    if-ge v11, v8, :cond_0

    .line 76
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 77
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/2addr v12, v10

    .line 78
    .local v12, "segEnd":I
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 80
    move v10, v12

    .line 74
    .end local v12    # "segEnd":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 82
    .end local v11    # "seg":I
    :cond_0
    return-void

    .line 85
    .end local v2    # "writer":Lgnu/bytecode/Method;
    .end local v5    # "tval":Ljava/lang/Object;
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "segments":Ljava/lang/String;
    .end local v8    # "numSegments":I
    .end local v9    # "ctype":Lgnu/bytecode/ClassType;
    .end local v10    # "segStart":I
    :cond_1
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v5, p2

    invoke-virtual {v3, v5, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 86
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 87
    const-string v2, "gnu.xml.TextUtils"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v6, "textValue"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 89
    return-void
.end method

.method public numArgs()I
    .locals 1

    .line 15
    const/16 v0, 0x1001

    return v0
.end method
