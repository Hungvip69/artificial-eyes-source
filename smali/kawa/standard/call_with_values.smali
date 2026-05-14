.class public Lkawa/standard/call_with_values;
.super Lgnu/mapping/Procedure2;
.source "call_with_values.java"


# static fields
.field public static final callWithValues:Lkawa/standard/call_with_values;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lkawa/standard/call_with_values;

    invoke-direct {v0}, Lkawa/standard/call_with_values;-><init>()V

    sput-object v0, Lkawa/standard/call_with_values;->callWithValues:Lkawa/standard/call_with_values;

    .line 7
    sget-object v0, Lkawa/standard/call_with_values;->callWithValues:Lkawa/standard/call_with_values;

    const-string v1, "call-with-values"

    invoke-virtual {v0, v1}, Lkawa/standard/call_with_values;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 2
    .param p0, "producer"    # Lgnu/mapping/Procedure;
    .param p1, "consumer"    # Lgnu/mapping/Procedure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 13
    .local v0, "values":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    .line 14
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1, p1}, Lgnu/mapping/Values;->call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 16
    :cond_0
    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 27
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "values":Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lgnu/mapping/Procedure;

    .line 30
    .local v2, "consumer":Lgnu/mapping/Procedure;
    instance-of v3, v1, Lgnu/mapping/Values;

    if-eqz v3, :cond_0

    .line 32
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Values;

    invoke-virtual {v3}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-virtual {v2, v0, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2, v1, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 39
    :goto_0
    return-void
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "producer"    # Ljava/lang/Object;
    .param p2, "consumer"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v1, p2

    check-cast v1, Lgnu/mapping/Procedure;

    invoke-static {v0, v1}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
