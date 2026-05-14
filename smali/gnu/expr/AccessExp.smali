.class public abstract Lgnu/expr/AccessExp;
.super Lgnu/expr/Expression;
.source "AccessExp.java"


# instance fields
.field binding:Lgnu/expr/Declaration;

.field private context:Lgnu/expr/Declaration;

.field symbol:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public final contextDecl()Lgnu/expr/Declaration;
    .locals 1

    .line 46
    iget-object v0, p0, Lgnu/expr/AccessExp;->context:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public final getBinding()Lgnu/expr/Declaration;
    .locals 1

    .line 38
    iget-object v0, p0, Lgnu/expr/AccessExp;->binding:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSimpleName()Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v1, v0

    .local v1, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSymbol()Ljava/lang/Object;
    .locals 1

    .line 36
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    return-object v0
.end method

.method public final setBinding(Lgnu/expr/Declaration;)V
    .locals 0
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 40
    iput-object p1, p0, Lgnu/expr/AccessExp;->binding:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setContextDecl(Lgnu/expr/Declaration;)V
    .locals 0
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 48
    iput-object p1, p0, Lgnu/expr/AccessExp;->context:Lgnu/expr/Declaration;

    return-void
.end method

.method public string_name()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/expr/AccessExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
