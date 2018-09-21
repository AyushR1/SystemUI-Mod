.class public Landroidx/slice/widget/LargeTemplateView;
.super Landroidx/slice/widget/SliceChildView;
.source "LargeTemplateView.java"


# instance fields
.field private final mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

.field private mDisplayedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedItemsHeight:I

.field private final mForeground:Landroid/view/View;

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoc:[I

.field private mParent:Landroidx/slice/widget/SliceView;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScrollingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Landroidx/slice/widget/LargeSliceAdapter;

    invoke-direct {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateDisplayedItems(I)V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    new-array v1, v1, [Landroidx/slice/SliceItem;

    iget-object v3, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1, p1}, Landroidx/slice/widget/ListContent;->getItemsForNonScrollingList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/ListContent;->getListHeight(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/slice/widget/LargeTemplateView;->mTintColor:I

    invoke-virtual {v1, v2, v3, v0}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceItems(Ljava/util/List;II)V

    invoke-direct {p0}, Landroidx/slice/widget/LargeTemplateView;->updateOverscroll()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->resetView()V

    return-void
.end method

.method private updateOverscroll()V
    .locals 4

    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v3, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    return v0
.end method

.method public getSmallHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroidx/slice/widget/SliceChildView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0, v1, p0}, Landroidx/slice/widget/LargeSliceAdapter;->setParents(Landroidx/slice/widget/SliceView;Landroidx/slice/widget/LargeTemplateView;)V

    return-void
.end method

.method public onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->isSliceViewClickable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v4, p0, Landroidx/slice/widget/LargeTemplateView;->mLoc:[I

    aget v4, v4, v3

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v5, v0

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->onMeasure(II)V

    return-void
.end method

.method public resetView()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItemsHeight:I

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mDisplayedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceItems(Ljava/util/List;II)V

    iput-object v2, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/widget/LargeSliceAdapter;->setLastUpdated(J)V

    return-void
.end method

.method public setMode(I)V
    .locals 3

    iget v0, p0, Landroidx/slice/widget/LargeTemplateView;->mMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/slice/widget/LargeTemplateView;->mMode:I

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    :cond_0
    return-void
.end method

.method public setScrollable(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    :cond_0
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setShowLastUpdated(Z)V

    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/slice/widget/LargeTemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    iget-object v1, p0, Landroidx/slice/widget/LargeTemplateView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceObserver(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/LargeSliceAdapter;->setSliceActions(Ljava/util/List;)V

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 3

    iput-object p1, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-boolean v1, p0, Landroidx/slice/widget/LargeTemplateView;->mScrollingEnabled:Z

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    return-void
.end method

.method public setStyle(Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroid/util/AttributeSet;II)V

    iget-object v0, p0, Landroidx/slice/widget/LargeTemplateView;->mAdapter:Landroidx/slice/widget/LargeSliceAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/slice/widget/LargeSliceAdapter;->setStyle(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    invoke-virtual {p0}, Landroidx/slice/widget/LargeTemplateView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/LargeTemplateView;->updateDisplayedItems(I)V

    return-void
.end method
