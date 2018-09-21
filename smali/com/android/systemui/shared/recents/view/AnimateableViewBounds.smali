.class public Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;
.super Landroid/view/ViewOutlineProvider;
.source "AnimateableViewBounds.java"


# instance fields
.field protected mAlpha:F

.field protected mClipBounds:Landroid/graphics/Rect;

.field protected mClipRect:Landroid/graphics/Rect;

.field protected mCornerRadius:I

.field protected mLastClipBounds:Landroid/graphics/Rect;

.field protected mSourceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    iput-object p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    iput p2, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mCornerRadius:I

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    return v0
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    iget v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mCornerRadius:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v0, v1

    iget v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mCornerRadius:I

    int-to-float v6, v0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->updateClipBounds()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mAlpha:F

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public setClipBottom(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->updateClipBounds()V

    return-void
.end method

.method protected updateClipBounds()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mSourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mLastClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
