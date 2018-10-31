.class public Landroidx/car/widget/PagedSnapHelper;
.super Landroid/support/v7/widget/LinearSnapHelper;
.source "PagedSnapHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/LinearSnapHelper;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/PagedSnapHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static clamp(III)I
    .locals 1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method private getOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/car/widget/PagedSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/car/widget/PagedSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getPercentageVisible(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)F
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lt v2, v0, :cond_0

    if-gt v3, v1, :cond_0

    return v4

    :cond_0
    if-gt v2, v0, :cond_1

    if-lt v3, v1, :cond_1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    return v4

    :cond_1
    if-ge v2, v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    return v4

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    return v4
.end method

.method private getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Landroidx/car/widget/PagedSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method private isValidSnapView(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)Z
    .locals 2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p1, p0, Landroidx/car/widget/PagedSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/car/widget/PagedSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroidx/car/widget/PagedSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    nop

    :cond_1
    aput v2, v0, v1

    return-object v0
.end method

.method public calculateScrollDistance(II)[I
    .locals 11

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/PagedSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/car/widget/PagedSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/car/widget/PagedSnapHelper;->isAtEnd(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    invoke-direct {p0, v1}, Landroidx/car/widget/PagedSnapHelper;->getOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v5

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Landroidx/car/widget/PagedSnapHelper;->getPercentageVisible(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)F

    move-result v7

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_3

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v9

    sub-int/2addr v8, v9

    :cond_3
    neg-int v9, v8

    aget v10, v0, v4

    invoke-static {v10, v9, v8}, Landroidx/car/widget/PagedSnapHelper;->clamp(III)I

    move-result v10

    aput v10, v0, v4

    aget v4, v0, v3

    invoke-static {v4, v9, v8}, Landroidx/car/widget/PagedSnapHelper;->clamp(III)I

    move-result v4

    aput v4, v0, v3

    return-object v0

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected createScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .locals 2

    new-instance v0, Landroidx/car/widget/PagedSmoothScroller;

    iget-object v1, p0, Landroidx/car/widget/PagedSnapHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/car/widget/PagedSmoothScroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/car/widget/PagedSnapHelper;->getOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Landroidx/car/widget/PagedSnapHelper;->isValidSnapView(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    nop

    :cond_1
    return-object v3

    :cond_2
    iget-object v7, v0, Landroidx/car/widget/PagedSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroidx/car/widget/PagedSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_3

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    if-gez v8, :cond_3

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Landroidx/car/widget/PagedSnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v10

    sub-int/2addr v10, v6

    if-ne v9, v10, :cond_4

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    if-eqz v6, :cond_5

    invoke-direct {v0, v8, v4}, Landroidx/car/widget/PagedSnapHelper;->getPercentageVisible(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)F

    move-result v9

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x0

    const v11, 0x7fffffff

    const/4 v12, 0x0

    nop

    :goto_2
    if-ge v5, v2, :cond_7

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-ge v15, v11, :cond_6

    invoke-direct {v0, v13, v4}, Landroidx/car/widget/PagedSnapHelper;->getPercentageVisible(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v16, v15, v16

    if-lez v16, :cond_6

    cmpl-float v16, v15, v12

    if-lez v16, :cond_6

    move v11, v14

    move-object v10, v13

    move v12, v15

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move-object v5, v10

    if-eqz v5, :cond_8

    if-eqz v6, :cond_9

    cmpl-float v13, v9, v12

    if-lez v13, :cond_9

    :cond_8
    move-object v5, v8

    :cond_9
    invoke-direct {v0, v5, v4}, Landroidx/car/widget/PagedSnapHelper;->isValidSnapView(Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object v3, v5

    nop

    :cond_a
    return-object v3
.end method

.method public isAtEnd(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    if-gt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method public isAtStart(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroidx/car/widget/PagedSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/car/widget/PagedSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v3

    :goto_0
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    :goto_2
    return v0
.end method
