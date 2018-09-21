.class public abstract Lcom/android/systemui/statusbar/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "StackScrollerDecorView.java"


# instance fields
.field protected mContent:Landroid/view/View;

.field private mContentAnimating:Z

.field private final mContentVisibilityEndRunnable:Ljava/lang/Runnable;

.field private mContentVisible:Z

.field private mDuration:I

.field private mIsSecondaryVisible:Z

.field private mIsVisible:Z

.field protected mSecondaryView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    const/16 v0, 0x104

    iput v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mDuration:I

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$StackScrollerDecorView$Z-vSQgmaL3Ks4ALN1cxIjM1burs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StackScrollerDecorView$Z-vSQgmaL3Ks4ALN1cxIjM1burs;-><init>(Lcom/android/systemui/statusbar/StackScrollerDecorView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/StackScrollerDecorView;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->notifyHeightChanged(Z)V

    :cond_0
    return-void
.end method

.method private setContentVisible(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentAnimating:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_4

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected abstract findContentView()Landroid/view/View;
.end method

.method protected abstract findSecondaryView()Landroid/view/View;
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isContentVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    return v0
.end method

.method isSecondaryVisible()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->findContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisible(ZZ)V

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public performAddAnimation(JJZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(Z)V

    return-void
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(Z)V

    return-void
.end method

.method public setContentVisible(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(ZZ)V

    return-void
.end method

.method public setSecondaryVisible(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->notifyHeightChanged(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(ZZ)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisibility(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->notifyHeightChanged(Z)V

    :cond_3
    :goto_2
    return-void
.end method
