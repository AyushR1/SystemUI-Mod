.class final Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;
.super Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingMoveSmoothScroller"
.end annotation


# instance fields
.field private mPendingMoves:I

.field private final mStaggeredGrid:Z

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;IZ)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    iput p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iput-boolean p3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v0, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez v0, :cond_2

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_3
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method consumePendingMovesAfterLayout()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-gez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->stop()V

    :cond_3
    return-void
.end method

.method consumePendingMovesBeforeLayout()V
    .locals 6

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mStaggeredGrid:Z

    if-nez v0, :cond_8

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int/2addr v1, v2

    :goto_0
    move-object v2, v0

    move v0, v1

    :goto_1
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput v0, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v4, :cond_4

    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    goto :goto_2

    :cond_4
    iget v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :goto_2
    iget v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/2addr v3, v0

    goto :goto_3

    :cond_5
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v3, v0, v3

    :goto_3
    move v0, v3

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    :cond_7
    return-void

    :cond_8
    :goto_5
    return-void
.end method

.method decreasePendingMoves()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    neg-int v1, v1

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    return-void
.end method

.method increasePendingMoves()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    :cond_0
    return-void
.end method

.method protected onStopInternal()V
    .locals 3

    invoke-super {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStopInternal()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method protected updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->mPendingMoves:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->updateActionForInterimTarget(Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    return-void
.end method
