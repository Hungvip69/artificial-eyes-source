.class public Lgnu/kawa/xml/MakeProcInst;
.super Lgnu/kawa/xml/NodeConstructor;
.source "MakeProcInst.java"


# static fields
.field public static final makeProcInst:Lgnu/kawa/xml/MakeProcInst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/kawa/xml/MakeProcInst;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeProcInst;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/kawa/xml/NodeConstructor;-><init>()V

    return-void
.end method

.method public static procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 8
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 20
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "invalid type of processing-instruction target [XPTY0004]"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    :goto_0
    instance-of v0, p2, Lgnu/lists/XConsumer;

    if-nez v0, :cond_2

    .line 25
    return-void

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    instance-of v1, p1, Lgnu/mapping/Values;

    if-eqz v1, :cond_5

    .line 29
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "vals":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 32
    if-lez v2, :cond_3

    .line 33
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 34
    :cond_3
    aget-object v3, v1, v2

    invoke-static {v3, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .end local v1    # "vals":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_4
    goto :goto_2

    .line 38
    :cond_5
    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 39
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 40
    .local v1, "length":I
    const/4 v2, 0x0

    .line 41
    .local v2, "start":I
    :goto_3
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 43
    :cond_6
    sub-int v3, v1, v2

    new-array v3, v3, [C

    .line 44
    .local v3, "chars":[C
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 45
    move-object v5, p2

    check-cast v5, Lgnu/lists/XConsumer;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    array-length v7, v3

    invoke-interface {v5, v6, v3, v4, v7}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 47
    return-void
.end method

.method public static procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 52
    iget-object v0, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 53
    .local v0, "saved":Lgnu/lists/Consumer;
    invoke-static {p2}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 56
    .local v1, "out":Lgnu/lists/Consumer;
    :try_start_0
    invoke-static {p0, p1, v1}, Lgnu/kawa/xml/MakeProcInst;->procInst$C(Ljava/lang/Object;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v0, p2}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 61
    nop

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v2

    invoke-static {v0, p2}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    throw v2
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lgnu/kawa/xml/MakeProcInst;->procInst$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 67
    return-void
.end method

.method public compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 5
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/ConsumerTarget;

    .line 72
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 73
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 74
    .local v1, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 75
    const/4 v2, 0x1

    aget-object v2, v1, v2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 76
    invoke-virtual {p3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 77
    const-string v2, "gnu.kawa.xml.MakeProcInst"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "procInst$C"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 79
    return-void
.end method

.method public numArgs()I
    .locals 1

    .line 16
    const/16 v0, 0x2002

    return v0
.end method
