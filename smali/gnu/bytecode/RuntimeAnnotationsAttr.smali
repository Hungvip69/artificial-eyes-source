.class public Lgnu/bytecode/RuntimeAnnotationsAttr;
.super Lgnu/bytecode/MiscAttr;
.source "RuntimeAnnotationsAttr.java"


# instance fields
.field numEntries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLgnu/bytecode/AttrContainer;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "container"    # Lgnu/bytecode/AttrContainer;

    .line 15
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 16
    invoke-virtual {p0, p3}, Lgnu/bytecode/RuntimeAnnotationsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 17
    invoke-virtual {p0, v1}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2(I)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    .line 18
    return-void
.end method


# virtual methods
.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 3
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 22
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 24
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 26
    const-string v0, ", number of entries: "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 28
    iget v0, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    .line 29
    .local v0, "saveOffset":I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    .line 30
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    if-ge v1, v2, :cond_0

    .line 32
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    :cond_0
    iput v0, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    .line 35
    return-void
.end method

.method public printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .param p1, "indentation"    # I
    .param p2, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 39
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v0

    .line 40
    .local v0, "type_index":I
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 41
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 42
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 43
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 44
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v1

    .line 45
    .local v1, "num_element_value_pairs":I
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 46
    add-int/lit8 p1, p1, 0x2

    .line 47
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v3

    .line 50
    .local v3, "element_name_index":I
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 51
    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 52
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 53
    const-string v4, " => "

    invoke-virtual {p2, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V

    .line 55
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 47
    .end local v3    # "element_name_index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 10
    .param p1, "indentation"    # I
    .param p2, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 61
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u1()I

    move-result v0

    .line 62
    .local v0, "tag":I
    iget v1, p2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "[kind:"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 65
    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    .line 66
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 69
    :goto_0
    const-string v1, "] "

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 72
    .local v1, "expected":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 105
    .local v3, "entry":Lgnu/bytecode/CpoolEntry;
    .local v4, "const_value_index":I
    :sswitch_0
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v5

    .line 106
    .local v5, "type_name_index":I
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v6

    .line 107
    .local v6, "const_name_index":I
    const-string v7, "enum["

    invoke-virtual {p2, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 108
    iget v7, p2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    .line 109
    const-string v7, "type:"

    invoke-virtual {p2, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 110
    :cond_2
    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 111
    invoke-virtual {p2, v5}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 112
    iget v7, p2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_3

    .line 113
    const-string v7, " value:"

    invoke-virtual {p2, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_3
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 116
    :goto_1
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 117
    invoke-virtual {p2, v6, v2}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 118
    const-string v2, "]"

    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 119
    goto/16 :goto_4

    .line 72
    .end local v3    # "entry":Lgnu/bytecode/CpoolEntry;
    .end local v4    # "const_value_index":I
    .end local v5    # "type_name_index":I
    .end local v6    # "const_name_index":I
    :sswitch_1
    move-object v2, v3

    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    move v3, v4

    .local v3, "type_name_index":I
    move v5, v4

    .line 121
    .restart local v4    # "const_value_index":I
    .local v5, "const_name_index":I
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v6

    .line 122
    .local v6, "class_info_index":I
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 123
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 124
    goto/16 :goto_4

    .line 72
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    .end local v3    # "type_name_index":I
    .end local v4    # "const_value_index":I
    .end local v5    # "const_name_index":I
    .end local v6    # "class_info_index":I
    :sswitch_2
    move-object v2, v3

    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    move v3, v4

    .restart local v3    # "type_name_index":I
    move v5, v4

    .restart local v5    # "const_name_index":I
    move v6, v4

    .line 131
    .restart local v4    # "const_value_index":I
    .restart local v6    # "class_info_index":I
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v7

    .line 132
    .local v7, "num_values":I
    const-string v8, "array length:"

    invoke-virtual {p2, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2, v7}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 134
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_c

    .line 136
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 137
    add-int/lit8 v9, p1, 0x2

    invoke-virtual {p2, v9}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 138
    invoke-virtual {p2, v8}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 139
    const-string v9, ": "

    invoke-virtual {p2, v9}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 140
    add-int/lit8 v9, p1, 0x2

    invoke-virtual {p0, v9, p2}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V

    .line 134
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 79
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    .end local v3    # "type_name_index":I
    .end local v4    # "const_value_index":I
    .end local v5    # "const_name_index":I
    .end local v6    # "class_info_index":I
    .end local v7    # "num_values":I
    .end local v8    # "i":I
    :sswitch_3
    if-nez v1, :cond_4

    const/4 v1, 0x3

    .line 82
    :cond_4
    :sswitch_4
    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 85
    :cond_5
    :sswitch_5
    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 88
    :cond_6
    :sswitch_6
    if-nez v1, :cond_7

    const/4 v1, 0x4

    .line 91
    :cond_7
    :sswitch_7
    if-nez v1, :cond_8

    const/4 v1, 0x1

    .line 93
    :cond_8
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v3

    .line 94
    .local v3, "const_value_index":I
    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    .line 95
    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    invoke-virtual {p2, v4}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 97
    const/16 v5, 0x5a

    if-ne v0, v5, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    move-object v5, v4

    check-cast v5, Lgnu/bytecode/CpoolValue1;

    move-object v6, v5

    .local v6, "cint":Lgnu/bytecode/CpoolValue1;
    iget v5, v5, Lgnu/bytecode/CpoolValue1;->value:I

    if-eqz v5, :cond_9

    iget v5, v6, Lgnu/bytecode/CpoolValue1;->value:I

    if-ne v5, v2, :cond_b

    .line 100
    :cond_9
    iget v2, v6, Lgnu/bytecode/CpoolValue1;->value:I

    if-nez v2, :cond_a

    const-string v2, "false"

    goto :goto_3

    :cond_a
    const-string v2, "true"

    :goto_3
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 102
    .end local v6    # "cint":Lgnu/bytecode/CpoolValue1;
    :cond_b
    invoke-virtual {p2, v3, v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 103
    goto :goto_4

    .line 72
    .end local v3    # "const_value_index":I
    .end local v4    # "entry":Lgnu/bytecode/CpoolEntry;
    :sswitch_8
    move-object v2, v3

    .restart local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    move v3, v4

    .local v3, "type_name_index":I
    move v5, v4

    .restart local v5    # "const_name_index":I
    move v6, v4

    .line 126
    .local v4, "const_value_index":I
    .local v6, "class_info_index":I
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 127
    add-int/lit8 v7, p1, 0x2

    invoke-virtual {p2, v7}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 128
    add-int/lit8 v7, p1, 0x2

    invoke-virtual {p0, v7, p2}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V

    .line 129
    nop

    .line 144
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    .end local v3    # "type_name_index":I
    .end local v4    # "const_value_index":I
    .end local v5    # "const_name_index":I
    .end local v6    # "class_info_index":I
    :cond_c
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_8
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_5
        0x46 -> :sswitch_6
        0x49 -> :sswitch_3
        0x4a -> :sswitch_4
        0x53 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x63 -> :sswitch_1
        0x65 -> :sswitch_0
        0x73 -> :sswitch_7
    .end sparse-switch
.end method
