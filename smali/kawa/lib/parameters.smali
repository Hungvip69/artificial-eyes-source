.class public Lkawa/lib/parameters;
.super Lgnu/expr/ModuleBody;
.source "parameters.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nparameters.scm\nScheme\n*S Scheme\n*F\n+ 1 parameters.scm\n/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm\n*L\n2#1,18:2\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$as$Mnlocation$Pc:Lgnu/expr/ModuleMethod;

.field public static final $Prvt$parameterize$Pc:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/parameters;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final make$Mnparameter:Lgnu/expr/ModuleMethod;

.field public static final parameterize:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "save"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quasiquote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "gnu.mapping.Location"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$lookup$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "v"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "p"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "parameterize"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x2

    new-array v5, v1, [Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    const-string v6, "\u000c\u0018\u000c\u0008\u0003"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-direct {v7, v6, v8, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v10, v2, [Ljava/lang/Object;

    sget-object v6, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v10, v4

    const/4 v11, 0x0

    const-string v8, "\u0000"

    const-string v9, "\u0011\u0018\u0004\u0002"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v12, v5, v4

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "\u000c\u0018<,\u000c\u0007\u000c\u000f\u0008\u0013\u001b"

    const/4 v9, 0x4

    invoke-direct {v14, v8, v7, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "parameterize%"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v4

    const/16 v18, 0x0

    const-string v15, "\u0001\u0001\u0000\u0000"

    const-string v16, "\u0011\u0018\u00041!\t\u0003\u0008\u000b\u0012\t\u0010\u001a"

    move-object v13, v6

    move-object/from16 v17, v8

    invoke-direct/range {v13 .. v18}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v5, v2

    invoke-direct {v0, v3, v5, v9}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/parameters;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v5, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    new-array v5, v1, [Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    const-string v7, "\u000c\u0018\u000c\u0008\u000c\u0007\u000b"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-direct {v11, v7, v8, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "try-finally"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    new-array v14, v1, [Ljava/lang/Object;

    aput-object v7, v14, v4

    sget-object v7, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v14, v2

    const/4 v15, 0x0

    const-string v12, "\u0001\u0000"

    const-string v13, "\u0011\u0018\u0004!\u0011\u0018\u000c\n\u0008\u0011\u0018\u000c\u0003"

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v5, v4

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v10, "\u000c\u0018<,\u000c\u0007\u000c\u000f\u0008\u0013\u000c\u001f#"

    const/4 v11, 0x5

    invoke-direct {v7, v10, v8, v11}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v10, "let*"

    invoke-direct {v8, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "::"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "<gnu.mapping.Location>"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "as-location%"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/parameters;->Lit1:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "setWithSave"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v9, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v11, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    const v2, 0x1e00d

    const-string v9, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    invoke-static {v15, v1, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v2, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v4, 0x1e030

    invoke-static {v11, v15, v9, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v11, 0x1e02e

    invoke-static {v2, v4, v9, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v4, 0x1e00c

    invoke-static {v1, v2, v9, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2, v9, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x1e006

    invoke-static {v14, v1, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v4, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v2, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "setRestore"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v14, v15}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v14

    invoke-static {v11, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v11, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    invoke-static {v4, v11}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    const v11, 0x2000b

    invoke-static {v2, v4, v9, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v4, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x2002d

    invoke-static {v11, v14, v9, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const v14, 0x2002b

    invoke-static {v4, v11, v9, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v11, 0x2000a

    invoke-static {v2, v4, v9, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    sget-object v8, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x1

    aput-object v8, v4, v9

    const/4 v8, 0x2

    aput-object v10, v4, v8

    const/4 v8, 0x3

    aput-object v12, v4, v8

    const/4 v9, 0x4

    aput-object v13, v4, v9

    sget-object v9, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x5

    aput-object v9, v4, v10

    const/4 v9, 0x6

    aput-object v1, v4, v9

    sget-object v1, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x7

    aput-object v1, v4, v9

    const/16 v1, 0x8

    aput-object v2, v4, v1

    const/16 v21, 0x0

    const-string v18, "\u0001\u0001\u0000\u0001\u0000"

    const-string v19, "\u0011\u0018\u0004\u00c1y\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\u0008\u0003)\u0011\u0018,\u0008\u000b\u00184\u0008\u0011\u0018<\t\u0012!\u0011\u0018D\u001b\""

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v20, v4

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x1

    aput-object v6, v5, v1

    const/4 v1, 0x5

    invoke-direct {v0, v3, v5, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/parameters;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-parameter"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/parameters;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/parameters;

    invoke-direct {v0}, Lkawa/lib/parameters;-><init>()V

    sput-object v0, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    sget-object v2, Lkawa/lib/parameters;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x2001

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/parameters;->make$Mnparameter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/parameters;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    invoke-direct {v0, v1, v8, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/parameters;->$Prvt$as$Mnlocation$Pc:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/parameters;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/parameters;->$Prvt$parameterize$Pc:Lkawa/lang/Macro;

    .line 2
    sget-object v0, Lkawa/lib/parameters;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/parameters;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/parameters;->parameterize:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static asLocation$Pc(Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 4
    .param p0, "param"    # Ljava/lang/Object;

    .line 13
    nop

    .line 14
    instance-of v0, p0, Lgnu/mapping/LocationProc;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 15
    :try_start_0
    move-object v0, p0

    check-cast v0, Lgnu/mapping/LocationProc;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v0

    .local v2, "loc":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "loc":Ljava/lang/Object;
    .end local p0    # "param":Ljava/lang/Object;
    :catch_0
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "gnu.mapping.LocationProc.getLocation()"

    invoke-direct {v2, v0, v3, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 16
    .restart local p0    # "param":Ljava/lang/Object;
    :cond_0
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Location;

    .restart local v2    # "loc":Ljava/lang/Object;
    :goto_0
    nop

    .line 17
    .end local v2    # "loc":Ljava/lang/Object;
    .local v0, "loc":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/mapping/ThreadLocation;

    if-eqz v2, :cond_1

    .line 18
    :try_start_1
    move-object v2, v0

    check-cast v2, Lgnu/mapping/ThreadLocation;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    goto :goto_1

    .end local v0    # "loc":Ljava/lang/Object;
    .end local p0    # "param":Ljava/lang/Object;
    :catch_1
    move-exception p0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "gnu.mapping.ThreadLocation.getLocation()"

    invoke-direct {v2, p0, v3, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 19
    .restart local v0    # "loc":Ljava/lang/Object;
    .restart local p0    # "param":Ljava/lang/Object;
    :cond_1
    :goto_1
    check-cast v0, Lgnu/mapping/Location;

    .end local v0    # "loc":Ljava/lang/Object;
    return-object v0
.end method

.method public static makeParameter(Ljava/lang/Object;)Lgnu/mapping/LocationProc;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object p0

    return-object p0
.end method

.method public static makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;
    .locals 3
    .param p0, "init"    # Ljava/lang/Object;
    .param p1, "converter"    # Ljava/lang/Object;

    .line 6
    nop

    .line 7
    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    :cond_0
    new-instance v0, Lgnu/mapping/ThreadLocation;

    invoke-direct {v0}, Lgnu/mapping/ThreadLocation;-><init>()V

    const/4 v1, 0x0

    .line 10
    .local v0, "loc":Lgnu/mapping/ThreadLocation;
    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 11
    new-instance v1, Lgnu/mapping/LocationProc;

    :try_start_0
    move-object v2, p1

    check-cast v2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v1, v0, v2}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)V

    .end local v0    # "loc":Lgnu/mapping/ThreadLocation;
    return-object v1

    .end local p0    # "init":Ljava/lang/Object;
    .end local p1    # "converter":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.mapping.LocationProc.<init>(gnu.mapping.Location,gnu.mapping.Procedure)"

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 13
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p2}, Lkawa/lib/parameters;->asLocation$Pc(Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {p2, p3}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 6
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 13
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 6
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 2
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 6
    nop

    .line 13
    return-void
.end method
