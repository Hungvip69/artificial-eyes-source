.class public Lkawa/standard/IfFeature;
.super Ljava/lang/Object;
.source "IfFeature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-string v0, "kawa"

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 23
    return v1

    .line 24
    :cond_0
    const-string v0, "srfi-0"

    if-ne p0, v0, :cond_1

    .line 25
    return v1

    .line 27
    :cond_1
    const-string v0, "srfi-4"

    if-ne p0, v0, :cond_2

    .line 28
    return v1

    .line 29
    :cond_2
    const-string v0, "srfi-6"

    if-ne p0, v0, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    const-string v0, "srfi-8"

    if-ne p0, v0, :cond_4

    .line 32
    return v1

    .line 33
    :cond_4
    const-string v0, "srfi-9"

    if-ne p0, v0, :cond_5

    .line 34
    return v1

    .line 35
    :cond_5
    const-string v0, "srfi-11"

    if-ne p0, v0, :cond_6

    .line 36
    return v1

    .line 37
    :cond_6
    const-string v0, "srfi-16"

    if-ne p0, v0, :cond_7

    .line 38
    return v1

    .line 39
    :cond_7
    const-string v0, "srfi-17"

    if-ne p0, v0, :cond_8

    .line 40
    return v1

    .line 41
    :cond_8
    const-string v0, "srfi-23"

    if-ne p0, v0, :cond_9

    .line 42
    return v1

    .line 43
    :cond_9
    const-string v0, "srfi-25"

    if-ne p0, v0, :cond_a

    .line 44
    return v1

    .line 45
    :cond_a
    const-string v0, "srfi-26"

    if-ne p0, v0, :cond_b

    .line 46
    return v1

    .line 47
    :cond_b
    const-string v0, "srfi-28"

    if-ne p0, v0, :cond_c

    .line 48
    return v1

    .line 49
    :cond_c
    const-string v0, "srfi-30"

    if-ne p0, v0, :cond_d

    .line 50
    return v1

    .line 51
    :cond_d
    const-string v0, "srfi-39"

    if-ne p0, v0, :cond_e

    .line 52
    return v1

    .line 71
    :cond_e
    const-string v0, "in-servlet"

    const-string v2, "in-http-server"

    const/4 v3, 0x0

    if-eq p0, v2, :cond_f

    if-ne p0, v0, :cond_13

    .line 73
    :cond_f
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/ModuleContext;->getFlags()I

    move-result v4

    .line 74
    .local v4, "mflags":I
    if-ne p0, v2, :cond_11

    .line 75
    sget v0, Lgnu/expr/ModuleContext;->IN_HTTP_SERVER:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 76
    :cond_11
    if-ne p0, v0, :cond_13

    .line 77
    sget v0, Lgnu/expr/ModuleContext;->IN_SERVLET:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    goto :goto_1

    :cond_12
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 80
    .end local v4    # "mflags":I
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%provide%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "provide_name":Ljava/lang/String;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v2

    .line 82
    .local v2, "comp":Lgnu/expr/Compilation;
    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Lgnu/expr/Compilation;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    .line 83
    .local v4, "decl":Lgnu/expr/Declaration;
    if-eqz v4, :cond_14

    const-wide/32 v5, 0x10000

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-nez v5, :cond_14

    .line 84
    return v1

    .line 85
    :cond_14
    return v3
.end method

.method public static testFeature(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "form"    # Ljava/lang/Object;

    .line 10
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 12
    move-object v0, p0

    check-cast v0, Lkawa/lang/SyntaxForm;

    .line 13
    .local v0, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v0}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    .line 15
    .end local v0    # "sf":Lkawa/lang/SyntaxForm;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, p0, Lgnu/mapping/SimpleSymbol;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/standard/IfFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
