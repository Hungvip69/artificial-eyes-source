.class public Lkawa/standard/syntax_rules;
.super Lkawa/lang/Syntax;
.source "syntax_rules.java"


# static fields
.field public static final syntax_rules:Lkawa/standard/syntax_rules;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/syntax_rules;

    invoke-direct {v0}, Lkawa/standard/syntax_rules;-><init>()V

    sput-object v0, Lkawa/standard/syntax_rules;->syntax_rules:Lkawa/standard/syntax_rules;

    .line 11
    sget-object v0, Lkawa/standard/syntax_rules;->syntax_rules:Lkawa/standard/syntax_rules;

    const-string v1, "syntax-rules"

    invoke-virtual {v0, v1}, Lkawa/standard/syntax_rules;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 15
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 17
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lkawa/lang/SyntaxPattern;->getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v1

    .line 19
    .local v1, "literal_identifiers":[Ljava/lang/Object;
    new-instance v2, Lkawa/lang/SyntaxRules;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v1, v3, p2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 21
    .local v2, "rules":Lkawa/lang/SyntaxRules;
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v3
.end method
