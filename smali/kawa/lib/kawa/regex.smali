.class public Lkawa/lib/kawa/regex;
.super Lgnu/expr/ModuleBody;
.source "regex.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nregex.scm\nScheme\n*S Scheme\n*F\n+ 1 regex.scm\n/u2/home/jis/ai2-kawa/kawa/lib/kawa/regex.scm\n*L\n1#1,82:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/kawa/regex;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final regex$Mnmatch:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnquote:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

.field public static final regex$Mnsplit:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-replace*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-replace"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-split"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-match-positions"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-match"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-match?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "regex-quote"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "loop"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/kawa/regex;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/kawa/regex;

    invoke-direct {v0}, Lkawa/lib/kawa/regex;-><init>()V

    sput-object v0, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    sget-object v2, Lkawa/lib/kawa/regex;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnquote:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/kawa/regex;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x3

    const/16 v4, 0x4002

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnmatch$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/kawa/regex;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnmatch:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/kawa/regex;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnmatch$Mnpositions:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/kawa/regex;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x2002

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnsplit:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/kawa/regex;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xd

    const/16 v4, 0x3003

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnreplace:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/kawa/regex;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/regex;->regex$Mnreplace$St:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/kawa/regex;->$instance:Lkawa/lib/kawa/regex;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public static isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 9
    nop

    .line 11
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_0

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "rex"

    const/4 v0, -0x2

    invoke-direct {p2, p1, p3, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    move-object v1, v3

    .line 12
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 13
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 14
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    return v0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .locals 7
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 16
    nop

    .line 18
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_0

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "rex"

    const/4 v0, -0x2

    invoke-direct {p2, p1, p3, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v6, v2

    move-object v1, v6

    .line 19
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 20
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "igroup":I
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v3, "r":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 24
    :goto_1
    if-gez v2, :cond_1

    .line 29
    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    goto :goto_3

    .line 25
    .restart local v2    # "igroup":I
    :cond_1
    nop

    .line 26
    nop

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    .local v4, "start":I
    move v4, v5

    .line 28
    if-gez v4, :cond_2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 29
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v4    # "start":I
    :goto_2
    invoke-static {v5, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .restart local v3    # "r":Ljava/lang/Object;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :goto_3
    return-object v3
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;
    .locals 8
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 33
    nop

    .line 35
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_0

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "rex"

    const/4 v0, -0x2

    invoke-direct {p2, p1, p3, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "start":I
    .restart local p3    # "end":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v7, v2

    move-object v1, v7

    .line 36
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 37
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, p2, p3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "igroup":I
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v3, "r":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 41
    :goto_1
    if-gez v2, :cond_1

    .line 46
    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    goto :goto_3

    .line 42
    .restart local v2    # "igroup":I
    :cond_1
    nop

    .line 43
    nop

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    .local v4, "start":I
    move v4, v5

    .line 45
    if-gez v4, :cond_2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 46
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    .end local v4    # "start":I
    :goto_2
    invoke-static {v5, v3}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .restart local v3    # "r":Ljava/lang/Object;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v2    # "igroup":I
    .end local v3    # "r":Ljava/lang/Object;
    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :goto_3
    return-object v3
.end method

.method public static regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 6
    nop

    .line 7
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "repl"    # Ljava/lang/Object;

    .line 55
    nop

    .line 56
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    move-object v3, p0

    goto :goto_0

    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "repl":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "rex"

    const/4 v1, -0x2

    invoke-direct {p2, p1, v0, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "repl":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    .line 57
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 58
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v1, v3

    .line 60
    invoke-static {p2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 62
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 61
    :cond_2
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v1, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "sbuf":Ljava/lang/StringBuffer;
    goto :goto_3

    .line 58
    :cond_4
    move-object v1, p1

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :goto_3
    return-object v1
.end method

.method public static regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "repl"    # Ljava/lang/Object;

    .line 68
    new-instance v0, Lkawa/lib/kawa/regex$frame;

    invoke-direct {v0}, Lkawa/lib/kawa/regex$frame;-><init>()V

    iput-object p2, v0, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    .line 69
    instance-of v1, p0, Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    move-object v1, p0

    check-cast v1, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    .end local p2    # "repl":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "rex"

    const/4 v1, -0x2

    invoke-direct {p2, p1, v0, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    .restart local p2    # "repl":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 70
    .local v1, "rex":Ljava/util/regex/Pattern;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    iput-object v2, v0, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    .line 69
    nop

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, v0, Lkawa/lib/kawa/regex$frame;->sbuf:Ljava/lang/StringBuffer;

    .line 72
    iget-object v2, v0, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, v0, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    iput-object v2, v0, Lkawa/lib/kawa/regex$frame;->loop:Ljava/lang/Object;

    invoke-virtual {v0}, Lkawa/lib/kawa/regex$frame;->lambda1loop()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 82
    :cond_1
    iget-object v2, v0, Lkawa/lib/kawa/regex$frame;->matcher:Ljava/util/regex/Matcher;

    iget-object v0, v0, Lkawa/lib/kawa/regex$frame;->repl:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    :goto_2
    return-object v0
.end method

.method public static regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;
    .locals 4
    .param p0, "re"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 50
    nop

    .line 51
    instance-of v0, p0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    .local v1, "rex":Ljava/util/regex/Pattern;
    goto :goto_0

    .end local v1    # "rex":Ljava/util/regex/Pattern;
    .end local p0    # "re":Ljava/lang/Object;
    .end local p1    # "str":Ljava/lang/CharSequence;
    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "rex"

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local p0    # "re":Ljava/lang/Object;
    .restart local p1    # "str":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    move-object v1, v3

    .line 52
    .local v0, "rex":Ljava/util/regex/Pattern;
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .end local v0    # "rex":Ljava/util/regex/Pattern;
    .end local v1    # "parts":[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/kawa/regex;->regexQuote(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "regex-quote"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexSplit(Ljava/lang/Object;Ljava/lang/CharSequence;)Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "regex-split"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :sswitch_1
    :try_start_1
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "regex-match-positions"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :sswitch_2
    :try_start_2
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "regex-match"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :sswitch_3
    :try_start_3
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;)Z

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

    const-string v0, "regex-match?"

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0x9 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "regex-match-positions"

    const-string v1, "regex-match"

    const-string v2, "regex-match?"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lkawa/lib/kawa/regex;->regexReplace$St(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p4, "regex-replace*"

    invoke-direct {p2, p1, p4, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 55
    :sswitch_1
    :try_start_1
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lkawa/lib/kawa/regex;->regexReplace(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p4, "regex-replace"

    invoke-direct {p2, p1, p4, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :sswitch_2
    :try_start_2
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p2, p3, p1}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :sswitch_3
    :try_start_4
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {p2, p3, p1}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :sswitch_4
    :try_start_6
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    invoke-static {p2, p3, p1}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 10
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "regex-match-positions"

    const-string v1, "regex-match"

    const-string v2, "regex-match?"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    .line 33
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object p4, p5

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p2, p3, p1, p4}, Lkawa/lib/kawa/regex;->regexMatchPositions(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :sswitch_1
    :try_start_3
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    move-object p4, p5

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3

    invoke-static {p2, p3, p1, p4}, Lkawa/lib/kawa/regex;->regexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 16
    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :sswitch_2
    :try_start_6
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_8

    :try_start_7
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    move-object p4, p5

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6

    invoke-static {p2, p3, p1, p4}, Lkawa/lib/kawa/regex;->isRegexMatch(Ljava/lang/Object;Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 10
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 9
    :catch_8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, -0xbffff

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, -0xbfffe

    sparse-switch v0, :sswitch_data_0

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 50
    :sswitch_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_0
    return v3

    .line 33
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_1
    return v3

    .line 16
    :sswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_2
    return v3

    .line 9
    :sswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0x9 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const v3, -0xbfffe

    sparse-switch v0, :sswitch_data_0

    .line 9
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 68
    :sswitch_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_0
    return v3

    .line 55
    :sswitch_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_1
    return v3

    .line 33
    :sswitch_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_2
    return v3

    .line 16
    :sswitch_3
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_3
    return v3

    .line 9
    :sswitch_4
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_4
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const v3, -0xbfffe

    sparse-switch v0, :sswitch_data_0

    .line 9
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 33
    :sswitch_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_0
    return v3

    .line 16
    :sswitch_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_1
    return v3

    .line 9
    :sswitch_2
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 6
    nop

    .line 9
    nop

    .line 16
    nop

    .line 33
    nop

    .line 50
    nop

    .line 55
    nop

    .line 68
    return-void
.end method
