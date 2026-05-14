.class public Lgnu/xquery/util/CastAs;
.super Lgnu/kawa/functions/Convert;
.source "CastAs.java"


# static fields
.field public static final castAs:Lgnu/xquery/util/CastAs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/xquery/util/CastAs;

    invoke-direct {v0}, Lgnu/xquery/util/CastAs;-><init>()V

    sput-object v0, Lgnu/xquery/util/CastAs;->castAs:Lgnu/xquery/util/CastAs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lgnu/kawa/functions/Convert;-><init>()V

    .line 17
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyCastAs"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/CastAs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 23
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    .line 24
    .local v0, "type":Lgnu/bytecode/Type;
    instance-of v1, v0, Lgnu/kawa/xml/XDataType;

    if-eqz v1, :cond_0

    .line 25
    move-object v1, v0

    check-cast v1, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v1, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 26
    :cond_0
    instance-of v1, v0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v1, :cond_7

    .line 28
    move-object v1, v0

    check-cast v1, Lgnu/kawa/reflect/OccurrenceType;

    .line 29
    .local v1, "occ":Lgnu/kawa/reflect/OccurrenceType;
    invoke-virtual {v1}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v2

    .line 30
    .local v2, "base":Lgnu/bytecode/Type;
    instance-of v3, v2, Lgnu/kawa/xml/XDataType;

    if-eqz v3, :cond_7

    .line 32
    invoke-virtual {v1}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v3

    .line 33
    .local v3, "min":I
    invoke-virtual {v1}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v4

    .line 34
    .local v4, "max":I
    instance-of v5, p2, Lgnu/mapping/Values;

    if-eqz v5, :cond_5

    .line 36
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v5, :cond_1

    if-nez v3, :cond_1

    .line 37
    return-object p2

    .line 38
    :cond_1
    move-object v5, p2

    check-cast v5, Lgnu/mapping/Values;

    .line 39
    .local v5, "vals":Lgnu/mapping/Values;
    invoke-virtual {v5}, Lgnu/mapping/Values;->startPos()I

    move-result v6

    .line 40
    .local v6, "pos":I
    const/4 v7, 0x0

    .line 41
    .local v7, "n":I
    new-instance v8, Lgnu/mapping/Values;

    invoke-direct {v8}, Lgnu/mapping/Values;-><init>()V

    .line 44
    .local v8, "result":Lgnu/mapping/Values;
    :goto_0
    invoke-virtual {v5, v6}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v6

    .line 45
    if-nez v6, :cond_4

    .line 47
    if-lt v7, v3, :cond_3

    if-ltz v4, :cond_2

    if-gt v7, v4, :cond_3

    .line 48
    :cond_2
    invoke-virtual {v8}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 56
    .end local v5    # "vals":Lgnu/mapping/Values;
    .end local v6    # "pos":I
    .end local v7    # "n":I
    .end local v8    # "result":Lgnu/mapping/Values;
    :cond_3
    goto :goto_1

    .line 51
    .restart local v5    # "vals":Lgnu/mapping/Values;
    .restart local v6    # "pos":I
    .restart local v7    # "n":I
    .restart local v8    # "result":Lgnu/mapping/Values;
    :cond_4
    invoke-virtual {v5, v6}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v9

    .line 52
    .local v9, "value":Ljava/lang/Object;
    move-object v10, v2

    check-cast v10, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v10, v9}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 53
    invoke-virtual {v8, v9}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 54
    nop

    .end local v9    # "value":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    .line 55
    goto :goto_0

    .line 59
    .end local v5    # "vals":Lgnu/mapping/Values;
    .end local v6    # "pos":I
    .end local v7    # "n":I
    .end local v8    # "result":Lgnu/mapping/Values;
    :cond_5
    const/4 v5, 0x1

    if-gt v3, v5, :cond_6

    if-eqz v4, :cond_6

    .line 60
    move-object v5, v2

    check-cast v5, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v5, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 62
    :cond_6
    :goto_1
    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot cast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 66
    .end local v1    # "occ":Lgnu/kawa/reflect/OccurrenceType;
    .end local v2    # "base":Lgnu/bytecode/Type;
    .end local v3    # "min":I
    .end local v4    # "max":I
    :cond_7
    invoke-super {p0, p1, p2}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 72
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 73
    return-void
.end method
