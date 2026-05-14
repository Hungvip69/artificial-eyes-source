.class public Lgnu/kawa/xml/Attributes;
.super Lgnu/mapping/MethodProc;
.source "Attributes.java"


# static fields
.field public static final attributes:Lgnu/kawa/xml/Attributes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lgnu/kawa/xml/Attributes;

    invoke-direct {v0}, Lgnu/kawa/xml/Attributes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Attributes;->attributes:Lgnu/kawa/xml/Attributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .locals 5
    .param p0, "tlist"    # Lgnu/lists/TreeList;
    .param p1, "index"    # I
    .param p2, "consumer"    # Lgnu/lists/Consumer;

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    .line 17
    .local v0, "attr":I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attributes called, at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgnu/lists/TreeList;->dump()V

    .line 18
    :goto_0
    if-ltz v0, :cond_2

    .line 20
    shl-int/lit8 v1, v0, 0x1

    .line 21
    .local v1, "ipos":I
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v2

    .line 22
    .local v2, "kind":I
    const/16 v3, 0x23

    if-eq v2, v3, :cond_0

    .line 23
    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    .line 26
    .local v3, "next":I
    instance-of v4, p2, Lgnu/lists/PositionConsumer;

    if-eqz v4, :cond_1

    .line 27
    move-object v4, p2

    check-cast v4, Lgnu/lists/PositionConsumer;

    invoke-interface {v4, p0, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0, v0, v3, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 30
    :goto_1
    move v0, v3

    .line 31
    .end local v1    # "ipos":I
    .end local v2    # "kind":I
    .end local v3    # "next":I
    goto :goto_0

    .line 32
    :cond_2
    :goto_2
    return-void
.end method

.method public static attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;
    .param p1, "consumer"    # Lgnu/lists/Consumer;

    .line 36
    instance-of v0, p0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p0

    check-cast v0, Lgnu/lists/TreeList;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p0, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lgnu/lists/TreePosition;

    if-nez v0, :cond_1

    .line 42
    move-object v0, p0

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 43
    .local v0, "pos":Lgnu/lists/SeqPosition;
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v1, v1, Lgnu/lists/TreeList;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/TreeList;

    iget v2, v0, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, p1}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 46
    .end local v0    # "pos":Lgnu/lists/SeqPosition;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 50
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 51
    .local v0, "consumer":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "node":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 53
    instance-of v2, v1, Lgnu/mapping/Values;

    if-eqz v2, :cond_2

    .line 55
    move-object v2, v1

    check-cast v2, Lgnu/lists/TreeList;

    .line 56
    .local v2, "tlist":Lgnu/lists/TreeList;
    const/4 v3, 0x0

    .line 59
    .local v3, "index":I
    :goto_0
    shl-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v4

    .line 60
    .local v4, "kind":I
    if-nez v4, :cond_0

    .line 61
    nop

    .line 68
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    .end local v4    # "kind":I
    goto :goto_2

    .line 62
    .restart local v2    # "tlist":Lgnu/lists/TreeList;
    .restart local v3    # "index":I
    .restart local v4    # "kind":I
    :cond_0
    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 63
    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lgnu/kawa/xml/Attributes;->attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-static {v2, v3, v0}, Lgnu/kawa/xml/Attributes;->attributes(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 66
    :goto_1
    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    .line 67
    .end local v4    # "kind":I
    goto :goto_0

    .line 70
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    :cond_2
    invoke-static {v1, v0}, Lgnu/kawa/xml/Attributes;->attributes(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 71
    :goto_2
    return-void
.end method

.method public numArgs()I
    .locals 1

    .line 12
    const/16 v0, 0x1001

    return v0
.end method
