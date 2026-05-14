.class public Lgnu/kawa/xml/MakeCDATA;
.super Lgnu/mapping/MethodProc;
.source "MakeCDATA.java"


# static fields
.field public static final makeCDATA:Lgnu/kawa/xml/MakeCDATA;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lgnu/kawa/xml/MakeCDATA;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeCDATA;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 16
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 17
    .local v0, "saved":Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 20
    .local v1, "out":Lgnu/lists/XConsumer;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 24
    .local v3, "endMarker":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 25
    .local v4, "arg":Ljava/lang/Object;
    if-ne v4, v3, :cond_0

    .line 26
    nop

    .line 29
    .end local v4    # "arg":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 30
    .local v4, "n":I
    new-array v5, v4, [C

    .line 31
    .local v5, "chars":[C
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 32
    invoke-interface {v1, v5, v6, v4}, Lgnu/lists/XConsumer;->writeCDATA([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .end local v3    # "endMarker":Ljava/lang/Object;
    .end local v4    # "n":I
    .end local v5    # "chars":[C
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 37
    nop

    .line 38
    return-void

    .line 27
    .restart local v2    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v3    # "endMarker":Ljava/lang/Object;
    .local v4, "arg":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-static {v4, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .end local v4    # "arg":Ljava/lang/Object;
    goto :goto_0

    .line 36
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .end local v3    # "endMarker":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
