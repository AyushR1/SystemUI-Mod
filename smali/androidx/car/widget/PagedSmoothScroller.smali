.class public final Landroidx/car/widget/PagedSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "PagedSmoothScroller.java"


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fe66666    # 1.8f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroidx/car/widget/PagedSmoothScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected calculateTimeForDeceleration(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/car/widget/PagedSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/car/widget/PagedSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/car/widget/PagedSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    neg-int v3, v0

    iget-object v4, p0, Landroidx/car/widget/PagedSmoothScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v2, v3, v1, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
