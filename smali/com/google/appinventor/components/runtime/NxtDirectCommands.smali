.class public Lcom/google/appinventor/components/runtime/NxtDirectCommands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "NxtDirectCommands.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS NXT robot, with functions to send NXT Direct Commands."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 61
    const-string v0, "NxtDirectCommands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private closeHandle(Ljava/lang/String;I)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I

    .line 774
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 775
    .local v0, "command":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 776
    const/16 v1, -0x7c

    aput-byte v1, v0, v2

    .line 777
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 778
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 779
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 780
    return-void
.end method

.method private getOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;)[B
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "port"    # Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 276
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 277
    .local v0, "command":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 278
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 279
    invoke-virtual {p2}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 280
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 281
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    array-length v2, v1

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    .line 283
    return-object v1

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    array-length v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 25)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .line 727
    const/16 v0, 0x1a

    new-array v0, v0, [B

    .line 728
    .local v0, "command":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 729
    const/16 v1, -0x7f

    aput-byte v1, v0, v2

    .line 730
    const/4 v1, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 731
    const/16 v1, 0x16

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 732
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 733
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 735
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 737
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    array-length v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .line 859
    const/16 v0, 0x1a

    new-array v0, v0, [B

    .line 860
    .local v0, "command":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 861
    const/16 v1, -0x77

    aput-byte v1, v0, v2

    .line 862
    const/4 v1, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 863
    const/16 v1, 0x16

    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyULONGValueToBytes(J[BI)V

    .line 864
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 865
    .local v1, "returnPackage":[B
    aget-byte v2, v0, v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 866
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 867
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 869
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    array-length v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private writeChunk(Ljava/lang/String;I[BI)I
    .locals 7
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "buffer"    # [B
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    const/16 v0, 0x20

    if-gt p4, v0, :cond_3

    .line 750
    add-int/lit8 v0, p4, 0x3

    new-array v0, v0, [B

    .line 751
    .local v0, "command":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 752
    const/16 v3, -0x7d

    aput-byte v3, v0, v2

    .line 753
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 754
    const/4 v3, 0x3

    invoke-static {p3, v1, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 756
    .local v3, "returnPackage":[B
    aget-byte v2, v0, v2

    invoke-virtual {p0, p1, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 757
    array-length v2, v3

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 758
    const/4 v1, 0x4

    invoke-virtual {p0, v3, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v1

    .line 759
    .local v1, "writtenLength":I
    if-ne v1, p4, :cond_0

    .line 764
    return v1

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes were written (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Unable to write file on robot"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    .end local v1    # "writtenLength":I
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    array-length v4, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": unexpected return package length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 6)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_2
    return v1

    .line 747
    .end local v0    # "command":[B
    .end local v3    # "returnPackage":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be <= 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .line 784
    const-string v0, "DeleteFile"

    .line 785
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    return-void

    .line 788
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x196

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 791
    return-void

    .line 794
    :cond_1
    const/16 v1, 0x16

    new-array v1, v1, [B

    .line 795
    .local v1, "command":[B
    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 796
    const/16 v2, -0x7b

    aput-byte v2, v1, v3

    .line 797
    const/4 v2, 0x2

    const/16 v4, 0x13

    invoke-virtual {p0, p1, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 798
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 799
    .local v2, "returnPackage":[B
    aget-byte v3, v1, v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 800
    return-void
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .line 673
    move-object v1, p0

    move-object/from16 v2, p2

    const-string v3, "DownloadFile"

    .line 674
    .local v3, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    return-void

    .line 677
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 678
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x19e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 680
    return-void

    .line 682
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 683
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x19f

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 685
    return-void

    .line 689
    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v5, p1

    invoke-static {v0, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 691
    .local v6, "tempFile":Ljava/io/File;
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v7, v1, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v7, v6}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openFile(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v7

    const/16 v8, 0x400

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, v0

    .line 693
    .local v7, "in":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 694
    .local v8, "fileSize":J
    const-string v0, ".rxe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".ric"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 696
    :cond_3
    invoke-direct {p0, v3, v2, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 695
    :cond_4
    :goto_0
    invoke-direct {p0, v3, v2, v8, v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 696
    :goto_1
    move-object v10, v0

    .line 697
    .local v10, "handle":Ljava/lang/Integer;
    if-nez v10, :cond_5

    .line 714
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 717
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 698
    return-void

    .line 702
    :cond_5
    const/16 v0, 0x20

    :try_start_5
    new-array v0, v0, [B

    .line 703
    .local v0, "buffer":[B
    const-wide/16 v11, 0x0

    .line 704
    .local v11, "sentLength":J
    :goto_2
    cmp-long v13, v11, v8

    if-gez v13, :cond_6

    .line 705
    const-wide/16 v13, 0x20

    sub-long v4, v8, v11

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 706
    .local v5, "chunkLength":I
    const/4 v4, 0x0

    invoke-virtual {v7, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 707
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4, v0, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->writeChunk(Ljava/lang/String;I[BI)I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 708
    .local v4, "writtenLength":I
    int-to-long v13, v4

    add-long/2addr v11, v13

    .line 709
    .end local v4    # "writtenLength":I
    .end local v5    # "chunkLength":I
    move-object/from16 v5, p1

    const/4 v4, 0x0

    goto :goto_2

    .line 711
    .end local v0    # "buffer":[B
    .end local v11    # "sentLength":J
    :cond_6
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 712
    nop

    .line 714
    .end local v8    # "fileSize":J
    .end local v10    # "handle":Ljava/lang/Integer;
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 715
    nop

    .line 717
    .end local v7    # "in":Ljava/io/InputStream;
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 718
    nop

    .line 723
    .end local v6    # "tempFile":Ljava/io/File;
    nop

    .line 724
    return-void

    .line 711
    .restart local v6    # "tempFile":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "fileSize":J
    .restart local v10    # "handle":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->closeHandle(Ljava/lang/String;I)V

    .line 712
    nop

    .end local v3    # "functionName":Ljava/lang/String;
    .end local v6    # "tempFile":Ljava/io/File;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "destination":Ljava/lang/String;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 714
    .end local v8    # "fileSize":J
    .end local v10    # "handle":Ljava/lang/Integer;
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local v6    # "tempFile":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local p1    # "source":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 715
    nop

    .end local v3    # "functionName":Ljava/lang/String;
    .end local v6    # "tempFile":Ljava/io/File;
    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "destination":Ljava/lang/String;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 717
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local v6    # "tempFile":Ljava/io/File;
    .restart local p1    # "source":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_b
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 718
    nop

    .end local v3    # "functionName":Ljava/lang/String;
    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "destination":Ljava/lang/String;
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 719
    .end local v6    # "tempFile":Ljava/io/File;
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local p1    # "source":Ljava/lang/String;
    .restart local p2    # "destination":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 721
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 720
    const/16 v5, 0x1a0

    invoke-virtual {v4, p0, v3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 722
    return-void
.end method

.method public GetBatteryLevel()I
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .line 377
    const-string v0, "GetBatteryLevel"

    .line 378
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 379
    return v2

    .line 382
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 383
    .local v1, "command":[B
    aput-byte v2, v1, v2

    .line 384
    const/16 v3, 0xb

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    .line 385
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 386
    .local v3, "returnPackage":[B
    aget-byte v4, v1, v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    array-length v4, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 388
    const/4 v2, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v2

    return v2

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    array-length v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetBatteryLevel: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (expected 5)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_2
    return v2
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .line 897
    const-string v0, "GetBrickName"

    .line 898
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 899
    return-object v2

    .line 902
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 903
    .local v1, "command":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v1, v3

    .line 904
    const/16 v3, -0x65

    aput-byte v3, v1, v4

    .line 905
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 906
    .local v3, "returnPackage":[B
    aget-byte v4, v1, v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 907
    const/4 v2, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 909
    :cond_1
    return-object v2
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .line 537
    const-string v0, "GetCurrentProgramName"

    .line 538
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 539
    return-object v2

    .line 542
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 543
    .local v1, "command":[B
    const/4 v3, 0x0

    aput-byte v3, v1, v3

    .line 544
    const/16 v3, 0x11

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 546
    .local v3, "returnPackage":[B
    aget-byte v5, v1, v4

    invoke-virtual {p0, v0, v3, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v5

    .line 547
    .local v5, "status":I
    if-nez v5, :cond_1

    .line 549
    const/4 v2, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 551
    :cond_1
    const/16 v6, 0xec

    if-ne v5, v6, :cond_2

    .line 553
    return-object v2

    .line 556
    :cond_2
    aget-byte v4, v1, v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 557
    return-object v2
.end method

.method public GetFirmwareVersion()Ljava/util/List;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware and protocol version numbers for the robot as a list where the first element is the firmware version number and the second element is the protocol version number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 840
    const-string v0, "GetFirmwareVersion"

    .line 841
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 845
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 846
    .local v1, "command":[B
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 847
    const/16 v2, -0x78

    aput-byte v2, v1, v3

    .line 848
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 849
    .local v2, "returnPackage":[B
    aget-byte v3, v1, v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 850
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v3, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x6

    aget-byte v4, v2, v4

    const/4 v5, 0x5

    aget-byte v5, v2, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    const/4 v4, 0x4

    aget-byte v4, v2, v4

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    return-object v3

    .line 855
    .end local v3    # "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 295
    const-string v0, "GetInputValues"

    .line 296
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 301
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v1

    .line 302
    .local v1, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v1, :cond_1

    .line 303
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/16 v4, 0x198

    invoke-virtual {v2, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 308
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v2

    .line 309
    .local v2, "returnPackage":[B
    if-eqz v2, :cond_2

    .line 310
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v3, "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const/4 v4, 0x5

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getBooleanValueFromBytes([BI)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    const/4 v4, 0x7

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const/16 v4, 0x8

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const/16 v4, 0xa

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const/16 v4, 0xc

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const/16 v4, 0xe

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSWORDValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-object v3

    .line 323
    .end local v3    # "inputValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "motorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 243
    const-string v0, "GetOutputState"

    .line 244
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v1

    .line 250
    .local v1, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    if-nez v1, :cond_1

    .line 251
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/16 v4, 0x197

    invoke-virtual {v2, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 256
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;)[B

    move-result-object v2

    .line 257
    .local v2, "returnPackage":[B
    if-eqz v2, :cond_2

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v4, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const/4 v4, 0x5

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v4, 0x6

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v4, 0x7

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/16 v4, 0x8

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const/16 v4, 0x9

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const/16 v4, 0xd

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const/16 v4, 0x11

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const/16 v4, 0x15

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getSLONGValueFromBytes([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-object v3

    .line 272
    .end local v3    # "outputState":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3
.end method

.method public KeepAlive()J
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .line 413
    const-string v0, "KeepAlive"

    .line 414
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 415
    return-wide v2

    .line 418
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 419
    .local v1, "command":[B
    const/4 v4, 0x0

    aput-byte v4, v1, v4

    .line 420
    const/16 v4, 0xd

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    .line 421
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 422
    .local v4, "returnPackage":[B
    aget-byte v5, v1, v5

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 423
    array-length v5, v4

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 424
    const/4 v2, 0x3

    invoke-virtual {p0, v4, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getULONGValueFromBytes([BI)J

    move-result-wide v2

    return-wide v2

    .line 426
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    array-length v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeepAlive: unexpected return package length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 7)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2
    return-wide v2
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "wildcard"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 805
    const-string v0, "ListFiles"

    .line 806
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 807
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 810
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v1, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 813
    const-string p1, "*.*"

    .line 816
    :cond_1
    const/16 v2, 0x16

    new-array v2, v2, [B

    .line 817
    .local v2, "command":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    .line 818
    const/16 v5, -0x7a

    aput-byte v5, v2, v4

    .line 819
    const/16 v5, 0x13

    const/4 v6, 0x2

    invoke-virtual {p0, p1, v2, v6, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 820
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 821
    .local v5, "returnPackage":[B
    aget-byte v7, v2, v4

    invoke-virtual {p0, v0, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v7

    .line 822
    .local v7, "status":I
    :goto_0
    if-nez v7, :cond_2

    .line 823
    const/4 v8, 0x3

    invoke-virtual {p0, v5, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v9

    .line 824
    .local v9, "handle":I
    const/4 v10, 0x4

    invoke-virtual {p0, v5, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v10

    .line 825
    .local v10, "fileName":Ljava/lang/String;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    new-array v2, v8, [B

    .line 827
    aput-byte v4, v2, v3

    .line 828
    const/16 v8, -0x79

    aput-byte v8, v2, v4

    .line 829
    invoke-virtual {p0, v9, v2, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 830
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 831
    aget-byte v8, v2, v4

    invoke-virtual {p0, v0, v5, v8}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStatus(Ljava/lang/String;[BB)I

    move-result v7

    .line 832
    .end local v9    # "handle":I
    .end local v10    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 833
    :cond_2
    return-object v1
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 6
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .line 435
    const-string v0, "LsGetStatus"

    .line 436
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 437
    return v2

    .line 441
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v1

    .line 442
    .local v1, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v1, :cond_1

    .line 443
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const/16 v5, 0x198

    invoke-virtual {v3, p0, v0, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 445
    return v2

    .line 448
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I

    move-result v2

    return v2
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 506
    const-string v0, "LsRead"

    .line 507
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 512
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v1

    .line 513
    .local v1, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    if-nez v1, :cond_1

    .line 514
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/16 v4, 0x198

    invoke-virtual {v2, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 516
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 519
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v2

    .line 520
    .local v2, "returnPackage":[B
    if-eqz v2, :cond_3

    .line 521
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 523
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 524
    add-int/lit8 v6, v5, 0x4

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    .line 525
    .local v6, "n":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v6    # "n":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 527
    .end local v5    # "i":I
    :cond_2
    return-object v3

    .line 531
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "count":I
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 12
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .param p2, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "rxDataLength"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .line 457
    const-string v0, "LsWrite"

    .line 458
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    return-void

    .line 463
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v1

    .line 464
    .local v1, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 465
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/16 v2, 0x198

    invoke-virtual {v4, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 467
    return-void

    .line 470
    :cond_1
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_2

    .line 471
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x19b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 473
    return-void

    .line 476
    :cond_2
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 477
    .local v4, "array":[Ljava/lang/Object;
    array-length v5, v4

    new-array v5, v5, [B

    .line 478
    .local v5, "bytes":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 481
    aget-object v7, v4, v6

    .line 482
    .local v7, "element":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .local v9, "n":I
    nop

    .line 491
    and-int/lit16 v10, v9, 0xff

    int-to-byte v10, v10

    aput-byte v10, v5, v6

    .line 492
    shr-int/lit8 v9, v9, 0x8

    .line 493
    if-eqz v9, :cond_3

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 494
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    add-int/lit8 v11, v6, 0x1

    .line 495
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v2

    .line 494
    const/16 v2, 0x19d

    invoke-virtual {v10, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 496
    return-void

    .line 478
    .end local v7    # "element":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "n":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 486
    .restart local v7    # "element":Ljava/lang/Object;
    .restart local v8    # "s":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 487
    .local v9, "e":Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    add-int/lit8 v11, v6, 0x1

    .line 488
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v2

    .line 487
    const/16 v2, 0x19c

    invoke-virtual {v10, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 489
    return-void

    .line 499
    .end local v6    # "i":I
    .end local v7    # "element":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    invoke-virtual {p0, v0, v1, v5, p3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    .line 500
    return-void
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 6
    .param p1, "mailbox"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMailbox;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Read a message from a mailbox (1-10) on the robot."
    .end annotation

    .line 562
    const-string v0, "MessageRead"

    .line 564
    .local v0, "functionName":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/common/NxtMailbox;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v1

    .line 565
    .local v1, "box":Lcom/google/appinventor/components/common/NxtMailbox;
    if-nez v1, :cond_0

    .line 566
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 566
    const/16 v3, 0x199

    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 568
    const-string v2, ""

    return-object v2

    .line 570
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->MessageReadAbstract(Lcom/google/appinventor/components/common/NxtMailbox;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public MessageReadAbstract(Lcom/google/appinventor/components/common/NxtMailbox;)Ljava/lang/String;
    .locals 11
    .param p1, "mailbox"    # Lcom/google/appinventor/components/common/NxtMailbox;

    .line 581
    const-string v0, "MessageRead"

    .line 582
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/NxtMailbox;->toInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 584
    .local v1, "intMailbox":I
    const-string v2, "MessageRead"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    .line 585
    return-object v4

    .line 588
    :cond_0
    const/4 v3, 0x5

    new-array v5, v3, [B

    .line 589
    .local v5, "command":[B
    const/4 v6, 0x0

    aput-byte v6, v5, v6

    .line 590
    const/16 v7, 0x13

    const/4 v8, 0x1

    aput-byte v7, v5, v8

    .line 591
    const/4 v7, 0x2

    invoke-virtual {p0, v6, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 592
    const/4 v6, 0x3

    invoke-virtual {p0, v1, v5, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 593
    const/4 v7, 0x4

    invoke-virtual {p0, v8, v5, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 594
    invoke-virtual {p0, v2, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v9

    .line 595
    .local v9, "returnPackage":[B
    aget-byte v10, v5, v8

    invoke-virtual {p0, v2, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 596
    array-length v2, v9

    const/16 v10, 0x40

    if-ne v2, v10, :cond_2

    .line 597
    invoke-virtual {p0, v9, v6}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 598
    .local v2, "mailboxEcho":I
    if-eq v2, v1, :cond_1

    .line 599
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MessageRead: unexpected return mailbox: Box"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " (expected "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1
    invoke-virtual {p0, v9, v7}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getUBYTEValueFromBytes([BI)I

    move-result v4

    sub-int/2addr v4, v8

    .line 603
    .local v4, "messageLength":I
    invoke-virtual {p0, v9, v3, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 605
    .end local v2    # "mailboxEcho":I
    .end local v4    # "messageLength":I
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    array-length v3, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " (expected 64)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_3
    return-object v4
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 6
    .param p1, "mailbox"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMailbox;
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Write a message to a mailbox (1-10) on the robot."
    .end annotation

    .line 620
    const-string v0, "MessageWrite"

    .line 622
    .local v0, "functionName":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/common/NxtMailbox;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v1

    .line 623
    .local v1, "box":Lcom/google/appinventor/components/common/NxtMailbox;
    if-nez v1, :cond_0

    .line 624
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 625
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 624
    const/16 v3, 0x199

    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 626
    return-void

    .line 628
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->MessageWriteAbstract(Lcom/google/appinventor/components/common/NxtMailbox;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public MessageWriteAbstract(Lcom/google/appinventor/components/common/NxtMailbox;Ljava/lang/String;)V
    .locals 7
    .param p1, "mailbox"    # Lcom/google/appinventor/components/common/NxtMailbox;
    .param p2, "message"    # Ljava/lang/String;

    .line 639
    const-string v0, "MessageWrite"

    .line 641
    .local v0, "functionName":Ljava/lang/String;
    const-string v1, "MessageWrite"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    return-void

    .line 644
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 645
    .local v2, "messageLength":I
    const/16 v3, 0x3a

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    .line 646
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x19a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v1, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 648
    return-void

    .line 651
    :cond_1
    add-int/lit8 v3, v2, 0x4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    new-array v3, v3, [B

    .line 652
    .local v3, "command":[B
    const/16 v6, -0x80

    aput-byte v6, v3, v4

    .line 653
    const/16 v4, 0x9

    aput-byte v4, v3, v5

    .line 654
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/NxtMailbox;->toInt()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v3, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 656
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 657
    const/4 v4, 0x4

    invoke-virtual {p0, p2, v3, v4, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 659
    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 660
    return-void
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .line 108
    const-string v0, "PlaySoundFile"

    .line 109
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x196

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 115
    return-void

    .line 117
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".rso"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    :cond_2
    const/16 v1, 0x17

    new-array v1, v1, [B

    .line 122
    .local v1, "command":[B
    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 123
    const/4 v3, 0x1

    const/4 v4, 0x2

    aput-byte v4, v1, v3

    .line 124
    invoke-virtual {p0, v2, v1, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 125
    const/4 v2, 0x3

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 127
    return-void
.end method

.method public PlayTone(II)V
    .locals 5
    .param p1, "frequencyHz"    # I
    .param p2, "durationMs"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .line 131
    const-string v0, "PlayTone"

    .line 132
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    const/16 v1, 0xc8

    const-string v2, "frequencyHz "

    if-ge p1, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 200."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 p1, 0xc8

    .line 140
    :cond_1
    const/16 v1, 0x36b0

    if-le p1, v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is invalid, using 14000."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 p1, 0x36b0

    .line 144
    :cond_2
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 145
    .local v1, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 146
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v1, v2

    .line 147
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 148
    const/4 v2, 0x4

    invoke-virtual {p0, p2, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUWORDValueToBytes(I[BI)V

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 150
    return-void
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .line 328
    const-string v0, "ResetInputScaledValue"

    .line 329
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    return-void

    .line 334
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v1

    .line 335
    .local v1, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 336
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/16 v3, 0x198

    invoke-virtual {v4, p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 338
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V

    .line 342
    const/4 v4, 0x3

    new-array v4, v4, [B

    .line 343
    .local v4, "command":[B
    const/16 v5, -0x80

    aput-byte v5, v4, v3

    .line 344
    const/16 v3, 0x8

    aput-byte v3, v4, v2

    .line 345
    invoke-virtual {v1}, Lcom/google/appinventor/components/common/NxtSensorPort;->toInt()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 346
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 347
    return-void
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "motorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .param p2, "relative"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .line 353
    const-string v0, "ResetMotorPosition"

    .line 354
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    return-void

    .line 359
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v1

    .line 360
    .local v1, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 361
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/16 v3, 0x197

    invoke-virtual {v4, p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 363
    return-void

    .line 366
    :cond_1
    const/4 v4, 0x4

    new-array v4, v4, [B

    .line 367
    .local v4, "command":[B
    const/16 v5, -0x80

    aput-byte v5, v4, v3

    .line 368
    const/16 v3, 0xa

    aput-byte v3, v4, v2

    .line 369
    invoke-virtual {v1}, Lcom/google/appinventor/components/common/NxtMotorPort;->toInt()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyUBYTEValueToBytes(I[BI)V

    .line 370
    const/4 v2, 0x3

    invoke-virtual {p0, p2, v4, v2}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyBooleanValueToBytes(Z[BI)V

    .line 371
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 372
    return-void
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .line 882
    const-string v0, "SetBrickName"

    .line 883
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    return-void

    .line 887
    :cond_0
    const/16 v1, 0x12

    new-array v1, v1, [B

    .line 888
    .local v1, "command":[B
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    .line 889
    const/16 v2, -0x68

    aput-byte v2, v1, v3

    .line 890
    const/4 v2, 0x2

    const/16 v4, 0xf

    invoke-virtual {p0, p1, v1, v2, v4}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 891
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 892
    .local v2, "returnPackage":[B
    aget-byte v3, v1, v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 893
    return-void
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 7
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorPort;
        .end annotation
    .end param
    .param p2, "sensorType"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorType;
        .end annotation
    .end param
    .param p3, "sensorMode"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .line 209
    const-string v0, "SetInputMode"

    .line 210
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    return-void

    .line 215
    :cond_0
    invoke-static {p1}, Lcom/google/appinventor/components/common/NxtSensorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorPort;

    move-result-object v1

    .line 216
    .local v1, "port":Lcom/google/appinventor/components/common/NxtSensorPort;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 217
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const/16 v2, 0x198

    invoke-virtual {v4, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 219
    return-void

    .line 223
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/common/NxtSensorType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtSensorType;

    move-result-object v4

    .line 224
    .local v4, "type":Lcom/google/appinventor/components/common/NxtSensorType;
    if-nez v4, :cond_2

    .line 225
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const/16 v2, 0x1a6

    invoke-virtual {v5, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 227
    return-void

    .line 231
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/common/NxtSensorMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtSensorMode;

    move-result-object v5

    .line 232
    .local v5, "mode":Lcom/google/appinventor/components/common/NxtSensorMode;
    if-nez v5, :cond_3

    .line 233
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    const/16 v2, 0x1a7

    invoke-virtual {v6, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 235
    return-void

    .line 238
    :cond_3
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 239
    return-void
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 16
    .param p1, "motorPortLetter"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorPort;
        .end annotation
    .end param
    .param p2, "power"    # I
    .param p3, "mode"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtMotorMode;
        .end annotation
    .end param
    .param p4, "regulationMode"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtRegulationMode;
        .end annotation
    .end param
    .param p5, "turnRatio"    # I
    .param p6, "runState"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/NxtRunState;
        .end annotation
    .end param
    .param p7, "tachoLimit"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .line 161
    move-object/from16 v10, p0

    const-string v11, "SetOutputState"

    .line 162
    .local v11, "functionName":Ljava/lang/String;
    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 167
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v12

    .line 168
    .local v12, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v12, :cond_1

    .line 169
    iget-object v2, v10, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/16 v0, 0x197

    invoke-virtual {v2, v10, v11, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 171
    return-void

    .line 175
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/common/NxtMotorMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMotorMode;

    move-result-object v13

    .line 176
    .local v13, "motorMode":Lcom/google/appinventor/components/common/NxtMotorMode;
    if-nez v13, :cond_2

    .line 177
    iget-object v2, v10, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 178
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 177
    const/16 v0, 0x1a4

    invoke-virtual {v2, v10, v11, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 179
    return-void

    .line 183
    :cond_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/common/NxtRegulationMode;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRegulationMode;

    move-result-object v14

    .line 184
    .local v14, "regMode":Lcom/google/appinventor/components/common/NxtRegulationMode;
    if-nez v14, :cond_3

    .line 185
    iget-object v2, v10, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v14, v1, v0

    const/16 v0, 0x1a5

    invoke-virtual {v2, v10, v11, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 187
    return-void

    .line 191
    :cond_3
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/NxtRunState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRunState;

    move-result-object v15

    .line 193
    .local v15, "state":Lcom/google/appinventor/components/common/NxtRunState;
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move/from16 v3, p2

    move-object v4, v13

    move-object v5, v14

    move/from16 v6, p5

    move-object v7, v15

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 202
    return-void
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 4
    .param p1, "programName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .line 72
    const-string v0, "StartProgram"

    .line 73
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x195

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 79
    return-void

    .line 81
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".rxe"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_2
    const/16 v1, 0x16

    new-array v1, v1, [B

    .line 86
    .local v1, "command":[B
    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 87
    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 88
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 90
    return-void
.end method

.method public StopProgram()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .line 95
    const-string v0, "StopProgram"

    .line 96
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 101
    .local v1, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 102
    const/4 v2, 0x1

    aput-byte v2, v1, v2

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 104
    return-void
.end method

.method public StopSoundPlayback()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .line 399
    const-string v0, "StopSoundPlayback"

    .line 400
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    return-void

    .line 404
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 405
    .local v1, "command":[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    .line 406
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v1, v2

    .line 407
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDirectCommands;->sendCommand(Ljava/lang/String;[B)V

    .line 408
    return-void
.end method
