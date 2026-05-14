.class public Lgnu/expr/Compilation;
.super Ljava/lang/Object;
.source "Compilation.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static final BODY_PARSED:I = 0x4

.field public static final CALL_WITH_CONSUMER:I = 0x2

.field public static final CALL_WITH_CONTINUATIONS:I = 0x4

.field public static final CALL_WITH_RETURN:I = 0x1

.field public static final CALL_WITH_TAILCALLS:I = 0x3

.field public static final CALL_WITH_UNSPECIFIED:I = 0x0

.field public static final CLASS_WRITTEN:I = 0xe

.field public static final COMPILED:I = 0xc

.field public static final COMPILE_SETUP:I = 0xa

.field public static final ERROR_SEEN:I = 0x64

.field public static final MODULE_NONSTATIC:I = -0x1

.field public static final MODULE_STATIC:I = 0x1

.field public static final MODULE_STATIC_DEFAULT:I = 0x0

.field public static final MODULE_STATIC_RUN:I = 0x2

.field public static final PROLOG_PARSED:I = 0x2

.field public static final PROLOG_PARSING:I = 0x1

.field public static final RESOLVED:I = 0x6

.field public static final WALKED:I = 0x8

.field public static apply0args:[Lgnu/bytecode/Type;

.field public static apply0method:Lgnu/bytecode/Method;

.field public static apply1args:[Lgnu/bytecode/Type;

.field public static apply1method:Lgnu/bytecode/Method;

.field public static apply2args:[Lgnu/bytecode/Type;

.field public static apply2method:Lgnu/bytecode/Method;

.field public static apply3method:Lgnu/bytecode/Method;

.field public static apply4method:Lgnu/bytecode/Method;

.field private static applyCpsArgs:[Lgnu/bytecode/Type;

.field public static applyCpsMethod:Lgnu/bytecode/Method;

.field public static applyNargs:[Lgnu/bytecode/Type;

.field public static applyNmethod:Lgnu/bytecode/Method;

.field public static applymethods:[Lgnu/bytecode/Method;

.field public static argsCallContextField:Lgnu/bytecode/Field;

.field private static chainUninitialized:Lgnu/expr/Compilation;

.field static checkArgCountMethod:Lgnu/bytecode/Method;

.field public static classPrefixDefault:Ljava/lang/String;

.field private static final current:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgnu/expr/Compilation;",
            ">;"
        }
    .end annotation
.end field

.field public static debugPrintExpr:Z

.field public static debugPrintFinalExpr:Z

.field public static defaultCallConvention:I

.field public static defaultClassFileVersion:I

.field public static emitSourceDebugExtAttr:Z

.field public static final falseConstant:Lgnu/bytecode/Field;

.field public static generateMainDefault:Z

.field public static getCallContextInstanceMethod:Lgnu/bytecode/Method;

.field public static getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocationMethod:Lgnu/bytecode/Method;

.field public static final getProcedureBindingMethod:Lgnu/bytecode/Method;

.field public static final getSymbolProcedureMethod:Lgnu/bytecode/Method;

.field public static final getSymbolValueMethod:Lgnu/bytecode/Method;

.field public static inlineOk:Z

.field public static final int1Args:[Lgnu/bytecode/Type;

.field public static javaStringType:Lgnu/bytecode/ClassType;

.field static makeListMethod:Lgnu/bytecode/Method;

.field public static moduleStatic:I

.field public static noArgsField:Lgnu/bytecode/Field;

.field public static final objArrayType:Lgnu/bytecode/ArrayType;

.field public static options:Lgnu/text/Options;

.field public static pcCallContextField:Lgnu/bytecode/Field;

.field public static procCallContextField:Lgnu/bytecode/Field;

.field public static scmBooleanType:Lgnu/bytecode/ClassType;

.field public static scmKeywordType:Lgnu/bytecode/ClassType;

.field public static scmListType:Lgnu/bytecode/ClassType;

.field public static scmSequenceType:Lgnu/bytecode/ClassType;

.field static final setNameMethod:Lgnu/bytecode/Method;

.field public static final string1Arg:[Lgnu/bytecode/Type;

.field public static final sym1Arg:[Lgnu/bytecode/Type;

.field public static final trueConstant:Lgnu/bytecode/Field;

.field public static typeApplet:Lgnu/bytecode/ClassType;

.field public static typeCallContext:Lgnu/bytecode/ClassType;

.field public static typeClass:Lgnu/bytecode/ClassType;

.field public static typeClassType:Lgnu/bytecode/ClassType;

.field public static final typeConsumer:Lgnu/bytecode/ClassType;

.field public static typeEnvironment:Lgnu/bytecode/ClassType;

.field public static typeLanguage:Lgnu/bytecode/ClassType;

.field public static typeLocation:Lgnu/bytecode/ClassType;

.field public static typeMethodProc:Lgnu/bytecode/ClassType;

.field public static typeModuleBody:Lgnu/bytecode/ClassType;

.field public static typeModuleMethod:Lgnu/bytecode/ClassType;

.field public static typeModuleWithContext:Lgnu/bytecode/ClassType;

.field public static typeObject:Lgnu/bytecode/ClassType;

.field public static typeObjectType:Lgnu/bytecode/ClassType;

.field public static typePair:Lgnu/bytecode/ClassType;

.field public static typeProcedure:Lgnu/bytecode/ClassType;

.field public static typeProcedure0:Lgnu/bytecode/ClassType;

.field public static typeProcedure1:Lgnu/bytecode/ClassType;

.field public static typeProcedure2:Lgnu/bytecode/ClassType;

.field public static typeProcedure3:Lgnu/bytecode/ClassType;

.field public static typeProcedure4:Lgnu/bytecode/ClassType;

.field public static typeProcedureArray:[Lgnu/bytecode/ClassType;

.field public static typeProcedureN:Lgnu/bytecode/ClassType;

.field public static typeRunnable:Lgnu/bytecode/ClassType;

.field public static typeServlet:Lgnu/bytecode/ClassType;

.field public static typeString:Lgnu/bytecode/ClassType;

.field public static typeSymbol:Lgnu/bytecode/ClassType;

.field public static typeType:Lgnu/bytecode/ClassType;

.field public static typeValues:Lgnu/bytecode/ClassType;

.field public static warnAsError:Lgnu/text/Options$OptionInfo;

.field public static warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

.field public static warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

.field public static warnUnknownMember:Lgnu/text/Options$OptionInfo;


# instance fields
.field callContextVar:Lgnu/bytecode/Variable;

.field callContextVarForInit:Lgnu/bytecode/Variable;

.field public classPrefix:Ljava/lang/String;

.field classes:[Lgnu/bytecode/ClassType;

.field clinitChain:Lgnu/expr/Initializer;

.field clinitMethod:Lgnu/bytecode/Method;

.field public curClass:Lgnu/bytecode/ClassType;

.field public curLambda:Lgnu/expr/LambdaExp;

.field public currentOptions:Lgnu/text/Options;

.field protected current_scope:Lgnu/expr/ScopeExp;

.field public explicit:Z

.field public exprStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lgnu/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field forNameHelper:Lgnu/bytecode/Method;

.field fswitch:Lgnu/bytecode/SwitchState;

.field fswitchIndex:Lgnu/bytecode/Field;

.field public generateMain:Z

.field public immediate:Z

.field private keyUninitialized:I

.field langOptions:I

.field protected language:Lgnu/expr/Language;

.field public lexer:Lgnu/text/Lexer;

.field public lexical:Lgnu/expr/NameLookup;

.field litTable:Lgnu/expr/LitTable;

.field loader:Lgnu/bytecode/ArrayClassLoader;

.field localFieldIndex:I

.field public mainClass:Lgnu/bytecode/ClassType;

.field public mainLambda:Lgnu/expr/ModuleExp;

.field maxSelectorValue:I

.field protected messages:Lgnu/text/SourceMessages;

.field public method:Lgnu/bytecode/Method;

.field method_counter:I

.field public minfo:Lgnu/expr/ModuleInfo;

.field public moduleClass:Lgnu/bytecode/ClassType;

.field moduleInstanceMainField:Lgnu/bytecode/Field;

.field moduleInstanceVar:Lgnu/bytecode/Variable;

.field public mustCompile:Z

.field private nextUninitialized:Lgnu/expr/Compilation;

.field numClasses:I

.field pedantic:Z

.field public pendingImports:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field public thisDecl:Lgnu/bytecode/Variable;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/Compilation;->debugPrintExpr:Z

    .line 112
    new-instance v1, Lgnu/text/Options;

    invoke-direct {v1}, Lgnu/text/Options;-><init>()V

    sput-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    .line 113
    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "warn if no compiler-visible binding for a variable"

    const-string v4, "warn-undefined-variable"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v2, v3}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    .line 117
    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "warn if referencing an unknown method or field"

    const-string v4, "warn-unknown-member"

    invoke-virtual {v1, v4, v5, v2, v3}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    .line 121
    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    sget-object v2, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    const-string v3, "warn if invoke calls an unknown method (subsumed by warn-unknown-member)"

    const-string v4, "warn-invoke-unknown-method"

    invoke-virtual {v1, v4, v5, v2, v3}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    .line 125
    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "Make all warnings into errors"

    const-string v4, "warn-as-error"

    invoke-virtual {v1, v4, v5, v2, v3}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    .line 160
    const/high16 v1, 0x310000    # 4.49994E-39f

    sput v1, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 201
    sput v0, Lgnu/expr/Compilation;->moduleStatic:I

    .line 232
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    sput-object v1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    .line 233
    const-string v1, "java.lang.Boolean"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    .line 234
    const-string v1, "java.lang.String"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    .line 235
    sget-object v1, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    sput-object v1, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    .line 236
    const-string v1, "gnu.expr.Keyword"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    .line 237
    const-string v1, "gnu.lists.Sequence"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    .line 238
    const-string v1, "gnu.lists.LList"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    .line 239
    const-string v1, "gnu.lists.Pair"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    .line 240
    sget-object v1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 241
    const-string v1, "java.lang.Runnable"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    .line 242
    const-string v1, "gnu.bytecode.Type"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    .line 243
    const-string v1, "gnu.bytecode.ObjectType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeObjectType:Lgnu/bytecode/ClassType;

    .line 245
    sget-object v1, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    sput-object v1, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    .line 246
    const-string v1, "gnu.bytecode.ClassType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    .line 247
    const-string v1, "gnu.mapping.Procedure"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    .line 249
    const-string v1, "gnu.expr.Language"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    .line 251
    const-string v1, "gnu.mapping.Environment"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    .line 253
    const-string v1, "gnu.mapping.Location"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 255
    const-string v1, "gnu.mapping.Symbol"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    .line 257
    sget-object v1, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v2, "getSymbolValue"

    invoke-virtual {v1, v2, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->getSymbolValueMethod:Lgnu/bytecode/Method;

    .line 259
    sget-object v1, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v2, "getSymbolProcedure"

    invoke-virtual {v1, v2, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->getSymbolProcedureMethod:Lgnu/bytecode/Method;

    .line 261
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v4, "get"

    invoke-virtual {v1, v4, v2, v3, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    .line 264
    sget-object v1, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v4, "getProcedure"

    invoke-virtual {v1, v4, v2, v3, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->getProcedureBindingMethod:Lgnu/bytecode/Method;

    .line 267
    sget-object v1, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    .line 269
    sget-object v1, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v2, "FALSE"

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    .line 272
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v2, "setName"

    invoke-virtual {v1, v2, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->setNameMethod:Lgnu/bytecode/Method;

    .line 276
    new-array v1, v5, [Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v2, v1, v0

    sput-object v1, Lgnu/expr/Compilation;->int1Args:[Lgnu/bytecode/Type;

    .line 277
    new-array v1, v5, [Lgnu/bytecode/Type;

    sget-object v2, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v2, v1, v0

    sput-object v1, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    .line 278
    sget-object v1, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sput-object v1, Lgnu/expr/Compilation;->sym1Arg:[Lgnu/bytecode/Type;

    .line 280
    sget-object v1, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v2, "getLocation"

    invoke-virtual {v1, v2, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/Compilation;->getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

    .line 284
    const/4 v1, 0x2

    new-array v3, v1, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v4, v3, v0

    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v4, v3, v5

    .line 285
    .local v3, "args":[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    sget-object v6, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v7, 0x11

    invoke-virtual {v4, v2, v3, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

    .line 291
    .end local v3    # "args":[Lgnu/bytecode/Type;
    new-array v2, v1, [Lgnu/bytecode/Type;

    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v3, v2, v0

    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v3, v2, v5

    .line 292
    .local v2, "makeListArgs":[Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    sget-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v6, "makeList"

    const/16 v8, 0x9

    invoke-virtual {v3, v6, v2, v4, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    .line 297
    .end local v2    # "makeListArgs":[Lgnu/bytecode/Type;
    sget-object v2, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v6, "getCurrent"

    invoke-virtual {v2, v6, v3, v4, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

    .line 301
    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sput-object v2, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .line 302
    new-array v2, v5, [Lgnu/bytecode/Type;

    sget-object v3, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v3, v2, v0

    sput-object v2, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    .line 303
    new-array v2, v1, [Lgnu/bytecode/Type;

    sget-object v3, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v3, v2, v0

    sget-object v3, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v3, v2, v5

    sput-object v2, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    .line 304
    new-array v2, v5, [Lgnu/bytecode/Type;

    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v3, v2, v0

    sput-object v2, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    .line 308
    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v6, "apply0"

    invoke-virtual {v2, v6, v3, v4, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    .line 319
    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v6, "apply1"

    invoke-virtual {v2, v6, v3, v4, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    .line 321
    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v6, "apply2"

    invoke-virtual {v2, v6, v3, v4, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    .line 323
    const/4 v2, 0x3

    new-array v3, v2, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v3, v0

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v3, v5

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v3, v1

    .line 324
    .local v3, "apply3args":[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v6, "apply3"

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v6, v3, v7, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    .line 326
    const/4 v4, 0x4

    new-array v6, v4, [Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v7, v6, v0

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v7, v6, v5

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v7, v6, v1

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v7, v6, v2

    .line 327
    .local v6, "apply4args":[Lgnu/bytecode/Type;
    sget-object v7, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v9, "apply4"

    sget-object v10, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v9, v6, v10, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v7

    sput-object v7, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    .line 329
    sget-object v7, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v9, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    sget-object v10, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const-string v11, "applyN"

    invoke-virtual {v7, v11, v9, v10, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v7

    sput-object v7, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    .line 331
    new-array v7, v1, [Lgnu/bytecode/Type;

    .line 332
    .local v7, "args":[Lgnu/bytecode/Type;
    sget-object v9, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v9, v7, v0

    .line 333
    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v9, v7, v5

    .line 334
    sget-object v9, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v10, "checkArgCount"

    sget-object v11, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v9, v10, v7, v11, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v8

    sput-object v8, Lgnu/expr/Compilation;->checkArgCountMethod:Lgnu/bytecode/Method;

    .line 339
    .end local v3    # "apply3args":[Lgnu/bytecode/Type;
    .end local v6    # "apply4args":[Lgnu/bytecode/Type;
    .end local v7    # "args":[Lgnu/bytecode/Type;
    const/4 v3, 0x6

    new-array v3, v3, [Lgnu/bytecode/Method;

    sget-object v6, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    aput-object v6, v3, v0

    sget-object v6, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    aput-object v6, v3, v5

    sget-object v6, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    aput-object v6, v3, v1

    sget-object v6, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    aput-object v6, v3, v2

    sget-object v6, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    aput-object v6, v3, v4

    sget-object v6, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    const/4 v7, 0x5

    aput-object v6, v3, v7

    sput-object v3, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    .line 343
    const-string v3, "gnu.mapping.Procedure0"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    .line 345
    const-string v3, "gnu.mapping.Procedure1"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    .line 347
    const-string v3, "gnu.mapping.Procedure2"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    .line 349
    const-string v3, "gnu.mapping.Procedure3"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    .line 351
    const-string v3, "gnu.mapping.Procedure4"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    .line 353
    const-string v3, "gnu.mapping.ProcedureN"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeProcedureN:Lgnu/bytecode/ClassType;

    .line 355
    const-string v3, "gnu.expr.ModuleBody"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    .line 357
    const-string v3, "gnu.expr.ModuleWithContext"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    .line 359
    const-string v3, "java.applet.Applet"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    .line 360
    const-string v3, "gnu.kawa.servlet.KawaServlet"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    .line 363
    const-string v3, "gnu.mapping.CallContext"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 365
    const-string v3, "gnu.lists.Consumer"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    .line 367
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "getInstance"

    invoke-virtual {v3, v6, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    .line 369
    const-string v3, "gnu.mapping.Values"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    .line 371
    sget-object v3, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v6, "noArgs"

    invoke-virtual {v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    .line 373
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "pc"

    invoke-virtual {v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    .line 375
    const-string v3, "gnu.mapping.MethodProc"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeMethodProc:Lgnu/bytecode/ClassType;

    .line 377
    const-string v3, "gnu.expr.ModuleMethod"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 380
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "values"

    invoke-virtual {v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->argsCallContextField:Lgnu/bytecode/Field;

    .line 382
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "proc"

    invoke-virtual {v3, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    .line 384
    new-array v3, v5, [Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v6, v3, v0

    sput-object v3, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    .line 385
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    sget-object v6, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v9, "apply"

    invoke-virtual {v3, v9, v6, v8, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/Compilation;->applyCpsMethod:Lgnu/bytecode/Method;

    .line 389
    new-array v3, v7, [Lgnu/bytecode/ClassType;

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    aput-object v6, v3, v0

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    aput-object v6, v3, v5

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    aput-object v6, v3, v1

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    aput-object v1, v3, v2

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    aput-object v1, v3, v4

    sput-object v3, Lgnu/expr/Compilation;->typeProcedureArray:[Lgnu/bytecode/ClassType;

    .line 396
    sput-boolean v0, Lgnu/expr/Compilation;->generateMainDefault:Z

    .line 459
    sput-boolean v5, Lgnu/expr/Compilation;->inlineOk:Z

    .line 620
    const-string v0, ""

    sput-object v0, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    .line 1080
    sput-boolean v5, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    .line 2971
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    sput-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 2
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "lexical"    # Lgnu/expr/NameLookup;

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    .line 129
    new-instance v0, Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-direct {v0, v1}, Lgnu/text/Options;-><init>(Lgnu/text/Options;)V

    iput-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    .line 398
    sget-boolean v0, Lgnu/expr/Compilation;->generateMainDefault:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->generateMain:Z

    .line 622
    sget-object v0, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    iput-object v0, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    .line 977
    iput-object p1, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    .line 978
    iput-object p2, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    .line 979
    iput-object p3, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    .line 980
    return-void
.end method

.method private checkLoop()V
    .locals 2

    .line 2696
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%do%loop"

    if-ne v0, v1, :cond_0

    .line 2698
    return-void

    .line 2697
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - bad loop state"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static demangle2(CC)C
    .locals 2
    .param p0, "char1"    # C
    .param p1, "char2"    # C

    .line 844
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    const/16 v1, 0x25

    sparse-switch v0, :sswitch_data_0

    .line 876
    const v0, 0xffff

    return v0

    .line 874
    :sswitch_0
    const/16 v0, 0x7c

    return v0

    .line 873
    :sswitch_1
    const/16 v0, 0x5e

    return v0

    .line 872
    :sswitch_2
    const/16 v0, 0x7e

    return v0

    .line 871
    :sswitch_3
    const/16 v0, 0x2a

    return v0

    .line 870
    :sswitch_4
    const/16 v0, 0x5c

    return v0

    .line 869
    :sswitch_5
    const/16 v0, 0x2f

    return v0

    .line 868
    :sswitch_6
    const/16 v0, 0x3b

    return v0

    .line 867
    :sswitch_7
    const/16 v0, 0x29

    return v0

    .line 866
    :sswitch_8
    const/16 v0, 0x7d

    return v0

    .line 865
    :sswitch_9
    const/16 v0, 0x5d

    return v0

    .line 864
    :sswitch_a
    const/16 v0, 0x3f

    return v0

    .line 863
    :sswitch_b
    const/16 v0, 0x2b

    return v0

    .line 862
    :sswitch_c
    return v1

    .line 861
    :sswitch_d
    const/16 v0, 0x23

    return v0

    .line 860
    :sswitch_e
    const/16 v0, 0x2d

    return v0

    .line 859
    :sswitch_f
    return v1

    .line 858
    :sswitch_10
    const/16 v0, 0x3c

    return v0

    .line 857
    :sswitch_11
    const/16 v0, 0x28

    return v0

    .line 856
    :sswitch_12
    const/16 v0, 0x7b

    return v0

    .line 855
    :sswitch_13
    const/16 v0, 0x5b

    return v0

    .line 854
    :sswitch_14
    const/16 v0, 0x3e

    return v0

    .line 853
    :sswitch_15
    const/16 v0, 0x21

    return v0

    .line 852
    :sswitch_16
    const/16 v0, 0x3d

    return v0

    .line 851
    :sswitch_17
    const/16 v0, 0x2e

    return v0

    .line 850
    :sswitch_18
    const/16 v0, 0x22

    return v0

    .line 849
    :sswitch_19
    const/16 v0, 0x2c

    return v0

    .line 848
    :sswitch_1a
    const/16 v0, 0x3a

    return v0

    .line 847
    :sswitch_1b
    const/16 v0, 0x40

    return v0

    .line 846
    :sswitch_1c
    const/16 v0, 0x26

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41006d -> :sswitch_1c
        0x410074 -> :sswitch_1b
        0x43006c -> :sswitch_1a
        0x43006d -> :sswitch_19
        0x440071 -> :sswitch_18
        0x440074 -> :sswitch_17
        0x450071 -> :sswitch_16
        0x450078 -> :sswitch_15
        0x470072 -> :sswitch_14
        0x4c0042 -> :sswitch_13
        0x4c0043 -> :sswitch_12
        0x4c0050 -> :sswitch_11
        0x4c0073 -> :sswitch_10
        0x4d0063 -> :sswitch_f
        0x4d006e -> :sswitch_e
        0x4e006d -> :sswitch_d
        0x500063 -> :sswitch_c
        0x50006c -> :sswitch_b
        0x510075 -> :sswitch_a
        0x520042 -> :sswitch_9
        0x520043 -> :sswitch_8
        0x520050 -> :sswitch_7
        0x530043 -> :sswitch_6
        0x53006c -> :sswitch_5
        0x530071 -> :sswitch_4
        0x530074 -> :sswitch_3
        0x54006c -> :sswitch_2
        0x550070 -> :sswitch_1
        0x560042 -> :sswitch_0
    .end sparse-switch
.end method

.method public static demangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 881
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static demangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "reversible"    # Z

    .line 886
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 887
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 888
    .local v1, "len":I
    const/4 v2, 0x0

    .line 889
    .local v2, "mangled":Z
    const/4 v3, 0x0

    .line 890
    .local v3, "predicate":Z
    const/4 v4, 0x0

    .line 891
    .local v4, "downCaseNext":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_9

    .line 893
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 894
    .local v6, "ch":C
    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 896
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 897
    const/4 v4, 0x0

    .line 900
    :cond_0
    const/4 v7, 0x1

    if-nez p1, :cond_2

    const/16 v8, 0x69

    if-ne v6, v8, :cond_2

    if-nez v5, :cond_2

    const/4 v8, 0x2

    if-le v1, v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x73

    if-ne v8, v9, :cond_2

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v8

    .local v9, "d":C
    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-nez v8, :cond_2

    .line 904
    const/4 v2, 0x1

    .line 905
    const/4 v3, 0x1

    .line 906
    add-int/lit8 v5, v5, 0x1

    .line 907
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v9}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 909
    :cond_1
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 910
    add-int/lit8 v5, v5, 0x1

    .line 911
    goto/16 :goto_2

    .line 915
    .end local v9    # "d":C
    :cond_2
    const/16 v8, 0x24

    if-ne v6, v8, :cond_5

    add-int/lit8 v9, v5, 0x2

    if-ge v9, v1, :cond_5

    .line 917
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 918
    .local v9, "c1":C
    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 919
    .local v10, "c2":C
    invoke-static {v9, v10}, Lgnu/expr/Compilation;->demangle2(CC)C

    move-result v11

    .line 920
    .local v11, "d":C
    const v12, 0xffff

    if-eq v11, v12, :cond_3

    .line 922
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 923
    add-int/lit8 v5, v5, 0x2

    .line 924
    const/4 v2, 0x1

    .line 925
    const/4 v4, 0x1

    .line 926
    goto :goto_2

    .line 928
    :cond_3
    const/16 v12, 0x54

    if-ne v9, v12, :cond_4

    const/16 v12, 0x6f

    if-ne v10, v12, :cond_4

    add-int/lit8 v12, v5, 0x3

    if-ge v12, v1, :cond_4

    add-int/lit8 v12, v5, 0x3

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v8, :cond_4

    .line 931
    const-string v8, "->"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    add-int/lit8 v5, v5, 0x3

    .line 933
    const/4 v2, 0x1

    .line 934
    const/4 v4, 0x1

    .line 935
    goto :goto_2

    .line 937
    .end local v9    # "c1":C
    .end local v10    # "c2":C
    :cond_4
    goto :goto_1

    .line 938
    .end local v11    # "d":C
    :cond_5
    if-nez p1, :cond_7

    if-le v5, v7, :cond_7

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v6}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 942
    const/16 v8, 0x2d

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 943
    const/4 v2, 0x1

    .line 944
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 946
    :cond_7
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 891
    .end local v6    # "ch":C
    :cond_8
    :goto_2
    add-int/2addr v5, v7

    goto/16 :goto_0

    .line 948
    .end local v5    # "i":I
    :cond_9
    if-eqz v3, :cond_a

    .line 949
    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 950
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_b
    move-object v5, p0

    :goto_3
    return-object v5
.end method

.method private dumpInitializers(Lgnu/expr/Initializer;)V
    .locals 1
    .param p1, "inits"    # Lgnu/expr/Initializer;

    .line 602
    invoke-static {p1}, Lgnu/expr/Initializer;->reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;

    move-result-object v0

    .line 603
    .local v0, "init":Lgnu/expr/Initializer;
    :goto_0
    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0, p0}, Lgnu/expr/Initializer;->emit(Lgnu/expr/Compilation;)V

    .line 603
    iget-object v0, v0, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    goto :goto_0

    .line 605
    .end local v0    # "init":Lgnu/expr/Initializer;
    :cond_0
    return-void
.end method

.method public static declared-synchronized findForImmediateLiterals(I)Lgnu/expr/Compilation;
    .locals 5
    .param p0, "key"    # I

    const-class v0, Lgnu/expr/Compilation;

    monitor-enter v0

    .line 2946
    const/4 v1, 0x0

    .line 2947
    .local v1, "prev":Lgnu/expr/Compilation;
    :try_start_0
    sget-object v2, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .line 2949
    .local v2, "comp":Lgnu/expr/Compilation;
    :goto_0
    iget-object v3, v2, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2950
    .local v3, "next":Lgnu/expr/Compilation;
    iget v4, v2, Lgnu/expr/Compilation;->keyUninitialized:I

    if-ne v4, p0, :cond_1

    .line 2952
    if-nez v1, :cond_0

    .line 2953
    sput-object v3, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    goto :goto_1

    .line 2955
    :cond_0
    iput-object v3, v1, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2956
    :goto_1
    const/4 v4, 0x0

    iput-object v4, v2, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2957
    monitor-exit v0

    return-object v2

    .line 2959
    :cond_1
    move-object v1, v2

    .line 2960
    move-object v2, v3

    .line 2961
    .end local v3    # "next":Lgnu/expr/Compilation;
    goto :goto_0

    .line 2945
    .end local v1    # "prev":Lgnu/expr/Compilation;
    .end local v2    # "comp":Lgnu/expr/Compilation;
    .end local p0    # "key":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static final getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 6
    .param p0, "clas"    # Lgnu/bytecode/ClassType;
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;

    .line 1154
    const-string v0, "<init>"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 1155
    .local v2, "meth":Lgnu/bytecode/Method;
    if-eqz v2, :cond_0

    .line 1156
    return-object v2

    .line 1158
    :cond_0
    instance-of v3, p1, Lgnu/expr/ClassExp;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v3, :cond_1

    .line 1160
    new-array v3, v4, [Lgnu/bytecode/Type;

    .line 1161
    .local v3, "args":[Lgnu/bytecode/Type;
    iget-object v5, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v5}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    aput-object v5, v3, v1

    goto :goto_0

    .line 1164
    .end local v3    # "args":[Lgnu/bytecode/Type;
    :cond_1
    sget-object v3, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .line 1165
    .restart local v3    # "args":[Lgnu/bytecode/Type;
    :goto_0
    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v4, v3, v1}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrent()Lgnu/expr/Compilation;
    .locals 1

    .line 2976
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Compilation;

    return-object v0
.end method

.method public static isValidJavaName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 720
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 721
    .local v0, "len":I
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 723
    :cond_0
    move v2, v0

    .local v2, "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_2

    .line 724
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 725
    return v1

    .line 726
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 722
    :cond_3
    :goto_0
    return v1
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 3
    .param p0, "value"    # Lgnu/expr/Expression;
    .param p1, "type"    # Lgnu/expr/Expression;

    .line 2788
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 2789
    .local v0, "exps":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2790
    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 2791
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/kawa/functions/Convert;->getInstance()Lgnu/kawa/functions/Convert;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 2792
    .local v1, "c":Lgnu/expr/QuoteExp;
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 1
    .param p0, "value"    # Lgnu/expr/Expression;
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 2803
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v0

    return-object v0
.end method

.method public static mangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 707
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mangleName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 744
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 745
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 746
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const-string v4, "*init*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 747
    const-string p0, "<init>"

    return-object p0

    .line 748
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 749
    nop

    .line 750
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_10

    .line 752
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 753
    if-eqz v6, :cond_2

    .line 755
    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v7

    .line 756
    const/4 v6, 0x0

    .line 758
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 760
    if-nez v5, :cond_3

    .line 761
    const-string v8, "$N"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    .line 764
    :cond_4
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_e

    const/16 v8, 0x5f

    if-ne v7, v8, :cond_5

    goto/16 :goto_7

    .line 766
    :cond_5
    const/16 v8, 0x24

    if-ne v7, v8, :cond_7

    .line 767
    if-le p1, v0, :cond_6

    const-string v7, "$$"

    goto :goto_2

    :cond_6
    const-string v7, "$"

    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    .line 770
    :cond_7
    sparse-switch v7, :sswitch_data_0

    .line 825
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 826
    shr-int/lit8 v8, v7, 0xc

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 827
    shr-int/lit8 v8, v7, 0x8

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 828
    shr-int/lit8 v8, v7, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 829
    and-int/lit8 v7, v7, 0xf

    invoke-static {v7, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 794
    :sswitch_0
    const-string v7, "$Tl"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 803
    :sswitch_1
    const-string v7, "$RC"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 823
    :sswitch_2
    const-string v7, "$VB"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 802
    :sswitch_3
    const-string v7, "$LC"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 822
    :sswitch_4
    const-string v7, "$Up"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 801
    :sswitch_5
    const-string v7, "$RB"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 800
    :sswitch_6
    const-string v7, "$LB"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 793
    :sswitch_7
    const-string v7, "$At"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 809
    :sswitch_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    .line 810
    :goto_3
    if-nez v2, :cond_9

    add-int/lit8 v8, v5, 0x1

    if-ne v8, v3, :cond_9

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 813
    invoke-static {v7}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v7

    invoke-virtual {v4, v1, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 814
    const-string v7, "is"

    invoke-virtual {v4, v1, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 817
    :cond_9
    const-string v7, "$Qu"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    goto/16 :goto_6

    .line 792
    :sswitch_9
    const-string v7, "$Gr"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 790
    :sswitch_a
    const-string v7, "$Eq"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 791
    :sswitch_b
    const-string v7, "$Ls"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 821
    :sswitch_c
    const-string v7, "$SC"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 820
    :sswitch_d
    const-string v7, "$Cl"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 789
    :sswitch_e
    const-string v7, "$Sl"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 796
    :sswitch_f
    const-string v7, "$Dt"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 774
    :sswitch_10
    const-string v7, "$Mn"

    if-eqz v2, :cond_a

    .line 775
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 778
    :cond_a
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v3, :cond_b

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    .line 779
    :goto_4
    const/16 v10, 0x3e

    if-ne v9, v10, :cond_c

    .line 781
    const-string v5, "$To$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 782
    move v5, v8

    goto :goto_5

    .line 784
    :cond_c
    invoke-static {v9}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-nez v8, :cond_d

    .line 785
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    :cond_d
    :goto_5
    goto :goto_6

    .line 797
    :sswitch_11
    const-string v7, "$Cm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 772
    :sswitch_12
    const-string v7, "$Pl"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 788
    :sswitch_13
    const-string v7, "$St"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 799
    :sswitch_14
    const-string v7, "$RP"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 798
    :sswitch_15
    const-string v7, "$LP"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 804
    :sswitch_16
    const-string v7, "$Sq"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 806
    :sswitch_17
    const-string v7, "$Am"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 795
    :sswitch_18
    const-string v7, "$Pc"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 807
    :sswitch_19
    const-string v7, "$Nm"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 805
    :sswitch_1a
    const-string v7, "$Dq"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 819
    :sswitch_1b
    const-string v7, "$Ex"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 831
    :goto_6
    if-nez v2, :cond_f

    .line 832
    const/4 v6, 0x1

    goto :goto_8

    .line 765
    :cond_e
    :goto_7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 750
    :cond_f
    :goto_8
    add-int/2addr v5, v0

    goto/16 :goto_1

    .line 835
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    move-object p0, p1

    :goto_9
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1b
        0x22 -> :sswitch_1a
        0x23 -> :sswitch_19
        0x25 -> :sswitch_18
        0x26 -> :sswitch_17
        0x27 -> :sswitch_16
        0x28 -> :sswitch_15
        0x29 -> :sswitch_14
        0x2a -> :sswitch_13
        0x2b -> :sswitch_12
        0x2c -> :sswitch_11
        0x2d -> :sswitch_10
        0x2e -> :sswitch_f
        0x2f -> :sswitch_e
        0x3a -> :sswitch_d
        0x3b -> :sswitch_c
        0x3c -> :sswitch_b
        0x3d -> :sswitch_a
        0x3e -> :sswitch_9
        0x3f -> :sswitch_8
        0x40 -> :sswitch_7
        0x5b -> :sswitch_6
        0x5d -> :sswitch_5
        0x5e -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public static mangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "reversible"    # Z

    .line 734
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 712
    if-eqz p0, :cond_1

    invoke-static {p0}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 713
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static mangleURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "name"    # Ljava/lang/String;

    .line 642
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 643
    .local v1, "hasSlash":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 644
    .local v4, "len":I
    const/4 v5, 0x6

    if-le v4, v5, :cond_1

    const-string v6, "class:"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 645
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 647
    :cond_1
    const/16 v5, 0x3a

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-le v4, v6, :cond_2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_2

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 650
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 651
    add-int/lit8 v4, v4, -0x5

    .line 652
    const/4 v1, 0x1

    goto :goto_1

    .line 654
    :cond_2
    if-le v4, v7, :cond_3

    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v8, "uri"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 657
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 658
    add-int/lit8 v4, v4, -0x4

    .line 660
    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 661
    .local v5, "start":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 664
    .local v8, "sbuf":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 665
    .local v9, "slash":I
    if-gez v9, :cond_4

    move v10, v4

    goto :goto_3

    :cond_4
    move v10, v9

    .line 666
    .local v10, "end":I
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 667
    .local v11, "first":Z
    :goto_4
    if-eqz v11, :cond_7

    if-eqz v1, :cond_7

    .line 670
    invoke-virtual {p0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 671
    .local v12, "host":Ljava/lang/String;
    sub-int v13, v10, v5

    if-le v13, v7, :cond_6

    const-string v13, "www."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 672
    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 674
    :cond_6
    invoke-static {v12, v8}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 675
    .end local v12    # "host":Ljava/lang/String;
    goto :goto_5

    .line 676
    :cond_7
    if-eq v5, v10, :cond_b

    .line 678
    const/16 v12, 0x2e

    if-nez v11, :cond_8

    .line 679
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 680
    :cond_8
    if-ne v10, v4, :cond_a

    .line 682
    invoke-virtual {p0, v12, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 683
    .local v12, "dot":I
    add-int/lit8 v13, v5, 0x1

    if-le v12, v13, :cond_a

    if-nez v11, :cond_a

    .line 686
    sub-int v13, v4, v12

    .line 687
    .local v13, "extLen":I
    if-le v13, v7, :cond_9

    if-ne v13, v6, :cond_a

    const-string v14, "html"

    invoke-virtual {p0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 690
    :cond_9
    sub-int/2addr v4, v13

    .line 691
    move v10, v4

    .line 692
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 696
    .end local v12    # "dot":I
    .end local v13    # "extLen":I
    :cond_a
    invoke-virtual {p0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    :cond_b
    :goto_5
    if-gez v9, :cond_c

    .line 699
    nop

    .line 702
    .end local v9    # "slash":I
    .end local v10    # "end":I
    .end local v11    # "first":Z
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 700
    .restart local v9    # "slash":I
    .restart local v10    # "end":I
    .restart local v11    # "first":Z
    :cond_c
    add-int/lit8 v5, v9, 0x1

    .line 701
    .end local v9    # "slash":I
    .end local v10    # "end":I
    .end local v11    # "first":Z
    goto :goto_2
.end method

.method private static putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 627
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 628
    .local v1, "dot":I
    if-lez v1, :cond_0

    .line 630
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 631
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 634
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    return-void
.end method

.method private registerClass(Lgnu/bytecode/ClassType;)V
    .locals 4
    .param p1, "new_class"    # Lgnu/bytecode/ClassType;

    .line 1084
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1085
    const/16 v0, 0x14

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1086
    :cond_0
    iget v0, p0, Lgnu/expr/Compilation;->numClasses:I

    iget-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 1088
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    .line 1089
    .local v0, "new_classes":[Lgnu/bytecode/ClassType;
    iget-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget v3, p0, Lgnu/expr/Compilation;->numClasses:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1090
    iput-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1092
    .end local v0    # "new_classes":[Lgnu/bytecode/ClassType;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x21

    :goto_1
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->addModifiers(I)V

    .line 1094
    iget-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lgnu/expr/Compilation;->numClasses:I

    if-lez v0, :cond_3

    .line 1097
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object p1, v0, v1

    .line 1098
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    aput-object v2, v0, v1

    .line 1100
    :cond_3
    iget-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/expr/Compilation;->numClasses:I

    aput-object p1, v0, v1

    .line 1101
    return-void
.end method

.method public static declared-synchronized registerForImmediateLiterals(Lgnu/expr/Compilation;)I
    .locals 4
    .param p0, "comp"    # Lgnu/expr/Compilation;

    const-class v0, Lgnu/expr/Compilation;

    monitor-enter v0

    .line 2932
    const/4 v1, 0x0

    .line 2933
    .local v1, "i":I
    :try_start_0
    sget-object v2, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .local v2, "c":Lgnu/expr/Compilation;
    :goto_0
    if-eqz v2, :cond_1

    .line 2935
    iget v3, v2, Lgnu/expr/Compilation;->keyUninitialized:I

    if-gt v1, v3, :cond_0

    .line 2936
    iget v3, v2, Lgnu/expr/Compilation;->keyUninitialized:I

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 2933
    :cond_0
    iget-object v3, v2, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    move-object v2, v3

    goto :goto_0

    .line 2938
    .end local v2    # "c":Lgnu/expr/Compilation;
    :cond_1
    iput v1, p0, Lgnu/expr/Compilation;->keyUninitialized:I

    .line 2939
    sget-object v2, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    iput-object v2, p0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2940
    sput-object p0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    monitor-exit v0

    return v1

    .line 2931
    .end local v1    # "i":I
    .end local p0    # "comp":Lgnu/expr/Compilation;
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static restoreCurrent(Lgnu/expr/Compilation;)V
    .locals 1
    .param p0, "saved"    # Lgnu/expr/Compilation;

    .line 2993
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2994
    return-void
.end method

.method public static setCurrent(Lgnu/expr/Compilation;)V
    .locals 1
    .param p0, "comp"    # Lgnu/expr/Compilation;

    .line 2981
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2982
    return-void
.end method

.method public static setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;
    .locals 2
    .param p0, "comp"    # Lgnu/expr/Compilation;

    .line 2986
    sget-object v0, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Compilation;

    .line 2987
    .local v0, "save":Lgnu/expr/Compilation;
    sget-object v1, Lgnu/expr/Compilation;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2988
    return-object v0
.end method

.method public static setupLiterals(I)V
    .locals 6
    .param p0, "key"    # I

    .line 2903
    invoke-static {p0}, Lgnu/expr/Compilation;->findForImmediateLiterals(I)Lgnu/expr/Compilation;

    move-result-object v0

    .line 2906
    .local v0, "comp":Lgnu/expr/Compilation;
    :try_start_0
    iget-object v1, v0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    iget-object v2, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2909
    .local v1, "clas":Ljava/lang/Class;
    iget-object v2, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    iget-object v2, v2, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .local v2, "init":Lgnu/expr/Literal;
    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2918
    iget-object v4, v2, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iget-object v5, v2, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2910
    iget-object v3, v2, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    move-object v2, v3

    goto :goto_0

    .line 2921
    .end local v2    # "init":Lgnu/expr/Literal;
    :cond_0
    iput-object v3, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2926
    .end local v1    # "clas":Ljava/lang/Class;
    nop

    .line 2927
    return-void

    .line 2923
    :catchall_0
    move-exception v1

    .line 2925
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Lgnu/mapping/WrappedException;

    const-string v3, "internal error"

    invoke-direct {v2, v3, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private startClassInit()Lgnu/bytecode/Method;
    .locals 5

    .line 1905
    iget-object v0, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v3, 0x9

    const-string v4, "<clinit>"

    invoke-virtual {v0, v4, v1, v2, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1908
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1910
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-boolean v1, p0, Lgnu/expr/Compilation;->generateMain:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1912
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 1914
    .local v1, "languageType":Lgnu/bytecode/ClassType;
    const-string v2, "registerEnvironment"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 1916
    .local v2, "registerMethod":Lgnu/bytecode/Method;
    if-eqz v2, :cond_1

    .line 1917
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1919
    .end local v1    # "languageType":Lgnu/bytecode/ClassType;
    .end local v2    # "registerMethod":Lgnu/bytecode/Method;
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    return-object v1
.end method

.method private varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 14
    .param p1, "source"    # Lgnu/expr/LambdaExp;
    .param p2, "singleArgs"    # I
    .param p3, "counter"    # Lgnu/bytecode/Variable;
    .param p4, "lastArgType"    # Lgnu/bytecode/Type;
    .param p5, "ctxVar"    # Lgnu/bytecode/Variable;

    .line 1830
    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 1831
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v3, p4

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1832
    .local v3, "elType":Lgnu/bytecode/Type;
    const-string v4, "java.lang.Object"

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    move v10, v4

    .line 1833
    .local v10, "mustConvert":Z
    if-eqz v1, :cond_0

    if-nez v10, :cond_0

    .line 1835
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1836
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1837
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "getRestArgsArray"

    invoke-virtual {v4, v6, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 1839
    :cond_0
    const/4 v4, 0x2

    if-nez v0, :cond_1

    if-nez v10, :cond_1

    .line 1840
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1901
    :goto_0
    move-object/from16 v11, p3

    goto/16 :goto_5

    .line 1843
    :cond_1
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 1844
    if-nez p3, :cond_4

    .line 1846
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v6

    .line 1847
    .end local p3    # "counter":Lgnu/bytecode/Variable;
    .local v6, "counter":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_2

    .line 1849
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1850
    sget-object v7, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v8, "getArgCount"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 1854
    :cond_2
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1855
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1857
    :goto_1
    if-eqz v0, :cond_3

    .line 1859
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1860
    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1862
    :cond_3
    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    move-object v11, v6

    goto :goto_2

    .line 1844
    .end local v6    # "counter":Lgnu/bytecode/Variable;
    .restart local p3    # "counter":Lgnu/bytecode/Variable;
    :cond_4
    move-object/from16 v11, p3

    .line 1864
    .end local p3    # "counter":Lgnu/bytecode/Variable;
    .local v11, "counter":Lgnu/bytecode/Variable;
    :goto_2
    invoke-virtual {v2, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1865
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 1866
    new-instance v6, Lgnu/bytecode/Label;

    invoke-direct {v6, v2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v12, v6

    .line 1867
    .local v12, "testLabel":Lgnu/bytecode/Label;
    new-instance v6, Lgnu/bytecode/Label;

    invoke-direct {v6, v2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v13, v6

    .line 1868
    .local v13, "loopTopLabel":Lgnu/bytecode/Label;
    invoke-virtual {v13, v2}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1869
    invoke-virtual {v2, v12}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1870
    invoke-virtual {v13, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1872
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1873
    invoke-virtual {v2, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1874
    if-eqz v1, :cond_5

    .line 1875
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_3

    .line 1877
    :cond_5
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1878
    :goto_3
    invoke-virtual {v2, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1879
    if-eqz v0, :cond_6

    .line 1881
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1882
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitAdd(Lgnu/bytecode/PrimType;)V

    .line 1884
    :cond_6
    if-eqz v1, :cond_7

    .line 1885
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "getArgAsObject"

    invoke-virtual {v4, v6, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_4

    .line 1887
    :cond_7
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 1888
    :goto_4
    if-eqz v10, :cond_8

    .line 1890
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1894
    :cond_8
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 1895
    invoke-virtual {v12, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1896
    const/4 v4, -0x1

    invoke-virtual {v2, v11, v4}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1897
    invoke-virtual {v2, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1898
    invoke-virtual {v2, v13}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V

    .line 1899
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 1901
    .end local v12    # "testLabel":Lgnu/bytecode/Label;
    .end local v13    # "loopTopLabel":Lgnu/bytecode/Label;
    :goto_5
    return-void
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 1
    .param p1, "new_class"    # Lgnu/bytecode/ClassType;

    .line 1105
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1107
    sget-boolean v0, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Language;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setStratum(Ljava/lang/String;)V

    .line 1109
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 1111
    :cond_1
    invoke-direct {p0, p1}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 1112
    sget v0, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 1113
    return-void
.end method

.method public addMainClass(Lgnu/expr/ModuleExp;)V
    .locals 4
    .param p1, "module"    # Lgnu/expr/ModuleExp;

    .line 1123
    invoke-virtual {p1, p0}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1124
    iget-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1125
    .local v0, "type":Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 1126
    .local v1, "interfaces":[Lgnu/bytecode/ClassType;
    if-eqz v1, :cond_0

    .line 1127
    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 1128
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 1129
    .local v2, "sup":Lgnu/bytecode/ClassType;
    if-nez v2, :cond_3

    .line 1131
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1132
    sget-object v2, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1134
    sget-object v2, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1136
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 1138
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1139
    sget-object v3, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/ClassType;->addInterface(Lgnu/bytecode/ClassType;)V

    .line 1140
    :cond_4
    invoke-virtual {v0, v2}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1142
    iput-object v0, p1, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 1143
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 1144
    iget-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-static {v3, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 1145
    return-void
.end method

.method public allocLocalField(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "name"    # Ljava/lang/String;

    .line 2371
    if-nez p2, :cond_0

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tmp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2373
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 2374
    .local v0, "field":Lgnu/bytecode/Field;
    return-object v0
.end method

.method callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V
    .locals 5
    .param p1, "clas"    # Lgnu/bytecode/ClassType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/ClassType;",
            "Ljava/util/Vector<",
            "Lgnu/bytecode/ClassType;",
            ">;)V"
        }
    .end annotation

    .line 1240
    .local p2, "seen":Ljava/util/Vector;, "Ljava/util/Vector<Lgnu/bytecode/ClassType;>;"
    if-nez p1, :cond_0

    .line 1241
    return-void

    .line 1243
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "name":Ljava/lang/String;
    const-string v1, "java.lang.Object"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    return-void

    .line 1247
    :cond_1
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    .local v1, "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 1248
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    if-ne v2, v0, :cond_2

    .line 1249
    return-void

    .line 1250
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1255
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 1256
    .local v1, "interfaces":[Lgnu/bytecode/ClassType;
    if-eqz v1, :cond_4

    .line 1258
    array-length v2, v1

    .line 1259
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1260
    aget-object v4, v1, v3

    invoke-virtual {p0, v4, p2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1259
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1263
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_4
    const/4 v2, 0x1

    .line 1264
    .local v2, "clEnvArgs":I
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1266
    instance-of v3, p1, Lgnu/expr/PairClassType;

    if-eqz v3, :cond_5

    .line 1267
    move-object v3, p1

    check-cast v3, Lgnu/expr/PairClassType;

    iget-object p1, v3, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 1272
    :cond_5
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v3

    .line 1278
    goto :goto_1

    .line 1275
    :catchall_0
    move-exception v3

    .line 1277
    .local v3, "ex":Ljava/lang/Throwable;
    return-void

    .line 1282
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_6
    const/4 v2, 0x0

    .line 1283
    :goto_1
    const-string v3, "$finit$"

    invoke-virtual {p1, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 1284
    .local v3, "meth":Lgnu/bytecode/Method;
    if-eqz v3, :cond_7

    .line 1286
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 1287
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    invoke-virtual {v4, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1290
    .end local v4    # "code":Lgnu/bytecode/CodeAttr;
    :cond_7
    return-void
.end method

.method public cleanupAfterCompilation()V
    .locals 2

    .line 1019
    const/4 v0, 0x0

    .local v0, "iClass":I
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_0

    .line 1020
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->cleanupAfterCompilation()V

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    .end local v0    # "iClass":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1022
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 1024
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1026
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1027
    iput-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 1028
    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_2

    .line 1029
    iput-object v0, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 1030
    :cond_2
    return-void
.end method

.method public compileConstant(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 442
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 443
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    if-nez p1, :cond_0

    .line 444
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_0

    .line 445
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_1

    .line 446
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 449
    :goto_0
    return-void
.end method

.method public compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 491
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    .line 492
    return-void

    .line 493
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_2

    .line 495
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 496
    .local v0, "values":[Ljava/lang/Object;
    array-length v1, v0

    .line 497
    .local v1, "len":I
    instance-of v2, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v2, :cond_2

    .line 499
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 501
    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 506
    .end local v0    # "values":[Ljava/lang/Object;
    .end local v1    # "len":I
    :cond_2
    instance-of v0, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v0, :cond_4

    .line 508
    move-object v0, p2

    check-cast v0, Lgnu/expr/ConditionalTarget;

    .line 509
    .local v0, "ctarg":Lgnu/expr/ConditionalTarget;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    :goto_1
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 511
    return-void

    .line 513
    .end local v0    # "ctarg":Lgnu/expr/ConditionalTarget;
    :cond_4
    instance-of v0, p2, Lgnu/expr/StackTarget;

    if-eqz v0, :cond_f

    .line 515
    move-object v0, p2

    check-cast v0, Lgnu/expr/StackTarget;

    invoke-virtual {v0}, Lgnu/expr/StackTarget;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 516
    .local v0, "type":Lgnu/bytecode/Type;
    instance-of v1, v0, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_b

    .line 520
    :try_start_0
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "signature":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 522
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_3

    :cond_6
    :goto_2
    const/16 v5, 0x20

    .line 524
    .local v5, "sig1":C
    :goto_3
    instance-of v6, p1, Ljava/lang/Number;

    if-eqz v6, :cond_7

    .line 526
    move-object v6, p1

    check-cast v6, Ljava/lang/Number;

    .line 527
    .local v6, "num":Ljava/lang/Number;
    sparse-switch v5, :sswitch_data_0

    goto :goto_4

    .line 533
    :sswitch_0
    invoke-virtual {v6}, Ljava/lang/Number;->shortValue()S

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 534
    return-void

    .line 539
    :sswitch_1
    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    .line 540
    return-void

    .line 530
    :sswitch_2
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 531
    return-void

    .line 542
    :sswitch_3
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    .line 543
    return-void

    .line 545
    :sswitch_4
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    .line 546
    return-void

    .line 536
    :sswitch_5
    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 537
    return-void

    .line 549
    .end local v6    # "num":Ljava/lang/Number;
    :cond_7
    :goto_4
    const/16 v6, 0x43

    if-ne v5, v6, :cond_8

    .line 551
    move-object v3, v0

    check-cast v3, Lgnu/bytecode/PrimType;

    invoke-virtual {v3, p1}, Lgnu/bytecode/PrimType;->charValue(Ljava/lang/Object;)C

    move-result v3

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 552
    return-void

    .line 554
    :cond_8
    const/16 v6, 0x5a

    if-ne v5, v6, :cond_a

    .line 556
    invoke-static {p1}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result v6

    .line 557
    .local v6, "val":Z
    if-eqz v6, :cond_9

    const/4 v3, 0x1

    :cond_9
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    return-void

    .line 564
    .end local v1    # "signature":Ljava/lang/String;
    .end local v2    # "code":Lgnu/bytecode/CodeAttr;
    .end local v5    # "sig1":C
    .end local v6    # "val":Z
    :cond_a
    goto :goto_5

    .line 561
    :catch_0
    move-exception v1

    .line 566
    :cond_b
    :goto_5
    sget-object v1, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_c

    instance-of v1, p1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_c

    .line 568
    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 569
    return-void

    .line 573
    :cond_c
    :try_start_1
    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    .line 591
    goto :goto_8

    .line 575
    :catch_1
    move-exception v1

    .line 577
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 578
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v3, :cond_d

    .line 579
    const-string v3, "cannot convert void to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 582
    :cond_d
    const-string v3, "cannot convert literal (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    if-nez p1, :cond_e

    .line 584
    const-string v3, "<null>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 586
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    :goto_6
    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    :goto_7
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    const/16 v3, 0x77

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 593
    .end local v0    # "type":Lgnu/bytecode/Type;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    :cond_f
    :goto_8
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 594
    if-nez p1, :cond_10

    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, p0, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 597
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_2
        0x4a -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v0, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v0

    .line 454
    .local v0, "literal":Lgnu/expr/Literal;
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    .line 455
    iget-object v1, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v0, v1}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 456
    :cond_0
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    return-object v1
.end method

.method public compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V
    .locals 12
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;
    .param p2, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "makeJar":Z
    const-string v1, ".zip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    const/4 v0, 0x0

    goto :goto_0

    .line 1038
    :cond_0
    const-string v2, ".jar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    const/4 v0, 0x1

    goto :goto_0

    .line 1042
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1043
    const/4 v0, 0x0

    .line 1046
    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->process(I)V

    .line 1048
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, "zar_file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1050
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1053
    :cond_2
    if-eqz v0, :cond_3

    .line 1054
    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, "zout":Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .line 1057
    .end local v2    # "zout":Ljava/util/zip/ZipOutputStream;
    :cond_3
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1059
    .restart local v2    # "zout":Ljava/util/zip/ZipOutputStream;
    :goto_1
    iget v3, p0, Lgnu/expr/Compilation;->numClasses:I

    new-array v3, v3, [[B

    .line 1060
    .local v3, "classBytes":[[B
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 1061
    .local v4, "zcrc":Ljava/util/zip/CRC32;
    const/4 v5, 0x0

    .local v5, "iClass":I
    :goto_2
    iget v6, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v5, v6, :cond_4

    .line 1063
    iget-object v6, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v6, v6, v5

    .line 1064
    .local v6, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v7

    aput-object v7, v3, v5

    .line 1065
    new-instance v7, Ljava/util/zip/ZipEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v7, "zent":Ljava/util/zip/ZipEntry;
    aget-object v8, v3, v5

    array-length v8, v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 1069
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->reset()V

    .line 1070
    aget-object v8, v3, v5

    aget-object v9, v3, v5

    array-length v9, v9

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10, v9}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1071
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 1073
    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1074
    aget-object v8, v3, v5

    invoke-virtual {v2, v8}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 1061
    .end local v6    # "clas":Lgnu/bytecode/ClassType;
    .end local v7    # "zent":Ljava/util/zip/ZipEntry;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1076
    .end local v5    # "iClass":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1077
    return-void
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .line 2428
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    return-object v0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 1

    .line 2436
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    return-object v0
.end method

.method public currentScope()Lgnu/expr/ScopeExp;
    .locals 1

    .line 2451
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "severity"    # C
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "msg1"    # Ljava/lang/String;
    .param p4, "msg2"    # Ljava/lang/String;

    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V

    .line 2599
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 1
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;

    .line 2590
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2591
    const/16 p1, 0x65

    .line 2593
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p0, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 2594
    return-void
.end method

.method public error(CLjava/lang/String;Lgnu/text/SourceLocator;)V
    .locals 9
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "location"    # Lgnu/text/SourceLocator;

    .line 2573
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2574
    .local v0, "file":Ljava/lang/String;
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v1

    .line 2575
    .local v1, "line":I
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v2

    .line 2576
    .local v2, "column":I
    if-eqz v0, :cond_0

    if-gtz v1, :cond_1

    .line 2578
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2579
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 2580
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v2

    .line 2583
    :cond_1
    const/16 v3, 0x77

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2584
    const/16 p1, 0x65

    .line 2585
    :cond_2
    iget-object v3, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v4, p1

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 2586
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V
    .locals 11
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "decl"    # Lgnu/expr/Declaration;

    .line 2604
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->warnAsError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2605
    const/16 p1, 0x65

    .line 2607
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2608
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 2609
    .local v1, "line":I
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v2

    .line 2610
    .local v2, "column":I
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v7

    .line 2611
    .local v7, "decl_line":I
    if-lez v7, :cond_1

    .line 2613
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2614
    move v1, v7

    .line 2615
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getColumnNumber()I

    move-result v2

    move-object v8, v0

    move v9, v1

    move v10, v2

    goto :goto_0

    .line 2611
    :cond_1
    move-object v8, v0

    move v9, v1

    move v10, v2

    .line 2617
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "line":I
    .end local v2    # "column":I
    .local v8, "filename":Ljava/lang/String;
    .local v9, "line":I
    .local v10, "column":I
    :goto_0
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v1, p1

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2618
    return-void
.end method

.method public findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_1

    .line 614
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    return-object v1

    .line 612
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeLocalField(Lgnu/bytecode/Field;)V
    .locals 0
    .param p1, "field"    # Lgnu/bytecode/Field;

    .line 2416
    return-void
.end method

.method public generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V
    .locals 36
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;

    .line 1461
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    move v9, v0

    .line 1463
    .local v9, "numApplyMethods":I
    if-nez v9, :cond_1

    .line 1464
    return-void

    .line 1465
    :cond_1
    iget-object v10, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1466
    .local v10, "save_class":Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1467
    iget-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    sget-object v1, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1468
    iget-object v0, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1469
    :cond_2
    sget-object v11, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1470
    .local v11, "procType":Lgnu/bytecode/ClassType;
    iget-object v12, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1471
    .local v12, "save_method":Lgnu/bytecode/Method;
    const/4 v0, 0x0

    .line 1472
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    const/4 v13, 0x1

    new-array v1, v13, [Lgnu/bytecode/Type;

    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v2, v1, v8

    move-object v14, v1

    .line 1475
    .local v14, "applyArgs":[Lgnu/bytecode/Type;
    iget-object v1, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const-string v2, "apply"

    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v14, v3, v13}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v1

    iput-object v1, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1478
    iget-object v1, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v15

    .line 1479
    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    .local v15, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v15, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    .line 1481
    .local v5, "ctxVar":Lgnu/bytecode/Variable;
    invoke-virtual {v15, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1482
    sget-object v0, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1483
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v4

    .line 1485
    .local v4, "aswitch":Lgnu/bytecode/SwitchState;
    const/4 v0, 0x0

    move v3, v0

    .local v3, "j":I
    :goto_1
    if-ge v3, v9, :cond_1a

    .line 1487
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgnu/expr/LambdaExp;

    .line 1488
    .local v2, "source":Lgnu/expr/LambdaExp;
    iget-object v1, v2, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 1489
    .local v1, "primMethods":[Lgnu/bytecode/Method;
    array-length v0, v1

    .line 1491
    .local v0, "numMethods":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_2
    if-ge v8, v0, :cond_19

    .line 1495
    add-int/lit8 v13, v0, -0x1

    if-ne v8, v13, :cond_4

    iget v13, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v13, :cond_3

    iget v13, v2, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v17, v3

    .end local v3    # "j":I
    .local v17, "j":I
    iget v3, v2, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v3, v0

    if-lt v13, v3, :cond_5

    goto :goto_3

    .end local v17    # "j":I
    .restart local v3    # "j":I
    :cond_3
    move/from16 v17, v3

    .end local v3    # "j":I
    .restart local v17    # "j":I
    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    .end local v17    # "j":I
    .restart local v3    # "j":I
    :cond_4
    move/from16 v17, v3

    .end local v3    # "j":I
    .restart local v17    # "j":I
    :cond_5
    const/4 v3, 0x0

    :goto_4
    move v13, v3

    .line 1499
    .local v13, "varArgs":Z
    move/from16 v18, v8

    .line 1501
    .local v18, "methodIndex":I
    invoke-virtual {v2, v6}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v4, v3, v15}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1503
    iget-object v3, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v3, v2}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v3

    .line 1504
    .local v3, "saveLoc1":Lgnu/text/SourceLocator;
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v7

    .line 1505
    .local v7, "line":I
    if-lez v7, :cond_6

    .line 1506
    move-object/from16 v19, v3

    .end local v3    # "saveLoc1":Lgnu/text/SourceLocator;
    .local v19, "saveLoc1":Lgnu/text/SourceLocator;
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v7}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    goto :goto_5

    .line 1505
    .end local v19    # "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v3    # "saveLoc1":Lgnu/text/SourceLocator;
    :cond_6
    move-object/from16 v19, v3

    .line 1508
    .end local v3    # "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v19    # "saveLoc1":Lgnu/text/SourceLocator;
    :goto_5
    aget-object v3, v1, v18

    .line 1509
    .local v3, "primMethod":Lgnu/bytecode/Method;
    move/from16 v20, v7

    .end local v7    # "line":I
    .local v20, "line":I
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v7

    .line 1510
    .local v7, "primArgTypes":[Lgnu/bytecode/Type;
    move-object/from16 v21, v4

    .end local v4    # "aswitch":Lgnu/bytecode/SwitchState;
    .local v21, "aswitch":Lgnu/bytecode/SwitchState;
    iget v4, v2, Lgnu/expr/LambdaExp;->min_args:I

    add-int v4, v4, v18

    .line 1511
    .local v4, "singleArgs":I
    const/16 v22, 0x0

    .line 1512
    .local v22, "counter":Lgnu/bytecode/Variable;
    const/16 v23, 0x0

    .line 1514
    .local v23, "pendingIfEnds":I
    move/from16 v24, v9

    .end local v9    # "numApplyMethods":I
    .local v24, "numApplyMethods":I
    const/4 v9, 0x4

    if-le v8, v9, :cond_8

    const/4 v9, 0x1

    if-le v0, v9, :cond_8

    .line 1516
    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v15, v9}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 1517
    .end local v22    # "counter":Lgnu/bytecode/Variable;
    .local v9, "counter":Lgnu/bytecode/Variable;
    invoke-virtual {v15, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1518
    move/from16 v26, v0

    .end local v0    # "numMethods":I
    .local v26, "numMethods":I
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object/from16 v27, v11

    .end local v11    # "procType":Lgnu/bytecode/ClassType;
    .local v27, "procType":Lgnu/bytecode/ClassType;
    const-string v11, "getArgCount"

    move-object/from16 v28, v14

    const/4 v14, 0x0

    .end local v14    # "applyArgs":[Lgnu/bytecode/Type;
    .local v28, "applyArgs":[Lgnu/bytecode/Type;
    invoke-virtual {v0, v11, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1519
    iget v0, v2, Lgnu/expr/LambdaExp;->min_args:I

    if-eqz v0, :cond_7

    .line 1521
    iget v0, v2, Lgnu/expr/LambdaExp;->min_args:I

    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1522
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1524
    :cond_7
    invoke-virtual {v15, v9}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_6

    .line 1514
    .end local v9    # "counter":Lgnu/bytecode/Variable;
    .end local v26    # "numMethods":I
    .end local v27    # "procType":Lgnu/bytecode/ClassType;
    .end local v28    # "applyArgs":[Lgnu/bytecode/Type;
    .restart local v0    # "numMethods":I
    .restart local v11    # "procType":Lgnu/bytecode/ClassType;
    .restart local v14    # "applyArgs":[Lgnu/bytecode/Type;
    .restart local v22    # "counter":Lgnu/bytecode/Variable;
    :cond_8
    move/from16 v26, v0

    move-object/from16 v27, v11

    move-object/from16 v28, v14

    .line 1527
    .end local v0    # "numMethods":I
    .end local v11    # "procType":Lgnu/bytecode/ClassType;
    .end local v14    # "applyArgs":[Lgnu/bytecode/Type;
    .restart local v26    # "numMethods":I
    .restart local v27    # "procType":Lgnu/bytecode/ClassType;
    .restart local v28    # "applyArgs":[Lgnu/bytecode/Type;
    move-object/from16 v9, v22

    .end local v22    # "counter":Lgnu/bytecode/Variable;
    .restart local v9    # "counter":Lgnu/bytecode/Variable;
    :goto_6
    invoke-virtual {v3}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    move v11, v0

    .line 1528
    .local v11, "needsThis":I
    if-eqz v13, :cond_9

    const/4 v0, 0x2

    goto :goto_7

    :cond_9
    const/4 v0, 0x1

    :goto_7
    add-int/2addr v0, v4

    array-length v14, v7

    if-ge v0, v14, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_8
    move v14, v0

    .line 1530
    .local v14, "explicitFrameArg":I
    add-int v0, v11, v14

    if-lez v0, :cond_b

    .line 1532
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1533
    iget-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v29, v3

    .end local v3    # "primMethod":Lgnu/bytecode/Method;
    .local v29, "primMethod":Lgnu/bytecode/Method;
    iget-object v3, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    if-ne v0, v3, :cond_c

    iget-object v0, v6, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iget-object v3, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    if-eq v0, v3, :cond_c

    .line 1534
    iget-object v0, v6, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_9

    .line 1530
    .end local v29    # "primMethod":Lgnu/bytecode/Method;
    .restart local v3    # "primMethod":Lgnu/bytecode/Method;
    :cond_b
    move-object/from16 v29, v3

    .line 1537
    .end local v3    # "primMethod":Lgnu/bytecode/Method;
    .restart local v29    # "primMethod":Lgnu/bytecode/Method;
    :cond_c
    :goto_9
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1538
    .local v0, "var":Lgnu/expr/Declaration;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1539
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1540
    :cond_d
    const/4 v3, 0x0

    move/from16 v35, v3

    move-object v3, v0

    move/from16 v0, v35

    .local v0, "k":I
    .local v3, "var":Lgnu/expr/Declaration;
    :goto_a
    move/from16 v30, v11

    .end local v11    # "needsThis":I
    .local v30, "needsThis":I
    if-ge v0, v4, :cond_12

    .line 1542
    if-eqz v9, :cond_e

    iget v11, v2, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v0, v11, :cond_e

    .line 1544
    invoke-virtual {v15, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1545
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1546
    invoke-virtual {v15, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1547
    iget v11, v2, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v11, v0, v11

    aget-object v11, v1, v11

    invoke-virtual {v15, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1548
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1549
    add-int/lit8 v23, v23, 0x1

    .line 1550
    const/4 v11, -0x1

    invoke-virtual {v15, v9, v11}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1553
    :cond_e
    invoke-virtual {v15, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1554
    const/4 v11, 0x4

    if-gt v0, v11, :cond_10

    if-nez v13, :cond_10

    move-object/from16 v25, v1

    .end local v1    # "primMethods":[Lgnu/bytecode/Method;
    .local v25, "primMethods":[Lgnu/bytecode/Method;
    iget v1, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-gt v1, v11, :cond_f

    .line 1555
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v5

    .end local v5    # "ctxVar":Lgnu/bytecode/Variable;
    .local v32, "ctxVar":Lgnu/bytecode/Variable;
    const-string v5, "value"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_c

    .line 1554
    .end local v32    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v5    # "ctxVar":Lgnu/bytecode/Variable;
    :cond_f
    move-object/from16 v32, v5

    .end local v5    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v32    # "ctxVar":Lgnu/bytecode/Variable;
    goto :goto_b

    .end local v25    # "primMethods":[Lgnu/bytecode/Method;
    .end local v32    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v1    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v5    # "ctxVar":Lgnu/bytecode/Variable;
    :cond_10
    move-object/from16 v25, v1

    move-object/from16 v32, v5

    .line 1559
    .end local v1    # "primMethods":[Lgnu/bytecode/Method;
    .end local v5    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v25    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v32    # "ctxVar":Lgnu/bytecode/Variable;
    :goto_b
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "values"

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1561
    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1562
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 1564
    :goto_c
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1565
    .local v1, "ptype":Lgnu/bytecode/Type;
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v1, v5, :cond_11

    .line 1567
    iget-object v5, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5, v3}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v5

    .line 1568
    .local v5, "saveLoc2":Lgnu/text/SourceLocator;
    add-int/lit8 v11, v0, 0x1

    invoke-static {v6, v2, v11, v1}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1570
    iget-object v11, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v11, v5}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1572
    .end local v5    # "saveLoc2":Lgnu/text/SourceLocator;
    :cond_11
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 1540
    .end local v1    # "ptype":Lgnu/bytecode/Type;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v25

    move/from16 v11, v30

    move-object/from16 v5, v32

    goto/16 :goto_a

    .end local v25    # "primMethods":[Lgnu/bytecode/Method;
    .end local v32    # "ctxVar":Lgnu/bytecode/Variable;
    .local v1, "primMethods":[Lgnu/bytecode/Method;
    .local v5, "ctxVar":Lgnu/bytecode/Variable;
    :cond_12
    move-object/from16 v25, v1

    move-object/from16 v32, v5

    .line 1575
    .end local v0    # "k":I
    .end local v1    # "primMethods":[Lgnu/bytecode/Method;
    .end local v5    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v25    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v32    # "ctxVar":Lgnu/bytecode/Variable;
    if-eqz v13, :cond_16

    .line 1577
    add-int v0, v14, v4

    aget-object v11, v7, v0

    .line 1578
    .local v11, "lastArgType":Lgnu/bytecode/Type;
    instance-of v0, v11, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_13

    .line 1579
    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v31, v2

    .end local v2    # "source":Lgnu/expr/LambdaExp;
    .local v31, "source":Lgnu/expr/LambdaExp;
    move v2, v4

    move-object/from16 v5, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v29

    move-object/from16 v29, v3

    .end local v3    # "var":Lgnu/expr/Declaration;
    .local v5, "saveLoc1":Lgnu/text/SourceLocator;
    .local v7, "primMethod":Lgnu/bytecode/Method;
    .local v19, "primArgTypes":[Lgnu/bytecode/Type;
    .local v29, "var":Lgnu/expr/Declaration;
    move-object v3, v9

    move-object/from16 v33, v9

    move-object/from16 v9, v21

    move/from16 v21, v13

    move v13, v4

    .end local v4    # "singleArgs":I
    .local v9, "aswitch":Lgnu/bytecode/SwitchState;
    .local v13, "singleArgs":I
    .local v21, "varArgs":Z
    .local v33, "counter":Lgnu/bytecode/Variable;
    move-object v4, v11

    move-object/from16 v34, v32

    move/from16 v32, v14

    move-object v14, v5

    .end local v5    # "saveLoc1":Lgnu/text/SourceLocator;
    .local v14, "saveLoc1":Lgnu/text/SourceLocator;
    .local v32, "explicitFrameArg":I
    .local v34, "ctxVar":Lgnu/bytecode/Variable;
    move-object/from16 v5, v34

    invoke-direct/range {v0 .. v5}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    move-object/from16 v0, v34

    const/4 v3, 0x1

    goto/16 :goto_d

    .line 1580
    .end local v31    # "source":Lgnu/expr/LambdaExp;
    .end local v33    # "counter":Lgnu/bytecode/Variable;
    .end local v34    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v2    # "source":Lgnu/expr/LambdaExp;
    .restart local v3    # "var":Lgnu/expr/Declaration;
    .restart local v4    # "singleArgs":I
    .local v7, "primArgTypes":[Lgnu/bytecode/Type;
    .local v9, "counter":Lgnu/bytecode/Variable;
    .local v13, "varArgs":Z
    .local v14, "explicitFrameArg":I
    .local v19, "saveLoc1":Lgnu/text/SourceLocator;
    .local v21, "aswitch":Lgnu/bytecode/SwitchState;
    .local v29, "primMethod":Lgnu/bytecode/Method;
    .local v32, "ctxVar":Lgnu/bytecode/Variable;
    :cond_13
    move-object/from16 v31, v2

    move-object/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v34, v32

    move/from16 v21, v13

    move/from16 v32, v14

    move-object/from16 v14, v19

    move v13, v4

    move-object/from16 v19, v7

    move-object/from16 v7, v29

    move-object/from16 v29, v3

    .end local v2    # "source":Lgnu/expr/LambdaExp;
    .end local v3    # "var":Lgnu/expr/Declaration;
    .end local v4    # "singleArgs":I
    .local v7, "primMethod":Lgnu/bytecode/Method;
    .local v9, "aswitch":Lgnu/bytecode/SwitchState;
    .local v13, "singleArgs":I
    .local v14, "saveLoc1":Lgnu/text/SourceLocator;
    .local v19, "primArgTypes":[Lgnu/bytecode/Type;
    .local v21, "varArgs":Z
    .local v29, "var":Lgnu/expr/Declaration;
    .restart local v31    # "source":Lgnu/expr/LambdaExp;
    .local v32, "explicitFrameArg":I
    .restart local v33    # "counter":Lgnu/bytecode/Variable;
    .restart local v34    # "ctxVar":Lgnu/bytecode/Variable;
    const-string v0, "gnu.lists.LList"

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1583
    move-object/from16 v0, v34

    .end local v34    # "ctxVar":Lgnu/bytecode/Variable;
    .local v0, "ctxVar":Lgnu/bytecode/Variable;
    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1584
    invoke-virtual {v15, v13}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1585
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v2, "getRestArgsList"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_d

    .line 1587
    .end local v0    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v34    # "ctxVar":Lgnu/bytecode/Variable;
    :cond_14
    move-object/from16 v0, v34

    const/4 v3, 0x1

    .end local v34    # "ctxVar":Lgnu/bytecode/Variable;
    .restart local v0    # "ctxVar":Lgnu/bytecode/Variable;
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v11, v1, :cond_15

    .line 1588
    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_d

    .line 1590
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported #!rest type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1575
    .end local v0    # "ctxVar":Lgnu/bytecode/Variable;
    .end local v11    # "lastArgType":Lgnu/bytecode/Type;
    .end local v31    # "source":Lgnu/expr/LambdaExp;
    .end local v33    # "counter":Lgnu/bytecode/Variable;
    .restart local v2    # "source":Lgnu/expr/LambdaExp;
    .restart local v3    # "var":Lgnu/expr/Declaration;
    .restart local v4    # "singleArgs":I
    .local v7, "primArgTypes":[Lgnu/bytecode/Type;
    .local v9, "counter":Lgnu/bytecode/Variable;
    .local v13, "varArgs":Z
    .local v14, "explicitFrameArg":I
    .local v19, "saveLoc1":Lgnu/text/SourceLocator;
    .local v21, "aswitch":Lgnu/bytecode/SwitchState;
    .local v29, "primMethod":Lgnu/bytecode/Method;
    .local v32, "ctxVar":Lgnu/bytecode/Variable;
    :cond_16
    move-object/from16 v31, v2

    move-object/from16 v33, v9

    move-object/from16 v9, v21

    move-object/from16 v0, v32

    move/from16 v21, v13

    move/from16 v32, v14

    move-object/from16 v14, v19

    move v13, v4

    move-object/from16 v19, v7

    move-object/from16 v7, v29

    move-object/from16 v29, v3

    const/4 v3, 0x1

    .line 1592
    .end local v2    # "source":Lgnu/expr/LambdaExp;
    .end local v3    # "var":Lgnu/expr/Declaration;
    .end local v4    # "singleArgs":I
    .restart local v0    # "ctxVar":Lgnu/bytecode/Variable;
    .local v7, "primMethod":Lgnu/bytecode/Method;
    .local v9, "aswitch":Lgnu/bytecode/SwitchState;
    .local v13, "singleArgs":I
    .local v14, "saveLoc1":Lgnu/text/SourceLocator;
    .local v19, "primArgTypes":[Lgnu/bytecode/Type;
    .local v21, "varArgs":Z
    .local v29, "var":Lgnu/expr/Declaration;
    .restart local v31    # "source":Lgnu/expr/LambdaExp;
    .local v32, "explicitFrameArg":I
    .restart local v33    # "counter":Lgnu/bytecode/Variable;
    :goto_d
    invoke-virtual {v15, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1593
    invoke-virtual {v15, v7}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1594
    :goto_e
    const/4 v1, -0x1

    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_17

    .line 1595
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_e

    .line 1596
    :cond_17
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_18

    .line 1597
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v31 .. v31}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1599
    :cond_18
    iget-object v1, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1, v14}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1600
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1491
    .end local v7    # "primMethod":Lgnu/bytecode/Method;
    .end local v13    # "singleArgs":I
    .end local v14    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v18    # "methodIndex":I
    .end local v19    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v20    # "line":I
    .end local v21    # "varArgs":Z
    .end local v23    # "pendingIfEnds":I
    .end local v29    # "var":Lgnu/expr/Declaration;
    .end local v30    # "needsThis":I
    .end local v32    # "explicitFrameArg":I
    .end local v33    # "counter":Lgnu/bytecode/Variable;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v7, p1

    move-object v5, v0

    move-object v4, v9

    move/from16 v3, v17

    move/from16 v9, v24

    move-object/from16 v1, v25

    move/from16 v0, v26

    move-object/from16 v11, v27

    move-object/from16 v14, v28

    move-object/from16 v2, v31

    const/4 v13, 0x1

    goto/16 :goto_2

    .end local v17    # "j":I
    .end local v24    # "numApplyMethods":I
    .end local v25    # "primMethods":[Lgnu/bytecode/Method;
    .end local v26    # "numMethods":I
    .end local v27    # "procType":Lgnu/bytecode/ClassType;
    .end local v28    # "applyArgs":[Lgnu/bytecode/Type;
    .end local v31    # "source":Lgnu/expr/LambdaExp;
    .local v0, "numMethods":I
    .restart local v1    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v2    # "source":Lgnu/expr/LambdaExp;
    .local v3, "j":I
    .local v4, "aswitch":Lgnu/bytecode/SwitchState;
    .local v5, "ctxVar":Lgnu/bytecode/Variable;
    .local v9, "numApplyMethods":I
    .local v11, "procType":Lgnu/bytecode/ClassType;
    .local v14, "applyArgs":[Lgnu/bytecode/Type;
    :cond_19
    move/from16 v26, v0

    move-object/from16 v25, v1

    move-object/from16 v31, v2

    move/from16 v17, v3

    move-object v0, v5

    move/from16 v24, v9

    move-object/from16 v27, v11

    move-object/from16 v28, v14

    const/4 v3, 0x1

    move-object v9, v4

    .line 1485
    .end local v1    # "primMethods":[Lgnu/bytecode/Method;
    .end local v2    # "source":Lgnu/expr/LambdaExp;
    .end local v3    # "j":I
    .end local v4    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v5    # "ctxVar":Lgnu/bytecode/Variable;
    .end local v8    # "i":I
    .end local v11    # "procType":Lgnu/bytecode/ClassType;
    .end local v14    # "applyArgs":[Lgnu/bytecode/Type;
    .local v0, "ctxVar":Lgnu/bytecode/Variable;
    .local v9, "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v17    # "j":I
    .restart local v24    # "numApplyMethods":I
    .restart local v27    # "procType":Lgnu/bytecode/ClassType;
    .restart local v28    # "applyArgs":[Lgnu/bytecode/Type;
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v7, p1

    move v3, v1

    move/from16 v9, v24

    const/4 v8, 0x0

    const/4 v13, 0x1

    .end local v17    # "j":I
    .local v1, "j":I
    goto/16 :goto_1

    .end local v0    # "ctxVar":Lgnu/bytecode/Variable;
    .end local v1    # "j":I
    .end local v24    # "numApplyMethods":I
    .end local v27    # "procType":Lgnu/bytecode/ClassType;
    .end local v28    # "applyArgs":[Lgnu/bytecode/Type;
    .restart local v3    # "j":I
    .restart local v4    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v5    # "ctxVar":Lgnu/bytecode/Variable;
    .local v9, "numApplyMethods":I
    .restart local v11    # "procType":Lgnu/bytecode/ClassType;
    .restart local v14    # "applyArgs":[Lgnu/bytecode/Type;
    :cond_1a
    move/from16 v17, v3

    move/from16 v24, v9

    move-object v9, v4

    .line 1603
    .end local v3    # "j":I
    .end local v4    # "aswitch":Lgnu/bytecode/SwitchState;
    .local v9, "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v24    # "numApplyMethods":I
    invoke-virtual {v9, v15}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1604
    sget-object v1, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v2, "applyError"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 1605
    .local v1, "errMethod":Lgnu/bytecode/Method;
    invoke-virtual {v15, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1606
    invoke-virtual {v15}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1607
    invoke-virtual {v9, v15}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1608
    iput-object v12, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1609
    iput-object v10, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1610
    return-void
.end method

.method public generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V
    .locals 36
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;

    .line 1618
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    move v9, v0

    .line 1620
    .local v9, "numApplyMethods":I
    if-nez v9, :cond_1

    .line 1621
    return-void

    .line 1622
    :cond_1
    iget-object v10, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1623
    .local v10, "save_class":Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1624
    sget-object v11, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1625
    .local v11, "procType":Lgnu/bytecode/ClassType;
    iget-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    sget-object v1, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1626
    iget-object v0, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iput-object v0, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1627
    :cond_2
    iget-object v12, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1628
    .local v12, "save_method":Lgnu/bytecode/Method;
    const/4 v0, 0x0

    .line 1629
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v14, 0x2

    if-lt v1, v14, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move v15, v1

    .line 1631
    .local v15, "i":I
    :goto_2
    const/4 v1, 0x6

    if-ge v15, v1, :cond_25

    .line 1635
    const/4 v1, 0x0

    .line 1636
    .local v1, "needThisApply":Z
    const/4 v2, 0x0

    .line 1637
    .local v2, "aswitch":Lgnu/bytecode/SwitchState;
    const/4 v3, 0x0

    .line 1638
    .local v3, "mname":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1640
    .local v4, "applyArgs":[Lgnu/bytecode/Type;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v9, :cond_20

    .line 1642
    iget-object v8, v7, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/expr/LambdaExp;

    .line 1645
    .local v8, "source":Lgnu/expr/LambdaExp;
    move/from16 v18, v5

    .end local v5    # "j":I
    .local v18, "j":I
    iget-object v5, v8, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 1646
    .local v5, "primMethods":[Lgnu/bytecode/Method;
    array-length v14, v5

    .line 1647
    .local v14, "numMethods":I
    iget v13, v8, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v13, :cond_5

    iget v13, v8, Lgnu/expr/LambdaExp;->max_args:I

    iget v7, v8, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v7, v14

    if-lt v13, v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v7, 0x1

    .line 1650
    .local v7, "varArgs":Z
    :goto_5
    const/4 v13, 0x0

    .line 1651
    .local v13, "skipThisProc":Z
    move/from16 v19, v9

    const/4 v9, 0x5

    .end local v9    # "numApplyMethods":I
    .local v19, "numApplyMethods":I
    if-ge v15, v9, :cond_8

    .line 1653
    iget v9, v8, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v9, v15, v9

    .line 1654
    .local v9, "methodIndex":I
    if-ltz v9, :cond_7

    if-ge v9, v14, :cond_7

    move/from16 v20, v13

    .end local v13    # "skipThisProc":Z
    .local v20, "skipThisProc":Z
    add-int/lit8 v13, v14, -0x1

    if-ne v9, v13, :cond_6

    if-eqz v7, :cond_6

    goto :goto_6

    .line 1657
    :cond_6
    move/from16 v13, v20

    goto :goto_7

    .line 1654
    .end local v20    # "skipThisProc":Z
    .restart local v13    # "skipThisProc":Z
    :cond_7
    move/from16 v20, v13

    .line 1656
    .end local v13    # "skipThisProc":Z
    .restart local v20    # "skipThisProc":Z
    :goto_6
    const/4 v13, 0x1

    .line 1657
    .end local v20    # "skipThisProc":Z
    .restart local v13    # "skipThisProc":Z
    :goto_7
    const/4 v14, 0x1

    .line 1658
    const/4 v7, 0x0

    goto :goto_9

    .line 1662
    .end local v9    # "methodIndex":I
    :cond_8
    move/from16 v20, v13

    .end local v13    # "skipThisProc":Z
    .restart local v20    # "skipThisProc":Z
    iget v9, v8, Lgnu/expr/LambdaExp;->min_args:I

    const/4 v13, 0x5

    rsub-int/lit8 v9, v9, 0x5

    .line 1663
    .restart local v9    # "methodIndex":I
    if-lez v9, :cond_9

    if-gt v14, v9, :cond_9

    if-nez v7, :cond_9

    .line 1664
    const/4 v13, 0x1

    .end local v20    # "skipThisProc":Z
    .restart local v13    # "skipThisProc":Z
    goto :goto_8

    .line 1665
    .end local v13    # "skipThisProc":Z
    .restart local v20    # "skipThisProc":Z
    :cond_9
    move/from16 v13, v20

    .end local v20    # "skipThisProc":Z
    .restart local v13    # "skipThisProc":Z
    :goto_8
    add-int/lit8 v9, v14, -0x1

    .line 1667
    :goto_9
    if-eqz v13, :cond_a

    .line 1668
    move-object/from16 v21, v10

    move-object/from16 v30, v11

    move-object/from16 v22, v12

    goto/16 :goto_16

    .line 1669
    :cond_a
    if-nez v1, :cond_e

    .line 1672
    move/from16 v20, v13

    const/4 v13, 0x5

    .end local v13    # "skipThisProc":Z
    .restart local v20    # "skipThisProc":Z
    if-ge v15, v13, :cond_c

    .line 1674
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v10

    .end local v10    # "save_class":Lgnu/bytecode/ClassType;
    .local v21, "save_class":Lgnu/bytecode/ClassType;
    const-string v10, "apply"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1675
    add-int/lit8 v10, v15, 0x1

    new-array v4, v10, [Lgnu/bytecode/Type;

    .line 1676
    move v10, v15

    .local v10, "k":I
    :goto_a
    if-lez v10, :cond_b

    .line 1677
    sget-object v13, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v13, v4, v10

    .line 1676
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_b
    const/4 v10, 0x2

    .end local v10    # "k":I
    goto :goto_b

    .line 1681
    .end local v21    # "save_class":Lgnu/bytecode/ClassType;
    .local v10, "save_class":Lgnu/bytecode/ClassType;
    :cond_c
    move-object/from16 v21, v10

    .end local v10    # "save_class":Lgnu/bytecode/ClassType;
    .restart local v21    # "save_class":Lgnu/bytecode/ClassType;
    const-string v3, "applyN"

    .line 1682
    const/4 v10, 0x2

    new-array v4, v10, [Lgnu/bytecode/Type;

    .line 1683
    sget-object v13, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/16 v17, 0x1

    aput-object v13, v4, v17

    .line 1685
    :goto_b
    const/4 v13, 0x0

    aput-object v11, v4, v13

    .line 1686
    iget-object v13, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v22, v12

    .end local v12    # "save_method":Lgnu/bytecode/Method;
    .local v22, "save_method":Lgnu/bytecode/Method;
    sget v12, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-lt v12, v10, :cond_d

    sget-object v10, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_c

    :cond_d
    sget-object v10, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_c
    const/4 v12, 0x1

    invoke-virtual {v13, v3, v4, v10, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v10

    iput-object v10, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1689
    iget-object v10, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1691
    invoke-virtual {v0, v12}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v10

    invoke-virtual {v0, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1692
    const-string v10, "selector"

    invoke-virtual {v11, v10}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v10

    invoke-virtual {v0, v10}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1693
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v2

    .line 1695
    const/4 v1, 0x1

    move-object v10, v0

    move v12, v1

    move-object v13, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    goto :goto_d

    .line 1669
    .end local v20    # "skipThisProc":Z
    .end local v21    # "save_class":Lgnu/bytecode/ClassType;
    .end local v22    # "save_method":Lgnu/bytecode/Method;
    .restart local v10    # "save_class":Lgnu/bytecode/ClassType;
    .restart local v12    # "save_method":Lgnu/bytecode/Method;
    .restart local v13    # "skipThisProc":Z
    :cond_e
    move-object/from16 v21, v10

    move-object/from16 v22, v12

    move/from16 v20, v13

    .end local v10    # "save_class":Lgnu/bytecode/ClassType;
    .end local v12    # "save_method":Lgnu/bytecode/Method;
    .end local v13    # "skipThisProc":Z
    .restart local v20    # "skipThisProc":Z
    .restart local v21    # "save_class":Lgnu/bytecode/ClassType;
    .restart local v22    # "save_method":Lgnu/bytecode/Method;
    move-object v10, v0

    move v12, v1

    move-object v13, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    .line 1698
    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    .end local v1    # "needThisApply":Z
    .end local v2    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v3    # "mname":Ljava/lang/String;
    .end local v4    # "applyArgs":[Lgnu/bytecode/Type;
    .local v10, "code":Lgnu/bytecode/CodeAttr;
    .local v12, "needThisApply":Z
    .local v13, "aswitch":Lgnu/bytecode/SwitchState;
    .local v23, "mname":Ljava/lang/String;
    .local v24, "applyArgs":[Lgnu/bytecode/Type;
    :goto_d
    invoke-virtual {v8, v6}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v0

    invoke-virtual {v13, v0, v10}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1700
    iget-object v0, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, v8}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v4

    .line 1701
    .local v4, "saveLoc1":Lgnu/text/SourceLocator;
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v3

    .line 1702
    .local v3, "line":I
    if-lez v3, :cond_f

    .line 1703
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v3}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1705
    :cond_f
    aget-object v2, v5, v9

    .line 1706
    .local v2, "primMethod":Lgnu/bytecode/Method;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v1

    .line 1707
    .local v1, "primArgTypes":[Lgnu/bytecode/Type;
    iget v0, v8, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v0, v9

    .line 1708
    .local v0, "singleArgs":I
    const/16 v25, 0x0

    .line 1709
    .local v25, "counter":Lgnu/bytecode/Variable;
    const/16 v26, 0x0

    .line 1711
    .local v26, "pendingIfEnds":I
    move/from16 v27, v3

    const/4 v3, 0x4

    .end local v3    # "line":I
    .local v27, "line":I
    if-le v15, v3, :cond_11

    const/4 v3, 0x1

    if-le v14, v3, :cond_11

    .line 1713
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v10, v3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 1714
    .end local v25    # "counter":Lgnu/bytecode/Variable;
    .local v3, "counter":Lgnu/bytecode/Variable;
    move-object/from16 v28, v4

    move/from16 v29, v9

    const/4 v4, 0x2

    .end local v4    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v9    # "methodIndex":I
    .local v28, "saveLoc1":Lgnu/text/SourceLocator;
    .local v29, "methodIndex":I
    invoke-virtual {v10, v4}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    invoke-virtual {v10, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1715
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1716
    iget v4, v8, Lgnu/expr/LambdaExp;->min_args:I

    if-eqz v4, :cond_10

    .line 1718
    iget v4, v8, Lgnu/expr/LambdaExp;->min_args:I

    invoke-virtual {v10, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1719
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v10, v4}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1721
    :cond_10
    invoke-virtual {v10, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    move-object v9, v3

    goto :goto_e

    .line 1711
    .end local v3    # "counter":Lgnu/bytecode/Variable;
    .end local v28    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v29    # "methodIndex":I
    .restart local v4    # "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v9    # "methodIndex":I
    .restart local v25    # "counter":Lgnu/bytecode/Variable;
    :cond_11
    move-object/from16 v28, v4

    move/from16 v29, v9

    .line 1724
    .end local v4    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v9    # "methodIndex":I
    .restart local v28    # "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v29    # "methodIndex":I
    move-object/from16 v9, v25

    .end local v25    # "counter":Lgnu/bytecode/Variable;
    .local v9, "counter":Lgnu/bytecode/Variable;
    :goto_e
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move/from16 v25, v3

    .line 1725
    .local v25, "needsThis":I
    if-eqz v7, :cond_12

    const/4 v3, 0x1

    goto :goto_f

    :cond_12
    const/4 v3, 0x0

    :goto_f
    add-int/2addr v3, v0

    array-length v4, v1

    if-ge v3, v4, :cond_13

    const/16 v17, 0x1

    goto :goto_10

    :cond_13
    const/16 v17, 0x0

    .line 1727
    .local v17, "explicitFrameArg":I
    :goto_10
    add-int v3, v25, v17

    if-lez v3, :cond_14

    .line 1729
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1730
    iget-object v3, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v4, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_14

    iget-object v3, v6, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iget-object v4, v6, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    if-eq v3, v4, :cond_14

    .line 1731
    iget-object v3, v6, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v10, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1734
    :cond_14
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 1735
    .local v3, "var":Lgnu/expr/Declaration;
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1736
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 1737
    :cond_15
    const/4 v4, 0x0

    move/from16 v35, v4

    move-object v4, v3

    move/from16 v3, v35

    .local v3, "k":I
    .local v4, "var":Lgnu/expr/Declaration;
    :goto_11
    move-object/from16 v30, v11

    .end local v11    # "procType":Lgnu/bytecode/ClassType;
    .local v30, "procType":Lgnu/bytecode/ClassType;
    if-ge v3, v0, :cond_19

    .line 1739
    if-eqz v9, :cond_16

    iget v11, v8, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v3, v11, :cond_16

    .line 1741
    invoke-virtual {v10, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1742
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1743
    iget v11, v8, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v11, v3, v11

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1744
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1745
    add-int/lit8 v26, v26, 0x1

    .line 1746
    const/4 v11, -0x1

    invoke-virtual {v10, v9, v11}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1749
    :cond_16
    const/4 v11, 0x0

    .line 1750
    .local v11, "pvar":Lgnu/bytecode/Variable;
    move-object/from16 v31, v2

    const/4 v2, 0x4

    .end local v2    # "primMethod":Lgnu/bytecode/Method;
    .local v31, "primMethod":Lgnu/bytecode/Method;
    if-gt v15, v2, :cond_17

    .line 1752
    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v10, v2}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v11

    .line 1753
    invoke-virtual {v10, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move-object/from16 v32, v5

    goto :goto_12

    .line 1758
    :cond_17
    move-object/from16 v32, v5

    const/4 v2, 0x2

    .end local v5    # "primMethods":[Lgnu/bytecode/Method;
    .local v32, "primMethods":[Lgnu/bytecode/Method;
    invoke-virtual {v10, v2}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v10, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1759
    invoke-virtual {v10, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1760
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v10, v2}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 1762
    :goto_12
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1763
    .local v2, "ptype":Lgnu/bytecode/Type;
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v2, v5, :cond_18

    .line 1765
    iget-object v5, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5, v4}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v5

    .line 1766
    .local v5, "saveLoc2":Lgnu/text/SourceLocator;
    move/from16 v33, v12

    .end local v12    # "needThisApply":Z
    .local v33, "needThisApply":Z
    add-int/lit8 v12, v3, 0x1

    invoke-static {v6, v8, v12, v2, v11}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1768
    iget-object v12, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v12, v5}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    goto :goto_13

    .line 1763
    .end local v5    # "saveLoc2":Lgnu/text/SourceLocator;
    .end local v33    # "needThisApply":Z
    .restart local v12    # "needThisApply":Z
    :cond_18
    move/from16 v33, v12

    .line 1770
    .end local v12    # "needThisApply":Z
    .restart local v33    # "needThisApply":Z
    :goto_13
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 1737
    .end local v2    # "ptype":Lgnu/bytecode/Type;
    .end local v11    # "pvar":Lgnu/bytecode/Variable;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, v30

    move-object/from16 v2, v31

    move-object/from16 v5, v32

    move/from16 v12, v33

    goto :goto_11

    .end local v31    # "primMethod":Lgnu/bytecode/Method;
    .end local v32    # "primMethods":[Lgnu/bytecode/Method;
    .end local v33    # "needThisApply":Z
    .local v2, "primMethod":Lgnu/bytecode/Method;
    .local v5, "primMethods":[Lgnu/bytecode/Method;
    .restart local v12    # "needThisApply":Z
    :cond_19
    move-object/from16 v31, v2

    move-object/from16 v32, v5

    move/from16 v33, v12

    .line 1773
    .end local v2    # "primMethod":Lgnu/bytecode/Method;
    .end local v3    # "k":I
    .end local v5    # "primMethods":[Lgnu/bytecode/Method;
    .end local v12    # "needThisApply":Z
    .restart local v31    # "primMethod":Lgnu/bytecode/Method;
    .restart local v32    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v33    # "needThisApply":Z
    if-eqz v7, :cond_1d

    .line 1775
    add-int v2, v17, v0

    aget-object v11, v1, v2

    .line 1776
    .local v11, "lastArgType":Lgnu/bytecode/Type;
    instance-of v2, v11, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_1a

    .line 1777
    const/4 v5, 0x0

    move v12, v0

    .end local v0    # "singleArgs":I
    .local v12, "singleArgs":I
    move-object/from16 v0, p0

    move-object/from16 v16, v1

    .end local v1    # "primArgTypes":[Lgnu/bytecode/Type;
    .local v16, "primArgTypes":[Lgnu/bytecode/Type;
    move-object v1, v8

    move-object/from16 v3, v31

    .end local v31    # "primMethod":Lgnu/bytecode/Method;
    .local v3, "primMethod":Lgnu/bytecode/Method;
    move v2, v12

    move-object/from16 v34, v3

    .end local v3    # "primMethod":Lgnu/bytecode/Method;
    .local v34, "primMethod":Lgnu/bytecode/Method;
    move-object v3, v9

    move/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v28, v4

    .end local v4    # "var":Lgnu/expr/Declaration;
    .local v7, "saveLoc1":Lgnu/text/SourceLocator;
    .local v28, "var":Lgnu/expr/Declaration;
    .local v31, "varArgs":Z
    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lgnu/expr/Compilation;->varArgsToArray(Lgnu/expr/LambdaExp;ILgnu/bytecode/Variable;Lgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    goto :goto_14

    .line 1778
    .end local v12    # "singleArgs":I
    .end local v16    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v34    # "primMethod":Lgnu/bytecode/Method;
    .restart local v0    # "singleArgs":I
    .restart local v1    # "primArgTypes":[Lgnu/bytecode/Type;
    .restart local v4    # "var":Lgnu/expr/Declaration;
    .local v7, "varArgs":Z
    .local v28, "saveLoc1":Lgnu/text/SourceLocator;
    .local v31, "primMethod":Lgnu/bytecode/Method;
    :cond_1a
    move v12, v0

    move-object/from16 v16, v1

    move-object/from16 v34, v31

    move/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v28, v4

    .end local v0    # "singleArgs":I
    .end local v1    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v4    # "var":Lgnu/expr/Declaration;
    .local v7, "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v12    # "singleArgs":I
    .restart local v16    # "primArgTypes":[Lgnu/bytecode/Type;
    .local v28, "var":Lgnu/expr/Declaration;
    .local v31, "varArgs":Z
    .restart local v34    # "primMethod":Lgnu/bytecode/Method;
    const-string v0, "gnu.lists.LList"

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1781
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v10, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1782
    invoke-virtual {v10, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1783
    sget-object v0, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual {v10, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_14

    .line 1785
    :cond_1b
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v11, v0, :cond_1c

    .line 1786
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v10, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_14

    .line 1788
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported #!rest type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1773
    .end local v11    # "lastArgType":Lgnu/bytecode/Type;
    .end local v12    # "singleArgs":I
    .end local v16    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v34    # "primMethod":Lgnu/bytecode/Method;
    .restart local v0    # "singleArgs":I
    .restart local v1    # "primArgTypes":[Lgnu/bytecode/Type;
    .restart local v4    # "var":Lgnu/expr/Declaration;
    .local v7, "varArgs":Z
    .local v28, "saveLoc1":Lgnu/text/SourceLocator;
    .local v31, "primMethod":Lgnu/bytecode/Method;
    :cond_1d
    move v12, v0

    move-object/from16 v16, v1

    move-object/from16 v34, v31

    move/from16 v31, v7

    move-object/from16 v7, v28

    move-object/from16 v28, v4

    .line 1790
    .end local v0    # "singleArgs":I
    .end local v1    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v4    # "var":Lgnu/expr/Declaration;
    .local v7, "saveLoc1":Lgnu/text/SourceLocator;
    .restart local v12    # "singleArgs":I
    .restart local v16    # "primArgTypes":[Lgnu/bytecode/Type;
    .local v28, "var":Lgnu/expr/Declaration;
    .local v31, "varArgs":Z
    .restart local v34    # "primMethod":Lgnu/bytecode/Method;
    :goto_14
    move-object/from16 v0, v34

    .end local v34    # "primMethod":Lgnu/bytecode/Method;
    .local v0, "primMethod":Lgnu/bytecode/Method;
    invoke-virtual {v10, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1791
    :goto_15
    const/4 v1, -0x1

    add-int/lit8 v26, v26, -0x1

    if-ltz v26, :cond_1e

    .line 1792
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_15

    .line 1793
    :cond_1e
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1f

    .line 1794
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1796
    :cond_1f
    iget-object v1, v6, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v1, v7}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1797
    invoke-virtual {v10}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    move-object v0, v10

    move-object v2, v13

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move/from16 v1, v33

    .line 1640
    .end local v7    # "saveLoc1":Lgnu/text/SourceLocator;
    .end local v8    # "source":Lgnu/expr/LambdaExp;
    .end local v9    # "counter":Lgnu/bytecode/Variable;
    .end local v10    # "code":Lgnu/bytecode/CodeAttr;
    .end local v12    # "singleArgs":I
    .end local v13    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v14    # "numMethods":I
    .end local v16    # "primArgTypes":[Lgnu/bytecode/Type;
    .end local v17    # "explicitFrameArg":I
    .end local v20    # "skipThisProc":Z
    .end local v23    # "mname":Ljava/lang/String;
    .end local v24    # "applyArgs":[Lgnu/bytecode/Type;
    .end local v25    # "needsThis":I
    .end local v26    # "pendingIfEnds":I
    .end local v27    # "line":I
    .end local v28    # "var":Lgnu/expr/Declaration;
    .end local v29    # "methodIndex":I
    .end local v31    # "varArgs":Z
    .end local v32    # "primMethods":[Lgnu/bytecode/Method;
    .end local v33    # "needThisApply":Z
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    .local v1, "needThisApply":Z
    .local v2, "aswitch":Lgnu/bytecode/SwitchState;
    .local v3, "mname":Ljava/lang/String;
    .local v4, "applyArgs":[Lgnu/bytecode/Type;
    :goto_16
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v7, p1

    move/from16 v9, v19

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v30

    const/4 v14, 0x2

    .end local v18    # "j":I
    .local v5, "j":I
    goto/16 :goto_3

    .end local v19    # "numApplyMethods":I
    .end local v21    # "save_class":Lgnu/bytecode/ClassType;
    .end local v22    # "save_method":Lgnu/bytecode/Method;
    .end local v30    # "procType":Lgnu/bytecode/ClassType;
    .local v9, "numApplyMethods":I
    .local v10, "save_class":Lgnu/bytecode/ClassType;
    .local v11, "procType":Lgnu/bytecode/ClassType;
    .local v12, "save_method":Lgnu/bytecode/Method;
    :cond_20
    move/from16 v18, v5

    move/from16 v19, v9

    move-object/from16 v21, v10

    move-object/from16 v30, v11

    move-object/from16 v22, v12

    .line 1799
    .end local v5    # "j":I
    .end local v9    # "numApplyMethods":I
    .end local v10    # "save_class":Lgnu/bytecode/ClassType;
    .end local v11    # "procType":Lgnu/bytecode/ClassType;
    .end local v12    # "save_method":Lgnu/bytecode/Method;
    .restart local v19    # "numApplyMethods":I
    .restart local v21    # "save_class":Lgnu/bytecode/ClassType;
    .restart local v22    # "save_method":Lgnu/bytecode/Method;
    .restart local v30    # "procType":Lgnu/bytecode/ClassType;
    if-eqz v1, :cond_24

    .line 1801
    invoke-virtual {v2, v0}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1802
    sget v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v10, 0x2

    if-lt v5, v10, :cond_21

    .line 1804
    sget-object v5, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v7, "applyError"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    .line 1806
    .local v5, "errMethod":Lgnu/bytecode/Method;
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1807
    .end local v5    # "errMethod":Lgnu/bytecode/Method;
    goto :goto_19

    .line 1810
    :cond_21
    const/4 v8, 0x0

    const/4 v5, 0x4

    if-le v15, v5, :cond_22

    const/4 v5, 0x2

    goto :goto_17

    :cond_22
    add-int/lit8 v5, v15, 0x1

    .line 1811
    .local v5, "nargs":I
    :goto_17
    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 1812
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_18
    if-ge v7, v5, :cond_23

    .line 1813
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1812
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 1814
    .end local v7    # "k":I
    :cond_23
    sget-object v7, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1816
    .end local v5    # "nargs":I
    :goto_19
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1817
    invoke-virtual {v2, v0}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    goto :goto_1a

    .line 1799
    :cond_24
    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 1631
    .end local v1    # "needThisApply":Z
    .end local v2    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v3    # "mname":Ljava/lang/String;
    .end local v4    # "applyArgs":[Lgnu/bytecode/Type;
    :goto_1a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    move/from16 v9, v19

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v30

    const/4 v14, 0x2

    goto/16 :goto_2

    .end local v19    # "numApplyMethods":I
    .end local v21    # "save_class":Lgnu/bytecode/ClassType;
    .end local v22    # "save_method":Lgnu/bytecode/Method;
    .end local v30    # "procType":Lgnu/bytecode/ClassType;
    .restart local v9    # "numApplyMethods":I
    .restart local v10    # "save_class":Lgnu/bytecode/ClassType;
    .restart local v11    # "procType":Lgnu/bytecode/ClassType;
    .restart local v12    # "save_method":Lgnu/bytecode/Method;
    :cond_25
    move-object/from16 v21, v10

    move-object/from16 v22, v12

    .line 1820
    .end local v10    # "save_class":Lgnu/bytecode/ClassType;
    .end local v12    # "save_method":Lgnu/bytecode/Method;
    .end local v15    # "i":I
    .restart local v21    # "save_class":Lgnu/bytecode/ClassType;
    .restart local v22    # "save_method":Lgnu/bytecode/Method;
    move-object/from16 v1, v22

    .end local v22    # "save_method":Lgnu/bytecode/Method;
    .local v1, "save_method":Lgnu/bytecode/Method;
    iput-object v1, v6, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1821
    move-object/from16 v2, v21

    .end local v21    # "save_class":Lgnu/bytecode/ClassType;
    .local v2, "save_class":Lgnu/bytecode/ClassType;
    iput-object v2, v6, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1822
    return-void
.end method

.method generateBytecode()V
    .locals 35

    .line 2018
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 2019
    .local v2, "module":Lgnu/expr/ModuleExp;
    sget-boolean v0, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v0, :cond_0

    .line 2021
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 2022
    .local v0, "dout":Lgnu/mapping/OutPort;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Compiling final "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v2, v0}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 2025
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Lgnu/mapping/OutPort;->println(C)V

    .line 2026
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 2029
    .end local v0    # "dout":Lgnu/mapping/OutPort;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 2030
    .local v3, "neededSuper":Lgnu/bytecode/ClassType;
    iget-object v0, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0, v3}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2031
    iget-object v0, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 2034
    :cond_1
    new-instance v0, Lgnu/bytecode/ClassType;

    const-string v5, "frame"

    invoke-virtual {v1, v5}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 2035
    iget-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2036
    iget-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 2037
    iget-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v0, v4}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 2040
    :goto_0
    iget-object v0, v2, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 2042
    iget-object v5, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2043
    .local v5, "saveLambda":Lgnu/expr/LambdaExp;
    iput-object v2, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2045
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 2047
    const/4 v0, 0x1

    .line 2048
    .local v0, "arg_count":I
    new-array v8, v7, [Lgnu/bytecode/Type;

    .line 2049
    .local v8, "arg_types":[Lgnu/bytecode/Type;
    sget-object v9, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v9, v8, v6

    move-object v9, v8

    move v8, v0

    goto :goto_3

    .line 2051
    .end local v0    # "arg_count":I
    .end local v8    # "arg_types":[Lgnu/bytecode/Type;
    :cond_2
    iget v0, v2, Lgnu/expr/ModuleExp;->min_args:I

    iget v8, v2, Lgnu/expr/ModuleExp;->max_args:I

    if-ne v0, v8, :cond_5

    iget v0, v2, Lgnu/expr/ModuleExp;->min_args:I

    const/4 v8, 0x4

    if-le v0, v8, :cond_3

    goto :goto_2

    .line 2059
    :cond_3
    iget v0, v2, Lgnu/expr/ModuleExp;->min_args:I

    .line 2060
    .restart local v0    # "arg_count":I
    new-array v8, v0, [Lgnu/bytecode/Type;

    .line 2061
    .restart local v8    # "arg_types":[Lgnu/bytecode/Type;
    move v9, v0

    .local v9, "i":I
    :goto_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_4

    .line 2062
    sget-object v10, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v10, v8, v9

    goto :goto_1

    .line 2061
    :cond_4
    move-object v9, v8

    move v8, v0

    goto :goto_3

    .line 2053
    .end local v0    # "arg_count":I
    .end local v8    # "arg_types":[Lgnu/bytecode/Type;
    .end local v9    # "i":I
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 2054
    .restart local v0    # "arg_count":I
    new-array v8, v7, [Lgnu/bytecode/Type;

    .line 2055
    .restart local v8    # "arg_types":[Lgnu/bytecode/Type;
    new-instance v9, Lgnu/bytecode/ArrayType;

    sget-object v10, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-direct {v9, v10}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v9, v8, v6

    move-object v9, v8

    move v8, v0

    .line 2066
    .end local v0    # "arg_count":I
    .local v8, "arg_count":I
    .local v9, "arg_types":[Lgnu/bytecode/Type;
    :goto_3
    iget-object v10, v2, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2067
    .local v10, "heapFrame":Lgnu/bytecode/Variable;
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v11

    .line 2070
    .local v11, "staticModule":Z
    iget-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v12, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v13, 0x11

    const-string v14, "run"

    invoke-virtual {v0, v14, v9, v12, v13}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v12

    .line 2072
    .local v12, "apply_method":Lgnu/bytecode/Method;
    iput-object v12, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2077
    iget-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->initCode()V

    .line 2078
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2081
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v13, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v13}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object v13, v4

    goto :goto_4

    :cond_6
    iget-object v13, v2, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v13}, Lgnu/expr/ModuleExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v13

    :goto_4
    iput-object v13, v1, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    .line 2082
    iget-object v13, v2, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    iput-object v13, v2, Lgnu/expr/ModuleExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 2083
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v4

    goto :goto_5

    :cond_7
    iget-object v13, v2, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    :goto_5
    iput-object v13, v2, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2084
    invoke-virtual {v2, v1}, Lgnu/expr/ModuleExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 2086
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2088
    :cond_8
    new-instance v13, Lgnu/bytecode/Variable;

    const-string v15, "$ctx"

    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v13, v15, v4}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v13, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2089
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v4

    iget-object v13, v1, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    iget-object v15, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v4, v13, v15}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 2090
    iget-object v4, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v4, v7}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 2093
    :cond_9
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->getLineNumber()I

    move-result v4

    .line 2094
    .local v4, "line":I
    if-lez v4, :cond_a

    .line 2095
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v4}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 2097
    :cond_a
    invoke-virtual {v2, v1}, Lgnu/expr/ModuleExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 2098
    invoke-virtual {v2, v1}, Lgnu/expr/ModuleExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 2099
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2101
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 2102
    sget-object v13, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v13}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2103
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v13

    iput-object v13, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    .line 2104
    iget-object v13, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    invoke-virtual {v13, v6, v0}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 2107
    :cond_b
    invoke-virtual {v2, v1}, Lgnu/expr/ModuleExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 2108
    invoke-virtual {v2, v1}, Lgnu/expr/ModuleExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 2110
    const/4 v13, 0x0

    .line 2111
    .local v13, "startLiterals":Lgnu/bytecode/Label;
    const/4 v15, 0x0

    .line 2112
    .local v15, "afterLiterals":Lgnu/bytecode/Label;
    const/16 v17, 0x0

    .line 2114
    .local v17, "initMethod":Lgnu/bytecode/Method;
    iget-object v7, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v6, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v20, v3

    .end local v3    # "neededSuper":Lgnu/bytecode/ClassType;
    .local v20, "neededSuper":Lgnu/bytecode/ClassType;
    if-ne v7, v6, :cond_10

    .line 2116
    iget-object v6, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2117
    .local v6, "save_method":Lgnu/bytecode/Method;
    iget-object v7, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2118
    .local v7, "callContextSave":Lgnu/bytecode/Variable;
    const/4 v3, 0x0

    iput-object v3, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2120
    invoke-direct/range {p0 .. p0}, Lgnu/expr/Compilation;->startClassInit()Lgnu/bytecode/Method;

    move-result-object v3

    .line 2121
    .end local v17    # "initMethod":Lgnu/bytecode/Method;
    .local v3, "initMethod":Lgnu/bytecode/Method;
    iput-object v3, v1, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2124
    move-object/from16 v17, v3

    .end local v3    # "initMethod":Lgnu/bytecode/Method;
    .restart local v17    # "initMethod":Lgnu/bytecode/Method;
    new-instance v3, Lgnu/bytecode/Label;

    invoke-direct {v3, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v13, v3

    .line 2125
    new-instance v3, Lgnu/bytecode/Label;

    invoke-direct {v3, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v15, v3

    .line 2126
    invoke-virtual {v0, v15, v13}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2128
    if-eqz v11, :cond_c

    .line 2130
    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 2132
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2133
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2134
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v3, v3, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2135
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move/from16 v22, v4

    .end local v4    # "line":I
    .local v22, "line":I
    iget-object v4, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move/from16 v23, v8

    .end local v8    # "arg_count":I
    .local v23, "arg_count":I
    const/16 v8, 0x19

    move-object/from16 v24, v9

    .end local v9    # "arg_types":[Lgnu/bytecode/Type;
    .local v24, "arg_types":[Lgnu/bytecode/Type;
    const-string v9, "$instance"

    invoke-virtual {v3, v9, v4, v8}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v3

    iput-object v3, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 2138
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_6

    .line 2128
    .end local v22    # "line":I
    .end local v23    # "arg_count":I
    .end local v24    # "arg_types":[Lgnu/bytecode/Type;
    .restart local v4    # "line":I
    .restart local v8    # "arg_count":I
    .restart local v9    # "arg_types":[Lgnu/bytecode/Type;
    :cond_c
    move/from16 v22, v4

    move/from16 v23, v8

    move-object/from16 v24, v9

    .line 2141
    .end local v4    # "line":I
    .end local v8    # "arg_count":I
    .end local v9    # "arg_types":[Lgnu/bytecode/Type;
    .restart local v22    # "line":I
    .restart local v23    # "arg_count":I
    .restart local v24    # "arg_types":[Lgnu/bytecode/Type;
    :goto_6
    iget-object v3, v1, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    move-object v4, v3

    .local v4, "init":Lgnu/expr/Initializer;
    if-eqz v3, :cond_d

    .line 2143
    const/4 v3, 0x0

    iput-object v3, v1, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 2144
    invoke-direct {v1, v4}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_6

    .line 2147
    :cond_d
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2149
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2150
    sget-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const/4 v8, 0x0

    invoke-virtual {v3, v14, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 2152
    :cond_e
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2154
    iget-object v3, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v8, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v3, v8, :cond_f

    if-nez v11, :cond_f

    iget-boolean v3, v1, Lgnu/expr/Compilation;->generateMain:Z

    if-nez v3, :cond_f

    iget-boolean v3, v1, Lgnu/expr/Compilation;->immediate:Z

    if-nez v3, :cond_f

    .line 2158
    iget-object v3, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v8, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v9, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "init":Lgnu/expr/Initializer;
    .local v16, "init":Lgnu/expr/Initializer;
    invoke-virtual {v3, v14, v4, v8, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    iput-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2160
    iget-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2161
    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 2162
    .local v3, "ctxVar":Lgnu/bytecode/Variable;
    sget-object v4, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 2163
    .local v4, "saveVar":Lgnu/bytecode/Variable;
    sget-object v8, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 2165
    .local v8, "exceptionVar":Lgnu/bytecode/Variable;
    sget-object v9, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2166
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2167
    sget-object v9, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v14, "consumer"

    invoke-virtual {v9, v14}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v9

    .line 2169
    .local v9, "consumerFld":Lgnu/bytecode/Field;
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2170
    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2171
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2173
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2174
    const-string v14, "gnu.lists.VoidConsumer"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    move/from16 v25, v11

    .end local v11    # "staticModule":Z
    .local v25, "staticModule":Z
    const-string v11, "instance"

    invoke-virtual {v14, v11}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2176
    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 2178
    sget-object v11, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v11}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2180
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2181
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2182
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2184
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2185
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2187
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2188
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2189
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2190
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2192
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2193
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2194
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2195
    sget-object v11, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v14, "runCleanup"

    move-object/from16 v26, v3

    const/4 v3, 0x3

    .end local v3    # "ctxVar":Lgnu/bytecode/Variable;
    .local v26, "ctxVar":Lgnu/bytecode/Variable;
    invoke-virtual {v11, v14, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2197
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto :goto_7

    .line 2154
    .end local v8    # "exceptionVar":Lgnu/bytecode/Variable;
    .end local v9    # "consumerFld":Lgnu/bytecode/Field;
    .end local v16    # "init":Lgnu/expr/Initializer;
    .end local v25    # "staticModule":Z
    .end local v26    # "ctxVar":Lgnu/bytecode/Variable;
    .local v4, "init":Lgnu/expr/Initializer;
    .restart local v11    # "staticModule":Z
    :cond_f
    move-object/from16 v16, v4

    move/from16 v25, v11

    .line 2200
    .end local v4    # "init":Lgnu/expr/Initializer;
    .end local v11    # "staticModule":Z
    .restart local v16    # "init":Lgnu/expr/Initializer;
    .restart local v25    # "staticModule":Z
    :goto_7
    iput-object v6, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2201
    iput-object v7, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v3, v17

    goto :goto_8

    .line 2114
    .end local v6    # "save_method":Lgnu/bytecode/Method;
    .end local v7    # "callContextSave":Lgnu/bytecode/Variable;
    .end local v16    # "init":Lgnu/expr/Initializer;
    .end local v22    # "line":I
    .end local v23    # "arg_count":I
    .end local v24    # "arg_types":[Lgnu/bytecode/Type;
    .end local v25    # "staticModule":Z
    .local v4, "line":I
    .local v8, "arg_count":I
    .local v9, "arg_types":[Lgnu/bytecode/Type;
    .restart local v11    # "staticModule":Z
    :cond_10
    move/from16 v22, v4

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v11

    .end local v4    # "line":I
    .end local v8    # "arg_count":I
    .end local v9    # "arg_types":[Lgnu/bytecode/Type;
    .end local v11    # "staticModule":Z
    .restart local v22    # "line":I
    .restart local v23    # "arg_count":I
    .restart local v24    # "arg_types":[Lgnu/bytecode/Type;
    .restart local v25    # "staticModule":Z
    move-object/from16 v3, v17

    .line 2204
    .end local v17    # "initMethod":Lgnu/bytecode/Method;
    .local v3, "initMethod":Lgnu/bytecode/Method;
    :goto_8
    invoke-virtual {v2, v1}, Lgnu/expr/ModuleExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 2206
    iput-object v5, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2208
    iput-object v10, v2, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2209
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2211
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2212
    iget-object v4, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    invoke-virtual {v4, v0}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2215
    :cond_11
    const/16 v4, 0x65

    if-nez v13, :cond_12

    iget-object v6, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_15

    .line 2217
    :cond_12
    iput-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 2220
    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    move-object v7, v0

    .line 2221
    .local v7, "endLiterals":Lgnu/bytecode/Label;
    invoke-virtual {v6, v13, v7}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2223
    iget-object v0, v1, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_13

    .line 2225
    sget-object v0, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2226
    iget-object v0, v1, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2231
    :cond_13
    :try_start_0
    iget-boolean v0, v1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_14

    .line 2233
    invoke-static/range {p0 .. p0}, Lgnu/expr/Compilation;->registerForImmediateLiterals(Lgnu/expr/Compilation;)I

    move-result v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2234
    const-string v0, "gnu.expr.Compilation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v8, "setupLiterals"

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_9

    .line 2238
    :cond_14
    iget-object v0, v1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v0}, Lgnu/expr/LitTable;->emit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    :goto_9
    goto :goto_a

    .line 2240
    :catchall_0
    move-exception v0

    .line 2242
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Literals: Internal error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2244
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_a
    invoke-virtual {v6, v7, v15}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    move-object v0, v6

    .line 2247
    .end local v6    # "code":Lgnu/bytecode/CodeAttr;
    .end local v7    # "endLiterals":Lgnu/bytecode/Label;
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    :cond_15
    iget-boolean v6, v1, Lgnu/expr/Compilation;->generateMain:Z

    if-eqz v6, :cond_18

    iget-object v6, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v7, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v6, v7, :cond_18

    .line 2249
    const/4 v6, 0x1

    new-array v7, v6, [Lgnu/bytecode/Type;

    new-instance v6, Lgnu/bytecode/ArrayType;

    sget-object v8, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    invoke-direct {v6, v8}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    const/4 v8, 0x0

    aput-object v6, v7, v8

    move-object v6, v7

    .line 2250
    .local v6, "args":[Lgnu/bytecode/Type;
    iget-object v7, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const/16 v8, 0x9

    sget-object v9, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v11, "main"

    invoke-virtual {v7, v11, v8, v6, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    iput-object v7, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2253
    iget-object v7, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v7}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2255
    sget-object v7, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    if-eqz v7, :cond_16

    .line 2257
    sget-object v7, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2258
    const-string v7, "kawa.Shell"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    const-string v8, "setDefaultFormat"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2261
    :cond_16
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2262
    const-string v7, "gnu.expr.ApplicationMainSupport"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    const-string v8, "processArgs"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2264
    iget-object v7, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    if-eqz v7, :cond_17

    .line 2265
    iget-object v7, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_b

    .line 2268
    :cond_17
    iget-object v7, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2269
    iget-object v7, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2270
    iget-object v7, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v7, v7, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2272
    :goto_b
    sget-object v7, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v8, "runAsMain"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2273
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    move-object v6, v0

    goto :goto_c

    .line 2277
    .end local v6    # "args":[Lgnu/bytecode/Type;
    :cond_18
    move-object v6, v0

    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    .local v6, "code":Lgnu/bytecode/CodeAttr;
    :goto_c
    iget-object v0, v1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    if-eqz v0, :cond_20

    iget-object v0, v1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "uri":Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 2281
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v8

    .line 2282
    .local v8, "manager":Lgnu/expr/ModuleManager;
    iget-object v0, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2283
    .local v9, "mainPrefix":Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2284
    .local v14, "dot":I
    if-gez v14, :cond_19

    .line 2286
    const-string v0, ""

    move-object/from16 v26, v2

    move-object v2, v0

    .end local v9    # "mainPrefix":Ljava/lang/String;
    .local v0, "mainPrefix":Ljava/lang/String;
    goto :goto_e

    .line 2290
    .end local v0    # "mainPrefix":Ljava/lang/String;
    .restart local v9    # "mainPrefix":Ljava/lang/String;
    :cond_19
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2293
    .local v4, "mainPackage":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v8, v4}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2302
    move-object/from16 v26, v2

    goto :goto_d

    .line 2299
    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 2301
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v2

    .end local v2    # "module":Lgnu/expr/ModuleExp;
    .local v26, "module":Lgnu/expr/ModuleExp;
    const-string v2, "error loading map for "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " - "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x65

    invoke-virtual {v1, v11, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_d

    .line 2295
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v26    # "module":Lgnu/expr/ModuleExp;
    .restart local v2    # "module":Lgnu/expr/ModuleExp;
    :catch_0
    move-exception v0

    move-object/from16 v26, v2

    .line 2302
    .end local v2    # "module":Lgnu/expr/ModuleExp;
    .restart local v26    # "module":Lgnu/expr/ModuleExp;
    nop

    .line 2303
    :goto_d
    add-int/lit8 v0, v14, 0x1

    const/4 v2, 0x0

    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2305
    .end local v4    # "mainPackage":Ljava/lang/String;
    .end local v9    # "mainPrefix":Ljava/lang/String;
    .local v2, "mainPrefix":Ljava/lang/String;
    :goto_e
    new-instance v0, Lgnu/bytecode/ClassType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "$ModulesMap$"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2306
    .local v4, "mapClass":Lgnu/bytecode/ClassType;
    const-string v0, "gnu.expr.ModuleSet"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    .line 2307
    .local v9, "typeModuleSet":Lgnu/bytecode/ClassType;
    invoke-virtual {v4, v9}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2308
    invoke-direct {v1, v4}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 2310
    sget-object v0, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v11, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v17, v3

    .end local v3    # "initMethod":Lgnu/bytecode/Method;
    .restart local v17    # "initMethod":Lgnu/bytecode/Method;
    const-string v3, "<init>"

    move-object/from16 v27, v5

    const/4 v5, 0x1

    .end local v5    # "saveLambda":Lgnu/expr/LambdaExp;
    .local v27, "saveLambda":Lgnu/expr/LambdaExp;
    invoke-virtual {v4, v3, v5, v0, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2312
    sget-object v0, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v11, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v9, v3, v5, v0, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 2315
    .local v3, "superConstructor":Lgnu/bytecode/Method;
    iget-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2316
    .end local v6    # "code":Lgnu/bytecode/CodeAttr;
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2317
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2318
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2320
    const-string v5, "gnu.expr.ModuleManager"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 2321
    .local v5, "typeModuleManager":Lgnu/bytecode/ClassType;
    const/4 v6, 0x1

    new-array v11, v6, [Lgnu/bytecode/Type;

    const/16 v18, 0x0

    aput-object v5, v11, v18

    .line 2322
    .local v11, "margs":[Lgnu/bytecode/Type;
    move-object/from16 v19, v0

    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    .local v19, "code":Lgnu/bytecode/CodeAttr;
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v28, v3

    .end local v3    # "superConstructor":Lgnu/bytecode/Method;
    .local v28, "superConstructor":Lgnu/bytecode/Method;
    const-string v3, "register"

    invoke-virtual {v4, v3, v11, v0, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2324
    iget-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 2325
    .end local v19    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v6    # "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v19, v4

    const/4 v4, 0x3

    .end local v4    # "mapClass":Lgnu/bytecode/ClassType;
    .local v19, "mapClass":Lgnu/bytecode/ClassType;
    invoke-virtual {v5, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 2327
    .local v3, "reg":Lgnu/bytecode/Method;
    iget v0, v8, Lgnu/expr/ModuleManager;->numModules:I

    .local v0, "i":I
    :goto_f
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_1e

    .line 2329
    iget-object v0, v8, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move-object/from16 v21, v5

    .end local v5    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .local v21, "typeModuleManager":Lgnu/bytecode/ClassType;
    aget-object v5, v0, v4

    .line 2330
    .local v5, "mi":Lgnu/expr/ModuleInfo;
    move/from16 v29, v4

    .end local v4    # "i":I
    .local v29, "i":I
    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 2331
    .local v4, "miClassName":Ljava/lang/String;
    if-eqz v4, :cond_1d

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2333
    move-object/from16 v30, v7

    move-object/from16 v16, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    goto/16 :goto_12

    .line 2334
    :cond_1a
    move-object/from16 v30, v7

    .end local v7    # "uri":Ljava/lang/String;
    .local v30, "uri":Ljava/lang/String;
    iget-object v7, v5, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 2335
    .local v7, "moduleSource":Ljava/lang/String;
    move-object/from16 v31, v9

    .end local v9    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .local v31, "typeModuleSet":Lgnu/bytecode/ClassType;
    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v9

    .line 2336
    .local v9, "moduleUri":Ljava/lang/String;
    move-object/from16 v32, v10

    const/4 v10, 0x1

    .end local v10    # "heapFrame":Lgnu/bytecode/Variable;
    .local v32, "heapFrame":Lgnu/bytecode/Variable;
    invoke-virtual {v6, v10}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2337
    invoke-virtual {v1, v4}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2338
    invoke-static {v7}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2344
    :try_start_2
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2345
    .local v0, "sep":C
    invoke-virtual {v8}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v33, v18

    .line 2346
    .local v33, "path":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v34, v4

    move-object/from16 v4, v33

    .end local v33    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    .local v34, "miClassName":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v33, v4

    move-object/from16 v16, v8

    const/16 v4, 0x2e

    .end local v4    # "path":Ljava/lang/String;
    .end local v8    # "manager":Lgnu/expr/ModuleManager;
    .local v16, "manager":Lgnu/expr/ModuleManager;
    .restart local v33    # "path":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2347
    .end local v33    # "path":Ljava/lang/String;
    .local v8, "path":Ljava/lang/String;
    invoke-static {v8}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 2348
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    .line 2349
    .local v10, "plen":I
    if-lez v10, :cond_1b

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_1b

    .line 2350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    .line 2351
    :cond_1b
    invoke-virtual {v5}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v7, v4

    .line 2359
    .end local v0    # "sep":C
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "plen":I
    goto :goto_11

    .line 2354
    :catchall_2
    move-exception v0

    goto :goto_10

    .end local v16    # "manager":Lgnu/expr/ModuleManager;
    .local v8, "manager":Lgnu/expr/ModuleManager;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "manager":Lgnu/expr/ModuleManager;
    .restart local v16    # "manager":Lgnu/expr/ModuleManager;
    goto :goto_10

    .end local v16    # "manager":Lgnu/expr/ModuleManager;
    .end local v34    # "miClassName":Ljava/lang/String;
    .local v4, "miClassName":Ljava/lang/String;
    .restart local v8    # "manager":Lgnu/expr/ModuleManager;
    :catchall_4
    move-exception v0

    move-object/from16 v34, v4

    move-object/from16 v16, v8

    .line 2356
    .end local v4    # "miClassName":Ljava/lang/String;
    .end local v8    # "manager":Lgnu/expr/ModuleManager;
    .local v0, "ex":Ljava/lang/Throwable;
    .restart local v16    # "manager":Lgnu/expr/ModuleManager;
    .restart local v34    # "miClassName":Ljava/lang/String;
    :goto_10
    new-instance v4, Lgnu/mapping/WrappedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception while fixing up \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x27

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2338
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v16    # "manager":Lgnu/expr/ModuleManager;
    .end local v34    # "miClassName":Ljava/lang/String;
    .restart local v4    # "miClassName":Ljava/lang/String;
    .restart local v8    # "manager":Lgnu/expr/ModuleManager;
    :cond_1c
    move-object/from16 v34, v4

    move-object/from16 v16, v8

    .line 2360
    .end local v4    # "miClassName":Ljava/lang/String;
    .end local v8    # "manager":Lgnu/expr/ModuleManager;
    .restart local v16    # "manager":Lgnu/expr/ModuleManager;
    .restart local v34    # "miClassName":Ljava/lang/String;
    :goto_11
    invoke-virtual {v1, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2361
    invoke-virtual {v1, v9}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2362
    invoke-virtual {v6, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2363
    .end local v5    # "mi":Lgnu/expr/ModuleInfo;
    .end local v7    # "moduleSource":Ljava/lang/String;
    .end local v9    # "moduleUri":Ljava/lang/String;
    .end local v34    # "miClassName":Ljava/lang/String;
    goto :goto_12

    .line 2331
    .end local v16    # "manager":Lgnu/expr/ModuleManager;
    .end local v30    # "uri":Ljava/lang/String;
    .end local v31    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .end local v32    # "heapFrame":Lgnu/bytecode/Variable;
    .restart local v4    # "miClassName":Ljava/lang/String;
    .restart local v5    # "mi":Lgnu/expr/ModuleInfo;
    .local v7, "uri":Ljava/lang/String;
    .restart local v8    # "manager":Lgnu/expr/ModuleManager;
    .local v9, "typeModuleSet":Lgnu/bytecode/ClassType;
    .local v10, "heapFrame":Lgnu/bytecode/Variable;
    :cond_1d
    move-object/from16 v34, v4

    move-object/from16 v30, v7

    move-object/from16 v16, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    .line 2327
    .end local v4    # "miClassName":Ljava/lang/String;
    .end local v5    # "mi":Lgnu/expr/ModuleInfo;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v8    # "manager":Lgnu/expr/ModuleManager;
    .end local v9    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .end local v10    # "heapFrame":Lgnu/bytecode/Variable;
    .restart local v16    # "manager":Lgnu/expr/ModuleManager;
    .restart local v30    # "uri":Ljava/lang/String;
    .restart local v31    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .restart local v32    # "heapFrame":Lgnu/bytecode/Variable;
    :goto_12
    move-object/from16 v8, v16

    move-object/from16 v5, v21

    move/from16 v0, v29

    move-object/from16 v7, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    goto/16 :goto_f

    .end local v16    # "manager":Lgnu/expr/ModuleManager;
    .end local v21    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .end local v29    # "i":I
    .end local v30    # "uri":Ljava/lang/String;
    .end local v31    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .end local v32    # "heapFrame":Lgnu/bytecode/Variable;
    .local v4, "i":I
    .local v5, "typeModuleManager":Lgnu/bytecode/ClassType;
    .restart local v7    # "uri":Ljava/lang/String;
    .restart local v8    # "manager":Lgnu/expr/ModuleManager;
    .restart local v9    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .restart local v10    # "heapFrame":Lgnu/bytecode/Variable;
    :cond_1e
    move/from16 v29, v4

    move-object/from16 v21, v5

    move-object/from16 v30, v7

    move-object/from16 v16, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    .line 2364
    .end local v4    # "i":I
    .end local v5    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v8    # "manager":Lgnu/expr/ModuleManager;
    .end local v9    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .end local v10    # "heapFrame":Lgnu/bytecode/Variable;
    .restart local v16    # "manager":Lgnu/expr/ModuleManager;
    .restart local v21    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .restart local v30    # "uri":Ljava/lang/String;
    .restart local v31    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .restart local v32    # "heapFrame":Lgnu/bytecode/Variable;
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto :goto_13

    .line 2277
    .end local v11    # "margs":[Lgnu/bytecode/Type;
    .end local v14    # "dot":I
    .end local v16    # "manager":Lgnu/expr/ModuleManager;
    .end local v17    # "initMethod":Lgnu/bytecode/Method;
    .end local v19    # "mapClass":Lgnu/bytecode/ClassType;
    .end local v21    # "typeModuleManager":Lgnu/bytecode/ClassType;
    .end local v26    # "module":Lgnu/expr/ModuleExp;
    .end local v27    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v28    # "superConstructor":Lgnu/bytecode/Method;
    .end local v30    # "uri":Ljava/lang/String;
    .end local v31    # "typeModuleSet":Lgnu/bytecode/ClassType;
    .end local v32    # "heapFrame":Lgnu/bytecode/Variable;
    .local v2, "module":Lgnu/expr/ModuleExp;
    .local v3, "initMethod":Lgnu/bytecode/Method;
    .local v5, "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v7    # "uri":Ljava/lang/String;
    .restart local v10    # "heapFrame":Lgnu/bytecode/Variable;
    :cond_1f
    move-object/from16 v26, v2

    move-object/from16 v17, v3

    move-object/from16 v27, v5

    move-object/from16 v30, v7

    move-object/from16 v32, v10

    .end local v2    # "module":Lgnu/expr/ModuleExp;
    .end local v3    # "initMethod":Lgnu/bytecode/Method;
    .end local v5    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v10    # "heapFrame":Lgnu/bytecode/Variable;
    .restart local v17    # "initMethod":Lgnu/bytecode/Method;
    .restart local v26    # "module":Lgnu/expr/ModuleExp;
    .restart local v27    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v30    # "uri":Ljava/lang/String;
    .restart local v32    # "heapFrame":Lgnu/bytecode/Variable;
    goto :goto_13

    .end local v17    # "initMethod":Lgnu/bytecode/Method;
    .end local v26    # "module":Lgnu/expr/ModuleExp;
    .end local v27    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v30    # "uri":Ljava/lang/String;
    .end local v32    # "heapFrame":Lgnu/bytecode/Variable;
    .restart local v2    # "module":Lgnu/expr/ModuleExp;
    .restart local v3    # "initMethod":Lgnu/bytecode/Method;
    .restart local v5    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v10    # "heapFrame":Lgnu/bytecode/Variable;
    :cond_20
    move-object/from16 v26, v2

    move-object/from16 v17, v3

    move-object/from16 v27, v5

    move-object/from16 v32, v10

    .line 2366
    .end local v2    # "module":Lgnu/expr/ModuleExp;
    .end local v3    # "initMethod":Lgnu/bytecode/Method;
    .end local v5    # "saveLambda":Lgnu/expr/LambdaExp;
    .end local v10    # "heapFrame":Lgnu/bytecode/Variable;
    .restart local v17    # "initMethod":Lgnu/bytecode/Method;
    .restart local v26    # "module":Lgnu/expr/ModuleExp;
    .restart local v27    # "saveLambda":Lgnu/expr/LambdaExp;
    .restart local v32    # "heapFrame":Lgnu/bytecode/Variable;
    :goto_13
    return-void
.end method

.method public generateClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "hint"    # Ljava/lang/String;

    .line 959
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 960
    iget-object v0, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 962
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 964
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-nez v0, :cond_2

    .line 965
    return-object p1

    .line 966
    :cond_2
    const/4 v0, 0x0

    .line 968
    .local v0, "i":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, "new_hint":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    if-nez v2, :cond_3

    .line 970
    return-object v1

    .line 966
    .end local v1    # "new_hint":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V
    .locals 10
    .param p1, "clas"    # Lgnu/bytecode/ClassType;
    .param p2, "lexp"    # Lgnu/expr/LambdaExp;

    .line 1175
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1176
    .local v0, "save_method":Lgnu/bytecode/Method;
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1177
    .local v1, "callContextSave":Lgnu/bytecode/Variable;
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1178
    iget-object v3, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1179
    .local v3, "save_class":Lgnu/bytecode/ClassType;
    iput-object p1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1180
    invoke-static {p1, p2}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 1181
    .local v4, "constructor_method":Lgnu/bytecode/Method;
    iput-object v4, p1, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    .line 1182
    iput-object v4, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1183
    invoke-virtual {v4}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 1185
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    instance-of v6, p2, Lgnu/expr/ClassExp;

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-object v6, p2, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v6, :cond_0

    .line 1187
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1188
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v6

    invoke-virtual {v6, v7}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1189
    iget-object v6, p2, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1191
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 1192
    .local v6, "superClass":Lgnu/bytecode/ClassType;
    invoke-static {v6, p0, p2}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    .line 1194
    iget-object v8, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    iget-object v9, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v8, v8, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 1199
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1200
    const-string v8, "gnu.expr.ModuleInfo"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    const-string v9, "register"

    invoke-virtual {v8, v9, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1204
    :cond_1
    if-eqz p2, :cond_3

    iget-object v7, p2, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    if-eqz v7, :cond_3

    .line 1208
    iget-object v7, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1209
    .local v7, "save":Lgnu/expr/LambdaExp;
    new-instance v8, Lgnu/expr/LambdaExp;

    invoke-direct {v8}, Lgnu/expr/LambdaExp;-><init>()V

    iput-object v8, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1210
    iget-object v8, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    iput-object v9, v8, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1211
    iget-object v8, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    iput-object v7, v8, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 1213
    :goto_0
    iget-object v8, p2, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    move-object v9, v8

    .local v9, "init":Lgnu/expr/Initializer;
    if-eqz v8, :cond_2

    .line 1215
    iput-object v2, p2, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    .line 1216
    invoke-direct {p0, v9}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_0

    .line 1218
    :cond_2
    iput-object v7, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1221
    .end local v7    # "save":Lgnu/expr/LambdaExp;
    .end local v9    # "init":Lgnu/expr/Initializer;
    :cond_3
    instance-of v2, p2, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_4

    .line 1223
    move-object v2, p2

    check-cast v2, Lgnu/expr/ClassExp;

    .line 1224
    .local v2, "cexp":Lgnu/expr/ClassExp;
    invoke-virtual {v2, p0}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v7

    new-instance v8, Ljava/util/Vector;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p0, v7, v8}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1227
    .end local v2    # "cexp":Lgnu/expr/ClassExp;
    :cond_4
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1228
    iput-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1229
    iput-object v3, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1230
    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1231
    return-void
.end method

.method public final generateConstructor(Lgnu/expr/LambdaExp;)V
    .locals 1
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;

    .line 1170
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 1171
    return-void
.end method

.method public generateMatchMethods(Lgnu/expr/LambdaExp;)V
    .locals 30
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;

    .line 1294
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1296
    .local v2, "numApplyMethods":I
    :goto_0
    if-nez v2, :cond_1

    .line 1297
    return-void

    .line 1298
    :cond_1
    iget-object v4, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1299
    .local v4, "save_method":Lgnu/bytecode/Method;
    iget-object v5, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1300
    .local v5, "save_class":Lgnu/bytecode/ClassType;
    sget-object v6, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1301
    .local v6, "procType":Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v7

    iput-object v7, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1302
    iget-object v7, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v7

    sget-object v8, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1303
    iget-object v7, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iput-object v7, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1304
    :cond_2
    const/4 v7, 0x0

    .line 1305
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v9, 0x5

    if-gt v8, v9, :cond_19

    .line 1307
    const/4 v10, 0x0

    .line 1308
    .local v10, "needThisMatch":Z
    const/4 v11, 0x0

    .line 1309
    .local v11, "aswitch":Lgnu/bytecode/SwitchState;
    const/4 v12, 0x0

    .line 1310
    .local v12, "mname":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1311
    .local v13, "matchArgs":[Lgnu/bytecode/Type;
    move v14, v2

    .local v14, "j":I
    :goto_2
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_15

    .line 1313
    iget-object v15, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v15, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/expr/LambdaExp;

    .line 1316
    .local v15, "source":Lgnu/expr/LambdaExp;
    iget-object v3, v15, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 1317
    .local v3, "primMethods":[Lgnu/bytecode/Method;
    array-length v9, v3

    .line 1318
    .local v9, "numMethods":I
    iget v1, v15, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v1, :cond_4

    iget v1, v15, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v18, v2

    .end local v2    # "numApplyMethods":I
    .local v18, "numApplyMethods":I
    iget v2, v15, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v2, v9

    if-lt v1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .end local v18    # "numApplyMethods":I
    .restart local v2    # "numApplyMethods":I
    :cond_4
    move/from16 v18, v2

    .end local v2    # "numApplyMethods":I
    .restart local v18    # "numApplyMethods":I
    :goto_3
    const/4 v1, 0x1

    .line 1321
    .local v1, "varArgs":Z
    :goto_4
    const/4 v2, 0x5

    if-ge v8, v2, :cond_7

    .line 1323
    iget v2, v15, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v2, v8, v2

    .line 1324
    .local v2, "methodIndex":I
    if-ltz v2, :cond_6

    if-ge v2, v9, :cond_6

    move-object/from16 v19, v3

    .end local v3    # "primMethods":[Lgnu/bytecode/Method;
    .local v19, "primMethods":[Lgnu/bytecode/Method;
    add-int/lit8 v3, v9, -0x1

    if-ne v2, v3, :cond_5

    if-eqz v1, :cond_5

    .line 1326
    goto :goto_5

    .line 1327
    :cond_5
    const/4 v9, 0x1

    .line 1328
    const/4 v1, 0x0

    goto :goto_6

    .line 1324
    .end local v19    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v3    # "primMethods":[Lgnu/bytecode/Method;
    :cond_6
    move-object/from16 v19, v3

    .end local v3    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v19    # "primMethods":[Lgnu/bytecode/Method;
    goto :goto_5

    .line 1332
    .end local v2    # "methodIndex":I
    .end local v19    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v3    # "primMethods":[Lgnu/bytecode/Method;
    :cond_7
    move-object/from16 v19, v3

    .end local v3    # "primMethods":[Lgnu/bytecode/Method;
    .restart local v19    # "primMethods":[Lgnu/bytecode/Method;
    iget v2, v15, Lgnu/expr/LambdaExp;->min_args:I

    const/4 v3, 0x5

    rsub-int/lit8 v2, v2, 0x5

    .line 1333
    .restart local v2    # "methodIndex":I
    if-lez v2, :cond_8

    if-gt v9, v2, :cond_8

    if-nez v1, :cond_8

    .line 1334
    nop

    .line 1311
    .end local v1    # "varArgs":Z
    .end local v2    # "methodIndex":I
    .end local v9    # "numMethods":I
    .end local v15    # "source":Lgnu/expr/LambdaExp;
    .end local v19    # "primMethods":[Lgnu/bytecode/Method;
    :goto_5
    move-object/from16 v1, p1

    move/from16 v2, v18

    const/4 v9, 0x5

    goto :goto_2

    .line 1335
    .restart local v1    # "varArgs":Z
    .restart local v2    # "methodIndex":I
    .restart local v9    # "numMethods":I
    .restart local v15    # "source":Lgnu/expr/LambdaExp;
    .restart local v19    # "primMethods":[Lgnu/bytecode/Method;
    :cond_8
    add-int/lit8 v2, v9, -0x1

    .line 1337
    :goto_6
    if-nez v10, :cond_b

    .line 1340
    const/4 v3, 0x5

    if-ge v8, v3, :cond_a

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v1

    .end local v1    # "varArgs":Z
    .local v21, "varArgs":Z
    const-string v1, "match"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1343
    .end local v12    # "mname":Ljava/lang/String;
    .local v1, "mname":Ljava/lang/String;
    add-int/lit8 v3, v8, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    .line 1344
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    .local v3, "matchArgs":[Lgnu/bytecode/Type;
    move v12, v8

    .local v12, "k":I
    :goto_7
    if-ltz v12, :cond_9

    .line 1345
    add-int/lit8 v13, v12, 0x1

    sget-object v22, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v22, v3, v13

    .line 1344
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 1346
    .end local v12    # "k":I
    :cond_9
    add-int/lit8 v12, v8, 0x1

    sget-object v13, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v13, v3, v12

    move-object v12, v3

    const/4 v3, 0x1

    goto :goto_8

    .line 1350
    .end local v3    # "matchArgs":[Lgnu/bytecode/Type;
    .end local v21    # "varArgs":Z
    .local v1, "varArgs":Z
    .local v12, "mname":Ljava/lang/String;
    .restart local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_a
    move/from16 v21, v1

    .end local v1    # "varArgs":Z
    .restart local v21    # "varArgs":Z
    const-string v1, "matchN"

    .line 1351
    .end local v12    # "mname":Ljava/lang/String;
    .local v1, "mname":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v12, v3, [Lgnu/bytecode/Type;

    .line 1352
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    .local v12, "matchArgs":[Lgnu/bytecode/Type;
    sget-object v13, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/4 v3, 0x1

    aput-object v13, v12, v3

    .line 1353
    sget-object v13, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const/16 v16, 0x2

    aput-object v13, v12, v16

    .line 1355
    :goto_8
    const/4 v13, 0x0

    aput-object v6, v12, v13

    .line 1356
    iget-object v13, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move/from16 v22, v9

    .end local v9    # "numMethods":I
    .local v22, "numMethods":I
    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v1, v12, v9, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v9

    iput-object v9, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1358
    iget-object v9, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v9}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 1360
    invoke-virtual {v7, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1361
    const-string v3, "selector"

    invoke-virtual {v6, v3}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    invoke-virtual {v7, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1362
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v3

    .line 1364
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .local v3, "aswitch":Lgnu/bytecode/SwitchState;
    const/4 v9, 0x1

    move-object v11, v3

    move v10, v9

    move-object v13, v12

    move-object v12, v1

    .end local v10    # "needThisMatch":Z
    .local v9, "needThisMatch":Z
    goto :goto_9

    .line 1337
    .end local v3    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v21    # "varArgs":Z
    .end local v22    # "numMethods":I
    .local v1, "varArgs":Z
    .local v9, "numMethods":I
    .restart local v10    # "needThisMatch":Z
    .restart local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .local v12, "mname":Ljava/lang/String;
    .restart local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_b
    move/from16 v21, v1

    move/from16 v22, v9

    .line 1367
    .end local v1    # "varArgs":Z
    .end local v9    # "numMethods":I
    .restart local v21    # "varArgs":Z
    .restart local v22    # "numMethods":I
    :goto_9
    invoke-virtual {v15, v0}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v1

    invoke-virtual {v11, v1, v7}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1369
    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v1

    .line 1370
    .local v1, "line":I
    if-lez v1, :cond_c

    .line 1371
    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3, v1}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1373
    :cond_c
    const/4 v3, 0x5

    if-ne v8, v3, :cond_d

    const/4 v9, 0x3

    goto :goto_a

    :cond_d
    add-int/lit8 v9, v8, 0x2

    :goto_a
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 1375
    .local v9, "ctxVar":Lgnu/bytecode/Variable;
    if-ge v8, v3, :cond_12

    .line 1377
    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v17

    .line 1378
    .local v17, "var":Lgnu/expr/Declaration;
    const/16 v20, 0x1

    move/from16 v3, v20

    .local v3, "k":I
    :goto_b
    if-gt v3, v8, :cond_11

    .line 1380
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1381
    move/from16 v23, v1

    .end local v1    # "line":I
    .local v23, "line":I
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1382
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1383
    .local v1, "ptype":Lgnu/bytecode/Type;
    move-object/from16 v24, v6

    .end local v6    # "procType":Lgnu/bytecode/ClassType;
    .local v24, "procType":Lgnu/bytecode/ClassType;
    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v1, v6, :cond_f

    .line 1385
    instance-of v6, v1, Lgnu/expr/TypeValue;

    const/high16 v25, -0xc0000

    if-eqz v6, :cond_e

    .line 1387
    new-instance v6, Lgnu/bytecode/Label;

    invoke-direct {v6, v7}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1388
    .local v6, "trueLabel":Lgnu/bytecode/Label;
    move/from16 v26, v10

    .end local v10    # "needThisMatch":Z
    .local v26, "needThisMatch":Z
    new-instance v10, Lgnu/bytecode/Label;

    invoke-direct {v10, v7}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1389
    .local v10, "falseLabel":Lgnu/bytecode/Label;
    move-object/from16 v27, v11

    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .local v27, "aswitch":Lgnu/bytecode/SwitchState;
    new-instance v11, Lgnu/expr/ConditionalTarget;

    move-object/from16 v28, v12

    .end local v12    # "mname":Ljava/lang/String;
    .local v28, "mname":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v12

    invoke-direct {v11, v6, v10, v12}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 1392
    .local v11, "ctarget":Lgnu/expr/ConditionalTarget;
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1393
    move-object v12, v1

    check-cast v12, Lgnu/expr/TypeValue;

    move-object/from16 v29, v13

    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    .local v29, "matchArgs":[Lgnu/bytecode/Type;
    const/4 v13, 0x0

    invoke-interface {v12, v13, v0, v11}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1395
    invoke-virtual {v10, v7}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1396
    or-int v12, v3, v25

    invoke-virtual {v7, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1397
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1398
    invoke-virtual {v6, v7}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1399
    .end local v6    # "trueLabel":Lgnu/bytecode/Label;
    .end local v10    # "falseLabel":Lgnu/bytecode/Label;
    .end local v11    # "ctarget":Lgnu/expr/ConditionalTarget;
    goto :goto_c

    .line 1400
    .end local v26    # "needThisMatch":Z
    .end local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v28    # "mname":Ljava/lang/String;
    .end local v29    # "matchArgs":[Lgnu/bytecode/Type;
    .local v10, "needThisMatch":Z
    .local v11, "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v12    # "mname":Ljava/lang/String;
    .restart local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_e
    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    .end local v10    # "needThisMatch":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    .restart local v26    # "needThisMatch":Z
    .restart local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v28    # "mname":Ljava/lang/String;
    .restart local v29    # "matchArgs":[Lgnu/bytecode/Type;
    instance-of v6, v1, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_10

    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq v1, v6, :cond_10

    sget-object v6, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-eq v1, v6, :cond_10

    .line 1404
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1405
    invoke-virtual {v1, v7}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 1406
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 1407
    or-int v6, v3, v25

    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1408
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1409
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_c

    .line 1383
    .end local v26    # "needThisMatch":Z
    .end local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v28    # "mname":Ljava/lang/String;
    .end local v29    # "matchArgs":[Lgnu/bytecode/Type;
    .restart local v10    # "needThisMatch":Z
    .restart local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v12    # "mname":Ljava/lang/String;
    .restart local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_f
    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    .line 1412
    .end local v10    # "needThisMatch":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    .restart local v26    # "needThisMatch":Z
    .restart local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v28    # "mname":Ljava/lang/String;
    .restart local v29    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_10
    :goto_c
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "value"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1413
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v17

    .line 1378
    .end local v1    # "ptype":Lgnu/bytecode/Type;
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v23

    move-object/from16 v6, v24

    move/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    goto/16 :goto_b

    .end local v23    # "line":I
    .end local v24    # "procType":Lgnu/bytecode/ClassType;
    .end local v26    # "needThisMatch":Z
    .end local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v28    # "mname":Ljava/lang/String;
    .end local v29    # "matchArgs":[Lgnu/bytecode/Type;
    .local v1, "line":I
    .local v6, "procType":Lgnu/bytecode/ClassType;
    .restart local v10    # "needThisMatch":Z
    .restart local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v12    # "mname":Ljava/lang/String;
    .restart local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_11
    move/from16 v23, v1

    move-object/from16 v24, v6

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    .line 1415
    .end local v1    # "line":I
    .end local v3    # "k":I
    .end local v6    # "procType":Lgnu/bytecode/ClassType;
    .end local v10    # "needThisMatch":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    .end local v17    # "var":Lgnu/expr/Declaration;
    .restart local v23    # "line":I
    .restart local v24    # "procType":Lgnu/bytecode/ClassType;
    .restart local v26    # "needThisMatch":Z
    .restart local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v28    # "mname":Ljava/lang/String;
    .restart local v29    # "matchArgs":[Lgnu/bytecode/Type;
    goto :goto_d

    .line 1419
    .end local v23    # "line":I
    .end local v24    # "procType":Lgnu/bytecode/ClassType;
    .end local v26    # "needThisMatch":Z
    .end local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v28    # "mname":Ljava/lang/String;
    .end local v29    # "matchArgs":[Lgnu/bytecode/Type;
    .restart local v1    # "line":I
    .restart local v6    # "procType":Lgnu/bytecode/ClassType;
    .restart local v10    # "needThisMatch":Z
    .restart local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v12    # "mname":Ljava/lang/String;
    .restart local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_12
    move/from16 v23, v1

    move-object/from16 v24, v6

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    .end local v1    # "line":I
    .end local v6    # "procType":Lgnu/bytecode/ClassType;
    .end local v10    # "needThisMatch":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    .restart local v23    # "line":I
    .restart local v24    # "procType":Lgnu/bytecode/ClassType;
    .restart local v26    # "needThisMatch":Z
    .restart local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v28    # "mname":Ljava/lang/String;
    .restart local v29    # "matchArgs":[Lgnu/bytecode/Type;
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1420
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v7, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1421
    sget-object v1, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v3, "values"

    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1423
    :goto_d
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1424
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x2

    if-ge v1, v3, :cond_13

    .line 1425
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_e

    .line 1427
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v7, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1428
    :goto_e
    sget-object v1, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1429
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1430
    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_14

    .line 1431
    invoke-virtual {v15, v0}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_f

    .line 1433
    :cond_14
    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1434
    :goto_f
    sget-object v1, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1435
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1436
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1437
    .end local v2    # "methodIndex":I
    .end local v9    # "ctxVar":Lgnu/bytecode/Variable;
    .end local v15    # "source":Lgnu/expr/LambdaExp;
    .end local v19    # "primMethods":[Lgnu/bytecode/Method;
    .end local v21    # "varArgs":Z
    .end local v22    # "numMethods":I
    .end local v23    # "line":I
    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v6, v24

    move/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    const/4 v9, 0x5

    goto/16 :goto_2

    .line 1311
    .end local v18    # "numApplyMethods":I
    .end local v24    # "procType":Lgnu/bytecode/ClassType;
    .end local v26    # "needThisMatch":Z
    .end local v27    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v28    # "mname":Ljava/lang/String;
    .end local v29    # "matchArgs":[Lgnu/bytecode/Type;
    .local v2, "numApplyMethods":I
    .restart local v6    # "procType":Lgnu/bytecode/ClassType;
    .restart local v10    # "needThisMatch":Z
    .restart local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .restart local v12    # "mname":Ljava/lang/String;
    .restart local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_15
    move/from16 v18, v2

    move-object/from16 v24, v6

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 1438
    .end local v2    # "numApplyMethods":I
    .end local v6    # "procType":Lgnu/bytecode/ClassType;
    .end local v14    # "j":I
    .restart local v18    # "numApplyMethods":I
    .restart local v24    # "procType":Lgnu/bytecode/ClassType;
    if-eqz v10, :cond_18

    .line 1440
    invoke-virtual {v11, v7}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1441
    const/4 v2, 0x4

    if-le v8, v2, :cond_16

    const/4 v15, 0x2

    goto :goto_10

    :cond_16
    add-int/lit8 v15, v8, 0x1

    :goto_10
    move v2, v15

    .line 1442
    .local v2, "nargs":I
    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1443
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_11
    if-gt v3, v2, :cond_17

    .line 1444
    invoke-virtual {v7, v3}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v6

    invoke-virtual {v7, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1443
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1445
    .end local v3    # "k":I
    :cond_17
    sget-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    array-length v6, v13

    invoke-virtual {v3, v12, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 1447
    .local v3, "defMethod":Lgnu/bytecode/Method;
    invoke-virtual {v7, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1448
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1449
    invoke-virtual {v11, v7}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1305
    .end local v2    # "nargs":I
    .end local v3    # "defMethod":Lgnu/bytecode/Method;
    .end local v10    # "needThisMatch":Z
    .end local v11    # "aswitch":Lgnu/bytecode/SwitchState;
    .end local v12    # "mname":Ljava/lang/String;
    .end local v13    # "matchArgs":[Lgnu/bytecode/Type;
    :cond_18
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v6, v24

    goto/16 :goto_1

    .line 1452
    .end local v8    # "i":I
    .end local v18    # "numApplyMethods":I
    .end local v24    # "procType":Lgnu/bytecode/ClassType;
    .local v2, "numApplyMethods":I
    .restart local v6    # "procType":Lgnu/bytecode/ClassType;
    :cond_19
    iput-object v4, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1453
    iput-object v5, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1454
    return-void
.end method

.method public generatingApplet()Z
    .locals 1

    .line 407
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public generatingServlet()Z
    .locals 1

    .line 413
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBooleanOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getBooleanOption(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 151
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1, p2}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCode()Lgnu/bytecode/CodeAttr;
    .locals 1

    .line 221
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .line 2632
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public final getConstructor(Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 1
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;

    .line 1149
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 2633
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForNameHelper()Lgnu/bytecode/Method;
    .locals 6

    .line 2845
    iget-object v0, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    if-nez v0, :cond_0

    .line 2848
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2849
    .local v0, "save_method":Lgnu/bytecode/Method;
    iget-object v1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v4, "class$"

    const/16 v5, 0x9

    invoke-virtual {v1, v4, v5, v2, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2851
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iput-object v1, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    .line 2852
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 2853
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2854
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2855
    iget-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2856
    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const/4 v4, 0x1

    const-string v5, "forName"

    invoke-virtual {v3, v5, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2857
    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v4, "getClassLoader"

    invoke-virtual {v3, v4, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2858
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const/4 v3, 0x3

    invoke-virtual {v2, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2859
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2860
    iput-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2865
    .end local v0    # "save_method":Lgnu/bytecode/Method;
    .end local v1    # "code":Lgnu/bytecode/CodeAttr;
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getLanguage()Lgnu/expr/Language;
    .locals 1

    .line 2426
    iget-object v0, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 2631
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .line 2567
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public final getModule()Lgnu/expr/ModuleExp;
    .locals 1

    .line 2430
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-object v0
.end method

.method public final getModuleType()Lgnu/bytecode/ClassType;
    .locals 2

    .line 431
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 2634
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 50
    iget v0, p0, Lgnu/expr/Compilation;->state:I

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 2635
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inlineOk(Lgnu/expr/Expression;)Z
    .locals 4
    .param p1, "proc"    # Lgnu/expr/Expression;

    .line 463
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_3

    .line 465
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 466
    .local v0, "lproc":Lgnu/expr/LambdaExp;
    iget-object v1, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 469
    .local v1, "nameDecl":Lgnu/expr/Declaration;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v2, v2, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget-boolean v2, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object v2

    iget-object v3, p0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->topLevel()Lgnu/expr/ScopeExp;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 476
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 471
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 478
    .end local v0    # "lproc":Lgnu/expr/LambdaExp;
    .end local v1    # "nameDecl":Lgnu/expr/Declaration;
    :cond_3
    sget-boolean v0, Lgnu/expr/Compilation;->inlineOk:Z

    return v0
.end method

.method public inlineOk(Lgnu/mapping/Procedure;)Z
    .locals 1
    .param p1, "proc"    # Lgnu/mapping/Procedure;

    .line 483
    iget-boolean v0, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lgnu/expr/ModuleMethod;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    return v0

    .line 486
    :cond_0
    sget-boolean v0, Lgnu/expr/Compilation;->inlineOk:Z

    return v0
.end method

.method public isPedantic()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lgnu/expr/Compilation;->pedantic:Z

    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .line 2636
    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .line 2433
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    return v0
.end method

.method public letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;
    .locals 1
    .param p1, "body"    # Lgnu/expr/Expression;

    .line 2688
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2689
    .local v0, "let":Lgnu/expr/LetExp;
    iput-object p1, v0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 2690
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2691
    return-object v0
.end method

.method public letEnter()V
    .locals 7

    .line 2674
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2675
    .local v0, "let":Lgnu/expr/LetExp;
    invoke-virtual {v0}, Lgnu/expr/LetExp;->countDecls()I

    move-result v1

    .line 2676
    .local v1, "ndecls":I
    new-array v2, v1, [Lgnu/expr/Expression;

    .line 2677
    .local v2, "inits":[Lgnu/expr/Expression;
    const/4 v3, 0x0

    .line 2678
    .local v3, "i":I
    invoke-virtual {v0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 2679
    .local v4, "decl":Lgnu/expr/Declaration;
    :goto_0
    if-eqz v4, :cond_0

    .line 2681
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v2, v3

    .line 2680
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move v3, v5

    goto :goto_0

    .line 2682
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_0
    iput-object v2, v0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 2683
    iget-object v4, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v4, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2684
    return-void
.end method

.method public letStart()V
    .locals 2

    .line 2661
    new-instance v0, Lgnu/expr/LetExp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2662
    return-void
.end method

.method public letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 2
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;
    .param p3, "init"    # Lgnu/expr/Expression;

    .line 2666
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2667
    .local v0, "let":Lgnu/expr/LetExp;
    invoke-virtual {v0, p1, p2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 2668
    .local v1, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v1, p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2669
    return-object v1
.end method

.method public final loadCallContext()V
    .locals 4

    .line 2384
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2385
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2386
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 2393
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iget-object v2, p0, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    const-string v3, "$ctx"

    if-ne v1, v2, :cond_1

    .line 2396
    new-instance v1, Lgnu/bytecode/Variable;

    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v3, v2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2399
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    .line 2400
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2401
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 2405
    :cond_1
    sget-object v1, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2406
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 2407
    new-instance v1, Lgnu/bytecode/Variable;

    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v3, v2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2408
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    .line 2409
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2411
    :goto_0
    return-void
.end method

.method public loadClassRef(Lgnu/bytecode/ObjectType;)V
    .locals 4
    .param p1, "clas"    # Lgnu/bytecode/ObjectType;

    .line 2813
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2815
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v1

    const/high16 v2, 0x310000    # 4.49994E-39f

    if-lt v1, v2, :cond_0

    .line 2816
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushClass(Lgnu/bytecode/ObjectType;)V

    goto :goto_1

    .line 2817
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    if-eqz v1, :cond_1

    .line 2821
    iget-object v1, p0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2822
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v2, "getClass"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 2826
    :cond_1
    instance-of v1, p1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 2828
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getForNameHelper()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2831
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "namespace"    # I

    .line 2550
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public loopBody(Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "body"    # Lgnu/expr/Expression;

    .line 2751
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2752
    .local v0, "loopLambda":Lgnu/expr/LambdaExp;
    iput-object p1, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2753
    return-void
.end method

.method public loopCond(Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "cond"    # Lgnu/expr/Expression;

    .line 2746
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2747
    iget-object v0, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2748
    return-void
.end method

.method public loopEnter()V
    .locals 7

    .line 2732
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2733
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2734
    .local v0, "loopLambda":Lgnu/expr/LambdaExp;
    iget v1, v0, Lgnu/expr/LambdaExp;->min_args:I

    .line 2735
    .local v1, "ninits":I
    iput v1, v0, Lgnu/expr/LambdaExp;->max_args:I

    .line 2736
    new-array v2, v1, [Lgnu/expr/Expression;

    .line 2737
    .local v2, "inits":[Lgnu/expr/Expression;
    move v3, v1

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 2738
    iget-object v4, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    aput-object v4, v2, v3

    goto :goto_0

    .line 2739
    .end local v3    # "i":I
    :cond_0
    iget-object v3, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/LetExp;

    .line 2740
    .local v3, "let":Lgnu/expr/LetExp;
    invoke-virtual {v3}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 2741
    .local v4, "fdecl":Lgnu/expr/Declaration;
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v5, v6, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v3, v5}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 2742
    iget-object v5, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v5, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2743
    return-void
.end method

.method public loopRepeat()Lgnu/expr/Expression;
    .locals 1

    .line 2771
    sget-object v0, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public loopRepeat(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 2776
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2777
    .local v0, "args":[Lgnu/expr/Expression;
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8
    .param p1, "exps"    # [Lgnu/expr/Expression;

    .line 2756
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2757
    .local v0, "loopLambda":Lgnu/expr/LambdaExp;
    iget-object v1, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2758
    .local v1, "let":Lgnu/expr/ScopeExp;
    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 2759
    .local v2, "fdecl":Lgnu/expr/Declaration;
    iget-object v3, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    .line 2760
    .local v3, "cond":Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v4, v5, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2761
    .local v4, "recurse":Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/IfExp;

    new-instance v6, Lgnu/expr/BeginExp;

    iget-object v7, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-direct {v6, v7, v4}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    sget-object v7, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v5, v3, v6, v7}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v5, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2764
    iget-object v5, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v5, v0}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2765
    iget-object v5, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v5, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2766
    return-object v1
.end method

.method public loopStart()V
    .locals 6

    .line 2704
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 2705
    .local v0, "loopLambda":Lgnu/expr/LambdaExp;
    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2706
    .local v1, "inits":[Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/LetExp;

    invoke-direct {v2, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 2707
    .local v2, "let":Lgnu/expr/LetExp;
    const-string v3, "%do%loop"

    .line 2708
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 2709
    .local v4, "fdecl":Lgnu/expr/Declaration;
    invoke-virtual {v4, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2710
    invoke-virtual {v0, v3}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 2711
    iget-object v5, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v5, v2, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 2712
    iput-object v2, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2713
    iput-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2714
    return-void
.end method

.method public loopVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;
    .param p3, "init"    # Lgnu/expr/Expression;

    .line 2718
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2719
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2720
    .local v0, "loopLambda":Lgnu/expr/LambdaExp;
    invoke-virtual {v0, p1, p2}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 2721
    .local v1, "decl":Lgnu/expr/Declaration;
    iget-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v2, :cond_0

    .line 2722
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 2723
    :cond_0
    iget-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2724
    iget v2, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lgnu/expr/LambdaExp;->min_args:I

    .line 2725
    return-object v1
.end method

.method public makeRunnable()Z
    .locals 1

    .line 1117
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mustCompileHere()V
    .locals 2

    .line 2444
    iget-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-nez v0, :cond_0

    .line 2445
    const/16 v0, 0x77

    const-string v1, "this expression claimed that it must be compiled, but compiler is unavailable"

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 2447
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    .line 2449
    :goto_0
    return-void
.end method

.method public outputClass(Ljava/lang/String;)V
    .locals 6
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 1003
    .local v0, "dirSep":C
    const/4 v1, 0x0

    .local v1, "iClass":I
    :goto_0
    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v1, v2, :cond_1

    .line 1005
    iget-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v2, v2, v1

    .line 1006
    .local v2, "clas":Lgnu/bytecode/ClassType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1009
    .local v3, "out_name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 1010
    .local v4, "parent":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1011
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1012
    :cond_0
    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 1003
    .end local v2    # "clas":Lgnu/bytecode/ClassType;
    .end local v3    # "out_name":Ljava/lang/String;
    .end local v4    # "parent":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    .end local v1    # "iClass":I
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v1}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 1015
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;

    .line 2422
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unimeplemented parse"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pop()V
    .locals 1

    .line 2540
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2541
    return-void
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 1
    .param p1, "scope"    # Lgnu/expr/ScopeExp;

    .line 2534
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2535
    iget-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2536
    return-void
.end method

.method public process(I)V
    .locals 8
    .param p1, "wantedState"    # I

    .line 1929
    invoke-static {p0}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v0

    .line 1932
    .local v0, "saveCompilation":Lgnu/expr/Compilation;
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 1933
    .local v2, "mexp":Lgnu/expr/ModuleExp;
    const/4 v3, 0x4

    if-lt p1, v3, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1935
    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 1936
    iget-object v4, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    .line 1937
    iget-object v4, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    invoke-virtual {v4}, Lgnu/text/Lexer;->close()V

    .line 1938
    const/4 v4, 0x0

    iput-object v4, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 1939
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x64

    :cond_0
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 1940
    iget-object v3, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2009
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-void

    .line 1943
    :cond_1
    const/4 v3, 0x6

    if-lt p1, v3, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 1950
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->addMainClass(Lgnu/expr/ModuleExp;)V

    .line 1951
    iget-object v4, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    invoke-virtual {v4, p0}, Lgnu/expr/Language;->resolve(Lgnu/expr/Compilation;)V

    .line 1952
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x64

    :cond_2
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 1956
    :cond_3
    iget-boolean v3, p0, Lgnu/expr/Compilation;->explicit:Z

    const/16 v4, 0xe

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1959
    iget-object v3, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->cleanupAfterCompilation()V

    .line 1960
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1963
    :cond_4
    const/16 v3, 0x8

    if-lt p1, v3, :cond_6

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 1965
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->walkModule(Lgnu/expr/ModuleExp;)V

    .line 1966
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v3, 0x64

    :cond_5
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 1968
    :cond_6
    const/16 v3, 0xa

    if-lt p1, v3, :cond_8

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v3, :cond_8

    .line 1970
    new-instance v5, Lgnu/expr/LitTable;

    invoke-direct {v5, p0}, Lgnu/expr/LitTable;-><init>(Lgnu/expr/Compilation;)V

    iput-object v5, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 1971
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lgnu/expr/ModuleExp;->setCanRead(Z)V

    .line 1972
    invoke-static {v2, p0}, Lgnu/expr/FindCapturedVars;->findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1973
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocFields(Lgnu/expr/Compilation;)V

    .line 1974
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1975
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v3, 0x64

    :cond_7
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 1977
    :cond_8
    const/16 v3, 0xc

    if-lt p1, v3, :cond_b

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    if-ge v5, v3, :cond_b

    .line 1979
    iget-boolean v5, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v5, :cond_9

    .line 1981
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 1982
    .local v5, "parentLoader":Ljava/lang/ClassLoader;
    new-instance v6, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v6, v5}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v6, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    .line 1984
    .end local v5    # "parentLoader":Ljava/lang/ClassLoader;
    :cond_9
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generateBytecode()V

    .line 1985
    iget-object v5, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v3, 0x64

    :cond_a
    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 1987
    :cond_b
    if-lt p1, v4, :cond_c

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v3

    if-ge v3, v4, :cond_c

    .line 1989
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v3

    .line 1990
    .local v3, "manager":Lgnu/expr/ModuleManager;
    invoke-virtual {v3}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/expr/Compilation;->outputClass(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_1
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2009
    .end local v2    # "mexp":Lgnu/expr/ModuleExp;
    .end local v3    # "manager":Lgnu/expr/ModuleManager;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2001
    :catch_0
    move-exception v2

    .line 2003
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {p0, v4, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2005
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->setState(I)V

    .end local v2    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 1994
    :catch_1
    move-exception v2

    .line 1996
    .local v2, "ex":Lgnu/text/SyntaxException;
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->setState(I)V

    .line 1997
    invoke-virtual {v2}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v3, :cond_d

    .line 2009
    .end local v2    # "ex":Lgnu/text/SyntaxException;
    :cond_c
    :goto_0
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 2010
    nop

    .line 2011
    return-void

    .line 1998
    .restart local v2    # "ex":Lgnu/text/SyntaxException;
    :cond_d
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confussing syntax error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "saveCompilation":Lgnu/expr/Compilation;
    .end local p1    # "wantedState":I
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2009
    .end local v2    # "ex":Lgnu/text/SyntaxException;
    .restart local v0    # "saveCompilation":Lgnu/expr/Compilation;
    .restart local p1    # "wantedState":I
    :goto_1
    invoke-static {v0}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    throw v1
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 1
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 2545
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 2546
    return-void
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 1
    .param p1, "scope"    # Lgnu/expr/ScopeExp;

    .line 2514
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2515
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2516
    return-void
.end method

.method pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V
    .locals 1
    .param p1, "scope"    # Lgnu/expr/ScopeExp;
    .param p2, "limit"    # Lgnu/expr/ScopeExp;

    .line 2481
    if-eq p1, p2, :cond_0

    .line 2483
    iget-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2484
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2485
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2487
    :cond_0
    return-void
.end method

.method public pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;
    .locals 1
    .param p1, "lexer"    # Lgnu/text/Lexer;

    .line 2491
    iput-object p1, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 2492
    invoke-virtual {p1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v0

    return-object v0
.end method

.method public pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 2497
    new-instance v0, Lgnu/expr/ModuleExp;

    invoke-direct {v0}, Lgnu/expr/ModuleExp;-><init>()V

    .line 2498
    .local v0, "module":Lgnu/expr/ModuleExp;
    if-eqz p1, :cond_0

    .line 2499
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 2500
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingApplet()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->generatingServlet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2501
    :cond_1
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2502
    :cond_2
    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v1, :cond_3

    .line 2504
    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2505
    new-instance v1, Lgnu/expr/ModuleInfo;

    invoke-direct {v1}, Lgnu/expr/ModuleInfo;-><init>()V

    invoke-virtual {v1, p0}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 2507
    :cond_3
    iput-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 2508
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2509
    return-object v0
.end method

.method public pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V
    .locals 3
    .param p1, "info"    # Lgnu/expr/ModuleInfo;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "formSize"    # I

    .line 96
    iget-object v0, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    .line 98
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 101
    .local v0, "posExp":Lgnu/expr/Expression;
    invoke-virtual {v0, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 102
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public final pushScope(Lgnu/expr/ScopeExp;)V
    .locals 1
    .param p1, "scope"    # Lgnu/expr/ScopeExp;

    .line 2520
    iget-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    .line 2527
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 2528
    :cond_1
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2529
    iput-object p1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2530
    return-void
.end method

.method public resolve(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "function"    # Z

    .line 2870
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 2872
    .local v0, "env":Lgnu/mapping/Environment;
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2873
    invoke-virtual {v0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .local v1, "symbol":Lgnu/mapping/Symbol;
    goto :goto_0

    .line 2875
    .end local v1    # "symbol":Lgnu/mapping/Symbol;
    :cond_0
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Symbol;

    .line 2876
    .restart local v1    # "symbol":Lgnu/mapping/Symbol;
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2877
    return-object v2

    .line 2878
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2879
    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2880
    :cond_2
    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public setColumn(I)V
    .locals 1
    .param p1, "column"    # I

    .line 2640
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setCurrentScope(Lgnu/expr/ScopeExp;)V
    .locals 4
    .param p1, "scope"    # Lgnu/expr/ScopeExp;

    .line 2458
    invoke-static {p1}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 2459
    .local v0, "scope_nesting":I
    iget-object v1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-static {v1}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v1

    .line 2460
    .local v1, "current_nesting":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 2462
    iget-object v2, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2463
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2465
    :cond_0
    move-object v2, p1

    .line 2466
    .local v2, "sc":Lgnu/expr/ScopeExp;
    :goto_1
    if-le v0, v1, :cond_1

    .line 2468
    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2469
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2471
    :cond_1
    :goto_2
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v2, v3, :cond_2

    .line 2473
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2474
    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_2

    .line 2476
    :cond_2
    invoke-virtual {p0, p1, v2}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2477
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .line 2638
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 1
    .param p1, "line"    # I

    .line 2639
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public final setLine(Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "position"    # Lgnu/expr/Expression;

    .line 2642
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setLine(Ljava/lang/Object;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/Object;

    .line 2645
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 2646
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v1, p1

    check-cast v1, Lgnu/text/SourceLocator;

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    .line 2647
    :cond_0
    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .line 2653
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 2654
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1
    .param p1, "position"    # Lgnu/text/SourceLocator;

    .line 2649
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .param p1, "messages"    # Lgnu/text/SourceMessages;

    .line 2569
    iput-object p1, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setModule(Lgnu/expr/ModuleExp;)V
    .locals 0
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;

    .line 2431
    iput-object p1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-void
.end method

.method public setSharedModuleDefs(Z)V
    .locals 1
    .param p1, "shared"    # Z

    .line 423
    if-eqz p1, :cond_0

    .line 424
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/expr/Compilation;->langOptions:I

    goto :goto_0

    .line 426
    :cond_0
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/expr/Compilation;->langOptions:I

    .line 427
    :goto_0
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 51
    iput p1, p0, Lgnu/expr/Compilation;->state:I

    return-void
.end method

.method public sharedModuleDefs()Z
    .locals 1

    .line 418
    iget v0, p0, Lgnu/expr/Compilation;->langOptions:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 2627
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2628
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<compilation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usedClass(Lgnu/bytecode/Type;)V
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 2561
    nop

    :goto_0
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_0

    .line 2562
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    goto :goto_0

    .line 2563
    :cond_0
    iget-boolean v0, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 2564
    iget-object v0, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ArrayClassLoader;->addClass(Lgnu/bytecode/ClassType;)V

    .line 2565
    :cond_1
    return-void
.end method

.method public usingCPStyle()Z
    .locals 2

    .line 190
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public usingTailCalls()Z
    .locals 2

    .line 192
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public walkModule(Lgnu/expr/ModuleExp;)V
    .locals 3
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;

    .line 985
    sget-boolean v0, Lgnu/expr/Compilation;->debugPrintExpr:Z

    if-eqz v0, :cond_0

    .line 987
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 988
    .local v0, "dout":Lgnu/mapping/OutPort;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1, v0}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 990
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(C)V

    .line 991
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 994
    .end local v0    # "dout":Lgnu/mapping/OutPort;
    :cond_0
    invoke-static {p1, p0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    .line 995
    invoke-static {p1}, Lgnu/expr/PushApply;->pushApply(Lgnu/expr/Expression;)V

    .line 996
    invoke-static {p1, p0}, Lgnu/expr/ChainLambdas;->chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 997
    invoke-static {p1, p0}, Lgnu/expr/FindTailCalls;->findTailCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 998
    return-void
.end method

.method public warnAsError()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnAsError:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnInvokeUnknownMethod()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnInvokeUnknownMethod:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnUndefinedVariable()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnUndefinedVariable:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method

.method public warnUnknownMember()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->warnUnknownMember:Lgnu/text/Options$OptionInfo;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->getBoolean(Lgnu/text/Options$OptionInfo;)Z

    move-result v0

    return v0
.end method
