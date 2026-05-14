.class Lgnu/kawa/functions/LispEscapeFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field public static final ESCAPE_ALL:I = 0xf2

.field public static final ESCAPE_NORMAL:I = 0xf1

.field public static final alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;


# instance fields
.field escapeAll:Z

.field param1:I

.field param2:I

.field param3:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 785
    new-instance v0, Lgnu/kawa/functions/LispEscapeFormat;

    const/4 v1, 0x0

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(II)V

    sput-object v0, Lgnu/kawa/functions/LispEscapeFormat;->alwaysTerminate:Lgnu/kawa/functions/LispEscapeFormat;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "param1"    # I
    .param p2, "param2"    # I

    .line 789
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 790
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 791
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 792
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 793
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "param3"    # I

    .line 796
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    .line 797
    iput p1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    .line 798
    iput p2, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    .line 799
    iput p3, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    .line 800
    return-void
.end method

.method static getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 4
    .param p0, "param"    # I
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .line 804
    const/high16 v0, -0x50000000

    if-ne p0, v0, :cond_0

    .line 805
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 806
    :cond_0
    const/high16 v0, -0x60000000

    if-ne p0, v0, :cond_7

    .line 808
    aget-object v0, p1, p2

    .line 809
    .local v0, "arg":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/math/Numeric;

    if-eqz v1, :cond_1

    .line 810
    move-object v1, v0

    check-cast v1, Lgnu/math/Numeric;

    return-object v1

    .line 811
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 813
    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 815
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 814
    :cond_3
    :goto_0
    new-instance v1, Lgnu/math/DFloNum;

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v1

    .line 817
    :cond_4
    instance-of v1, v0, Lgnu/text/Char;

    if-eqz v1, :cond_5

    .line 818
    new-instance v1, Lgnu/math/IntNum;

    move-object v2, v0

    check-cast v2, Lgnu/text/Char;

    invoke-virtual {v2}, Lgnu/text/Char;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lgnu/math/IntNum;-><init>(I)V

    return-object v1

    .line 819
    :cond_5
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_6

    .line 820
    new-instance v1, Lgnu/math/IntNum;

    move-object v2, v0

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {v1, v2}, Lgnu/math/IntNum;-><init>(I)V

    return-object v1

    .line 821
    :cond_6
    new-instance v1, Lgnu/math/DFloNum;

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v1

    .line 823
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_7
    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    move v0, p2

    .line 836
    .local v0, "orig_start":I
    iget v1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x40000000    # -2.0f

    if-ne v1, v4, :cond_1

    .line 837
    array-length v1, p1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .local v1, "do_terminate":Z
    goto :goto_2

    .line 838
    .end local v1    # "do_terminate":Z
    :cond_1
    iget v1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    if-nez v1, :cond_2

    .line 839
    const/4 v1, 0x1

    .restart local v1    # "do_terminate":Z
    goto :goto_2

    .line 842
    .end local v1    # "do_terminate":Z
    :cond_2
    iget v1, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    invoke-static {v1, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v1

    .line 843
    .local v1, "arg1":Lgnu/math/Numeric;
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param1:I

    const/high16 v6, -0x60000000

    if-ne v5, v6, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 844
    :cond_3
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v5, v4, :cond_4

    .line 846
    invoke-virtual {v1}, Lgnu/math/Numeric;->isZero()Z

    move-result v3

    move v1, v3

    .local v3, "do_terminate":Z
    goto :goto_2

    .line 850
    .end local v3    # "do_terminate":Z
    :cond_4
    iget v5, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    invoke-static {v5, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v5

    .line 851
    .local v5, "arg2":Lgnu/math/Numeric;
    iget v7, p0, Lgnu/kawa/functions/LispEscapeFormat;->param2:I

    if-ne v7, v6, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 852
    :cond_5
    iget v7, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v7, v4, :cond_6

    .line 854
    invoke-virtual {v1, v5}, Lgnu/math/Numeric;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v1, v3

    .restart local v3    # "do_terminate":Z
    goto :goto_2

    .line 858
    .end local v3    # "do_terminate":Z
    :cond_6
    iget v4, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    invoke-static {v4, p1, p2}, Lgnu/kawa/functions/LispEscapeFormat;->getParam(I[Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v4

    .line 859
    .local v4, "arg3":Lgnu/math/Numeric;
    iget v7, p0, Lgnu/kawa/functions/LispEscapeFormat;->param3:I

    if-ne v7, v6, :cond_7

    add-int/lit8 p2, p2, 0x1

    .line 860
    :cond_7
    invoke-virtual {v5, v1}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v5}, Lgnu/math/Numeric;->geq(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    .line 864
    .end local v4    # "arg3":Lgnu/math/Numeric;
    .end local v5    # "arg2":Lgnu/math/Numeric;
    .local v1, "do_terminate":Z
    :goto_2
    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    iget-boolean v2, p0, Lgnu/kawa/functions/LispEscapeFormat;->escapeAll:Z

    if-eqz v2, :cond_a

    const/16 v2, 0xf2

    goto :goto_3

    :cond_a
    const/16 v2, 0xf1

    :goto_3
    invoke-static {v2, p2}, Lgnu/kawa/functions/LispEscapeFormat;->result(II)I

    move-result v2

    return v2
.end method
