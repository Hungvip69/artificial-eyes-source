.class public Lkawa/standard/throw_name;
.super Lgnu/mapping/ProcedureN;
.source "throw_name.java"


# static fields
.field public static final throwName:Lkawa/standard/throw_name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lkawa/standard/throw_name;

    invoke-direct {v0}, Lkawa/standard/throw_name;-><init>()V

    sput-object v0, Lkawa/standard/throw_name;->throwName:Lkawa/standard/throw_name;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    array-length v0, p1

    .line 13
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 15
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 16
    .local v1, "key":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 18
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 19
    invoke-static {v1}, Lkawa/standard/prim_throw;->throw_it(Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_0
    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    .line 22
    new-instance v2, Lkawa/lang/NamedException;

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-direct {v2, v3, p1}, Lkawa/lang/NamedException;-><init>(Lgnu/mapping/Symbol;[Ljava/lang/Object;)V

    throw v2

    .line 24
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    :goto_0
    new-instance v1, Lkawa/lang/GenericError;

    const-string v2, "bad arguments to throw"

    invoke-direct {v1, v2}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
