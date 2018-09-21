.class public Lcom/android/systemui/statusbar/NotificationBackgroundView;
.super Landroid/view/View;
.source "NotificationBackgroundView.java"


# instance fields
.field private mActualHeight:I

.field private mActualWidth:F

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundTop:I

.field private mBottomAmountClips:Z

.field private mBottomIsRounded:Z

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mCornerRadii:[F

.field private mDistanceToTopRoundness:F

.field private final mDontModifyCorners:Z

.field private mDrawableAlpha:I

.field private mExpandAnimationRunning:Z

.field private mIsPressedAllowed:Z

.field private mTintColor:I

.field private mTopAmountRounded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDontModifyCorners:Z

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomIsRounded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualWidth:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v2, v4

    int-to-float v4, v2

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualWidth:F

    add-float/2addr v4, v5

    float-to-int v3, v4

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTopAmountRounded:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDistanceToTopRoundness:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v0, v4

    if-ltz v4, :cond_2

    add-int/2addr v1, v4

    :cond_2
    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method private updateBackgroundRadii()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDontModifyCorners:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    return-void
.end method

.method public getActualHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundTop:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public setActualHeight(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setBackgroundTop(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundTop:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setBottomAmountClips(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomAmountClips:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setCustomBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTintColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->updateBackgroundRadii()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTopAmountRounded:Z

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDistanceToTopRoundness:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDrawableAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualWidth:F

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v1, 0x43

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    nop

    if-eqz p1, :cond_0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAntiAlias(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandAnimationRunning:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawableAlpha:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setDrawableAlpha(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setPressedAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mIsPressedAllowed:Z

    return-void
.end method

.method public setRippleColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRoundness(FF)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpl-float v0, p1, v0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aget v0, v0, v2

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBottomIsRounded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aput p1, v0, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    aput p2, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x6

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCornerRadii:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->updateBackgroundRadii()V

    return-void
.end method

.method public setState([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mIsPressedAllowed:Z

    if-nez v0, :cond_0

    const v0, 0x10100a7

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public setTint(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTintColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
