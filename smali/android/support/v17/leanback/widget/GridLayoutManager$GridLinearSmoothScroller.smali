.class abstract Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GridLinearSmoothScroller"
.end annotation


# instance fields
.field mSkipOnStopInternal:Z

.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v1, 0x41f00000    # 30.0f

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_0

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStop()V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStopInternal()V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :cond_2
    return-void
.end method

.method protected onStopInternal()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->getTargetPosition()I

    move-result v2

    iput v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFlag:I

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->access$000(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v0, v0, v2

    sget-object v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v1, v2, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v0, v0, v1

    sget-object v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v1, v1, v2

    :goto_0
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
