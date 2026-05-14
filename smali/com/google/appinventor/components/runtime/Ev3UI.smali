.class public Lcom/google/appinventor/components/runtime/Ev3UI;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3UI.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS EV3 robot, with functions to draw graphs on EV3 screen."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 41
    const-string v0, "Ev3UI"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public DrawCircle(IIIIZ)V
    .locals 21
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "radius"    # I
    .param p5, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a circle on the screen."
    .end annotation

    .line 183
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    const-string v3, "DrawCircle"

    .line 185
    .local v3, "functionName":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    if-gez v2, :cond_2

    .line 186
    :cond_1
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    const/16 v5, 0xc1f

    invoke-virtual {v6, v0, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 187
    return-void

    .line 190
    :cond_2
    nop

    .line 195
    const/4 v6, 0x4

    if-eqz p5, :cond_3

    const/16 v7, 0x18

    goto :goto_0

    :cond_3
    const/4 v7, 0x4

    :goto_0
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    int-to-byte v8, v1

    .line 196
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    move/from16 v9, p2

    int-to-short v10, v9

    .line 197
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    move/from16 v11, p3

    int-to-short v12, v11

    .line 198
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    int-to-short v13, v2

    .line 199
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v5

    aput-object v8, v14, v4

    const/4 v7, 0x2

    aput-object v10, v14, v7

    const/4 v7, 0x3

    aput-object v12, v14, v7

    aput-object v13, v14, v6

    .line 190
    const/16 v15, -0x7c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "ccccc"

    move-object/from16 v20, v14

    invoke-static/range {v15 .. v20}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 200
    .local v6, "command":[B
    invoke-virtual {v0, v3, v6, v5}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 202
    nop

    .line 207
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v5

    .line 202
    const/16 v12, -0x7c

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "c"

    move-object/from16 v17, v4

    invoke-static/range {v12 .. v17}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v4

    .line 208
    .end local v6    # "command":[B
    .local v4, "command":[B
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 209
    return-void
.end method

.method public DrawIcon(IIIII)V
    .locals 20
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "type"    # I
    .param p5, "no"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a built-in icon on screen."
    .end annotation

    .line 81
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DrawIcon"

    .line 83
    .local v2, "functionName":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_0

    .line 84
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const/16 v4, 0xc1f

    invoke-virtual {v5, v0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 85
    return-void

    .line 88
    :cond_0
    nop

    .line 93
    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    int-to-byte v7, v1

    .line 94
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    move/from16 v8, p2

    int-to-short v9, v8

    .line 95
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    move/from16 v10, p3

    int-to-short v11, v10

    .line 96
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    .line 97
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 98
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object v7, v5, v3

    const/4 v6, 0x2

    aput-object v9, v5, v6

    const/4 v6, 0x3

    aput-object v11, v5, v6

    const/4 v6, 0x4

    aput-object v12, v5, v6

    const/4 v6, 0x5

    aput-object v13, v5, v6

    .line 88
    const/16 v14, -0x7c

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "cccccc"

    move-object/from16 v19, v5

    invoke-static/range {v14 .. v19}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v5

    .line 99
    .local v5, "command":[B
    invoke-virtual {v0, v2, v5, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 101
    nop

    .line 106
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    .line 101
    const/16 v11, -0x7c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "c"

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 107
    .end local v5    # "command":[B
    .local v3, "command":[B
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 108
    return-void
.end method

.method public DrawLine(IIIII)V
    .locals 23
    .param p1, "color"    # I
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a line on the screen."
    .end annotation

    .line 115
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DrawLine"

    .line 117
    .local v2, "functionName":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_0

    .line 118
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const/16 v4, 0xc1f

    invoke-virtual {v5, v0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 119
    return-void

    .line 122
    :cond_0
    nop

    .line 127
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    int-to-byte v7, v1

    .line 128
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    move/from16 v8, p2

    int-to-short v9, v8

    .line 129
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    move/from16 v10, p3

    int-to-short v11, v10

    .line 130
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    move/from16 v12, p4

    int-to-short v13, v12

    .line 131
    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    move/from16 v14, p5

    int-to-short v15, v14

    .line 132
    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v15

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object v7, v5, v3

    const/4 v6, 0x2

    aput-object v9, v5, v6

    const/4 v6, 0x3

    aput-object v11, v5, v6

    const/4 v6, 0x4

    aput-object v13, v5, v6

    const/4 v6, 0x5

    aput-object v15, v5, v6

    .line 122
    const/16 v17, -0x7c

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "cccccc"

    move-object/from16 v22, v5

    invoke-static/range {v17 .. v22}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v5

    .line 133
    .local v5, "command":[B
    invoke-virtual {v0, v2, v5, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 135
    nop

    .line 140
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    .line 135
    const/16 v15, -0x7c

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v19, "c"

    move-object/from16 v20, v3

    invoke-static/range {v15 .. v20}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 141
    .end local v5    # "command":[B
    .local v3, "command":[B
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 142
    return-void
.end method

.method public DrawPoint(III)V
    .locals 19
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a point on the screen."
    .end annotation

    .line 49
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DrawPoint"

    .line 51
    .local v2, "functionName":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_0

    .line 52
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const/16 v4, 0xc1f

    invoke-virtual {v5, v0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 53
    return-void

    .line 56
    :cond_0
    nop

    .line 61
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    int-to-byte v7, v1

    .line 62
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    move/from16 v8, p2

    int-to-short v9, v8

    .line 63
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    move/from16 v10, p3

    int-to-short v11, v10

    .line 64
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v6, v12, v4

    aput-object v7, v12, v3

    aput-object v9, v12, v5

    const/4 v5, 0x3

    aput-object v11, v12, v5

    .line 56
    const/16 v13, -0x7c

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "cccc"

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v18}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v5

    .line 65
    .local v5, "command":[B
    invoke-virtual {v0, v2, v5, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 67
    nop

    .line 72
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    .line 67
    const/16 v11, -0x7c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v15, "c"

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 73
    .end local v5    # "command":[B
    .local v3, "command":[B
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 74
    return-void
.end method

.method public DrawRect(IIIIIZ)V
    .locals 22
    .param p1, "color"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw a rectangle on the screen."
    .end annotation

    .line 149
    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "DrawRect"

    .line 151
    .local v2, "functionName":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_0

    .line 152
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    const/16 v4, 0xc1f

    invoke-virtual {v5, v0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 153
    return-void

    .line 156
    :cond_0
    nop

    .line 161
    if-eqz p6, :cond_1

    const/16 v5, 0x9

    goto :goto_0

    :cond_1
    const/16 v5, 0xa

    :goto_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    int-to-byte v6, v1

    .line 162
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    move/from16 v7, p2

    int-to-short v8, v7

    .line 163
    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    move/from16 v9, p3

    int-to-short v10, v9

    .line 164
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    move/from16 v11, p4

    int-to-short v12, v11

    .line 165
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move/from16 v13, p5

    int-to-short v14, v13

    .line 166
    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v5, v15, v4

    aput-object v6, v15, v3

    const/4 v5, 0x2

    aput-object v8, v15, v5

    const/4 v5, 0x3

    aput-object v10, v15, v5

    const/4 v5, 0x4

    aput-object v12, v15, v5

    const/4 v5, 0x5

    aput-object v14, v15, v5

    .line 156
    const/16 v16, -0x7c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "cccccc"

    move-object/from16 v21, v15

    invoke-static/range {v16 .. v21}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v5

    .line 167
    .local v5, "command":[B
    invoke-virtual {v0, v2, v5, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 169
    nop

    .line 174
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    .line 169
    const/16 v14, -0x7c

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v18, "c"

    move-object/from16 v19, v3

    invoke-static/range {v14 .. v19}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 175
    .end local v5    # "command":[B
    .local v3, "command":[B
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 176
    return-void
.end method

.method public FillScreen(I)V
    .locals 13
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fill the screen with a color."
    .end annotation

    .line 216
    const-string v0, "FillScreen"

    .line 218
    .local v0, "functionName":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 218
    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 219
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3UI;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const/16 v2, 0xc1f

    invoke-virtual {v3, p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 220
    return-void

    .line 223
    :cond_0
    nop

    .line 228
    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    int-to-byte v5, p1

    .line 229
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    .line 230
    nop

    .line 231
    const/4 v6, 0x4

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v4, v12, v2

    aput-object v5, v12, v1

    const/4 v4, 0x2

    aput-object v3, v12, v4

    const/4 v4, 0x3

    aput-object v3, v12, v4

    .line 223
    const/16 v7, -0x7c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "cccc"

    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 232
    .local v3, "command":[B
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 234
    nop

    .line 239
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v4, v10, v2

    .line 234
    const/16 v5, -0x7c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "c"

    invoke-static/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 240
    .end local v3    # "command":[B
    .local v1, "command":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Ev3UI;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 241
    return-void
.end method
