.class public Lgnu/xquery/util/SequenceUtils;
.super Ljava/lang/Object;
.source "SequenceUtils.java"


# static fields
.field public static final textOrElement:Lgnu/kawa/xml/NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 163
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "element-or-text"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "iarg"    # I

    .line 21
    invoke-static {p0}, Lgnu/xquery/util/SequenceUtils;->isZeroOrOne(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "xs:item()?"

    invoke-direct {v0, p1, p2, p0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .locals 20
    .param p0, "seq1"    # Lgnu/xml/NodeTree;
    .param p1, "ipos1"    # I
    .param p2, "seq2"    # Lgnu/xml/NodeTree;
    .param p3, "ipos2"    # I
    .param p4, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v3

    .line 189
    .local v3, "kind1":I
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v4

    .line 190
    .local v4, "kind2":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move/from16 v14, p3

    move v5, v6

    .local v5, "nattr1":I
    move v8, v6

    .local v8, "nattr2":I
    move-object v9, v7

    .local v9, "loc2":Ljava/lang/String;
    move-object v10, v7

    .local v6, "attr1":I
    .local v10, "ns1":Ljava/lang/String;
    move-object v11, v7

    .line 244
    .local v7, "loc1":Ljava/lang/String;
    .local v11, "ns2":Ljava/lang/String;
    if-eq v3, v4, :cond_b

    .line 245
    const/4 v12, 0x0

    return v12

    .line 190
    .end local v5    # "nattr1":I
    .end local v6    # "attr1":I
    .end local v7    # "loc1":Ljava/lang/String;
    .end local v8    # "nattr2":I
    .end local v9    # "loc2":Ljava/lang/String;
    .end local v10    # "ns1":Ljava/lang/String;
    .end local v11    # "ns2":Ljava/lang/String;
    :pswitch_1
    move v8, v6

    .local v8, "nattr1":I
    move v9, v6

    .local v9, "nattr2":I
    move-object v10, v7

    .local v10, "loc2":Ljava/lang/String;
    move-object v11, v7

    .restart local v6    # "attr1":I
    .local v11, "ns1":Ljava/lang/String;
    move-object v12, v7

    .line 237
    .restart local v7    # "loc1":Ljava/lang/String;
    .local v12, "ns2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 238
    return v5

    .line 239
    :cond_0
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 190
    .end local v6    # "attr1":I
    .end local v7    # "loc1":Ljava/lang/String;
    .end local v8    # "nattr1":I
    .end local v9    # "nattr2":I
    .end local v10    # "loc2":Ljava/lang/String;
    .end local v11    # "ns1":Ljava/lang/String;
    .end local v12    # "ns2":Ljava/lang/String;
    :pswitch_2
    move v8, v6

    .restart local v8    # "nattr1":I
    move v9, v6

    .restart local v9    # "nattr2":I
    move-object v10, v7

    .restart local v10    # "loc2":Ljava/lang/String;
    move-object v11, v7

    .restart local v6    # "attr1":I
    .restart local v11    # "ns1":Ljava/lang/String;
    move-object v12, v7

    .line 230
    .restart local v7    # "loc1":Ljava/lang/String;
    .restart local v12    # "ns2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v14

    if-ne v13, v14, :cond_2

    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v14

    if-eq v13, v14, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v5, v13, v2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v5

    return v5

    .line 232
    :cond_2
    :goto_0
    return v5

    .line 190
    .end local v6    # "attr1":I
    .end local v7    # "loc1":Ljava/lang/String;
    .end local v8    # "nattr1":I
    .end local v9    # "nattr2":I
    .end local v10    # "loc2":Ljava/lang/String;
    .end local v11    # "ns1":Ljava/lang/String;
    .end local v12    # "ns2":Ljava/lang/String;
    :pswitch_3
    move v5, v6

    .restart local v5    # "nattr1":I
    move v8, v6

    .local v8, "nattr2":I
    move-object v9, v7

    .local v9, "loc2":Ljava/lang/String;
    move-object v10, v7

    .restart local v6    # "attr1":I
    .local v10, "ns1":Ljava/lang/String;
    move-object v11, v7

    .local v11, "ns2":Ljava/lang/String;
    move/from16 v14, p3

    .restart local v7    # "loc1":Ljava/lang/String;
    goto/16 :goto_3

    .line 193
    .end local v5    # "nattr1":I
    .end local v6    # "attr1":I
    .end local v7    # "loc1":Ljava/lang/String;
    .end local v8    # "nattr2":I
    .end local v9    # "loc2":Ljava/lang/String;
    .end local v10    # "ns1":Ljava/lang/String;
    .end local v11    # "ns2":Ljava/lang/String;
    :pswitch_4
    if-eq v3, v4, :cond_3

    .line 194
    return v5

    .line 196
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    .restart local v7    # "loc1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v9

    .line 198
    .restart local v9    # "loc2":Ljava/lang/String;
    if-eq v7, v9, :cond_4

    .line 199
    return v5

    .line 200
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    .restart local v10    # "ns1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v11

    .line 202
    .restart local v11    # "ns2":Ljava/lang/String;
    if-eq v10, v11, :cond_5

    .line 203
    return v5

    .line 204
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v6

    .line 205
    .restart local v6    # "attr1":I
    const/4 v8, 0x0

    .line 208
    .local v8, "nattr1":I
    :goto_1
    if-eqz v6, :cond_9

    invoke-virtual {v0, v6}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v12

    const/16 v13, 0x23

    if-eq v12, v13, :cond_6

    .line 210
    move/from16 v14, p3

    move-object/from16 v17, v7

    goto :goto_2

    .line 211
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 212
    invoke-virtual {v0, v6}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, "local":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "ns":Ljava/lang/String;
    move/from16 v14, p3

    invoke-virtual {v1, v14, v13, v12}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 215
    .local v15, "attr2":I
    if-nez v15, :cond_7

    .line 216
    return v5

    .line 217
    :cond_7
    invoke-static {v0, v6}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, "aval1":Ljava/lang/String;
    move-object/from16 v17, v7

    .end local v7    # "loc1":Ljava/lang/String;
    .local v17, "loc1":Ljava/lang/String;
    invoke-static {v1, v15}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "aval2":Ljava/lang/String;
    invoke-static {v5, v7, v2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 220
    const/16 v16, 0x0

    return v16

    .line 221
    :cond_8
    invoke-virtual {v0, v6}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v6

    .line 222
    .end local v5    # "aval1":Ljava/lang/String;
    .end local v7    # "aval2":Ljava/lang/String;
    .end local v12    # "local":Ljava/lang/String;
    .end local v13    # "ns":Ljava/lang/String;
    .end local v15    # "attr2":I
    move-object/from16 v7, v17

    const/4 v5, 0x0

    goto :goto_1

    .line 208
    .end local v17    # "loc1":Ljava/lang/String;
    .local v7, "loc1":Ljava/lang/String;
    :cond_9
    move/from16 v14, p3

    move-object/from16 v17, v7

    .line 223
    .end local v7    # "loc1":Ljava/lang/String;
    .restart local v17    # "loc1":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->getAttributeCount(I)I

    move-result v5

    .line 224
    .local v5, "nattr2":I
    if-eq v8, v5, :cond_a

    .line 225
    const/4 v7, 0x0

    return v7

    .line 224
    :cond_a
    move-object/from16 v7, v17

    move/from16 v19, v8

    move v8, v5

    move/from16 v5, v19

    .line 228
    .end local v17    # "loc1":Ljava/lang/String;
    .local v5, "nattr1":I
    .restart local v7    # "loc1":Ljava/lang/String;
    .local v8, "nattr2":I
    :goto_3
    invoke-static/range {p0 .. p4}, Lgnu/xquery/util/SequenceUtils;->deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v12

    return v12

    .line 246
    :cond_b
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static deepEqual(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 17
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 262
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    if-ne v1, v2, :cond_0

    .line 263
    return v0

    .line 264
    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_16

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v4, :cond_1

    move-object/from16 v8, p2

    const/4 v1, 0x0

    goto/16 :goto_9

    .line 266
    :cond_1
    if-eqz v2, :cond_15

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v4, :cond_2

    move-object/from16 v8, p2

    goto/16 :goto_8

    .line 268
    :cond_2
    const/4 v4, 0x1

    .local v4, "ipos1":I
    const/4 v5, 0x1

    .line 269
    .local v5, "ipos2":I
    instance-of v6, v1, Lgnu/mapping/Values;

    .line 270
    .local v6, "is1seq":Z
    instance-of v7, v2, Lgnu/mapping/Values;

    .line 271
    .local v7, "is2seq":Z
    const/4 v8, 0x0

    if-eqz v6, :cond_3

    move-object v9, v1

    check-cast v9, Lgnu/mapping/Values;

    goto :goto_0

    :cond_3
    move-object v9, v8

    .line 272
    .local v9, "vals1":Lgnu/mapping/Values;
    :goto_0
    if-eqz v7, :cond_4

    move-object v8, v2

    check-cast v8, Lgnu/mapping/Values;

    .line 273
    .local v8, "vals2":Lgnu/mapping/Values;
    :cond_4
    const/4 v10, 0x1

    .line 276
    .local v10, "first":Z
    :goto_1
    if-eqz v6, :cond_6

    .line 278
    if-eqz v10, :cond_5

    .line 279
    invoke-virtual {v9}, Lgnu/mapping/Values;->startPos()I

    move-result v4

    .line 280
    :cond_5
    invoke-virtual {v9, v4}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v4

    .line 282
    :cond_6
    if-eqz v7, :cond_8

    .line 284
    if-eqz v10, :cond_7

    .line 285
    invoke-virtual {v8}, Lgnu/mapping/Values;->startPos()I

    move-result v5

    .line 286
    :cond_7
    invoke-virtual {v8, v5}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v5

    .line 288
    :cond_8
    if-eqz v4, :cond_13

    if-nez v5, :cond_9

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    goto/16 :goto_6

    .line 290
    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v9, v4}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    :cond_a
    move-object v11, v1

    .line 291
    .local v11, "item1":Ljava/lang/Object;
    :goto_2
    if-eqz v7, :cond_b

    invoke-virtual {v8, v5}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v12

    goto :goto_3

    :cond_b
    move-object v12, v2

    .line 293
    .local v12, "item2":Ljava/lang/Object;
    :goto_3
    instance-of v13, v11, Lgnu/kawa/xml/KNode;

    if-nez v13, :cond_d

    instance-of v13, v12, Lgnu/kawa/xml/KNode;

    if-nez v13, :cond_d

    .line 297
    :try_start_0
    invoke-static/range {p0 .. p2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_c

    .line 298
    return v3

    .line 303
    :cond_c
    move-object/from16 v16, v8

    move-object/from16 v8, p2

    goto :goto_4

    .line 300
    :catchall_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 302
    .local v0, "ex":Ljava/lang/Throwable;
    return v3

    .line 305
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_d
    instance-of v13, v11, Lgnu/kawa/xml/KNode;

    if-eqz v13, :cond_12

    instance-of v13, v12, Lgnu/kawa/xml/KNode;

    if-eqz v13, :cond_12

    .line 307
    move-object v13, v11

    check-cast v13, Lgnu/kawa/xml/KNode;

    .line 308
    .local v13, "node1":Lgnu/kawa/xml/KNode;
    move-object v14, v12

    check-cast v14, Lgnu/kawa/xml/KNode;

    .line 309
    .local v14, "node2":Lgnu/kawa/xml/KNode;
    iget-object v15, v13, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v15, Lgnu/xml/NodeTree;

    iget v0, v13, Lgnu/kawa/xml/KNode;->ipos:I

    iget-object v3, v14, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    iget v1, v14, Lgnu/kawa/xml/KNode;->ipos:I

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .end local v8    # "vals2":Lgnu/mapping/Values;
    .local v16, "vals2":Lgnu/mapping/Values;
    invoke-static {v15, v0, v3, v1, v8}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 312
    const/4 v1, 0x0

    return v1

    .line 313
    .end local v13    # "node1":Lgnu/kawa/xml/KNode;
    .end local v14    # "node2":Lgnu/kawa/xml/KNode;
    :cond_e
    nop

    .line 317
    :goto_4
    if-eqz v10, :cond_11

    .line 319
    const/4 v0, 0x0

    .line 320
    .end local v10    # "first":Z
    .local v0, "first":Z
    if-nez v6, :cond_f

    .line 321
    const/4 v4, 0x0

    .line 322
    :cond_f
    if-nez v7, :cond_10

    .line 323
    const/4 v1, 0x0

    move v10, v0

    move v5, v1

    .end local v5    # "ipos2":I
    .local v1, "ipos2":I
    goto :goto_5

    .line 322
    .end local v1    # "ipos2":I
    .restart local v5    # "ipos2":I
    :cond_10
    move v10, v0

    .line 325
    .end local v0    # "first":Z
    .end local v11    # "item1":Ljava/lang/Object;
    .end local v12    # "item2":Ljava/lang/Object;
    .restart local v10    # "first":Z
    :cond_11
    :goto_5
    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v8, v16

    goto/16 :goto_1

    .line 305
    .end local v16    # "vals2":Lgnu/mapping/Values;
    .restart local v8    # "vals2":Lgnu/mapping/Values;
    .restart local v11    # "item1":Ljava/lang/Object;
    .restart local v12    # "item2":Ljava/lang/Object;
    :cond_12
    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .line 315
    .end local v8    # "vals2":Lgnu/mapping/Values;
    .restart local v16    # "vals2":Lgnu/mapping/Values;
    const/4 v1, 0x0

    return v1

    .line 288
    .end local v11    # "item1":Ljava/lang/Object;
    .end local v12    # "item2":Ljava/lang/Object;
    .end local v16    # "vals2":Lgnu/mapping/Values;
    .restart local v8    # "vals2":Lgnu/mapping/Values;
    :cond_13
    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .line 289
    .end local v8    # "vals2":Lgnu/mapping/Values;
    .restart local v16    # "vals2":Lgnu/mapping/Values;
    :goto_6
    if-ne v4, v5, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 266
    .end local v4    # "ipos1":I
    .end local v5    # "ipos2":I
    .end local v6    # "is1seq":Z
    .end local v7    # "is2seq":Z
    .end local v9    # "vals1":Lgnu/mapping/Values;
    .end local v10    # "first":Z
    .end local v16    # "vals2":Lgnu/mapping/Values;
    :cond_15
    move-object/from16 v8, p2

    .line 267
    :goto_8
    const/4 v1, 0x0

    return v1

    .line 264
    :cond_16
    move-object/from16 v8, p2

    const/4 v1, 0x0

    .line 265
    :goto_9
    if-eqz v2, :cond_18

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v0, :cond_17

    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    goto :goto_b

    :cond_18
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public static deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .locals 5
    .param p0, "seq1"    # Lgnu/xml/NodeTree;
    .param p1, "ipos1"    # I
    .param p2, "seq2"    # Lgnu/xml/NodeTree;
    .param p3, "ipos2"    # I
    .param p4, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 170
    sget-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    .line 171
    .local v0, "filter":Lgnu/kawa/xml/NodeType;
    invoke-virtual {p0, p1, v0}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v1

    .line 172
    .local v1, "child1":I
    invoke-virtual {p2, p3, v0}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v2

    .line 175
    .local v2, "child2":I
    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    invoke-static {p0, v1, p2, v2, p4}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    return v3

    .line 179
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {p0, v1, v0, v4, v3}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    .line 180
    invoke-virtual {p2, v2, v0, v4, v3}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v2

    goto :goto_0

    .line 176
    :cond_2
    :goto_1
    if-ne v1, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public static deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 254
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0, p0, p1, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    return v0
.end method

.method public static exactlyOne(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 41
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_0

    .line 43
    return-object p0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static exists(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static indexOf$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;Lgnu/mapping/CallContext;)V
    .locals 6
    .param p0, "seqParam"    # Ljava/lang/Object;
    .param p1, "srchParam"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 147
    iget-object v0, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 148
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, p0, Lgnu/mapping/Values;

    const/16 v2, 0x48

    if-eqz v1, :cond_2

    .line 150
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 151
    .local v1, "vals":Lgnu/mapping/Values;
    invoke-virtual {v1}, Lgnu/mapping/Values;->startPos()I

    move-result v3

    .line 152
    .local v3, "ipos":I
    const/4 v4, 0x1

    .line 153
    .local v4, "i":I
    :goto_0
    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v5

    move v3, v5

    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    invoke-interface {v0, v4}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 153
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "vals":Lgnu/mapping/Values;
    .end local v3    # "ipos":I
    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 159
    :cond_2
    invoke-static {v2, p0, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 161
    :cond_3
    :goto_1
    return-void
.end method

.method public static insertBefore$X(Ljava/lang/Object;JLjava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 17
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "position"    # J
    .param p3, "inserts"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    .local v3, "out":Lgnu/lists/Consumer;
    const/4 v4, 0x0

    .line 61
    .local v4, "written":Z
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-gtz v7, :cond_0

    .line 62
    const-wide/16 v5, 0x1

    .end local p1    # "position":J
    .local v5, "position":J
    goto :goto_0

    .line 61
    .end local v5    # "position":J
    .restart local p1    # "position":J
    :cond_0
    move-wide/from16 v5, p1

    .line 63
    .end local p1    # "position":J
    .restart local v5    # "position":J
    :goto_0
    instance-of v7, v0, Lgnu/mapping/Values;

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_5

    .line 65
    move-object v7, v0

    check-cast v7, Lgnu/mapping/Values;

    .line 66
    .local v7, "values":Lgnu/mapping/Values;
    const/4 v10, 0x0

    .line 67
    .local v10, "ipos":I
    const-wide/16 v11, 0x0

    .line 70
    .local v11, "i":J
    :goto_1
    invoke-virtual {v7, v10}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v13

    .line 71
    .local v13, "next":I
    if-nez v13, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    add-long v14, v11, v8

    move-wide v11, v14

    cmp-long v16, v14, v5

    if-nez v16, :cond_3

    .line 73
    :cond_2
    invoke-static {v1, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 74
    const/4 v4, 0x1

    .line 76
    :cond_3
    if-nez v13, :cond_4

    .line 77
    nop

    .line 81
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v10    # "ipos":I
    .end local v11    # "i":J
    .end local v13    # "next":I
    goto :goto_2

    .line 78
    .restart local v7    # "values":Lgnu/mapping/Values;
    .restart local v10    # "ipos":I
    .restart local v11    # "i":J
    .restart local v13    # "next":I
    :cond_4
    invoke-virtual {v7, v10, v13, v3}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 79
    move v10, v13

    .line 80
    .end local v13    # "next":I
    goto :goto_1

    .line 84
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v10    # "ipos":I
    .end local v11    # "i":J
    :cond_5
    cmp-long v7, v5, v8

    if-gtz v7, :cond_6

    .line 85
    invoke-static {v1, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 86
    :cond_6
    invoke-interface {v3, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 87
    cmp-long v7, v5, v8

    if-lez v7, :cond_7

    .line 88
    invoke-static {v1, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 90
    :cond_7
    :goto_2
    return-void
.end method

.method public static isEmptySequence(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isZeroOrOne(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 16
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static oneOrMore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static remove$X(Ljava/lang/Object;JLgnu/mapping/CallContext;)V
    .locals 11
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "position"    # J
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 94
    iget-object v0, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 95
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, p0, Lgnu/mapping/Values;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_2

    .line 97
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 98
    .local v1, "values":Lgnu/mapping/Values;
    const/4 v4, 0x0

    .line 99
    .local v4, "ipos":I
    const-wide/16 v5, 0x0

    .line 102
    .local v5, "i":J
    :goto_0
    invoke-virtual {v1, v4}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    .line 103
    .local v7, "next":I
    if-nez v7, :cond_0

    .line 104
    nop

    .line 109
    .end local v1    # "values":Lgnu/mapping/Values;
    .end local v4    # "ipos":I
    .end local v5    # "i":J
    .end local v7    # "next":I
    goto :goto_1

    .line 105
    .restart local v1    # "values":Lgnu/mapping/Values;
    .restart local v4    # "ipos":I
    .restart local v5    # "i":J
    .restart local v7    # "next":I
    :cond_0
    add-long v8, v5, v2

    move-wide v5, v8

    cmp-long v10, v8, p1

    if-eqz v10, :cond_1

    .line 106
    invoke-virtual {v1, v4, v7, v0}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 107
    :cond_1
    move v4, v7

    .line 108
    .end local v7    # "next":I
    goto :goto_0

    .line 110
    .end local v1    # "values":Lgnu/mapping/Values;
    .end local v4    # "ipos":I
    .end local v5    # "i":J
    :cond_2
    cmp-long v1, p1, v2

    if-eqz v1, :cond_3

    .line 111
    invoke-interface {v0, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 112
    :cond_3
    :goto_1
    return-void
.end method

.method public static reverse$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 8
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 117
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 118
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, p0, Lgnu/mapping/Values;

    if-nez v1, :cond_0

    .line 120
    invoke-interface {v0, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 121
    return-void

    .line 123
    :cond_0
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 124
    .local v1, "vals":Lgnu/mapping/Values;
    const/4 v2, 0x0

    .line 125
    .local v2, "ipos":I
    const/16 v3, 0x64

    new-array v3, v3, [I

    .line 126
    .local v3, "poses":[I
    const/4 v4, 0x0

    .line 129
    .local v4, "n":I
    :goto_0
    array-length v5, v3

    if-lt v4, v5, :cond_1

    .line 131
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I

    .line 132
    .local v5, "t":[I
    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v3, v5

    .line 135
    .end local v5    # "t":[I
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "n":I
    .local v5, "n":I
    aput v2, v3, v4

    .line 136
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v2

    .line 137
    if-nez v2, :cond_3

    .line 138
    nop

    .line 140
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 141
    aget v6, v3, v4

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    invoke-virtual {v1, v6, v7, v0}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    goto :goto_1

    .line 142
    .end local v4    # "i":I
    :cond_2
    return-void

    .line 137
    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public static zeroOrOne(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 28
    const-string v0, "zero-or-one"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
