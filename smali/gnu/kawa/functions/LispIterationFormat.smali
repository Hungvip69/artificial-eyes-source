.class Lgnu/kawa/functions/LispIterationFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field atLeastOnce:Z

.field body:Ljava/text/Format;

.field maxIterations:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 935
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I
    .locals 6
    .param p0, "body"    # Ljava/text/Format;
    .param p1, "maxIterations"    # I
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "dst"    # Ljava/io/Writer;
    .param p5, "seenColon"    # Z
    .param p6, "atLeastOnce"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    const/4 v0, 0x0

    .line 951
    .local v0, "i":I
    :goto_0
    if-ne v0, p1, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 952
    goto :goto_1

    .line 953
    :cond_0
    array-length v1, p2

    if-ne p3, v1, :cond_1

    if-gtz v0, :cond_4

    if-nez p6, :cond_1

    .line 954
    goto :goto_1

    .line 955
    :cond_1
    const/4 v1, 0x0

    if-eqz p5, :cond_3

    .line 957
    aget-object v2, p2, p3

    .line 958
    .local v2, "curArg":Ljava/lang/Object;
    invoke-static {v2}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 959
    .local v3, "curArr":[Ljava/lang/Object;
    nop

    .line 962
    const/4 v4, 0x0

    invoke-static {p0, v3, v4, p4, v1}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v1

    .line 963
    .local v1, "result":I
    add-int/lit8 p3, p3, 0x1

    .line 964
    invoke-static {v1}, Lgnu/text/ReportFormat;->resultCode(I)I

    move-result v4

    const/16 v5, 0xf2

    if-ne v4, v5, :cond_2

    .line 965
    goto :goto_1

    .line 966
    .end local v1    # "result":I
    .end local v2    # "curArg":Ljava/lang/Object;
    .end local v3    # "curArr":[Ljava/lang/Object;
    :cond_2
    goto :goto_2

    .line 969
    :cond_3
    invoke-static {p0, p2, p3, p4, v1}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p3

    .line 970
    if-gez p3, :cond_5

    .line 972
    invoke-static {p3}, Lgnu/text/ReportFormat;->nextArg(I)I

    move-result p3

    .line 973
    nop

    .line 977
    .end local v0    # "i":I
    :cond_4
    :goto_1
    return p3

    .line 949
    .restart local v0    # "i":I
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 11
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    iget v0, p0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/4 v1, -0x1

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispIterationFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 986
    .local v0, "maxIterations":I
    iget v1, p0, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 988
    :cond_0
    iget-object v1, p0, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    .line 989
    .local v1, "body":Ljava/text/Format;
    if-nez v1, :cond_2

    .line 992
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "start":I
    .local v2, "start":I
    aget-object p2, p1, p2

    .line 993
    .local p2, "arg":Ljava/lang/Object;
    instance-of v3, p2, Ljava/text/Format;

    if-eqz v3, :cond_1

    .line 994
    move-object v1, p2

    check-cast v1, Ljava/text/Format;

    move p2, v2

    goto :goto_0

    .line 999
    :cond_1
    :try_start_0
    new-instance v3, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 1005
    move p2, v2

    goto :goto_0

    .line 1001
    :catch_0
    move-exception v3

    .line 1003
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "<invalid argument for \"~{~}\" format>"

    invoke-static {p3, v4}, Lgnu/kawa/functions/LispIterationFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1004
    array-length v4, p1

    return v4

    .line 1008
    .end local v2    # "start":I
    .end local v3    # "ex":Ljava/lang/Exception;
    .local p2, "start":I
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    if-eqz v2, :cond_3

    .line 1010
    iget-boolean v7, p0, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    iget-boolean v8, p0, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    move-object v2, v1

    move v3, v0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    move-result v2

    return v2

    .line 1015
    :cond_3
    aget-object v9, p1, p2

    .line 1016
    .local v9, "arg":Ljava/lang/Object;
    invoke-static {v9}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .line 1017
    .local v10, "curArgs":[Ljava/lang/Object;
    if-nez v10, :cond_4

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1020
    :cond_4
    iget-boolean v7, p0, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    iget-boolean v8, p0, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    const/4 v5, 0x0

    move-object v2, v1

    move v3, v0

    move-object v4, v10

    move-object v6, p3

    invoke-static/range {v2 .. v8}, Lgnu/kawa/functions/LispIterationFormat;->format(Ljava/text/Format;I[Ljava/lang/Object;ILjava/io/Writer;ZZ)I

    .line 1022
    :goto_1
    add-int/lit8 v2, p2, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1028
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1029
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "LispIterationFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1030
    iget-object v1, p0, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1031
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
