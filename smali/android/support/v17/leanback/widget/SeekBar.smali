.class public final Landroid/support/v17/leanback/widget/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;
    }
.end annotation


# instance fields
.field private mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

.field private mActiveBarHeight:I

.field private mActiveRadius:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundRect:Landroid/graphics/RectF;

.field private mBarHeight:I

.field private final mKnobPaint:Landroid/graphics/Paint;

.field private mKnobx:I

.field private mMax:I

.field private mProgress:I

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRect:Landroid/graphics/RectF;

.field private mSecondProgress:I

.field private final mSecondProgressPaint:Landroid/graphics/Paint;

.field private final mSecondProgressRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SeekBar;->setWillNotDraw(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_progressbar_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_progressbar_active_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveBarHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_progressbar_active_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveRadius:I

    return-void
.end method

.method private calculate()V
    .locals 13

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveBarHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getHeight()I

    move-result v2

    sub-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v5, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    int-to-float v7, v7

    sub-int v8, v2, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_1

    :cond_1
    iget v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v4, v4, 0x2

    :goto_1
    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v1, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgress:I

    int-to-float v6, v6

    iget v7, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v5

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v8, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    int-to-float v9, v3

    iget v10, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v10, v6

    sub-int v11, v2, v3

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgress:I

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/SeekBar;->mMax:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v5

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    iget v9, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    int-to-float v10, v3

    iget v11, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v7

    sub-int v12, v2, v3

    int-to-float v12, v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    float-to-int v8, v6

    add-int/2addr v8, v4

    iput v8, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobx:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;->onAccessibilitySeekBackward()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;->onAccessibilitySeekForward()Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
