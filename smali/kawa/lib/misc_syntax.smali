.class public Lkawa/lib/misc_syntax;
.super Lgnu/expr/ModuleBody;
.source "misc_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmisc_syntax.scm\nScheme\n*S Scheme\n*F\n+ 1 misc_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm\n*L\n1#1,75:1\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$define$Mnconstant:Lgnu/mapping/Location;

.field public static final $instance:Lkawa/lib/misc_syntax;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lkawa/lang/SyntaxRules;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lkawa/lang/SyntaxPattern;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lkawa/lang/SyntaxPattern;

.field static final Lit17:Lkawa/lang/SyntaxTemplate;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lkawa/lang/SyntaxTemplate;

.field static final Lit22:Lkawa/lang/SyntaxTemplate;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxTemplate;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxPattern;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lkawa/lang/SyntaxPattern;

.field public static final include:Lkawa/lang/Macro;

.field public static final include$Mnrelative:Lkawa/lang/Macro;

.field public static final module$Mnuri:Lkawa/lang/Macro;

.field public static final provide:Lkawa/lang/Macro;

.field public static final resource$Mnurl:Lkawa/lang/Macro;

.field public static final test$Mnbegin:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%test-begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "require"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "else"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "cond-expand"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "srfi-64"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "quasiquote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "$lookup$"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "\u0001\u0001"

    const-string v4, "\u000b"

    invoke-direct {v0, v3, v4, v2, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4, v2, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit21:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v2, "\u0008\u000b"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v2, v5, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007\u000c\u000f\u0008"

    const/4 v6, 0x2

    invoke-direct {v0, v5, v2, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "include-relative"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    sget-object v8, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v1

    const-string v8, "\u0001\u0001\u0003"

    const-string v9, "\u0011\u0018\u0004\u0008\u0015\u0013"

    invoke-direct {v0, v8, v9, v7, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit17:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "\r\u0017\u0010\u0008\u0008"

    const/4 v9, 0x3

    invoke-direct {v0, v8, v7, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit16:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v7, "\u0003"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v7, v8, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4, v7, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v5, v3, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit13:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v3, "include"

    invoke-direct {v0, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "resource-url"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/misc_syntax;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    new-array v3, v2, [Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "\u000c\u0018\u000c\u0007\u0008"

    invoke-direct {v11, v8, v7, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sget-object v7, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "gnu.text.URLPath"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "valueOf"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v13, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    invoke-static {v10, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    const v12, 0x26007

    const-string v15, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    invoke-static {v7, v10, v15, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    sget-object v10, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "module-uri"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/misc_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x2700b

    invoke-static {v12, v13, v15, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    sget-object v13, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v6, "resolve"

    invoke-direct {v9, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v6, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {v13, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v6, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {v12, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {v10, v6, v15, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sget-object v9, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "toURL"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    sget-object v10, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "openConnection"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    invoke-static {v10, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v12, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "getURL"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v13, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    const/4 v13, 0x6

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v7, v14, v1

    sget-object v7, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v14, v2

    const/4 v7, 0x2

    aput-object v6, v14, v7

    const/4 v6, 0x3

    aput-object v9, v14, v6

    const/4 v6, 0x4

    aput-object v10, v14, v6

    const/4 v7, 0x5

    aput-object v12, v14, v7

    const/4 v7, 0x0

    const-string v12, "\u0001"

    const-string v13, "\u0011\u0018\u0004\u0008\u0008\u0011\u0018\u000c\u0099\u0008\u0011\u0018\u000ca\u0008\u0011\u0018\u000c)\u0011\u0018\u0014\u0008\u0003\u0018\u001c\u0018$\u0018,"

    move-object v10, v5

    move-object v9, v15

    move v15, v7

    invoke-direct/range {v10 .. v15}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v5, v3, v1

    invoke-direct {v0, v4, v3, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit11:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v3, "\u000c\u0007\u0008"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit9:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "test-begin"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/misc_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v3, 0x2

    new-array v5, v3, [Lkawa/lang/SyntaxRule;

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-direct {v11, v8, v7, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sget-object v7, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x1501e

    invoke-static {v10, v12, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const v12, 0x15015

    invoke-static {v8, v10, v9, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    sget-object v10, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x15036

    invoke-static {v15, v2, v9, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    invoke-static {v14, v2, v9, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x15035

    invoke-static {v1, v2, v9, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x1502c

    invoke-static {v13, v1, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v13, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x15026

    invoke-static {v10, v1, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v10, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    invoke-static {v8, v1, v9, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x15008

    invoke-static {v7, v1, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x16020

    invoke-static {v2, v7, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    new-array v14, v6, [Ljava/lang/Object;

    sget-object v7, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/4 v8, 0x0

    aput-object v7, v14, v8

    const/4 v7, 0x1

    aput-object v1, v14, v7

    sget-object v1, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x2

    aput-object v1, v14, v7

    const/4 v1, 0x3

    aput-object v2, v14, v1

    const/4 v15, 0x0

    const-string v12, "\u0001"

    const-string v13, "\u0011\u0018\u0004\u0011\u0018\u000c\u0008\u0011\u0018\u0014\t\u0003\u0018\u001c"

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v3, v5, v1

    new-instance v2, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    const-string v3, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-direct {v11, v3, v7, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sget-object v1, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0x1901e

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v8, 0x19015

    invoke-static {v3, v7, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    sget-object v7, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x19036

    invoke-static {v13, v14, v9, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    invoke-static {v12, v13, v9, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x19035

    invoke-static {v12, v13, v9, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const v13, 0x1902c

    invoke-static {v10, v12, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v12, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const v12, 0x19026

    invoke-static {v7, v10, v9, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v7, v10, v9, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    invoke-static {v3, v7, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v7, 0x19008

    invoke-static {v1, v3, v9, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v3, 0x3

    new-array v14, v3, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x0

    aput-object v3, v14, v7

    const/4 v3, 0x1

    aput-object v1, v14, v3

    sget-object v1, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x2

    aput-object v1, v14, v3

    const/4 v15, 0x0

    const-string v12, "\u0001\u0001"

    const-string v13, "\u0011\u0018\u0004\u0011\u0018\u000c\u0008\u0011\u0018\u0014\t\u0003\u0008\u000b"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-direct {v0, v4, v5, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0007\u000b"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-direct {v0, v2, v4, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit5:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "::"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<int>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x7b

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v5, 0xd016

    invoke-static {v3, v4, v9, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v4, 0xd010

    invoke-static {v2, v3, v9, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v3, 0xd00c

    invoke-static {v1, v2, v9, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string v1, "\u0001\u0001\u0001"

    const-string v4, "\u0018\u0004"

    invoke-direct {v0, v1, v4, v3, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v3, "\u0013"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v4, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit3:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "define-constant"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v2

    const-string v3, "\u0018\u0004"

    invoke-direct {v0, v1, v3, v5, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc_syntax;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "provide"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/misc_syntax;

    invoke-direct {v0}, Lkawa/lib/misc_syntax;-><init>()V

    sput-object v0, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    .line 1
    const-string v0, "kawa.lib.prim_syntax"

    const-string v1, "define$Mnconstant"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->$Prvt$define$Mnconstant:Lgnu/mapping/Location;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    const/4 v3, 0x0

    const/16 v4, 0x1001

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->provide:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->test$Mnbegin:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v5, "source-location"

    const-string v7, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:29"

    invoke-virtual {v1, v5, v7}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->module$Mnuri:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit11:Lkawa/lang/SyntaxRules;

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->resource$Mnurl:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v5, "source-location"

    const-string v7, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:54"

    invoke-virtual {v1, v5, v7}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v5, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->include:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    invoke-direct {v1, v2, v6, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v2, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc_syntax;->include$Mnrelative:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "form"    # Ljava/lang/Object;

    .line 4
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit1:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v4, Lkawa/lib/misc_syntax;->Lit2:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    sget-object v5, Lkawa/lib/misc_syntax;->Lit3:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    check-cast v4, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "%provide%"

    aput-object v6, v5, v2

    aput-object v4, v5, v3

    invoke-static {v5}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v2

    invoke-static {p0, v2}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v3

    sget-object v4, Lkawa/lib/misc_syntax;->Lit4:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_1

    .line 12
    .end local p0    # "form":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "symbol->string"

    invoke-direct {v0, p0, v1, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 6
    .restart local p0    # "form":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lkawa/lib/misc_syntax;->Lit5:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    const-string v0, "provide requires a quoted feature-name"

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "form"    # Ljava/lang/Object;

    .line 29
    nop

    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit9:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/functions/GetModuleClass;->getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "x"    # Ljava/lang/Object;

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 55
    nop

    .line 63
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit13:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const-string v3, "syntax-case"

    if-eqz v1, :cond_1

    .line 65
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v4, Lkawa/lib/misc_syntax;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    .line 66
    .local v1, "fn":Ljava/lang/Object;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    sget-object v5, Lkawa/lib/misc_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    .line 56
    nop

    .local v4, "k":Ljava/lang/Object;
    move-object v5, v1

    .local v5, "fn":Ljava/lang/Object;
    new-instance v6, Lkawa/lib/misc_syntax$frame;

    invoke-direct {v6}, Lkawa/lib/misc_syntax$frame;-><init>()V

    iput-object v4, v6, Lkawa/lib/misc_syntax$frame;->k:Ljava/lang/Object;

    .line 57
    :try_start_0
    invoke-static {v5}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Lkawa/lib/ports;->openInputFile(Lgnu/text/Path;)Lgnu/mapping/InPort;

    move-result-object v7

    iput-object v7, v6, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    .line 58
    invoke-virtual {v6}, Lkawa/lib/misc_syntax$frame;->lambda4f()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "k":Ljava/lang/Object;
    .end local v5    # "fn":Ljava/lang/Object;
    const/4 v5, 0x3

    invoke-static {v5, v0}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lkawa/lib/misc_syntax;->Lit16:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v5, v4, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/misc_syntax;->Lit17:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 57
    .end local v1    # "fn":Ljava/lang/Object;
    .end local p0    # "x":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "open-input-file"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 67
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_1
    invoke-static {v3, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static lambda5(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "x"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/misc_syntax;->Lit19:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    nop

    .line 73
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/misc_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    move-object v2, v1

    check-cast v2, Lgnu/lists/PairWithPosition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move-object v4, v3

    .line 72
    .local v2, "path$Mnpair":Lgnu/lists/PairWithPosition;
    invoke-virtual {v2}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v4

    .local v1, "base":Lgnu/text/Path;
    move-object v1, v4

    .line 75
    invoke-virtual {v2}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .local v3, "fname":Ljava/lang/String;
    move-object v3, v4

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    sget-object v5, Lkawa/lib/misc_syntax;->Lit21:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4, v5}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v5

    sget-object v6, Lkawa/lib/misc_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v6, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/text/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    .end local v1    # "base":Lgnu/text/Path;
    .end local v2    # "path$Mnpair":Lgnu/lists/PairWithPosition;
    .end local v3    # "fname":Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local p0    # "x":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-pair"

    const/4 v3, -0x2

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 75
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 54
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda5(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 0
    :pswitch_3
    invoke-static {p2}, Lkawa/lib/misc_syntax;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 0
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 54
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 29
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
