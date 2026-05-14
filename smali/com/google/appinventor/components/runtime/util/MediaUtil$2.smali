.class Lcom/google/appinventor/components/runtime/util/MediaUtil$2;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field final synthetic val$desiredHeight:I

.field final synthetic val$desiredWidth:I

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$mediaPath:Ljava/lang/String;

.field final synthetic val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;II)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    iput p5, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I

    iput p6, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 506
    move-object/from16 v1, p0

    const-string v2, "Unexpected error on close"

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediaPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v4, 0x0

    .line 508
    .local v4, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v5, v0

    .line 509
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v0, 0x1000

    new-array v6, v0, [B

    .line 513
    .local v6, "buf":[B
    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v8, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    invoke-static {v0, v8, v9}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smopenMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;)Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 514
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v8, v0

    .local v8, "read":I
    const/4 v9, 0x0

    if-lez v0, :cond_0

    .line 515
    invoke-virtual {v5, v6, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v6, v0

    .line 534
    if-eqz v4, :cond_1

    .line 536
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 540
    goto :goto_1

    .line 537
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 539
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 544
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 547
    goto :goto_2

    .line 545
    :catch_1
    move-exception v0

    .line 548
    :goto_2
    const/4 v5, 0x0

    .line 549
    nop

    .line 550
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v10, v0

    .line 551
    .local v10, "bis":Ljava/io/ByteArrayInputStream;
    array-length v8, v6

    .line 552
    const/4 v6, 0x0

    .line 554
    :try_start_3
    invoke-virtual {v10, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 555
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smgetExifOrientation(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    move v11, v0

    .line 556
    .local v11, "exifOrientation":I
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v12, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaPath:Ljava/lang/String;

    invoke-static {v0, v10, v12}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smgetBitmapOptions(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    move-object v12, v0

    .line 557
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 558
    invoke-static {v10, v7, v12}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smdecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v7, v0

    .line 559
    .local v7, "decodedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v7, v11}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->-$$Nest$smapplyExifRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v13, v0

    .line 560
    .local v13, "orientedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v14, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v0, v14, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v14, v0

    .line 575
    .local v14, "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 576
    iget v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v15, 0x1

    if-lez v0, :cond_2

    :try_start_4
    iget v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    .line 602
    .end local v7    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "exifOrientation":I
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "orientedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object v4, v0

    goto/16 :goto_a

    .line 598
    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_7

    .line 576
    .restart local v7    # "decodedBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "exifOrientation":I
    .restart local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v13    # "orientedBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    const/4 v0, 0x0

    :goto_3
    move/from16 v16, v0

    .line 577
    .local v16, "needsResize":Z
    if-nez v16, :cond_4

    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v0, v15, :cond_3

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v15

    if-nez v0, :cond_4

    .line 578
    :cond_3
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, v14}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 602
    nop

    .line 604
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 608
    goto :goto_4

    .line 605
    :catch_3
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 607
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 581
    :cond_4
    :try_start_6
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 582
    iget v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-lez v15, :cond_5

    :try_start_7
    iget v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredWidth:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :cond_5
    :try_start_8
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v15

    :goto_5
    int-to-float v15, v15

    mul-float v0, v0, v15

    float-to-int v0, v0

    .line 583
    .local v0, "scaledWidth":I
    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v15

    .line 584
    iget v9, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-lez v9, :cond_6

    :try_start_9
    iget v9, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$desiredHeight:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :cond_6
    :try_start_a
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v9

    :goto_6
    int-to-float v9, v9

    mul-float v15, v15, v9

    float-to-int v9, v15

    .line 585
    .local v9, "scaledHeight":I
    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v17, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .local v17, "is":Ljava/io/InputStream;
    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v18, v5

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v18, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_c
    const-string v5, "form.deviceDensity() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    nop

    .line 587
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "originalBitmapDrawable.getIntrinsicWidth() = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    nop

    .line 589
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "originalBitmapDrawable.getIntrinsicHeight() = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 592
    .local v4, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    .line 593
    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v5, v15, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 594
    .local v5, "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v15}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 595
    const/4 v14, 0x0

    .line 596
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 597
    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v15, v5}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 602
    .end local v0    # "scaledWidth":I
    .end local v4    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "scaledBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "decodedBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "scaledHeight":I
    .end local v11    # "exifOrientation":I
    .end local v12    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v13    # "orientedBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "originalBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v16    # "needsResize":Z
    nop

    .line 604
    :try_start_d
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_8

    .line 598
    :catch_4
    move-exception v0

    goto :goto_7

    .line 602
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v5, "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v5

    move-object v4, v0

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 598
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v0

    move-object/from16 v18, v5

    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 602
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object v4, v0

    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 598
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 599
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_7
    :try_start_e
    const-string v4, "Exception while loading media."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 602
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 604
    :try_start_f
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 608
    :goto_8
    goto :goto_9

    .line 605
    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 607
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 611
    :goto_9
    return-void

    .line 602
    :catchall_3
    move-exception v0

    move-object v4, v0

    .line 604
    :goto_a
    :try_start_10
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 608
    goto :goto_b

    .line 605
    :catch_8
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 607
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    .end local v0    # "e":Ljava/io/IOException;
    :goto_b
    throw v4

    .line 534
    .end local v8    # "read":I
    .end local v10    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v0

    move-object v7, v0

    goto/16 :goto_12

    .line 521
    :catch_9
    move-exception v0

    move-object v8, v0

    .line 522
    .local v8, "e":Ljava/io/IOException;
    :try_start_11
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$mediaSource:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    sget-object v9, Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;->CONTACT_URI:Lcom/google/appinventor/components/runtime/util/MediaUtil$MediaSource;

    if-ne v0, v9, :cond_8

    .line 524
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$form:Lcom/google/appinventor/components/runtime/Form;

    .line 525
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080066

    invoke-static {v10, v11, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v0, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v7, v0

    .line 527
    .local v7, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-interface {v0, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 534
    if-eqz v4, :cond_7

    .line 536
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 540
    goto :goto_c

    .line 537
    :catch_a
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 539
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :goto_c
    const/4 v2, 0x0

    .line 544
    .end local v4    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 547
    goto :goto_d

    .line 545
    :catch_b
    move-exception v0

    .line 548
    :goto_d
    const/4 v0, 0x0

    .line 528
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    return-void

    .line 530
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v7    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_8
    :try_start_14
    const-string v0, "IOException reading file."

    invoke-static {v3, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 534
    if-eqz v4, :cond_9

    .line 536
    :try_start_15
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 540
    goto :goto_e

    .line 537
    :catch_c
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 539
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_e
    const/4 v2, 0x0

    .line 544
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :try_start_16
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    .line 547
    goto :goto_f

    .line 545
    :catch_d
    move-exception v0

    .line 548
    :goto_f
    const/4 v0, 0x0

    .line 532
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    return-void

    .line 518
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v0

    move-object v7, v0

    .line 519
    .local v7, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :try_start_17
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PERMISSION_DENIED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 534
    if-eqz v4, :cond_a

    .line 536
    :try_start_18
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    .line 540
    goto :goto_10

    .line 537
    :catch_f
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 539
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_10
    const/4 v2, 0x0

    .line 544
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :try_start_19
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    .line 547
    goto :goto_11

    .line 545
    :catch_10
    move-exception v0

    .line 548
    :goto_11
    const/4 v0, 0x0

    .line 520
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    return-void

    .line 534
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v7    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_12
    if-eqz v4, :cond_b

    .line 536
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    .line 540
    goto :goto_13

    .line 537
    :catch_11
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 539
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_13
    const/4 v2, 0x0

    .line 544
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 547
    goto :goto_14

    .line 545
    :catch_12
    move-exception v0

    .line 548
    :goto_14
    const/4 v0, 0x0

    .line 549
    .end local v5    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_16

    :goto_15
    throw v7

    :goto_16
    goto :goto_15
.end method
