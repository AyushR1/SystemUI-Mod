.class Landroidx/car/widget/PagedListView$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PagedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DividerDecoration"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDividerEndId:I

.field private final mDividerEndMargin:I

.field private final mDividerHeight:I

.field private final mDividerStartId:I

.field private final mDividerStartMargin:I

.field private final mListDividerColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mVisibilityManager:Landroidx/car/widget/PagedListView$DividerVisibilityManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIIII)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    iput p2, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartMargin:I

    iput p3, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndMargin:I

    iput p4, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartId:I

    iput p5, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndId:I

    iput p6, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mListDividerColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_list_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IIIIILandroidx/car/widget/PagedListView$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/car/widget/PagedListView$DividerDecoration;-><init>(Landroid/content/Context;IIIII)V

    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget v4, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndId:I

    if-eq v4, v3, :cond_1

    iget v3, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndId:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerStartMargin:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerEndMargin:I

    sub-int/2addr v8, v9

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    add-int v10, p3, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    sub-int v10, v9, v10

    int-to-float v12, v7

    int-to-float v13, v10

    int-to-float v14, v8

    int-to-float v11, v9

    iget-object v1, v0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    move v15, v11

    move-object/from16 v11, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private hideDividerForAdapterPosition(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mVisibilityManager:Landroidx/car/widget/PagedListView$DividerVisibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mVisibilityManager:Landroidx/car/widget/PagedListView$DividerVisibilityManager;

    invoke-interface {v0, p1}, Landroidx/car/widget/PagedListView$DividerVisibilityManager;->shouldHideDivider(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/car/widget/PagedListView$DividerDecoration;->hideDividerForAdapterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mDividerHeight:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/car/widget/PagedListView$DividerDecoration;->hideDividerForAdapterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v1, p2}, Landroidx/car/widget/GridLayoutManagerUtils;->getLastIndexOnSameRow(ILandroid/support/v7/widget/RecyclerView;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, p1, v2, v5}, Landroidx/car/widget/PagedListView$DividerDecoration;->drawDivider(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateDividerColor()V
    .locals 3

    iget-object v0, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mContext:Landroid/content/Context;

    iget v2, p0, Landroidx/car/widget/PagedListView$DividerDecoration;->mListDividerColor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
