.class Lcom/google/android/flexbox/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;,
        Lcom/google/android/flexbox/FlexboxHelper$Order;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mChildrenFrozen:[Z

.field private final mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

.field mIndexToFlexLine:[I

.field mMeasureSpecCache:[J

.field private mMeasuredSizeCache:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/flexbox/FlexContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;",
            "Lcom/google/android/flexbox/FlexLine;",
            "II)V"
        }
    .end annotation

    iput p4, p2, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, p2}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/flexbox/FlexLine;)V

    iput p3, p2, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexItem;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v4

    if-ge v2, v4, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v4

    if-le v2, v4, :cond_1

    const/4 v0, 0x1

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v0, 0x1

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    const/4 v0, 0x1

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    nop

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p2, v5, v4, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6, p2, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    :cond_4
    return-void
.end method

.method private constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    sub-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v2}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    iput v0, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private createOrders(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexItem;

    new-instance v4, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v5

    iput v5, v4, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    iput v1, v4, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private ensureChildrenFrozen(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    array-length v0, v0

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_2
    return-void
.end method

.method private expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_17

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v9, v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    const/4 v0, 0x0

    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int v2, v9, v2

    int-to-float v2, v2

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    div-float v11, v2, v3

    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v2, p5, v2

    iput v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    const/4 v2, 0x0

    if-nez p6, :cond_1

    const/high16 v3, -0x80000000

    iput v3, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v14, v0

    move v15, v2

    move/from16 v16, v3

    :goto_0
    move v0, v4

    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v0, v2, :cond_14

    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v2, v0

    iget-object v3, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3, v2}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    nop

    move/from16 v13, p1

    move/from16 v9, p2

    move/from16 v27, v10

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v5

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v6, :cond_3

    move/from16 v13, p1

    move/from16 v22, v5

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v6, :cond_4

    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v22, v5

    aget-wide v5, v6, v2

    invoke-virtual {v7, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v21

    move/from16 v5, v21

    goto :goto_1

    :cond_4
    move/from16 v22, v5

    move/from16 v5, v21

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v1, v2

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v6

    :cond_5
    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_a

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v1

    const/4 v12, 0x0

    cmpl-float v1, v1, v12

    if-lez v1, :cond_a

    int-to-float v1, v5

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v1, v12

    iget v12, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v0, v12, :cond_6

    add-float v1, v1, v16

    const/16 v16, 0x0

    :cond_6
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v13

    if-le v12, v13, :cond_7

    const/4 v13, 0x1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v12

    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v14, v2

    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v17

    sub-float v14, v14, v17

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move/from16 v23, v5

    move/from16 v24, v6

    move v14, v13

    goto :goto_3

    :cond_7
    int-to-float v13, v12

    sub-float v13, v1, v13

    add-float v13, v16, v13

    move/from16 v23, v5

    move/from16 v24, v6

    float-to-double v5, v13

    cmpl-double v5, v5, v19

    if-lez v5, :cond_8

    add-int/lit8 v12, v12, 0x1

    float-to-double v5, v13

    sub-double v5, v5, v19

    double-to-float v5, v5

    :goto_2
    move/from16 v16, v5

    goto :goto_3

    :cond_8
    float-to-double v5, v13

    cmpg-double v5, v5, v17

    if-gez v5, :cond_9

    add-int/lit8 v12, v12, -0x1

    float-to-double v5, v13

    add-double v5, v5, v19

    double-to-float v5, v5

    goto :goto_2

    :cond_9
    move/from16 v16, v13

    :goto_3
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v13, p1

    invoke-direct {v7, v13, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v12, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    invoke-direct {v7, v2, v5, v6, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move/from16 v25, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v24, v17

    move/from16 v23, v18

    goto :goto_4

    :cond_a
    move/from16 v13, p1

    move/from16 v23, v5

    move/from16 v24, v6

    :goto_4
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    add-int v1, v24, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v6

    add-int v6, v23, v6

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v12

    add-int/2addr v6, v12

    add-int/2addr v5, v6

    iput v5, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v9, p2

    move/from16 v27, v10

    goto/16 :goto_a

    :cond_b
    move/from16 v13, p1

    move/from16 v22, v5

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v5, :cond_c

    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v5, v5, v2

    invoke-virtual {v7, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v6, :cond_d

    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v26, v5

    aget-wide v5, v6, v2

    invoke-virtual {v7, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v5

    move/from16 v26, v5

    goto :goto_6

    :cond_d
    move/from16 v26, v5

    :goto_6
    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_12

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    int-to-float v5, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v5, v12

    iget v12, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v21, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v0, v12, :cond_e

    add-float v5, v5, v16

    const/16 v16, 0x0

    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v6

    if-le v12, v6, :cond_f

    const/4 v6, 0x1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v12

    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v14, v2

    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v17

    sub-float v14, v14, v17

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    move v14, v6

    move/from16 v27, v10

    goto :goto_8

    :cond_f
    int-to-float v6, v12

    sub-float v6, v5, v6

    add-float v6, v16, v6

    move/from16 v27, v10

    float-to-double v9, v6

    cmpl-double v9, v9, v19

    if-lez v9, :cond_11

    add-int/lit8 v12, v12, 0x1

    float-to-double v9, v6

    sub-double v9, v9, v19

    double-to-float v6, v9

    :cond_10
    :goto_7
    move/from16 v16, v6

    goto :goto_8

    :cond_11
    float-to-double v9, v6

    cmpg-double v9, v9, v17

    if-gez v9, :cond_10

    add-int/lit8 v12, v12, -0x1

    float-to-double v9, v6

    add-double v9, v9, v19

    double-to-float v6, v9

    goto :goto_7

    :goto_8
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v9, p2

    invoke-direct {v7, v9, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v6

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v12, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v3, v10, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    invoke-direct {v7, v2, v10, v6, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move/from16 v28, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v1, v28

    goto :goto_9

    :cond_12
    move/from16 v9, p2

    move/from16 v27, v10

    :goto_9
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int v5, v26, v5

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v10

    add-int/2addr v10, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    nop

    move v1, v5

    :goto_a
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v15, v1

    goto :goto_b

    :cond_13
    move/from16 v13, p1

    move/from16 v9, p2

    move/from16 v27, v10

    :goto_b
    add-int/lit8 v4, v0, 0x1

    move/from16 v10, v27

    const/4 v1, 0x0

    move/from16 v9, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v13, p1

    move/from16 v9, p2

    move/from16 v27, v10

    if-eqz v14, :cond_15

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v10, v27

    if-eq v10, v0, :cond_16

    const/4 v6, 0x1

    move-object v0, v7

    move v1, v13

    move v2, v9

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_c

    :cond_15
    move/from16 v10, v27

    :cond_16
    :goto_c
    return-void

    :cond_17
    :goto_d
    move/from16 v13, p1

    move/from16 v9, p2

    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method private getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v0

    return v0
.end method

.method private getPaddingEndCross(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method private getPaddingEndMain(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method private getPaddingStartCross(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method private getPaddingStartMain(Z)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z
    .locals 1

    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->isWrapBefore()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, p1, p7, p8}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result v0

    if-lez v0, :cond_3

    add-int/2addr p5, v0

    :cond_3
    add-int v3, p4, p5

    if-ge p3, v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method private shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 31

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    iget v10, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_17

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-le v9, v0, :cond_0

    move/from16 v9, p1

    move v11, v10

    move/from16 v10, p2

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x0

    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    div-float v11, v2, v3

    const/4 v2, 0x0

    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    add-int v3, p5, v3

    iput v3, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    const/4 v3, 0x0

    if-nez p6, :cond_1

    const/high16 v4, -0x80000000

    iput v4, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :cond_1
    const/4 v4, 0x0

    move v14, v0

    move v15, v2

    move v6, v3

    :goto_0
    move v0, v4

    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    if-ge v0, v2, :cond_14

    iget v2, v8, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v2, v0

    iget-object v3, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3, v2}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    nop

    move/from16 v9, p1

    move/from16 v25, v10

    move/from16 v28, v11

    move/from16 v10, p2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    iget-object v5, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v5

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/high16 v21, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz v5, :cond_b

    if-ne v5, v1, :cond_3

    move/from16 v9, p1

    move/from16 v25, v10

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v1, v2

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v22

    :cond_4
    move/from16 v1, v22

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v13, :cond_5

    iget-object v13, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    move/from16 v23, v12

    aget-wide v12, v13, v2

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v12

    move/from16 v23, v12

    goto :goto_1

    :cond_5
    move/from16 v23, v12

    :goto_1
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v12, v12, v2

    if-nez v12, :cond_a

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    int-to-float v12, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v13

    mul-float/2addr v13, v11

    sub-float/2addr v12, v13

    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v22, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v0, v13, :cond_6

    add-float/2addr v12, v15

    const/4 v15, 0x0

    :cond_6
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    move/from16 v24, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v1

    if-ge v13, v1, :cond_7

    const/4 v1, 0x1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v13

    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v17, 0x1

    aput-boolean v17, v14, v2

    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v17

    sub-float v14, v14, v17

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v14, v1

    move/from16 v25, v10

    goto :goto_2

    :cond_7
    int-to-float v1, v13

    sub-float v1, v12, v1

    add-float/2addr v15, v1

    move/from16 v25, v10

    float-to-double v9, v15

    cmpl-double v1, v9, v19

    if-lez v1, :cond_8

    add-int/lit8 v13, v13, 0x1

    sub-float v15, v15, v21

    goto :goto_2

    :cond_8
    float-to-double v9, v15

    cmpg-double v1, v9, v17

    if-gez v1, :cond_9

    add-int/lit8 v13, v13, -0x1

    add-float v15, v15, v21

    :cond_9
    :goto_2
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v9, p1

    invoke-direct {v7, v9, v4, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildWidthMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    nop

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v3, v1, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-direct {v7, v2, v1, v10, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move/from16 v26, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    move/from16 v24, v17

    goto :goto_3

    :cond_a
    move/from16 v9, p1

    move/from16 v24, v1

    move/from16 v25, v10

    :goto_3
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    add-int v1, v23, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v10

    add-int/2addr v1, v10

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v10

    add-int v10, v24, v10

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v6, v10

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v10, p2

    move/from16 v28, v11

    goto/16 :goto_7

    :cond_b
    move/from16 v9, p1

    move/from16 v25, v10

    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v10, :cond_c

    iget-object v10, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v10, v2

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v1

    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v12, :cond_d

    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v12, v12, v2

    invoke-virtual {v7, v12, v13}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v10

    :cond_d
    iget-object v12, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    aget-boolean v12, v12, v2

    if-nez v12, :cond_12

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_12

    int-to-float v12, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v16

    mul-float v16, v16, v11

    sub-float v12, v12, v16

    iget v13, v8, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v0, v13, :cond_e

    add-float/2addr v12, v15

    const/4 v15, 0x0

    :cond_e
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    move/from16 v27, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v1

    if-ge v13, v1, :cond_f

    const/4 v1, 0x1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v13

    iget-object v14, v7, Lcom/google/android/flexbox/FlexboxHelper;->mChildrenFrozen:[Z

    const/16 v16, 0x1

    aput-boolean v16, v14, v2

    iget v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v16

    sub-float v14, v14, v16

    iput v14, v8, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    move v14, v1

    move/from16 v29, v10

    move/from16 v28, v11

    goto :goto_5

    :cond_f
    int-to-float v1, v13

    sub-float v1, v12, v1

    add-float/2addr v15, v1

    move/from16 v29, v10

    move/from16 v28, v11

    float-to-double v10, v15

    cmpl-double v1, v10, v19

    if-lez v1, :cond_10

    add-int/lit8 v13, v13, 0x1

    sub-float v15, v15, v21

    goto :goto_5

    :cond_10
    float-to-double v10, v15

    cmpg-double v1, v10, v17

    if-gez v1, :cond_11

    add-int/lit8 v13, v13, -0x1

    add-float v15, v15, v21

    :cond_11
    :goto_5
    iget v1, v8, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    move/from16 v10, p2

    invoke-direct {v7, v10, v4, v1}, Lcom/google/android/flexbox/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/flexbox/FlexItem;I)I

    move-result v1

    nop

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v3, v11, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    invoke-direct {v7, v2, v11, v1, v3}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move/from16 v30, v1

    iget-object v1, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v2, v3}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    goto :goto_6

    :cond_12
    move/from16 v27, v1

    move/from16 v29, v10

    move/from16 v28, v11

    move/from16 v10, p2

    move/from16 v16, v27

    move/from16 v17, v29

    :goto_6
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    add-int v1, v17, v1

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v7, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v3}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v11

    add-int/2addr v1, v11

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v11

    add-int v11, v16, v11

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    nop

    :goto_7
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    move v6, v1

    goto :goto_8

    :cond_13
    move/from16 v9, p1

    move/from16 v25, v10

    move/from16 v28, v11

    move/from16 v10, p2

    :goto_8
    add-int/lit8 v4, v0, 0x1

    move/from16 v10, v25

    move/from16 v11, v28

    const/4 v1, 0x0

    move/from16 v9, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v9, p1

    move/from16 v25, v10

    move/from16 v28, v11

    move/from16 v10, p2

    if-eqz v14, :cond_16

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    move/from16 v11, v25

    if-eq v11, v0, :cond_15

    const/4 v12, 0x1

    move-object v0, v7

    move v1, v9

    move v2, v10

    move-object v3, v8

    move/from16 v4, p4

    move/from16 v5, p5

    move v13, v6

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    goto :goto_9

    :cond_15
    move v13, v6

    goto :goto_9

    :cond_16
    move v13, v6

    move/from16 v11, v25

    :goto_9
    return-void

    :cond_17
    move/from16 v9, p1

    move v11, v10

    move/from16 v10, p2

    :goto_a
    return-void
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexboxHelper$Order;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexboxHelper$Order;

    iget v4, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    aput v4, v0, v1

    iget v4, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    iget v5, v3, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    invoke-virtual {p3, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private stretchViewHorizontally(Landroid/view/View;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v2, v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->extractHigherInt(J)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p3, v3, v4, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v1

    sub-int v1, p2, v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2, p1}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMinHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMaxHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    aget-wide v2, v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->extractLowerInt(J)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p3, v4, v3, p1}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    return-void
.end method

.method private updateMeasureCache(IIILandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v1

    aput-wide v1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/FlexboxHelper;->makeCombinedLong(II)J

    move-result-wide v1

    aput-wide v1, v0, p1

    :cond_1
    return-void
.end method


# virtual methods
.method calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p6

    iget-object v0, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    const/4 v0, 0x0

    if-nez p7, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p7

    :goto_0
    move-object v7, v1

    iput-object v7, v10, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    const/4 v6, -0x1

    if-ne v13, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v16

    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v17

    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v18

    invoke-direct {v9, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v19

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/16 v20, 0x0

    new-instance v6, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v6}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move/from16 v5, p5

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int v4, v16, v17

    iput v4, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v4

    move/from16 v25, v1

    move/from16 v24, v2

    move v1, v0

    move v0, v5

    :goto_2
    move v2, v0

    if-ge v2, v4, :cond_15

    iget-object v0, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0, v2}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {v9, v2, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-direct {v9, v7, v6, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v10, 0x8

    if-ne v5, v10, :cond_4

    iget v5, v6, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    const/4 v10, 0x1

    add-int/2addr v5, v10

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    iget v5, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/2addr v5, v10

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    invoke-direct {v9, v2, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {v9, v7, v6, v2, v3}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    :cond_3
    :goto_3
    move v0, v2

    move v11, v3

    move v3, v4

    move/from16 v21, v8

    move/from16 v31, v15

    const/4 v8, -0x1

    const/16 v23, 0x1

    const/16 v27, 0x0

    move-object v15, v7

    move v7, v13

    move/from16 v13, p4

    goto/16 :goto_d

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v5

    move/from16 v28, v4

    const/4 v4, 0x4

    if-ne v5, v4, :cond_5

    iget-object v4, v6, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v4

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v5

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v5, v5, v26

    if-eqz v5, :cond_6

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v15, v5, :cond_6

    int-to-float v5, v8

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexBasisPercent()F

    move-result v26

    mul-float v5, v5, v26

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_6
    move v5, v4

    if-eqz v14, :cond_7

    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v26, v16, v17

    move-object/from16 v29, v7

    const/4 v7, 0x1

    invoke-direct {v9, v10, v7}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v26, v26, v23

    invoke-direct {v9, v10, v7}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v7, v26, v23

    invoke-interface {v4, v11, v7, v5}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v4

    iget-object v7, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v23, v18, v19

    const/4 v13, 0x1

    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v23, v23, v26

    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v26

    add-int v23, v23, v26

    move/from16 v30, v8

    add-int v8, v23, v3

    move/from16 v31, v15

    invoke-direct {v9, v10, v13}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    invoke-interface {v7, v12, v8, v15}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/view/View;->measure(II)V

    invoke-direct {v9, v2, v4, v7, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v15, v7

    const/4 v8, 0x0

    :goto_4
    move v7, v4

    goto :goto_5

    :cond_7
    move-object/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v15

    const/4 v13, 0x1

    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v7, v18, v19

    const/4 v8, 0x0

    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    add-int/2addr v7, v15

    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    add-int/2addr v7, v15

    add-int/2addr v7, v3

    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v15

    invoke-interface {v4, v12, v7, v15}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v7

    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    add-int v15, v16, v17

    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v22

    add-int v15, v15, v22

    invoke-direct {v9, v10, v8}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v22

    add-int v15, v15, v22

    invoke-interface {v4, v11, v15, v5}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v4

    invoke-virtual {v0, v7, v4}, Landroid/view/View;->measure(II)V

    invoke-direct {v9, v2, v7, v4, v0}, Lcom/google/android/flexbox/FlexboxHelper;->updateMeasureCache(IIILandroid/view/View;)V

    move v15, v7

    goto :goto_4

    :goto_5
    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v2, v0}, Lcom/google/android/flexbox/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    invoke-direct {v9, v0, v2}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    nop

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v1, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    iget v4, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-direct {v9, v0, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v1

    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v1, v1, v23

    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v23

    add-int v23, v1, v23

    move-object v1, v0

    move-object v0, v9

    move-object/from16 v32, v1

    move/from16 v33, v2

    move/from16 v2, v31

    move v13, v3

    move/from16 v3, v30

    move/from16 v34, v15

    move/from16 v11, v28

    const/4 v15, 0x1

    move/from16 v26, v5

    move/from16 v27, v8

    move/from16 v5, v23

    move-object v8, v6

    const/4 v15, -0x1

    move-object v6, v10

    move/from16 v35, v11

    move-object/from16 v15, v29

    move v11, v7

    move/from16 v7, v33

    move/from16 v36, v11

    move/from16 v21, v30

    move-object v11, v8

    move/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;II)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v11}, Lcom/google/android/flexbox/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-lez v0, :cond_9

    move/from16 v0, v33

    if-lez v0, :cond_8

    add-int/lit8 v5, v0, -0x1

    goto :goto_6

    :cond_8
    move/from16 v5, v27

    :goto_6
    invoke-direct {v9, v15, v11, v5, v13}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int v3, v13, v1

    goto :goto_7

    :cond_9
    move/from16 v0, v33

    move v3, v13

    :goto_7
    if-eqz v14, :cond_b

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    iget-object v1, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v2, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v2

    iget-object v4, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getHeight()I

    move-result v4

    invoke-interface {v1, v12, v2, v4}, Lcom/google/android/flexbox/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    move-object/from16 v2, v32

    move/from16 v4, v36

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-direct {v9, v2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_9

    :cond_a
    move-object/from16 v2, v32

    move/from16 v4, v36

    goto :goto_8

    :cond_b
    move-object/from16 v2, v32

    move/from16 v4, v36

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c

    iget-object v1, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    iget-object v5, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v5

    iget-object v6, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getWidth()I

    move-result v6

    invoke-interface {v1, v12, v5, v6}, Lcom/google/android/flexbox/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    invoke-virtual {v2, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-direct {v9, v2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v1, v34

    :goto_9
    new-instance v5, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v5}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    move-object v6, v5

    const/4 v5, 0x1

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int v5, v16, v17

    iput v5, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iput v0, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    const/4 v5, 0x0

    const/high16 v24, -0x80000000

    move/from16 v34, v1

    move v13, v3

    goto :goto_a

    :cond_d
    move-object/from16 v2, v32

    move/from16 v0, v33

    move/from16 v4, v36

    iget v1, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v11, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    add-int/lit8 v20, v20, 0x1

    move-object v6, v11

    move/from16 v5, v20

    :goto_a
    move/from16 v1, v24

    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v3, :cond_e

    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    aput v7, v3, v0

    :cond_e
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    invoke-direct {v9, v2, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v7

    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexGrow()F

    move-result v7

    add-float/2addr v3, v7

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getFlexShrink()F

    move-result v7

    add-float/2addr v3, v7

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3, v2, v0, v5, v6}, Lcom/google/android/flexbox/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V

    nop

    invoke-direct {v9, v2, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v3

    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v3, v7

    invoke-direct {v9, v10, v14}, Lcom/google/android/flexbox/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/flexbox/FlexItem;Z)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v7, v2}, Lcom/google/android/flexbox/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    if-eqz v14, :cond_10

    iget-object v3, v9, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_f

    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    goto :goto_b

    :cond_f
    iget v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    :cond_10
    :goto_b
    move/from16 v3, v35

    invoke-direct {v9, v0, v3, v6}, Lcom/google/android/flexbox/FlexboxHelper;->isLastFlexItem(IILcom/google/android/flexbox/FlexLine;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-direct {v9, v15, v6, v0, v13}, Lcom/google/android/flexbox/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/flexbox/FlexLine;II)V

    iget v7, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/2addr v13, v7

    :cond_11
    move/from16 v7, p6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_12

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/16 v23, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexLine;

    iget v11, v11, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    if-lt v11, v7, :cond_13

    if-lt v0, v7, :cond_13

    if-nez v25, :cond_13

    invoke-virtual {v6}, Lcom/google/android/flexbox/FlexLine;->getCrossSize()I

    move-result v11

    neg-int v11, v11

    const/4 v13, 0x1

    move/from16 v25, v13

    goto :goto_c

    :cond_12
    const/16 v23, 0x1

    :cond_13
    move v11, v13

    :goto_c
    move/from16 v13, p4

    if-le v11, v13, :cond_14

    if-eqz v25, :cond_14

    nop

    move/from16 v24, v1

    move/from16 v20, v5

    move/from16 v1, v22

    goto :goto_e

    :cond_14
    move/from16 v24, v1

    move/from16 v20, v5

    move/from16 v1, v22

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p5

    move v4, v3

    move v13, v7

    move v3, v11

    move-object v7, v15

    move/from16 v8, v21

    move/from16 v15, v31

    move-object/from16 v10, p1

    move/from16 v11, p2

    goto/16 :goto_2

    :cond_15
    move-object v11, v6

    move/from16 v21, v8

    move/from16 v31, v15

    move-object v15, v7

    move v7, v13

    move v13, v3

    move v3, v4

    move v11, v13

    :goto_e
    move-object/from16 v0, p1

    iput v1, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateHorizontalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateHorizontalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;II)V
    .locals 8

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method calculateVerticalFlexLinesToIndex(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;",
            "IIII",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->calculateFlexLines(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    return-void
.end method

.method clearFlexLines(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;I)V"
        }
    .end annotation

    nop

    nop

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le p2, v2, :cond_2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v3, p2, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    if-le p2, v1, :cond_3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v4, p2, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    :goto_2
    return-void
.end method

.method createReorderedIndices(Landroid/util/SparseIntArray;)[I
    .locals 3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v2

    return-object v2
.end method

.method createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 7

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/flexbox/FlexboxHelper$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxHelper$Order;-><init>(Lcom/google/android/flexbox/FlexboxHelper$1;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of v4, p3, Lcom/google/android/flexbox/FlexItem;

    if-eqz v4, :cond_0

    move-object v4, p3

    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v4

    iput v4, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    goto :goto_0

    :cond_0
    iput v3, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->order:I

    :goto_0
    const/4 v4, -0x1

    if-eq p2, v4, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v4

    if-ge p2, v4, :cond_2

    iput p2, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    move v4, p2

    :goto_1
    if-ge v4, v0, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexboxHelper$Order;

    iget v6, v5, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    goto :goto_3

    :cond_3
    :goto_2
    iput v0, v2, Lcom/google/android/flexbox/FlexboxHelper$Order;->index:I

    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3, v1, p4}, Lcom/google/android/flexbox/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v3

    return-object v3
.end method

.method determineCrossSize(III)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v2}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid flex direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    goto :goto_0

    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    nop

    :goto_0
    nop

    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_e

    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v6}, Lcom/google/android/flexbox/FlexContainer;->getSumOfCrossSize()I

    move-result v6

    add-int v6, v6, p3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/flexbox/FlexLine;

    sub-int v8, v4, p3

    iput v8, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    goto/16 :goto_8

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x2

    if-lt v7, v10, :cond_e

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v7}, Lcom/google/android/flexbox/FlexContainer;->getAlignContent()I

    move-result v7

    const/high16 v12, 0x3f800000    # 1.0f

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_2
    if-lt v6, v4, :cond_1

    goto/16 :goto_8

    :cond_1
    sub-int v7, v4, v6

    int-to-float v7, v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    :goto_1
    if-ge v10, v13, :cond_5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/flexbox/FlexLine;

    iget v15, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v11, v16, -0x1

    if-ne v10, v11, :cond_2

    add-float/2addr v15, v8

    const/4 v8, 0x0

    :cond_2
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v9, v11

    sub-float v9, v15, v9

    add-float/2addr v8, v9

    cmpl-float v9, v8, v12

    if-lez v9, :cond_3

    add-int/lit8 v11, v11, 0x1

    sub-float/2addr v8, v12

    goto :goto_2

    :cond_3
    const/high16 v9, -0x40800000    # -1.0f

    cmpg-float v16, v8, v9

    if-gez v16, :cond_4

    add-int/lit8 v11, v11, -0x1

    add-float/2addr v8, v12

    :cond_4
    :goto_2
    iput v11, v14, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    goto/16 :goto_8

    :pswitch_3
    if-lt v6, v4, :cond_6

    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-direct {v0, v5, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_6
    sub-int v7, v4, v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v8, v10

    div-int/2addr v7, v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v10}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    iput v7, v10, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/flexbox/FlexLine;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v11, v9}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto/16 :goto_8

    :pswitch_4
    if-lt v6, v4, :cond_8

    goto/16 :goto_8

    :cond_8
    sub-int v7, v4, v6

    int-to-float v7, v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v9, v8

    div-float/2addr v7, v9

    const/4 v9, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    :goto_4
    if-ge v13, v14, :cond_d

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/flexbox/FlexLine;

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    const/16 v18, 0x1

    add-int/lit8 v12, v16, -0x1

    if-eq v13, v12, :cond_c

    new-instance v12, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v12}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v1, v16, -0x2

    if-ne v13, v1, :cond_9

    add-float v1, v7, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    nop

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    :goto_5
    iget v1, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    int-to-float v1, v1

    sub-float v1, v7, v1

    add-float/2addr v9, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v16, v9, v1

    if-lez v16, :cond_a

    iget v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    sub-float/2addr v9, v1

    goto :goto_6

    :cond_a
    const/16 v16, 0x1

    const/high16 v10, -0x40800000    # -1.0f

    cmpg-float v17, v9, v10

    if-gez v17, :cond_b

    iget v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    add-float/2addr v9, v1

    :cond_b
    :goto_6
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move v12, v1

    const/4 v10, 0x2

    goto :goto_4

    :cond_d
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1, v11}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto :goto_8

    :pswitch_5
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-direct {v0, v5, v4, v6}, Lcom/google/android/flexbox/FlexboxHelper;->constructFlexLinesForAlignContentCenter(Ljava/util/List;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Lcom/google/android/flexbox/FlexContainer;->setFlexLines(Ljava/util/List;)V

    goto :goto_8

    :pswitch_6
    sub-int v1, v4, v6

    new-instance v7, Lcom/google/android/flexbox/FlexLine;

    invoke-direct {v7}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    iput v1, v7, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-interface {v5, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    nop

    :cond_e
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method determineMainSize(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->determineMainSize(III)V

    return-void
.end method

.method determineMainSize(III)V
    .locals 18

    move-object/from16 v13, p0

    move/from16 v14, p3

    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {v13, v0}, Lcom/google/android/flexbox/FlexboxHelper;->ensureChildrenFrozen(I)V

    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt v14, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v15

    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flex direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    :goto_0
    iget-object v3, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingTop()I

    move-result v3

    iget-object v4, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :pswitch_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v0, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getLargestMainSize()I

    move-result v1

    :goto_1
    iget-object v3, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getPaddingLeft()I

    move-result v3

    iget-object v4, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    nop

    :goto_2
    move v5, v3

    move v12, v1

    const/4 v0, 0x0

    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v1, :cond_3

    iget-object v1, v13, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v0, v1, v14

    :cond_3
    move/from16 v16, v0

    iget-object v0, v13, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v11

    move/from16 v0, v16

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move v10, v0

    :goto_3
    move v9, v1

    if-ge v10, v9, :cond_5

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    iget v0, v8, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    if-ge v0, v12, :cond_4

    const/4 v6, 0x0

    move-object v0, v13

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v8

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/flexbox/FlexboxHelper;->expandFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    move v2, v9

    move v3, v10

    move-object v4, v11

    move/from16 v17, v12

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    move-object v6, v13

    move/from16 v7, p1

    move-object v1, v8

    move/from16 v8, p2

    move v2, v9

    move-object v9, v1

    move v3, v10

    move v10, v12

    move-object v4, v11

    move v11, v5

    move/from16 v17, v12

    move v12, v0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/flexbox/FlexboxHelper;->shrinkFlexItems(IILcom/google/android/flexbox/FlexLine;IIZ)V

    :goto_4
    add-int/lit8 v10, v3, 0x1

    move v1, v2

    move-object v11, v4

    move/from16 v12, v17

    goto :goto_3

    :cond_5
    move-object v4, v11

    move/from16 v17, v12

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method ensureIndexToFlexLine(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, v0

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    :cond_3
    :goto_2
    return-void
.end method

.method ensureMeasureSpecCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v0, v0

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasureSpecCache:[J

    :cond_3
    :goto_2
    return-void
.end method

.method ensureMeasuredSizeCache(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    if-nez v0, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    array-length v0, v0

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mMeasuredSizeCache:[J

    :cond_3
    :goto_2
    return-void
.end method

.method extractHigherInt(J)I
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method extractLowerInt(J)I
    .locals 1

    long-to-int v0, p1

    return v0
.end method

.method isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4, v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    move-result v6

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_1

    iget v3, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v4, p4, v3

    add-int v5, p6, v3

    invoke-virtual {p1, p3, v4, p5, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_1
    iget v3, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v4, p4, v3

    sub-int v5, p6, v3

    invoke-virtual {p1, p3, v4, p5, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v3

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v5}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v5

    if-eq v5, v3, :cond_2

    add-int v3, p4, v4

    add-int v5, p4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, p3, v3, p5, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    sub-int v3, p4, v4

    sub-int v5, p4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, p3, v3, p5, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_3

    add-int v3, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, p4, v2

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    sub-int v3, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/flexbox/FlexContainer;->getFlexWrap()I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v3

    add-int/2addr v3, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v4, p6

    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v3

    sub-int v3, p4, v3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginBottom()I

    move-result v4

    sub-int v4, p6, v4

    invoke-virtual {p1, p3, v3, p5, v4}, Landroid/view/View;->layout(IIII)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v1

    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    nop

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    if-nez p3, :cond_1

    add-int v5, p4, v4

    add-int v6, p6, v4

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    sub-int v5, p4, v4

    sub-int v6, p6, v4

    invoke-virtual {p1, v5, p5, v6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :pswitch_1
    if-nez p3, :cond_2

    add-int v3, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, p6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    sub-int v3, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, p6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :pswitch_2
    if-nez p3, :cond_3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v3

    add-int/2addr v3, p4

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginLeft()I

    move-result v4

    add-int/2addr v4, p6

    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v3

    sub-int v3, p4, v3

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->getMarginRight()I

    move-result v4

    sub-int v4, p6, v4

    invoke-virtual {p1, v3, p5, v4, p7}, Landroid/view/View;->layout(IIII)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method makeCombinedLong(II)J
    .locals 6

    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method stretchViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViews(I)V

    return-void
.end method

.method stretchViews(I)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/flexbox/FlexContainer;->getFlexDirection()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getAlignItems()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mIndexToFlexLine:[I

    aget v1, v3, p1

    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    move v4, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/flexbox/FlexLine;

    const/4 v7, 0x0

    iget v8, v6, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    :goto_1
    if-ge v7, v8, :cond_6

    iget v9, v6, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    add-int/2addr v9, v7

    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10}, Lcom/google/android/flexbox/FlexContainer;->getFlexItemCount()I

    move-result v10

    if-lt v7, v10, :cond_2

    goto :goto_2

    :cond_2
    iget-object v10, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v10, v9}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->getAlignSelf()I

    move-result v12

    if-eq v12, v2, :cond_4

    goto :goto_2

    :cond_4
    packed-switch v0, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid flex direction: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget v12, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, v10, v12, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_2

    :pswitch_1
    iget v12, v6, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-direct {p0, v10, v12, v9}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    nop

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/flexbox/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    iget-object v3, v2, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxHelper;->mFlexContainer:Lcom/google/android/flexbox/FlexContainer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/google/android/flexbox/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v5

    packed-switch v0, :pswitch_data_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid flex direction: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    iget v6, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewHorizontally(Landroid/view/View;II)V

    goto :goto_5

    :pswitch_3
    iget v6, v2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/flexbox/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    nop

    :goto_5
    goto :goto_4

    :cond_9
    goto :goto_3

    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
