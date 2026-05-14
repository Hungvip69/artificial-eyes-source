.class Lgnu/kawa/functions/LispPluralFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field backup:Z

.field y:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;
    .locals 1
    .param p0, "backup"    # Z
    .param p1, "y"    # Z

    .line 571
    new-instance v0, Lgnu/kawa/functions/LispPluralFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispPluralFormat;-><init>()V

    .line 572
    .local v0, "fmt":Lgnu/kawa/functions/LispPluralFormat;
    iput-boolean p0, v0, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    .line 573
    iput-boolean p1, v0, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    .line 574
    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-boolean v0, p0, Lgnu/kawa/functions/LispPluralFormat;->backup:Z

    if-eqz v0, :cond_0

    .line 582
    add-int/lit8 p2, p2, -0x1

    .line 583
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "start":I
    .local v0, "start":I
    aget-object p2, p1, p2

    .line 584
    .local p2, "arg":Ljava/lang/Object;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 585
    .local v1, "plural":Z
    :goto_0
    iget-boolean v2, p0, Lgnu/kawa/functions/LispPluralFormat;->y:Z

    if-eqz v2, :cond_3

    .line 586
    if-eqz v1, :cond_2

    const-string v2, "ies"

    goto :goto_1

    :cond_2
    const-string v2, "y"

    :goto_1
    invoke-static {p3, v2}, Lgnu/kawa/functions/LispPluralFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_2

    .line 587
    :cond_3
    if-eqz v1, :cond_4

    .line 588
    const/16 v2, 0x73

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    .line 589
    :cond_4
    :goto_2
    return v0
.end method
