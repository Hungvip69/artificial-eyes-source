.class public Lgnu/kawa/slib/conditions;
.super Lgnu/expr/ModuleBody;
.source "conditions.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/condition$Mntype;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nconditions.scm\nScheme\n*S Scheme\n*F\n+ 1 conditions.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm\n+ 2 std_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/std_syntax.scm\n*L\n28#1,205:28\n30#2:10000\n*E\n"
.end annotation


# static fields
.field public static $Amcondition:Ljava/lang/Object;

.field public static $Amerror:Ljava/lang/Object;

.field public static $Ammessage:Ljava/lang/Object;

.field public static $Amserious:Ljava/lang/Object;

.field static final $Lscondition$Mntype$Gr:Ljava/lang/Class;

.field public static final $Prvt$$Lscondition$Gr:Ljava/lang/Class;

.field public static final $Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lgnu/kawa/slib/conditions;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxRules;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lkawa/lang/SyntaxRules;

.field public static final condition:Lkawa/lang/Macro;

.field public static final condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field public static final condition$Mnref:Lgnu/expr/ModuleMethod;

.field static final condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

.field public static final condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field public static final condition$Qu:Lgnu/expr/ModuleMethod;

.field public static final define$Mncondition$Mntype:Lkawa/lang/Macro;

.field public static final extract$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "thing"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "type-field-alist->condition"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "condition"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-array v1, v2, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "\u000c\u0018]\u000c\u0007-\u000c\u000f\u000c\u0017\u0008\u0008\u0010\u0008\u0000\u0018\u0008"

    const/4 v12, 0x3

    invoke-direct {v6, v7, v5, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "list"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "cons"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x4

    new-array v9, v13, [Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v9, v4

    aput-object v5, v9, v2

    const/4 v14, 0x2

    aput-object v7, v9, v14

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v9, v12

    const/4 v10, 0x2

    const-string v7, "\u0003\u0005\u0005"

    const-string v8, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0008\u0005\u0011\u0018\u0014\t\u0003\u0008\u0011\u0018\u000c\u0008\r\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u000b\u0008\u0013"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v1, v4

    invoke-direct {v0, v3, v1, v12}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit19:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "extract-condition"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-compound-condition"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "condition-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "condition-type-field-alist"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    new-array v1, v2, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const-string v5, "\u000c\u0018\u000c\u0007\u0008"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-direct {v6, v5, v7, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "$lookup$"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "*"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "quasiquote"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, ".type-field-alist"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    invoke-static {v8, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    const v8, 0x8e007

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    invoke-static {v5, v7, v15, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "as"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "<condition>"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v4

    aput-object v7, v9, v2

    aput-object v8, v9, v14

    const/4 v10, 0x0

    const-string v7, "\u0001"

    const-string v8, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v1, v4

    invoke-direct {v0, v3, v1, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit14:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "condition-has-type?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-condition"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "condition?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "define-condition-type"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    new-array v1, v2, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017-\u000c\u001f\u000c\'\u0008\u0018\u0010\u0008"

    const/4 v10, 0x5

    invoke-direct {v6, v7, v5, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "begin"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "define"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "make-condition-type"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/conditions;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x5001c

    invoke-static {v9, v10, v15, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v13, "and"

    invoke-direct {v10, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x5101b

    invoke-static {v12, v14, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v12, 0x5100f

    invoke-static {v13, v2, v15, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v12, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x5301c

    invoke-static {v12, v13, v15, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const/16 v13, 0xd

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v5, v13, v4

    const/4 v5, 0x1

    aput-object v7, v13, v5

    const/4 v5, 0x2

    aput-object v8, v13, v5

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x3

    aput-object v5, v13, v7

    const/4 v5, 0x4

    aput-object v9, v13, v5

    const/4 v14, 0x5

    aput-object v10, v13, v14

    const/4 v10, 0x6

    aput-object v2, v13, v10

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x7

    aput-object v2, v13, v9

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x8

    aput-object v2, v13, v8

    const/16 v2, 0x9

    aput-object v12, v13, v2

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v12, 0xa

    aput-object v5, v13, v12

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0xb

    aput-object v5, v13, v7

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v7, 0xc

    aput-object v5, v13, v7

    const/16 v16, 0x1

    const-string v7, "\u0001\u0001\u0001\u0003\u0003"

    const-string v17, "\u0011\u0018\u0004\u00c9\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u0003\t\u000b\u0008\u0011\u0018\u001c\u0008\u0008\u001d\u001b\u00c1\u0011\u0018\u000c!\t\u0013\u0018$\u0008\u0011\u0018,\u0011\u00184\u0008\u0011\u0018<\u0011\u0018D\u0008\u0003\u0008%\u0011\u0018\u000c!\t#\u0018L\u0008\u0011\u0018TA\u0011\u0018\\\u0011\u0018d\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u001b"

    move-object v5, v11

    const/16 v14, 0x8

    move-object/from16 v8, v17

    const/4 v12, 0x7

    move-object v9, v13

    const/4 v2, 0x6

    const/4 v13, 0x5

    move/from16 v10, v16

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v1, v4

    invoke-direct {v0, v3, v1, v13}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit9:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "condition-type?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "message"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "&error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "&serious"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0xe2003

    invoke-static {v0, v1, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "&message"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "&condition"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/conditions;

    invoke-direct {v0}, Lgnu/kawa/slib/conditions;-><init>()V

    sput-object v0, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    const-class v0, Lgnu/kawa/slib/condition$Mntype;

    sput-object v0, Lgnu/kawa/slib/conditions;->$Lscondition$Mntype$Gr:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x3003

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;

    .line 34
    sget-object v0, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit9:Lkawa/lang/SyntaxRules;

    sget-object v5, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v0, v3, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->define$Mncondition$Mntype:Lkawa/lang/Macro;

    const-class v0, Lgnu/kawa/slib/condition;

    sput-object v0, Lgnu/kawa/slib/conditions;->$Prvt$$Lscondition$Gr:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v5, -0xfff

    invoke-direct {v0, v1, v13, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->make$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit14:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v0, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v12, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v14, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->extract$Mncondition:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit19:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v0, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->condition:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->$Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static checkConditionTypeFieldAlist(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p0, "the$Mntype$Mnfield$Mnalist"    # Ljava/lang/Object;

    .line 201
    const-string v1, "condition-subtype?"

    .line 202
    move-object/from16 v0, p0

    .local v0, "type$Mnfield$Mnalist":Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    const/4 v7, 0x0

    .line 203
    :goto_0
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 204
    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .local v2, "entry":Ljava/lang/Object;
    move-object v2, v8

    .line 205
    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_0
    move-object v10, v8

    check-cast v10, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    .local v3, "type":Lgnu/kawa/slib/condition$Mntype;
    move-object v3, v10

    .line 204
    nop

    .line 206
    sget-object v10, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v10, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .local v8, "field$Mnalist":Ljava/lang/Object;
    move-object v8, v10

    .line 204
    nop

    .line 207
    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v10, "result":Ljava/lang/Object;
    move-object v11, v8

    .local v11, "arg0":Ljava/lang/Object;
    :goto_1
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v13, "arg0"

    if-ne v11, v12, :cond_3

    .end local v10    # "result":Ljava/lang/Object;
    .end local v11    # "arg0":Ljava/lang/Object;
    invoke-static {v10}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v10

    .local v4, "fields":Lgnu/lists/LList;
    move-object v4, v10

    .line 204
    iget-object v10, v3, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    .line 209
    .local v10, "all$Mnfields":Ljava/lang/Object;
    nop

    .line 219
    sget-object v11, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v10, v14}, Lgnu/kawa/slib/srfi1;->lsetDifference$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "arg0":Ljava/lang/Object;
    :goto_2
    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v14, :cond_0

    .line 220
    .end local v11    # "arg0":Ljava/lang/Object;
    sget-object v9, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v9, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 219
    .restart local v11    # "arg0":Ljava/lang/Object;
    :cond_0
    :try_start_1
    move-object v14, v11

    check-cast v14, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .local v5, "arg0":Lgnu/lists/Pair;
    move-object v5, v14

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    .line 209
    nop

    .line 210
    .local v14, "missing$Mnfield":Ljava/lang/Object;
    nop

    .line 211
    invoke-static {v3, v14}, Lgnu/kawa/slib/conditions;->conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .local v6, "supertype":Ljava/lang/Object;
    move-object/from16 v6, v16

    .line 212
    nop

    .line 213
    move-object/from16 v16, p0

    move-object/from16 v9, v16

    .line 214
    .local v9, "alist":Ljava/lang/Object;
    :goto_3
    sget-object v12, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v15, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v15}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :try_start_2
    check-cast v12, Lgnu/kawa/slib/condition$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v15, v6

    check-cast v15, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v12, v15}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v12

    .local v7, "x":Z
    move v7, v12

    if-eqz v7, :cond_2

    if-nez v7, :cond_1

    .line 216
    .end local v7    # "x":Z
    .end local v9    # "alist":Ljava/lang/Object;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v9, v12

    const/4 v12, 0x1

    aput-object v14, v9, v12

    const-string v12, "missing field in condition construction"

    invoke-static {v12, v9}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "supertype":Ljava/lang/Object;
    .end local v14    # "missing$Mnfield":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v15, 0x0

    goto :goto_2

    .line 215
    .restart local v9    # "alist":Ljava/lang/Object;
    .restart local v14    # "missing$Mnfield":Ljava/lang/Object;
    :cond_2
    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v12, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v12, 0x1

    const/4 v15, 0x0

    goto :goto_3

    .line 214
    .end local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    .end local v2    # "entry":Ljava/lang/Object;
    .end local v3    # "type":Lgnu/kawa/slib/condition$Mntype;
    .end local v4    # "fields":Lgnu/lists/LList;
    .end local v5    # "arg0":Lgnu/lists/Pair;
    .end local v8    # "field$Mnalist":Ljava/lang/Object;
    .end local v9    # "alist":Ljava/lang/Object;
    .end local v10    # "all$Mnfields":Ljava/lang/Object;
    .end local v11    # "arg0":Ljava/lang/Object;
    .end local v14    # "missing$Mnfield":Ljava/lang/Object;
    .end local p0    # "the$Mntype$Mnfield$Mnalist":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 209
    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v13, v2, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 207
    .restart local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    .restart local v2    # "entry":Ljava/lang/Object;
    .restart local v3    # "type":Lgnu/kawa/slib/condition$Mntype;
    .restart local v8    # "field$Mnalist":Ljava/lang/Object;
    .local v10, "result":Ljava/lang/Object;
    .restart local v11    # "arg0":Ljava/lang/Object;
    .restart local p0    # "the$Mntype$Mnfield$Mnalist":Ljava/lang/Object;
    :cond_3
    :try_start_4
    move-object v9, v11

    check-cast v9, Lgnu/lists/Pair;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    .restart local v5    # "arg0":Lgnu/lists/Pair;
    move-object v5, v9

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    goto/16 :goto_1

    .line 205
    .end local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    .end local v2    # "entry":Ljava/lang/Object;
    .end local v3    # "type":Lgnu/kawa/slib/condition$Mntype;
    .end local v5    # "arg0":Lgnu/lists/Pair;
    .end local v8    # "field$Mnalist":Ljava/lang/Object;
    .end local v10    # "result":Ljava/lang/Object;
    .end local v11    # "arg0":Ljava/lang/Object;
    .end local p0    # "the$Mntype$Mnfield$Mnalist":Ljava/lang/Object;
    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v13, v2, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_4
    move-exception v0

    const/4 v2, -0x2

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "type"

    invoke-direct {v0, v1, v3, v2, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 220
    .restart local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    .restart local p0    # "the$Mntype$Mnfield$Mnalist":Ljava/lang/Object;
    :cond_4
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .end local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    return-object v0
.end method

.method static conditionMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "condition"    # Ljava/lang/Object;

    .line 226
    const-string v0, "extract-condition"

    .line 224
    :try_start_0
    move-object v1, p0

    check-cast v1, Lgnu/kawa/slib/condition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v2, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    :try_start_1
    check-cast v2, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v1, v2}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object v0

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .end local p0    # "condition":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "condition"    # Lgnu/kawa/slib/condition;
    .param p1, "field"    # Ljava/lang/Object;

    .line 144
    nop

    .line 145
    iget-object v0, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "condition$Mntype"    # Lgnu/kawa/slib/condition$Mntype;
    .param p1, "field"    # Ljava/lang/Object;

    .line 95
    nop

    .line 97
    move-object v0, p0

    .line 98
    .local v0, "condition$Mntype":Lgnu/kawa/slib/condition$Mntype;
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lgnu/kawa/slib/condition$Mntype;->fields:Ljava/lang/Object;

    invoke-static {p1, v1}, Lkawa/lib/lists;->memq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    .line 100
    nop

    .line 102
    .end local v0    # "condition$Mntype":Lgnu/kawa/slib/condition$Mntype;
    :goto_1
    return-object v0

    .restart local v0    # "condition$Mntype":Lgnu/kawa/slib/condition$Mntype;
    :cond_1
    iget-object v1, v0, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lgnu/kawa/slib/condition$Mntype;

    goto :goto_0
.end method

.method static conditionTypes(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "condition"    # Ljava/lang/Object;

    .line 198
    move-object v0, p0

    check-cast v0, Lgnu/kawa/slib/condition;

    iget-object v0, v0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    .local v0, "arg0":Ljava/lang/Object;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v3, :cond_0

    .end local v0    # "arg0":Ljava/lang/Object;
    .end local v1    # "result":Ljava/lang/Object;
    invoke-static {v1}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    return-object v0

    .restart local v0    # "arg0":Ljava/lang/Object;
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    :try_start_0
    move-object v3, v0

    check-cast v3, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "arg0":Lgnu/lists/Pair;
    move-object v2, v3

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_0

    .end local v0    # "arg0":Ljava/lang/Object;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "arg0":Lgnu/lists/Pair;
    .end local p0    # "condition":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "arg0"

    const/4 v3, -0x2

    invoke-direct {v1, p0, v2, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;
    .locals 8
    .param p0, "condition"    # Lgnu/kawa/slib/condition;
    .param p1, "type"    # Lgnu/kawa/slib/condition$Mntype;

    .line 163
    new-instance v0, Lgnu/kawa/slib/conditions$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/conditions$frame;-><init>()V

    iput-object p1, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    .line 166
    iget-object v1, v0, Lgnu/kawa/slib/conditions$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    iget-object v2, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    invoke-static {v1, v2}, Lgnu/kawa/slib/srfi1;->find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 169
    .local v1, "entry":Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_0

    .line 170
    iget-object v3, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v3, "extract-condition: invalid condition type"

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v3, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    iget-object v0, v0, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    iget-object v0, v0, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    .local v0, "arg0":Ljava/lang/Object;
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v4, "result":Ljava/lang/Object;
    :goto_0
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v5, :cond_1

    .line 175
    .end local v0    # "arg0":Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    invoke-static {v4}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    invoke-static {v3, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    new-instance v2, Lgnu/kawa/slib/condition;

    invoke-direct {v2, v0}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    .end local v1    # "entry":Ljava/lang/Object;
    return-object v2

    .line 172
    .restart local v0    # "arg0":Ljava/lang/Object;
    .restart local v1    # "entry":Ljava/lang/Object;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object v5, v0

    check-cast v5, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "arg0":Lgnu/lists/Pair;
    move-object v2, v5

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 174
    nop

    .line 175
    .local v6, "field":Ljava/lang/Object;
    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "field":Ljava/lang/Object;
    invoke-static {v6, v4}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    move-object v0, v5

    goto :goto_0

    .end local v0    # "arg0":Ljava/lang/Object;
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v2    # "arg0":Lgnu/lists/Pair;
    .end local v4    # "result":Ljava/lang/Object;
    .end local p0    # "condition":Lgnu/kawa/slib/condition;
    .end local p1    # "type":Lgnu/kawa/slib/condition$Mntype;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string v1, "arg0"

    const/4 v2, -0x2

    invoke-direct {p1, p0, v1, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static isCondition(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 111
    nop

    .line 112
    instance-of v0, p0, Lgnu/kawa/slib/condition;

    return v0
.end method

.method public static isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 3
    .param p0, "condition"    # Ljava/lang/Object;
    .param p1, "type"    # Lgnu/kawa/slib/condition$Mntype;

    .line 127
    nop

    .line 128
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->conditionTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "types":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 129
    :goto_0
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    check-cast v2, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2, p1}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v2

    .local v1, "x":Z
    move v1, v2

    if-eqz v1, :cond_0

    .line 130
    .end local v0    # "types":Ljava/lang/Object;
    .end local v1    # "x":Z
    return v1

    .restart local v0    # "types":Ljava/lang/Object;
    .restart local v1    # "x":Z
    :cond_0
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 129
    .end local v0    # "types":Ljava/lang/Object;
    .end local v1    # "x":Z
    .end local p0    # "condition":Ljava/lang/Object;
    .end local p1    # "type":Lgnu/kawa/slib/condition$Mntype;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "condition-subtype?"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 2
    .param p0, "subtype"    # Lgnu/kawa/slib/condition$Mntype;
    .param p1, "supertype"    # Lgnu/kawa/slib/condition$Mntype;

    .line 88
    nop

    .line 89
    move-object v0, p0

    .line 90
    .local v0, "subtype":Lgnu/kawa/slib/condition$Mntype;
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    .line 93
    .end local v0    # "subtype":Lgnu/kawa/slib/condition$Mntype;
    :goto_1
    return v1

    .restart local v0    # "subtype":Lgnu/kawa/slib/condition$Mntype;
    :cond_1
    iget-object v1, v0, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lgnu/kawa/slib/condition$Mntype;

    goto :goto_0
.end method

.method public static isConditionType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 56
    nop

    .line 57
    instance-of v0, p0, Lgnu/kawa/slib/condition$Mntype;

    return v0
.end method

.method static isError(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "thing"    # Ljava/lang/Object;

    .line 232
    nop

    .line 231
    nop

    .line 81
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 231
    .local v0, "x":Z
    if-eqz v0, :cond_0

    sget-object v1, Lgnu/kawa/slib/conditions;->$Amerror:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v1}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .end local v0    # "x":Z
    .end local p0    # "thing":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "condition-has-type?"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local p0    # "thing":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0
.end method

.method static isMessageCondition(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "thing"    # Ljava/lang/Object;

    .line 225
    nop

    .line 224
    nop

    .line 81
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 224
    .local v0, "x":Z
    if-eqz v0, :cond_0

    sget-object v1, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v1}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .end local v0    # "x":Z
    .end local p0    # "thing":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "condition-has-type?"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local p0    # "thing":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0
.end method

.method static isSeriousCondition(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "thing"    # Ljava/lang/Object;

    .line 229
    nop

    .line 228
    nop

    .line 81
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 228
    .local v0, "x":Z
    if-eqz v0, :cond_0

    sget-object v1, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v1}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .end local v0    # "x":Z
    .end local p0    # "thing":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "condition-has-type?"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local p0    # "thing":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0
.end method

.method public static lambda1label(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "plist"    # Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 119
    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    .line 120
    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 10
    .param p0, "condition$Mn1"    # Ljava/lang/Object;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 158
    .local v0, "conditions":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 159
    nop

    .line 160
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v2, Lkawa/standard/append;->append:Lkawa/standard/append;

    .line 161
    invoke-static {p0, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .local v3, "arg0":Ljava/lang/Object;
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v4, "result":Ljava/lang/Object;
    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v6, :cond_0

    .line 160
    .end local v3    # "arg0":Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    invoke-static {v4}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lgnu/kawa/slib/condition;

    invoke-direct {v2, v1}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 161
    .restart local v3    # "arg0":Ljava/lang/Object;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_0
    :try_start_0
    move-object v6, v3

    check-cast v6, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "arg0":Lgnu/lists/Pair;
    move-object v5, v6

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 160
    sget-object v8, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    move-object v3, v6

    goto :goto_0

    .end local v0    # "conditions":Lgnu/lists/LList;
    .end local v3    # "arg0":Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    .end local v5    # "arg0":Lgnu/lists/Pair;
    .end local p0    # "condition$Mn1":Ljava/lang/Object;
    .end local p1    # "argsArray":[Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "arg0"

    const/4 v1, -0x2

    invoke-direct {p1, p0, v0, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 10
    .param p0, "type"    # Lgnu/kawa/slib/condition$Mntype;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 114
    .local v0, "field$Mnplist":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v2

    move-object v0, v2

    .line 115
    invoke-static {v0}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v2, "alist":Ljava/lang/Object;
    move-object v2, v3

    .line 121
    sget-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    iget-object v4, p0, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    .line 123
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v5, "result":Ljava/lang/Object;
    move-object v6, v2

    .local v6, "arg0":Ljava/lang/Object;
    const/4 v7, 0x0

    :goto_0
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v8, :cond_1

    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "arg0":Ljava/lang/Object;
    invoke-static {v5}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Lgnu/kawa/slib/srfi1;->lset$Eq$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    .line 124
    const-string v3, "condition fields don\'t match condition type"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    new-instance v1, Lgnu/kawa/slib/condition;

    invoke-static {p0, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-static {v3}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-direct {v1, v3}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    .end local v2    # "alist":Ljava/lang/Object;
    return-object v1

    .line 123
    .restart local v2    # "alist":Ljava/lang/Object;
    .restart local v5    # "result":Ljava/lang/Object;
    .restart local v6    # "arg0":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object v8, v6

    check-cast v8, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v7, "arg0":Lgnu/lists/Pair;
    move-object v7, v8

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    goto :goto_0

    .line 125
    .end local v0    # "field$Mnplist":Lgnu/lists/LList;
    .end local v2    # "alist":Ljava/lang/Object;
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "arg0":Ljava/lang/Object;
    .end local v7    # "arg0":Lgnu/lists/Pair;
    .end local p0    # "type":Lgnu/kawa/slib/condition$Mntype;
    .end local p1    # "argsArray":[Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "arg0"

    const/4 v1, -0x2

    invoke-direct {p1, p0, v0, v1, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;
    .locals 5
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "supertype"    # Lgnu/kawa/slib/condition$Mntype;
    .param p2, "fields"    # Ljava/lang/Object;

    .line 59
    nop

    .line 63
    sget-object v0, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    iget-object v1, p1, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Lgnu/kawa/slib/srfi1;->lsetIntersection$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, "duplicate field name"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    new-instance v0, Lgnu/kawa/slib/condition$Mntype;

    iget-object v1, p1, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object p2, v3, v2

    invoke-static {v3}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 15
    .param p0, "type$Mnfield$Mnalist"    # Ljava/lang/Object;

    .line 187
    const-string v0, "arg0"

    .line 188
    nop

    .line 196
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v1, "result":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "arg0":Ljava/lang/Object;
    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v6, :cond_0

    .line 192
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "arg0":Ljava/lang/Object;
    invoke-static {v1}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    new-instance v1, Lgnu/kawa/slib/condition;

    invoke-direct {v1, v0}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 196
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "arg0":Ljava/lang/Object;
    :cond_0
    const/4 v6, -0x2

    :try_start_0
    move-object v7, v2

    check-cast v7, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "arg0":Lgnu/lists/Pair;
    move-object v3, v7

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 189
    nop

    .line 190
    .local v8, "entry":Ljava/lang/Object;
    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v9, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 195
    invoke-virtual {v10, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/kawa/slib/condition$Mntype;

    iget-object v10, v10, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    .local v10, "arg0":Ljava/lang/Object;
    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v11, "result":Ljava/lang/Object;
    :goto_1
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v10, v12, :cond_1

    .line 192
    .end local v10    # "arg0":Ljava/lang/Object;
    .end local v11    # "result":Ljava/lang/Object;
    invoke-static {v11}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v6

    invoke-static {v9, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    .end local v8    # "entry":Ljava/lang/Object;
    invoke-static {v6, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    move-object v2, v7

    goto :goto_0

    .line 195
    .restart local v8    # "entry":Ljava/lang/Object;
    .restart local v10    # "arg0":Ljava/lang/Object;
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object v12, v10

    check-cast v12, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .local v4, "arg0":Lgnu/lists/Pair;
    move-object v4, v12

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 191
    nop

    .line 192
    .local v13, "field":Ljava/lang/Object;
    sget-object v14, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v14, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .local v5, "x":Ljava/lang/Object;
    move-object v5, v14

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v14, :cond_2

    move-object v14, v5

    goto :goto_2

    :cond_2
    invoke-static {p0, v13}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v14

    .end local v5    # "x":Ljava/lang/Object;
    .end local v13    # "field":Ljava/lang/Object;
    :goto_2
    invoke-static {v14, v11}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    move-object v10, v12

    goto :goto_1

    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "arg0":Ljava/lang/Object;
    .end local v3    # "arg0":Lgnu/lists/Pair;
    .end local v4    # "arg0":Lgnu/lists/Pair;
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v10    # "arg0":Ljava/lang/Object;
    .end local v11    # "result":Ljava/lang/Object;
    .end local p0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v6, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method static typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "type$Mnfield$Mnalist"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/Object;

    .line 148
    nop

    .line 149
    move-object v0, p0

    .local v0, "type$Mnfield$Mnalist":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 150
    :goto_0
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "type-field-alist-ref: field not found"

    invoke-static {v2, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 153
    :cond_0
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v1, "temp":Ljava/lang/Object;
    move-object v1, v2

    .line 150
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    .line 154
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 10000
    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 156
    .end local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    .end local v1    # "temp":Ljava/lang/Object;
    :goto_1
    return-object v1

    .restart local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    .restart local v1    # "temp":Ljava/lang/Object;
    :cond_1
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 187
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    .line 111
    :sswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 56
    :sswitch_2
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isConditionType(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "extract-condition"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    .line 163
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/kawa/slib/condition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    .line 164
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 163
    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 144
    :pswitch_2
    :try_start_2
    check-cast p2, Lgnu/kawa/slib/condition;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "condition-ref"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 127
    :pswitch_3
    :try_start_3
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "condition-has-type?"

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "make-condition-type"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 59
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object p1

    return-object p1

    .line 60
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 59
    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    aget-object p1, p2, v1

    array-length v0, p2

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    invoke-static {p1, v3}, Lgnu/kawa/slib/conditions;->makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    aput-object v1, v3, v0

    goto :goto_0

    .line 114
    :sswitch_1
    aget-object p1, p2, v1

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p1, p2

    sub-int/2addr p1, v2

    new-array v1, p1, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    invoke-static {v0, v1}, Lgnu/kawa/slib/conditions;->makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "make-condition"

    invoke-direct {v0, p2, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 187
    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 111
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 56
    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    .line 127
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 163
    :pswitch_1
    instance-of v0, p2, Lgnu/kawa/slib/condition;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez p2, :cond_1

    return v2

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 144
    :pswitch_2
    instance-of v0, p2, Lgnu/kawa/slib/condition;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 127
    :pswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez p2, :cond_3

    return v2

    :cond_3
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 59
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez p2, :cond_1

    const p1, -0xbfffe

    return p1

    :cond_1
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    sparse-switch v0, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 158
    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 114
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 7
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    .line 28
    const-string v0, "make-condition-type"

    .line 0
    const/4 v1, 0x0

    .line 28
    .local v1, "$result":Lgnu/lists/Consumer;
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 36
    nop

    .line 37
    nop

    .line 38
    nop

    .line 40
    nop

    .line 56
    nop

    .line 59
    nop

    .line 88
    nop

    .line 95
    nop

    .line 106
    nop

    .line 111
    nop

    .line 114
    nop

    .line 127
    nop

    .line 144
    nop

    .line 148
    nop

    .line 158
    nop

    .line 163
    nop

    .line 187
    nop

    .line 198
    nop

    .line 201
    nop

    .line 222
    new-instance v2, Lgnu/kawa/slib/condition$Mntype;

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v2, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    .line 224
    sget-object v2, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    const/4 v4, 0x1

    :try_start_0
    check-cast v3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static {v2, v3, v5}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    .line 228
    sget-object v2, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v3, v5}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    .line 231
    sget-object v2, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    :try_start_2
    check-cast v3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v3, v0}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->$Amerror:Ljava/lang/Object;

    return-void

    .end local v1    # "$result":Lgnu/lists/Consumer;
    .end local p0    # "this":Lgnu/kawa/slib/conditions;
    .end local p1    # "$ctx":Lgnu/mapping/CallContext;
    :catch_0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 228
    :catch_1
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 224
    :catch_2
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v4, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method
