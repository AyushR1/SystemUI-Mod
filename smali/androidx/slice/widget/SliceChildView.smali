.class public abstract Landroidx/slice/widget/SliceChildView;
.super Landroid/widget/FrameLayout;
.source "SliceChildView.java"


# instance fields
.field protected mGridBottomPadding:I

.field protected mGridSubtitleSize:I

.field protected mGridTitleSize:I

.field protected mGridTopPadding:I

.field protected mHeaderSubtitleSize:I

.field protected mHeaderTitleSize:I

.field protected mLastUpdated:J

.field protected mMode:I

.field protected mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field protected mShowLastUpdated:Z

.field protected mSubtitleColor:I

.field protected mSubtitleSize:I

.field protected mTintColor:I

.field protected mTitleColor:I

.field protected mTitleSize:I

.field protected mVerticalGridTextPadding:I

.field protected mVerticalHeaderTextPadding:I

.field protected mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mMode:I

    return v0
.end method

.method public getSmallHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetView()V
.end method

.method public setLastUpdated(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mMode:I

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 0

    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    return-void
.end method

.method public setStyle(Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v1, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    :goto_0
    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mTitleColor:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mSubtitleColor:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mHeaderTitleSize:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mHeaderSubtitleSize:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mVerticalHeaderTextPadding:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mTitleSize:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mSubtitleSize:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mVerticalTextPadding:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mGridTitleSize:I

    sget v2, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroidx/slice/widget/SliceChildView;->mGridSubtitleSize:I

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroidx/slice/widget/SliceChildView;->mVerticalGridTextPadding:I

    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroidx/slice/widget/SliceChildView;->mGridTopPadding:I

    sget v4, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroidx/slice/widget/SliceChildView;->mGridBottomPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public setTint(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    return-void
.end method
