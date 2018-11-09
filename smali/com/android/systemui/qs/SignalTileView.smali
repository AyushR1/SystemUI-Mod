.class public Lcom/android/systemui/qs/SignalTileView;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "SignalTileView.java"


# static fields
.field private static final DEFAULT_DURATION:J

.field private static final SHORT_DURATION:J


# instance fields
.field protected mIconFrame:Landroid/widget/FrameLayout;

.field private mIn:Landroid/widget/ImageView;

.field private mOut:Landroid/widget/ImageView;

.field private mOverlay:Landroid/widget/ImageView;

.field protected mSignal:Landroid/widget/ImageView;

.field private mSignalIndicatorToIconFrameSpacing:I

.field private mWideOverlayIconStartPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    sget-wide v0, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    const v0, 0x7f080266

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    const v0, 0x7f080267

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addTrafficView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070464

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    return-void
.end method

.method private addTrafficView(I)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private layoutIndicator(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->getRight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private setVisibility(Landroid/view/View;ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p3, :cond_2

    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->SHORT_DURATION:J

    goto :goto_1

    :cond_2
    sget-wide v2, Lcom/android/systemui/qs/SignalTileView;->DEFAULT_DURATION:J

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->createSlashImageView(Landroid/content/Context;)Lcom/android/systemui/qs/tileimpl/SlashImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected createSlashImageView(Landroid/content/Context;)Lcom/android/systemui/qs/tileimpl/SlashImageView;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/ImageView;->measure(II)V

    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/SignalTileView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    if-lez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SignalTileView;->isShown()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    invoke-direct {p0, v2, v1, v3}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    iget-boolean v3, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    invoke-direct {p0, v2, v1, v3}, Lcom/android/systemui/qs/SignalTileView;->setVisibility(Landroid/view/View;ZZ)V

    return-void
.end method
