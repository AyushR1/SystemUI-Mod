.class public Landroidx/car/widget/PagedListView;
.super Landroid/widget/FrameLayout;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/PagedListView$TopOffsetDecoration;,
        Landroidx/car/widget/PagedListView$DividerDecoration;,
        Landroidx/car/widget/PagedListView$ItemSpacingDecoration;,
        Landroidx/car/widget/PagedListView$OnScrollListener;,
        Landroidx/car/widget/PagedListView$DividerVisibilityManager;,
        Landroidx/car/widget/PagedListView$ItemCap;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphaJumpView:Landroidx/car/widget/AlphaJumpOverlayView;

.field private mDefaultMaxPages:I

.field private mGutter:I

.field private mGutterSize:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastItemCount:I

.field private mMaxPages:I

.field private mNeedsFocus:Z

.field private mOnScrollListener:Landroidx/car/widget/PagedListView$OnScrollListener;

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field private final mPaginationRunnable:Ljava/lang/Runnable;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mRecyclerViewOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRowsPerPage:I

.field private mScrollBarEnabled:Z

.field mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

.field private mSnapHelper:Landroidx/car/widget/PagedSnapHelper;

.field private final mUpdatePaginationRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    const/4 v0, 0x6

    iput v0, p0, Landroidx/car/widget/PagedListView;->mDefaultMaxPages:I

    new-instance v0, Landroidx/car/widget/PagedListView$2;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$2;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerViewOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v0, Landroidx/car/widget/PagedListView$3;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$3;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mPaginationRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;

    invoke-direct {v0, p0}, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mUpdatePaginationRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/car/widget/PagedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    const/4 v0, 0x6

    iput v0, p0, Landroidx/car/widget/PagedListView;->mDefaultMaxPages:I

    new-instance v0, Landroidx/car/widget/PagedListView$2;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$2;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerViewOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v0, Landroidx/car/widget/PagedListView$3;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$3;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mPaginationRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;

    invoke-direct {v0, p0}, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mUpdatePaginationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Landroidx/car/widget/PagedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    const/4 v0, 0x6

    iput v0, p0, Landroidx/car/widget/PagedListView;->mDefaultMaxPages:I

    new-instance v0, Landroidx/car/widget/PagedListView$2;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$2;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerViewOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v0, Landroidx/car/widget/PagedListView$3;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$3;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mPaginationRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;

    invoke-direct {v0, p0}, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mUpdatePaginationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Landroidx/car/widget/PagedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    const/4 v0, 0x6

    iput v0, p0, Landroidx/car/widget/PagedListView;->mDefaultMaxPages:I

    new-instance v0, Landroidx/car/widget/PagedListView$2;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$2;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerViewOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v0, Landroidx/car/widget/PagedListView$3;

    invoke-direct {v0, p0}, Landroidx/car/widget/PagedListView$3;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mPaginationRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;

    invoke-direct {v0, p0}, Landroidx/car/widget/-$$Lambda$PagedListView$Vf9wSInQhS-xhuyshQUf131oISE;-><init>(Landroidx/car/widget/PagedListView;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mUpdatePaginationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Landroidx/car/widget/PagedListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mOnScrollListener:Landroidx/car/widget/PagedListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/car/widget/PagedListView;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/widget/PagedListView;->showAlphaJump()V

    return-void
.end method

.method static synthetic access$500(Landroidx/car/widget/PagedListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/car/widget/PagedListView;->updatePaginationButtons(Z)V

    return-void
.end method

.method static synthetic access$600(Landroidx/car/widget/PagedListView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mPaginationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/car/widget/PagedListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calculateMaxItemCount()I
    .locals 4

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Landroidx/car/widget/PagedListView;->mMaxPages:I

    if-gez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    iget v3, p0, Landroidx/car/widget/PagedListView;->mMaxPages:I

    mul-int/2addr v1, v3

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method private getDefaultMaxPages()I
    .locals 1

    iget v0, p0, Landroidx/car/widget/PagedListView;->mDefaultMaxPages:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    :cond_1
    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/car/R$layout;->car_paged_recycler_view:I

    const/4 v10, 0x1

    invoke-virtual {v1, v2, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v1, Landroidx/car/R$styleable;->PagedListView:[I

    sget v2, Landroidx/car/R$attr;->pagedListViewStyle:I

    const/4 v11, 0x0

    move-object/from16 v12, p2

    invoke-virtual {v9, v12, v1, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    sget v1, Landroidx/car/R$id;->recycler_view:I

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct/range {p0 .. p0}, Landroidx/car/widget/PagedListView;->getDefaultMaxPages()I

    move-result v1

    iput v1, v0, Landroidx/car/widget/PagedListView;->mMaxPages:I

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v14, v1

    iget-object v1, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v14}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroidx/car/widget/PagedSnapHelper;

    invoke-direct {v1, v9}, Landroidx/car/widget/PagedSnapHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroidx/car/widget/PagedListView;->mSnapHelper:Landroidx/car/widget/PagedSnapHelper;

    iget-object v1, v0, Landroidx/car/widget/PagedListView;->mSnapHelper:Landroidx/car/widget/PagedSnapHelper;

    iget-object v2, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/car/widget/PagedSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v1, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroidx/car/widget/PagedListView;->mRecyclerViewOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v11, v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    sget v1, Landroidx/car/R$styleable;->PagedListView_verticallyCenterListContent:I

    invoke-virtual {v13, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/car/widget/PagedListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/car/R$dimen;->car_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    sget v1, Landroidx/car/R$styleable;->PagedListView_gutterSize:I

    invoke-virtual {v13, v1, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroidx/car/widget/PagedListView;->mGutterSize:I

    sget v1, Landroidx/car/R$styleable;->PagedListView_gutter:I

    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    sget v1, Landroidx/car/R$styleable;->PagedListView_gutter:I

    invoke-virtual {v13, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setGutter(I)V

    goto :goto_0

    :cond_1
    sget v1, Landroidx/car/R$styleable;->PagedListView_offsetScrollBar:I

    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroidx/car/R$styleable;->PagedListView_offsetScrollBar:I

    invoke-virtual {v13, v1, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v10}, Landroidx/car/widget/PagedListView;->setGutter(I)V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroidx/car/widget/PagedListView;->setGutter(I)V

    :goto_0
    sget v1, Landroidx/car/R$styleable;->PagedListView_showPagedListViewDivider:I

    invoke-virtual {v13, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v8, -0x1

    if-eqz v1, :cond_4

    sget v1, Landroidx/car/R$styleable;->PagedListView_dividerStartMargin:I

    invoke-virtual {v13, v1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    sget v1, Landroidx/car/R$styleable;->PagedListView_dividerEndMargin:I

    invoke-virtual {v13, v1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    sget v1, Landroidx/car/R$styleable;->PagedListView_alignDividerStartTo:I

    invoke-virtual {v13, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    sget v1, Landroidx/car/R$styleable;->PagedListView_alignDividerEndTo:I

    invoke-virtual {v13, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    sget v1, Landroidx/car/R$styleable;->PagedListView_listDividerColor:I

    sget v2, Landroidx/car/R$color;->car_list_divider:I

    invoke-virtual {v13, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    iget-object v7, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroidx/car/widget/PagedListView$DividerDecoration;

    const/16 v21, 0x0

    move-object v1, v6

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object v10, v6

    move/from16 v6, v19

    move-object v11, v7

    move/from16 v7, v20

    move v9, v8

    move-object/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Landroidx/car/widget/PagedListView$DividerDecoration;-><init>(Landroid/content/Context;IIIIILandroidx/car/widget/PagedListView$1;)V

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    sget v1, Landroidx/car/R$styleable;->PagedListView_itemSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_5

    iget-object v3, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroidx/car/widget/PagedListView$ItemSpacingDecoration;

    invoke-direct {v4, v1, v2}, Landroidx/car/widget/PagedListView$ItemSpacingDecoration;-><init>(ILandroidx/car/widget/PagedListView$1;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_5
    sget v3, Landroidx/car/R$styleable;->PagedListView_listContentTopOffset:I

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-lez v3, :cond_6

    iget-object v5, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroidx/car/widget/PagedListView$TopOffsetDecoration;

    invoke-direct {v6, v3, v2}, Landroidx/car/widget/PagedListView$TopOffsetDecoration;-><init>(ILandroidx/car/widget/PagedListView$1;)V

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_6
    invoke-virtual {v0, v4}, Landroidx/car/widget/PagedListView;->setFocusable(Z)V

    sget v2, Landroidx/car/R$styleable;->PagedListView_scrollBarEnabled:I

    const/4 v4, 0x1

    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/car/widget/PagedListView;->mScrollBarEnabled:Z

    sget v2, Landroidx/car/R$id;->paged_scroll_view:I

    invoke-virtual {v0, v2}, Landroidx/car/widget/PagedListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/car/widget/PagedScrollBarView;

    iput-object v2, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    iget-object v2, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    new-instance v4, Landroidx/car/widget/PagedListView$1;

    invoke-direct {v4, v0}, Landroidx/car/widget/PagedListView$1;-><init>(Landroidx/car/widget/PagedListView;)V

    invoke-virtual {v2, v4}, Landroidx/car/widget/PagedScrollBarView;->setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V

    sget v2, Landroidx/car/R$styleable;->PagedListView_upButtonIcon:I

    invoke-virtual {v13, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v2}, Landroidx/car/widget/PagedListView;->setUpButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    sget v4, Landroidx/car/R$styleable;->PagedListView_downButtonIcon:I

    invoke-virtual {v13, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v0, v4}, Landroidx/car/widget/PagedListView;->setDownButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    sget v5, Landroidx/car/R$styleable;->PagedListView_scrollBarColor:I

    invoke-virtual {v13, v5, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-eq v5, v9, :cond_9

    invoke-virtual {v0, v5}, Landroidx/car/widget/PagedListView;->setScrollbarColor(I)V

    :cond_9
    iget-object v6, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    iget-boolean v7, v0, Landroidx/car/widget/PagedListView;->mScrollBarEnabled:Z

    if-eqz v7, :cond_a

    const/4 v11, 0x0

    goto :goto_2

    :cond_a
    const/16 v11, 0x8

    :goto_2
    invoke-virtual {v6, v11}, Landroidx/car/widget/PagedScrollBarView;->setVisibility(I)V

    iget-boolean v6, v0, Landroidx/car/widget/PagedListView;->mScrollBarEnabled:Z

    if-eqz v6, :cond_b

    sget v6, Landroidx/car/R$styleable;->PagedListView_scrollBarTopMargin:I

    iget-object v7, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v7}, Landroidx/car/widget/PagedScrollBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v13, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/car/widget/PagedListView;->setScrollBarTopMargin(I)V

    goto :goto_3

    :cond_b
    iget-object v6, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_3
    sget v6, Landroidx/car/R$styleable;->PagedListView_scrollBarContainerWidth:I

    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/car/widget/PagedListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/car/R$dimen;->car_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Landroidx/car/R$styleable;->PagedListView_scrollBarContainerWidth:I

    invoke-virtual {v13, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroidx/car/widget/PagedListView;->setScrollBarContainerWidth(I)V

    :cond_c
    sget v6, Landroidx/car/R$styleable;->PagedListView_dayNightStyle:I

    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d

    sget v6, Landroidx/car/R$styleable;->PagedListView_dayNightStyle:I

    const/4 v7, 0x0

    invoke-virtual {v13, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/car/widget/PagedListView;->setDayNightStyle(I)V

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroidx/car/widget/PagedListView;->setDayNightStyle(I)V

    :goto_4
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic lambda$new$4(Landroidx/car/widget/PagedListView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/car/widget/PagedListView;->updatePaginationButtons(Z)V

    return-void
.end method

.method public static synthetic lambda$snapToPosition$3(Landroidx/car/widget/PagedListView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/car/widget/PagedListView;->scrollToPosition(I)V

    return-void
.end method

.method private showAlphaJump()V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAlphaJumpView:Landroidx/car/widget/AlphaJumpOverlayView;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Landroidx/car/widget/IAlphaJumpAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/car/widget/AlphaJumpOverlayView;

    invoke-virtual {p0}, Landroidx/car/widget/PagedListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/car/widget/AlphaJumpOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/car/widget/PagedListView;->mAlphaJumpView:Landroidx/car/widget/AlphaJumpOverlayView;

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAlphaJumpView:Landroidx/car/widget/AlphaJumpOverlayView;

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroidx/car/widget/IAlphaJumpAdapter;

    invoke-virtual {v0, p0, v1}, Landroidx/car/widget/AlphaJumpOverlayView;->init(Landroidx/car/widget/PagedListView;Landroidx/car/widget/IAlphaJumpAdapter;)V

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAlphaJumpView:Landroidx/car/widget/AlphaJumpOverlayView;

    invoke-virtual {p0, v0}, Landroidx/car/widget/PagedListView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAlphaJumpView:Landroidx/car/widget/AlphaJumpOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/car/widget/AlphaJumpOverlayView;->setVisibility(I)V

    return-void
.end method

.method private updateAlphaJump()V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Landroidx/car/widget/IAlphaJumpAdapter;

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v1, v0}, Landroidx/car/widget/PagedScrollBarView;->setShowAlphaJump(Z)V

    return-void
.end method

.method private updateMaxItems()V
    .locals 4

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/car/widget/PagedListView;->updateRowsPerPage()V

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    instance-of v0, v0, Landroidx/car/widget/PagedListView$ItemCap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v1, Landroidx/car/widget/PagedListView$ItemCap;

    invoke-direct {p0}, Landroidx/car/widget/PagedListView;->calculateMaxItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Landroidx/car/widget/PagedListView$ItemCap;->setMaxItems(I)V

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int v3, v0, v1

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    sub-int v3, v1, v0

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method private updatePaginationButtons(Z)V
    .locals 7

    iget-boolean v0, p0, Landroidx/car/widget/PagedListView;->mScrollBarEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/car/widget/PagedListView;->isAtStart()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/car/widget/PagedListView;->isAtEnd()Z

    move-result v1

    iget-object v2, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/car/widget/PagedScrollBarView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/car/widget/PagedScrollBarView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroidx/car/widget/PagedScrollBarView;->setUpEnabled(Z)V

    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroidx/car/widget/PagedScrollBarView;->setDownEnabled(Z)V

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v5, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget-object v6, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, p1}, Landroidx/car/widget/PagedScrollBarView;->setParameters(IIIZ)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v5, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget-object v6, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, p1}, Landroidx/car/widget/PagedScrollBarView;->setParameters(IIIZ)V

    :goto_2
    invoke-virtual {p0}, Landroidx/car/widget/PagedListView;->invalidate()V

    return-void
.end method

.method private updateRowsPerPage()V
    .locals 5

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput v1, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/car/widget/PagedListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/car/widget/PagedListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v1, p0, Landroidx/car/widget/PagedListView;->mRowsPerPage:I

    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/car/widget/PagedListView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/car/widget/PagedListView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public isAtEnd()Z
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mSnapHelper:Landroidx/car/widget/PagedSnapHelper;

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedSnapHelper;->isAtEnd(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v0

    return v0
.end method

.method public isAtStart()Z
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mSnapHelper:Landroidx/car/widget/PagedSnapHelper;

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedSnapHelper;->isAtStart(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mUpdatePaginationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v5, v0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v6, 0x4

    if-eqz v5, :cond_5

    iget-object v5, v0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    const-string v7, "PagedListView"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "PagedListView"

    const-string v9, "onLayout hasFocus: %s, mLastItemCount: %s, itemCount: %s, focusedChild: %s, firstBorn: %s, isInTouchMode: %s, mNeedsFocus: %s"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->hasFocus()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v3

    iget v11, v0, Landroidx/car/widget/PagedListView;->mLastItemCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    aput-object v2, v10, v8

    aput-object v4, v10, v6

    const/4 v8, 0x5

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->isInTouchMode()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v8, 0x6

    iget-boolean v11, v0, Landroidx/car/widget/PagedListView;->mNeedsFocus:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {v0}, Landroidx/car/widget/PagedListView;->updateMaxItems()V

    iget-boolean v7, v0, Landroidx/car/widget/PagedListView;->mNeedsFocus:Z

    if-eqz v7, :cond_3

    if-lez v5, :cond_3

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->requestFocus()Z

    :cond_2
    iput-boolean v3, v0, Landroidx/car/widget/PagedListView;->mNeedsFocus:Z

    :cond_3
    iget v7, v0, Landroidx/car/widget/PagedListView;->mLastItemCount:I

    if-le v5, v7, :cond_4

    if-ne v2, v4, :cond_4

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->requestFocus()Z

    :cond_4
    iput v5, v0, Landroidx/car/widget/PagedListView;->mLastItemCount:I

    :cond_5
    iget-boolean v5, v0, Landroidx/car/widget/PagedListView;->mScrollBarEnabled:Z

    if-nez v5, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->isAtStart()Z

    move-result v5

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->isAtEnd()Z

    move-result v7

    if-eqz v5, :cond_7

    if-nez v7, :cond_8

    :cond_7
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    iget-object v3, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v3, v6}, Landroidx/car/widget/PagedScrollBarView;->setVisibility(I)V

    return-void

    :cond_9
    iget-object v6, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v6, v3}, Landroidx/car/widget/PagedScrollBarView;->setVisibility(I)V

    iget-object v3, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v6}, Landroidx/car/widget/PagedScrollBarView;->setUpEnabled(Z)V

    iget-object v3, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    xor-int/lit8 v6, v7, 0x1

    invoke-virtual {v3, v6}, Landroidx/car/widget/PagedScrollBarView;->setDownEnabled(Z)V

    iget-object v3, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    iget-object v6, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v6

    iget-object v8, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v8

    iget-object v9, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v9

    invoke-virtual {v3, v6, v8, v9}, Landroidx/car/widget/PagedScrollBarView;->setParametersInLayout(III)V

    goto :goto_0

    :cond_a
    iget-object v3, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    iget-object v6, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v6

    iget-object v8, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v8

    iget-object v9, v0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v9

    invoke-virtual {v3, v6, v8, v9}, Landroidx/car/widget/PagedScrollBarView;->setParametersInLayout(III)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const-string v2, "RecyclerViewState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const-string v1, "PagedListViewSuperState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PagedListViewSuperState"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "RecyclerViewState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public pageDown()V
    .locals 9

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/widget/PagedListView;->getOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    move v2, v1

    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_1

    move v2, v1

    :cond_1
    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    iget-object v6, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    if-le v7, v1, :cond_3

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-ge v1, v7, :cond_4

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x2

    mul-int/2addr v8, v1

    if-ge v7, v8, :cond_4

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    sub-int v2, v7, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v5, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public pageUp()V
    .locals 8

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/car/widget/PagedListView;->getOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    move v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-le v6, v1, :cond_2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_1

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    sub-int v2, v1, v6

    goto :goto_1

    :cond_1
    neg-int v6, v1

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-gez v6, :cond_3

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    neg-int v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 4

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mSnapHelper:Landroidx/car/widget/PagedSnapHelper;

    invoke-virtual {v1, v0}, Landroidx/car/widget/PagedSnapHelper;->createScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    iget-object v2, p0, Landroidx/car/widget/PagedListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/car/widget/PagedListView;->mUpdatePaginationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/car/widget/PagedListView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Landroidx/car/widget/PagedListView;->updateMaxItems()V

    invoke-direct {p0}, Landroidx/car/widget/PagedListView;->updateAlphaJump()V

    return-void
.end method

.method public setDayNightStyle(I)V
    .locals 4

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0, p1}, Landroidx/car/widget/PagedScrollBarView;->setDayNightStyle(I)V

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationAt(I)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    instance-of v3, v2, Landroidx/car/widget/PagedListView$DividerDecoration;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/car/widget/PagedListView$DividerDecoration;

    invoke-virtual {v3}, Landroidx/car/widget/PagedListView$DividerDecoration;->updateDividerColor()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDownButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0, p1}, Landroidx/car/widget/PagedScrollBarView;->setDownButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGutter(I)V
    .locals 5

    iput p1, p0, Landroidx/car/widget/PagedListView;->mGutter:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Landroidx/car/widget/PagedListView;->mGutter:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, p0, Landroidx/car/widget/PagedListView;->mGutterSize:I

    :cond_0
    iget v2, p0, Landroidx/car/widget/PagedListView;->mGutter:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget v1, p0, Landroidx/car/widget/PagedListView;->mGutterSize:I

    :cond_1
    iget-object v2, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    return-void
.end method

.method public setMaxPages(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/car/widget/PagedListView;->mMaxPages:I

    invoke-direct {p0}, Landroidx/car/widget/PagedListView;->updateMaxItems()V

    return-void
.end method

.method public setScrollBarContainerWidth(I)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedScrollBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v1}, Landroidx/car/widget/PagedScrollBarView;->requestLayout()V

    return-void
.end method

.method public setScrollBarTopMargin(I)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedScrollBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v1}, Landroidx/car/widget/PagedScrollBarView;->requestLayout()V

    return-void
.end method

.method public setScrollbarColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0, p1}, Landroidx/car/widget/PagedScrollBarView;->setThumbColor(I)V

    return-void
.end method

.method public setUpButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0, p1}, Landroidx/car/widget/PagedScrollBarView;->setUpButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public snapToPosition(I)V
    .locals 7

    iget-object v0, p0, Landroidx/car/widget/PagedListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    invoke-interface {v2, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget v5, v2, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, -0x1

    :goto_1
    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v1, v6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    const-string v2, "PagedListView"

    const-string v4, "LayoutManager is not a ScrollVectorProvider, can\'t do snap animation."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :goto_3
    if-eq v1, p1, :cond_5

    new-instance v2, Landroidx/car/widget/-$$Lambda$PagedListView$yLFTxQZlMxlLNIv62uHqg1XZmao;

    invoke-direct {v2, p0, p1}, Landroidx/car/widget/-$$Lambda$PagedListView$yLFTxQZlMxlLNIv62uHqg1XZmao;-><init>(Landroidx/car/widget/PagedListView;I)V

    invoke-virtual {p0, v2}, Landroidx/car/widget/PagedListView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method
