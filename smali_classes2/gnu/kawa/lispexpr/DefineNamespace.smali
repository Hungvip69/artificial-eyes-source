.class public Lgnu/kawa/lispexpr/DefineNamespace;
.super Lkawa/lang/Syntax;
.source "DefineNamespace.java"


# static fields
.field public static final XML_NAMESPACE_MAGIC:Ljava/lang/String; = "&xml&"

.field public static final define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

.field public static final define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;


# instance fields
.field private makePrivate:Z

.field private makeXML:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 16
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 18
    new-instance v0, Lgnu/kawa/lispexpr/DefineNamespace;

    invoke-direct {v0}, Lgnu/kawa/lispexpr/DefineNamespace;-><init>()V

    sput-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    .line 21
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string v1, "define-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string v1, "define-private-namespace"

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_private_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    .line 24
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    const-string v2, "define-xml-namespace"

    invoke-virtual {v0, v2}, Lgnu/kawa/lispexpr/DefineNamespace;->setName(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lgnu/kawa/lispexpr/DefineNamespace;->define_xml_namespace:Lgnu/kawa/lispexpr/DefineNamespace;

    iput-boolean v1, v0, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 93
    const-string v0, "define-namespace is only allowed in a <body>"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 10
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 32
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .local v2, "p1":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .local v3, "p2":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    .line 40
    :cond_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Symbol;

    .line 41
    .local v0, "name":Lgnu/mapping/Symbol;
    const/16 v4, 0x77

    invoke-virtual {p3, v0, v4, p4}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v4

    .line 42
    .local v4, "decl":Lgnu/expr/Declaration;
    invoke-virtual {p4, v4}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 43
    const-wide/32 v5, 0x244000

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 45
    iget-boolean v5, p0, Lgnu/kawa/lispexpr/DefineNamespace;->makePrivate:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 47
    const-wide/32 v7, 0x1000000

    invoke-virtual {v4, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 48
    invoke-virtual {v4, v6}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_0

    .line 50
    :cond_1
    instance-of v5, p3, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_2

    .line 51
    invoke-virtual {v4, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 52
    :cond_2
    :goto_0
    invoke-static {v4, v2}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 54
    const/4 v5, 0x0

    .line 55
    .local v5, "literal":Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_5

    .line 62
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    const-string v1, "class:"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    const/4 v1, 0x6

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "cname":Ljava/lang/String;
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    invoke-static {v5, v7}, Lgnu/kawa/lispexpr/ClassNamespace;->getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;

    move-result-object v7

    .line 69
    .local v7, "namespace":Lgnu/mapping/Namespace;
    const-string v8, "gnu.kawa.lispexpr.ClassNamespace"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    invoke-virtual {v4, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 70
    .end local v1    # "cname":Ljava/lang/String;
    goto :goto_1

    .line 71
    .end local v7    # "namespace":Lgnu/mapping/Namespace;
    :cond_3
    iget-boolean v1, p0, Lgnu/kawa/lispexpr/DefineNamespace;->makeXML:Z

    if-eqz v1, :cond_4

    .line 73
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lgnu/kawa/xml/XmlNamespace;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/XmlNamespace;

    move-result-object v7

    .line 74
    .restart local v7    # "namespace":Lgnu/mapping/Namespace;
    const-string v1, "gnu.kawa.xml.XmlNamespace"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v4, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 78
    .end local v7    # "namespace":Lgnu/mapping/Namespace;
    :cond_4
    invoke-static {v5}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v7

    .line 79
    .restart local v7    # "namespace":Lgnu/mapping/Namespace;
    const-string v1, "gnu.mapping.Namespace"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v4, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 81
    :goto_1
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-direct {v1, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 82
    .local v1, "value":Lgnu/expr/Expression;
    const-wide/16 v8, 0x2000

    invoke-virtual {v4, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 83
    .end local v7    # "namespace":Lgnu/mapping/Namespace;
    goto :goto_2

    .line 85
    .end local v1    # "value":Lgnu/expr/Expression;
    :cond_5
    invoke-virtual {p4, v3, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 86
    .restart local v1    # "value":Lgnu/expr/Expression;
    :goto_2
    invoke-virtual {v4, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    invoke-static {v4, v1}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    return v6

    .line 37
    .end local v0    # "name":Lgnu/mapping/Symbol;
    .end local v1    # "value":Lgnu/expr/Expression;
    .end local v2    # "p1":Lgnu/lists/Pair;
    .end local v3    # "p2":Lgnu/lists/Pair;
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "literal":Ljava/lang/String;
    :cond_6
    :goto_3
    const/16 v0, 0x65

    const-string v2, "invalid syntax for define-namespace"

    invoke-virtual {p4, v0, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 38
    return v1
.end method
