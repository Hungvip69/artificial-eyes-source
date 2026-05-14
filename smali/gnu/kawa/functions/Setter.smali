.class public Lgnu/kawa/functions/Setter;
.super Lgnu/mapping/Procedure1;
.source "Setter.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final setter:Lgnu/kawa/functions/Setter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lgnu/kawa/functions/Setter;

    invoke-direct {v0}, Lgnu/kawa/functions/Setter;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    .line 14
    sget-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    const-string v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Setter;->setName(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompilationHelpers:validateSetter"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Setter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static setter(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Lgnu/mapping/Procedure;

    .line 21
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .line 26
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    .line 29
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lgnu/kawa/functions/SetList;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lgnu/kawa/functions/SetList;-><init>(Ljava/util/List;)V

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, "cl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    new-instance v1, Lgnu/kawa/functions/SetArray;

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lgnu/kawa/functions/SetArray;-><init>(Ljava/lang/Object;Lgnu/expr/Language;)V

    return-object v1

    .line 39
    .end local v0    # "cl":Ljava/lang/Class;
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    return-object v0
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v1, p2

    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->setSetter(Lgnu/mapping/Procedure;)V

    .line 45
    return-void
.end method
