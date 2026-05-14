.class public Lgnu/kawa/xml/MakeResponseHeader;
.super Lgnu/mapping/MethodProc;
.source "MakeResponseHeader.java"


# static fields
.field public static makeResponseHeader:Lgnu/kawa/xml/MakeResponseHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lgnu/kawa/xml/MakeResponseHeader;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeResponseHeader;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeResponseHeader;->makeResponseHeader:Lgnu/kawa/xml/MakeResponseHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 20
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 22
    .local v1, "val":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 23
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 24
    .local v2, "out":Lgnu/lists/Consumer;
    invoke-interface {v2, v0}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 26
    invoke-interface {v2}, Lgnu/lists/Consumer;->endAttribute()V

    .line 27
    return-void
.end method
