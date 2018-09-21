.class abstract Landroid/support/v17/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Grid$Location;,
        Landroid/support/v17/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mNumRows:I

.field protected mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mSpacing:I

.field protected mStartIndex:I

.field mTmpItem:[Ljava/lang/Object;

.field protected mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method

.method public static createGrid(I)Landroid/support/v17/leanback/widget/Grid;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/SingleRow;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/SingleRow;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/Grid;->setNumRows(I)V

    :goto_0
    return-object v0
.end method

.method private resetVisibleIndexIfEmpty()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    :cond_0
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    move-result v0

    return v0
.end method

.method public final appendVisibleItems(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .locals 4

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v2, p1, v2

    if-lt v0, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method protected final checkPrependOverLimit(I)Z
    .locals 4

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v2, p1, v2

    if-lt v0, v2, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public fillDisappearingItems([IILandroid/util/SparseIntArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_0

    invoke-static {v1, v5, v2, v4}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-gez v6, :cond_4

    neg-int v8, v6

    sub-int/2addr v8, v7

    iget-boolean v9, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v9, :cond_1

    iget-object v9, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v10, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v9, v10

    goto :goto_1

    :cond_1
    iget-object v9, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v9, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v9

    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v10, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v9, v10

    :goto_1
    move/from16 v16, v9

    move v9, v8

    :goto_2
    if-ge v9, v2, :cond_4

    aget v15, v1, v9

    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-gez v10, :cond_2

    const/4 v10, 0x0

    :cond_2
    move/from16 v17, v10

    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v10, v15, v7, v11, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v18

    iget-object v10, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v11, v11, v5

    move v12, v15

    move/from16 v13, v18

    move/from16 v14, v17

    move/from16 v19, v15

    move/from16 v15, v16

    invoke-interface/range {v10 .. v15}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    iget-boolean v10, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v10, :cond_3

    sub-int v10, v16, v18

    iget v11, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v10, v11

    :goto_3
    move/from16 v16, v10

    goto :goto_4

    :cond_3
    add-int v10, v16, v18

    iget v11, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v10, v11

    goto :goto_3

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v8

    if-ltz v8, :cond_5

    invoke-static {v1, v5, v2, v8}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v9

    goto :goto_5

    :cond_5
    move v9, v5

    :goto_5
    if-gez v9, :cond_9

    neg-int v10, v9

    add-int/lit8 v10, v10, -0x2

    iget-boolean v11, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v11, :cond_6

    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v11, v8}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v11

    goto :goto_6

    :cond_6
    iget-object v11, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v11, v8}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v11

    :goto_6
    move v12, v11

    move v11, v10

    :goto_7
    if-ltz v11, :cond_9

    aget v15, v1, v11

    invoke-virtual {v3, v15}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    if-gez v13, :cond_7

    const/4 v13, 0x0

    :cond_7
    move/from16 v19, v13

    iget-object v13, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v13, v15, v5, v14, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v20

    iget-boolean v13, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v13, :cond_8

    iget v13, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v13, v12

    add-int v13, v13, v20

    :goto_8
    move v12, v13

    goto :goto_9

    :cond_8
    iget v13, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v13, v12, v13

    sub-int v13, v13, v20

    goto :goto_8

    :goto_9
    iget-object v13, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v14, v14, v5

    move/from16 v21, v15

    move/from16 v16, v20

    move/from16 v17, v19

    move/from16 v18, v12

    invoke-interface/range {v13 .. v18}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    :cond_9
    return-void
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(ZI[I)I

    move-result v0

    return v0
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(ZI[I)I

    move-result v0

    return v0
.end method

.method public final getFirstVisibleIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    return v0
.end method

.method public final getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
.end method

.method public final getLastVisibleIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    return v0
.end method

.method public abstract getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
.end method

.method public getNumRows()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    return v0
.end method

.method public final getRowIndex(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget v1, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    return v1
.end method

.method public invalidateItemsAfter(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-lt v0, p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    :cond_3
    return-void
.end method

.method public isReversedFlow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    return v0
.end method

.method public final prependOneColumnVisibleItems()Z
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    move-result v0

    return v0
.end method

.method public final prependVisibleItems(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .locals 4

    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-le v0, p1, :cond_3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    if-lt v0, p2, :cond_0

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_0
    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    if-gt v0, p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    move v0, v1

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .locals 5

    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, p1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    add-int/2addr v1, v0

    if-gt v1, p2, :cond_0

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_0
    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v1, p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    move v1, v2

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public resetVisibleIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    return-void
.end method

.method setNumRows(I)V
    .locals 3

    if-lez p1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    new-array v0, v0, [Landroid/support/v4/util/CircularIntArray;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    new-instance v2, Landroid/support/v4/util/CircularIntArray;

    invoke-direct {v2}, Landroid/support/v4/util/CircularIntArray;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    return-void
.end method

.method public final setSpacing(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method
