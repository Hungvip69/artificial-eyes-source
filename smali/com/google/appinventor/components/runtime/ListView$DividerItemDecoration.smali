.class Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerItemDecoration"
.end annotation


# instance fields
.field private layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private parent:Landroidx/recyclerview/widget/RecyclerView;

.field private recyclerViewWidth:I

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetrecyclerViewWidth(Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->recyclerViewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputrecyclerViewWidth(Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->recyclerViewWidth:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListView;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 1335
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->recyclerViewWidth:I

    .line 1339
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1383
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 1384
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1385
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 1386
    .local v1, "position":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 1387
    if-eq v1, v3, :cond_1

    .line 1388
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    .line 1389
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetorientation(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1390
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetdividerSize(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    invoke-virtual {p1, v5, v5, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 1392
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetdividerSize(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    invoke-virtual {p1, v5, v5, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1

    .line 1395
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1

    .line 1398
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetorientation(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 1399
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-nez v2, :cond_3

    .line 1400
    new-instance v2, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;

    invoke-direct {v2, p0, p3}, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;-><init>(Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 1417
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1419
    :cond_3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->recyclerViewWidth:I

    .line 1420
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->recyclerViewWidth:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1421
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    if-nez v1, :cond_4

    .line 1423
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1425
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v4

    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1428
    :cond_5
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1429
    if-nez v1, :cond_6

    .line 1430
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 1432
    :cond_6
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v4

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1435
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1437
    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 1344
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 1347
    .local v2, "childCount":I
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetorientation(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1348
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    .line 1349
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1350
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1351
    .local v6, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1352
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1353
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    .line 1354
    .local v7, "position":I
    if-eq v7, v4, :cond_0

    .line 1355
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    .line 1356
    .local v8, "left":I
    iget-object v9, v0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetdividerSize(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v9

    add-int/2addr v9, v8

    .line 1357
    .local v9, "right":I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    .line 1358
    .local v10, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 1359
    .local v11, "bottom":I
    int-to-float v13, v8

    int-to-float v14, v10

    int-to-float v15, v9

    int-to-float v12, v11

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetdividerPaint(Lcom/google/appinventor/components/runtime/ListView;)Landroid/graphics/Paint;

    move-result-object v17

    move v4, v12

    move-object/from16 v12, p1

    move/from16 v16, v4

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1348
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "position":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "bottom":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v4, -0x1

    goto :goto_0

    .end local v3    # "i":I
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    goto :goto_2

    .line 1363
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 1364
    .local v3, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_4

    .line 1365
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1366
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1367
    .restart local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x1

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1368
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    .line 1370
    .local v8, "position":I
    if-eq v8, v7, :cond_3

    .line 1371
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 1372
    .local v9, "top":I
    iget-object v10, v0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetdividerSize(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v10

    add-int/2addr v10, v9

    .line 1373
    .local v10, "bottom":I
    int-to-float v13, v9

    int-to-float v14, v3

    int-to-float v15, v10

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v11}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetdividerPaint(Lcom/google/appinventor/components/runtime/ListView;)Landroid/graphics/Paint;

    move-result-object v16

    const/4 v12, 0x0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1364
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "position":I
    .end local v9    # "top":I
    .end local v10    # "bottom":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1378
    .end local v2    # "childCount":I
    .end local v3    # "width":I
    .end local v4    # "i":I
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    :goto_2
    return-void
.end method

.method public removeLayoutChangeListener()V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1443
    :cond_0
    return-void
.end method
