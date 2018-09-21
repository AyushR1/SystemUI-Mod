.class public Lcom/android/systemui/recents/views/TaskStackViewScroller;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    }
.end annotation


# static fields
.field private static final STACK_SCROLL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/recents/views/TaskStackViewScroller;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

.field mContext:Landroid/content/Context;

.field mFinalAnimatedScroll:F

.field final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field mFlingDownScrollP:F

.field mFlingDownY:I

.field mLastDeltaP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field mScrollAnimator:Landroid/animation/ObjectAnimator;

.field mScroller:Landroid/widget/OverScroller;

.field mStackScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;

    const-string v1, "stackScroll"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const v1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFriction(F)V

    :cond_0
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-void
.end method

.method private animateScroll(FLandroid/animation/ObjectAnimator;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;-><init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method animateBoundScroll()Landroid/animation/ObjectAnimator;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object v2
.end method

.method animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLandroid/animation/ObjectAnimator;Ljava/lang/Runnable;)V

    return-void
.end method

.method animateScroll(FILjava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method animateScroll(FLjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    return-void
.end method

.method public boundScroll()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method computeScroll()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownY:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(II)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "TaskStackViewScroller"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " stackScroll:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public fling(FIIIIII)V
    .locals 14

    move-object v0, p0

    move v1, p1

    iput v1, v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    move/from16 v2, p2

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownY:I

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p7

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method getBoundedStackScroll(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {p1, v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method getScrollAmountOutOfBounds(F)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getScrollVelocity()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getStackScroll()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return v0
.end method

.method isScrollOutOfBounds()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    return-void
.end method

.method resetDeltaScroll()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    return-void
.end method

.method scrollToClosestTask(I)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v8

    neg-int v9, p1

    const/4 v12, 0x0

    move-object v5, p0

    move v10, v3

    move v11, v13

    invoke-virtual/range {v5 .. v12}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v1, v5, v6, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getClosestTaskP(FII)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v8, 0x1

    aput v6, v7, v8

    invoke-static {v7}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, p1

    invoke-virtual {v8, v7, v9, v10, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v9

    invoke-virtual {p0, v6, v8, v9, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v1, v0, v3, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getClosestTaskP(FII)F

    move-result v3

    const/16 v5, 0x12c

    sget-object v6, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v3, v5, v6, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public setDeltaStackScroll(FF)F
    .locals 4

    add-float v0, p1, p2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFocusStateOnScroll(FFF)F

    move-result v1

    sget-object v2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    sub-float v2, v1, v0

    return v2
.end method

.method public setStackScroll(F)V
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method public setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-interface {v1, v0, v2, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onStackScrollChanged(FFLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public setStackScrollToInitialState()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method stopBoundScrollAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    return-void
.end method

.method stopScroller()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_0
    return-void
.end method
