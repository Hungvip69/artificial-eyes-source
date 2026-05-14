.class public Lcom/google/appinventor/components/runtime/util/AlignmentUtil;
.super Ljava/lang/Object;
.source "AlignmentUtil.java"


# instance fields
.field viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V
    .locals 0
    .param p1, "viewLayout"    # Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 25
    return-void
.end method


# virtual methods
.method public setHorizontalAlignment(I)V
    .locals 3
    .param p1, "alignment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value to setHorizontalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 42
    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 39
    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 36
    nop

    .line 46
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 3
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 53
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$HorizontalAlignment:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/HorizontalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value to setHorizontalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 62
    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 59
    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setHorizontalGravity(I)V

    .line 56
    nop

    .line 66
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVerticalAlignment(I)V
    .locals 3
    .param p1, "alignment"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value to setVerticalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 83
    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 80
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 77
    nop

    .line 87
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 3
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 94
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil$1;->$SwitchMap$com$google$appinventor$components$common$VerticalAlignment:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/VerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value to setVerticalAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 103
    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 100
    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;->setVerticalGravity(I)V

    .line 97
    nop

    .line 107
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
