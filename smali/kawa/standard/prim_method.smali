.class public Lkawa/standard/prim_method;
.super Lkawa/lang/Syntax;
.source "prim_method.java"


# static fields
.field public static final interface_method:Lkawa/standard/prim_method;

.field public static final op1:Lkawa/standard/prim_method;

.field private static pattern3:Lkawa/lang/Pattern;

.field private static pattern4:Lkawa/lang/Pattern;

.field public static final static_method:Lkawa/standard/prim_method;

.field public static final virtual_method:Lkawa/standard/prim_method;


# instance fields
.field op_code:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb6

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    .line 11
    sget-object v0, Lkawa/standard/prim_method;->virtual_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-virtual-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb8

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    .line 14
    sget-object v0, Lkawa/standard/prim_method;->static_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-static-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lkawa/standard/prim_method;

    const/16 v1, 0xb9

    invoke-direct {v0, v1}, Lkawa/standard/prim_method;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    .line 17
    sget-object v0, Lkawa/standard/prim_method;->interface_method:Lkawa/standard/prim_method;

    const-string v1, "primitive-interface-method"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lkawa/standard/prim_method;

    invoke-direct {v0}, Lkawa/standard/prim_method;-><init>()V

    sput-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    .line 20
    sget-object v0, Lkawa/standard/prim_method;->op1:Lkawa/standard/prim_method;

    const-string v1, "primitive-op1"

    invoke-virtual {v0, v1}, Lkawa/standard/prim_method;->setName(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    .line 23
    new-instance v0, Lkawa/lang/ListPat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lkawa/lang/ListPat;-><init>(I)V

    sput-object v0, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "opcode"    # I

    .line 30
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 31
    iput p1, p0, Lkawa/standard/prim_method;->op_code:I

    .line 32
    return-void
.end method


# virtual methods
.method opcode()I
    .locals 1

    .line 27
    iget v0, p0, Lkawa/standard/prim_method;->op_code:I

    return v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 17
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 40
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Object;

    .line 41
    .local v4, "match":[Ljava/lang/Object;
    iget v0, v1, Lkawa/standard/prim_method;->op_code:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lkawa/standard/prim_method;->pattern3:Lkawa/lang/Pattern;

    invoke-virtual {v0, v2, v4, v6}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    sget-object v0, Lkawa/standard/prim_method;->pattern4:Lkawa/lang/Pattern;

    invoke-virtual {v0, v2, v4, v5}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong number of arguments to "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "(opcode:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, v1, Lkawa/standard/prim_method;->op_code:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 46
    :cond_2
    :goto_0
    const/4 v0, 0x3

    aget-object v7, v4, v0

    instance-of v7, v7, Lgnu/lists/LList;

    if-nez v7, :cond_3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing/invalid parameter list in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/prim_method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 48
    :cond_3
    aget-object v0, v4, v0

    check-cast v0, Lgnu/lists/LList;

    .line 50
    .local v0, "argp":Lgnu/lists/LList;
    invoke-virtual {v0}, Lgnu/lists/LList;->size()I

    move-result v7

    .line 51
    .local v7, "narg":I
    new-array v14, v7, [Lgnu/bytecode/Type;

    .line 52
    .local v14, "args":[Lgnu/bytecode/Type;
    const/4 v8, 0x0

    move-object v15, v0

    .end local v0    # "argp":Lgnu/lists/LList;
    .local v8, "i":I
    .local v15, "argp":Lgnu/lists/LList;
    :goto_1
    if-ge v8, v7, :cond_4

    .line 54
    move-object v0, v15

    check-cast v0, Lgnu/lists/Pair;

    .line 55
    .local v0, "p":Lgnu/lists/Pair;
    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v9

    aput-object v9, v14, v8

    .line 56
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lgnu/lists/LList;

    .line 52
    .end local v0    # "p":Lgnu/lists/Pair;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 58
    .end local v8    # "i":I
    :cond_4
    new-instance v0, Lgnu/lists/Pair;

    const/4 v8, 0x2

    aget-object v8, v4, v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v13

    .line 60
    .local v13, "rtype":Lgnu/bytecode/Type;
    iget v0, v1, Lkawa/standard/prim_method;->op_code:I

    if-nez v0, :cond_5

    .line 62
    aget-object v0, v4, v6

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 63
    .local v0, "opcode":I
    new-instance v5, Lgnu/expr/PrimProcedure;

    invoke-direct {v5, v0, v13, v14}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    move-object v0, v5

    .line 64
    .local v0, "proc":Lgnu/expr/PrimProcedure;
    move-object v6, v13

    goto/16 :goto_5

    .line 67
    .end local v0    # "proc":Lgnu/expr/PrimProcedure;
    :cond_5
    const/4 v8, 0x0

    .line 68
    .local v8, "cl":Lgnu/bytecode/ClassType;
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v3, v0}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 69
    .local v0, "ctype":Lgnu/bytecode/Type;
    if-eqz v0, :cond_6

    .line 70
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_2

    .line 69
    :cond_6
    move-object/from16 v16, v0

    .line 73
    .end local v0    # "ctype":Lgnu/bytecode/Type;
    .local v16, "ctype":Lgnu/bytecode/Type;
    :goto_2
    :try_start_0
    move-object/from16 v0, v16

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v8, v0

    .line 74
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    move-object v0, v8

    goto :goto_4

    .line 76
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    if-nez v8, :cond_7

    .line 80
    const/16 v9, 0x65

    .local v9, "code":C
    goto :goto_3

    .line 83
    .end local v9    # "code":C
    :cond_7
    const/16 v9, 0x77

    .line 84
    .restart local v9    # "code":C
    invoke-virtual {v8, v5}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    .line 86
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v5, v4, v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v9, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object v0, v8

    .line 89
    .end local v8    # "cl":Lgnu/bytecode/ClassType;
    .end local v9    # "code":C
    .local v0, "cl":Lgnu/bytecode/ClassType;
    :goto_4
    aget-object v5, v4, v6

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_8

    aget-object v5, v4, v6

    check-cast v5, Lgnu/lists/Pair;

    move-object v8, v5

    .local v8, "p":Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v9, "quote"

    if-ne v5, v9, :cond_8

    .line 91
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    .line 92
    .end local v8    # "p":Lgnu/lists/Pair;
    :cond_8
    new-instance v5, Lgnu/expr/PrimProcedure;

    iget v9, v1, Lkawa/standard/prim_method;->op_code:I

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v8, v5

    move-object v10, v0

    move-object v12, v13

    move-object v6, v13

    .end local v13    # "rtype":Lgnu/bytecode/Type;
    .local v6, "rtype":Lgnu/bytecode/Type;
    move-object v13, v14

    invoke-direct/range {v8 .. v13}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    move-object v0, v5

    .line 95
    .end local v16    # "ctype":Lgnu/bytecode/Type;
    .local v0, "proc":Lgnu/expr/PrimProcedure;
    :goto_5
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v5
.end method
