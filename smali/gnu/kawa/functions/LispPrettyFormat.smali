.class Lgnu/kawa/functions/LispPrettyFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field body:Ljava/text/Format;

.field perLine:Z

.field prefix:Ljava/lang/String;

.field seenAt:Z

.field segments:[Ljava/text/Format;

.field suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 875
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
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

    .line 888
    iget-object v0, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 889
    .local v0, "pre":Ljava/lang/String;
    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 890
    .local v1, "suf":Ljava/lang/String;
    instance-of v2, p3, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lgnu/mapping/OutPort;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 893
    .local v2, "out":Lgnu/mapping/OutPort;
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    if-eqz v3, :cond_2

    .line 895
    if-eqz v2, :cond_1

    .line 896
    iget-boolean v3, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    iget-object v4, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 897
    :cond_1
    iget-object v3, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-static {v3, p1, p2, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result v3

    move p2, v3

    goto :goto_2

    .line 901
    :cond_2
    aget-object v3, p1, p2

    .line 902
    .local v3, "curArg":Ljava/lang/Object;
    invoke-static {v3}, Lgnu/kawa/functions/LispFormat;->asArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 903
    .local v4, "curArr":[Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 904
    const-string v5, ""

    move-object v1, v5

    move-object v0, v5

    .line 905
    :cond_3
    if-eqz v2, :cond_4

    .line 906
    iget-boolean v5, p0, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    iget-object v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v0, v5, v6}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 907
    :cond_4
    const/4 v5, 0x1

    if-nez v4, :cond_5

    .line 908
    const/4 v6, -0x1

    invoke-static {v3, p3, v6, v5}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    goto :goto_1

    .line 910
    :cond_5
    iget-object v6, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    const/4 v7, 0x0

    invoke-static {v6, v4, v7, p3, p4}, Lgnu/text/ReportFormat;->format(Ljava/text/Format;[Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :goto_1
    add-int/2addr p2, v5

    .line 916
    .end local v3    # "curArg":Ljava/lang/Object;
    .end local v4    # "curArr":[Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_6

    .line 917
    invoke-virtual {v2, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 919
    :cond_6
    return p2

    .line 916
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_7

    .line 917
    invoke-virtual {v2, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    :cond_7
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 924
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 925
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "LispPrettyFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 926
    const-string v1, "prefix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 927
    const-string v1, "\", suffix: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 928
    const-string v1, "\", body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 929
    iget-object v1, p0, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 930
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 931
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
