.class public Lkawa/standard/expt;
.super Lgnu/mapping/Procedure2;
.source "expt.java"


# static fields
.field public static final expt:Lkawa/standard/expt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/expt;

    const-string v1, "expt"

    invoke-direct {v0, v1}, Lkawa/standard/expt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure2;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static expt(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 1
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # I

    .line 18
    invoke-static {p0, p1}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static expt(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 23
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    move-object v1, p1

    check-cast v1, Lgnu/math/IntNum;

    invoke-virtual {v0, v1}, Lgnu/math/Numeric;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    move-object v0, p0

    check-cast v0, Lgnu/math/Complex;

    move-object v1, p1

    check-cast v1, Lgnu/math/Complex;

    invoke-static {v0, v1}, Lgnu/math/Complex;->power(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 30
    invoke-static {p1, p2}, Lkawa/standard/expt;->expt(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method
