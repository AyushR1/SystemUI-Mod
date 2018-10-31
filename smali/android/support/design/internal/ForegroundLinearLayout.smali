.class public Landroid/support/design/internal/ForegroundLinearLayout;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ForegroundLinearLayout.java"


# instance fields
.field private foreground:Landroid/graphics/drawable/Drawable;

.field foregroundBoundsChanged:Z

.field private foregroundGravity:I

.field protected mForegroundInPadding:Z

.field private final overlayBounds:Landroid/graphics/Rect;

.field private final selfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/ForegroundLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    const/16 v0, 0x77

    iput v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    sget-object v2, Landroid/support/design/internal/R$styleable;->ForegroundLinearLayout:[I

    invoke-static {p1, p2, v2, p3, v1}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/design/internal/R$styleable;->ForegroundLinearLayout_android_foregroundGravity:I

    iget v3, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    sget v2, Landroid/support/design/internal/R$styleable;->ForegroundLinearLayout_android_foreground:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/design/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v3, Landroid/support/design/internal/R$styleable;->ForegroundLinearLayout_foregroundInsidePadding:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    iget-object v2, p0, Landroid/support/design/internal/ForegroundLinearLayout;->selfBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/design/internal/ForegroundLinearLayout;->overlayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-boolean v6, p0, Landroid/support/design/internal/ForegroundLinearLayout;->mForegroundInPadding:Z

    if-eqz v6, :cond_0

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getPaddingBottom()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v2, v1, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v1, v6, v7, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    iget-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundBoundsChanged:Z

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/design/internal/ForegroundLinearLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/internal/ForegroundLinearLayout;->setWillNotDraw(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 2

    iget v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    if-eq v0, p1, :cond_3

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    iget v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foregroundGravity:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/internal/ForegroundLinearLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/ForegroundLinearLayout;->foreground:Landroid/graphics/drawable/Drawable;

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
