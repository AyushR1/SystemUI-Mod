.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4

    const v0, 0xc0c0c

    and-int v1, p0, v0

    if-nez v1, :cond_0

    return p0

    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    if-nez p1, :cond_1

    shl-int/lit8 v0, v1, 0x2

    or-int/2addr p0, v0

    return p0

    :cond_1
    shl-int/lit8 v2, v1, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr p0, v2

    shl-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr p0, v0

    return p0
.end method

.method private getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static makeFlag(II)I
    .locals 1

    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2

    or-int v0, p1, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    move-object v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v1, p3, v1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, p4, v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, p3, v5

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, p4, v6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-lez v5, :cond_0

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int/2addr v11, v1

    if-gez v11, :cond_0

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    if-le v12, v13, :cond_0

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v4, :cond_0

    move v4, v12

    move-object v3, v10

    :cond_0
    if-gez v5, :cond_1

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v11, v11, p3

    if-lez v11, :cond_1

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    if-ge v12, v13, :cond_1

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v4, :cond_1

    move v4, v12

    move-object v3, v10

    :cond_1
    if-gez v6, :cond_2

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v11, v11, p4

    if-lez v11, :cond_2

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    if-ge v12, v13, :cond_2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v4, :cond_2

    move v4, v12

    move-object v3, v10

    :cond_2
    if-lez v6, :cond_3

    iget-object v11, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int/2addr v11, v2

    if-gez v11, :cond_3

    iget-object v12, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    if-le v12, v13, :cond_3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v12, v4, :cond_3

    move v4, v12

    move-object v3, v10

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v9, p2

    return-object v3
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 4

    const v0, 0x303030

    and-int v1, p1, v0

    if-nez v1, :cond_0

    return p1

    :cond_0
    not-int v2, v1

    and-int/2addr p1, v2

    if-nez p2, :cond_1

    shr-int/lit8 v0, v1, 0x2

    or-int/2addr p1, v0

    return p1

    :cond_1
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr p1, v0

    return p1
.end method

.method final getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xfa

    :goto_0
    return-wide v1

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    :goto_1
    return-wide v1
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 0

    return p1
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 0

    return p1
.end method

.method hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .locals 8

    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-int v4, v2, v0

    int-to-float v4, v4

    sget-object v5, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const-wide/16 v5, 0x7d0

    cmp-long v5, p5, v5

    if-lez v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    long-to-float v5, p5

    const/high16 v6, 0x44fa0000    # 2000.0f

    div-float/2addr v5, v6

    :goto_0
    int-to-float v6, v4

    sget-object v7, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    if-nez v6, :cond_2

    if-lez p3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    return v7

    :cond_2
    return v6
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    move-object v8, p1

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    :goto_0
    move v10, v0

    if-ge v10, v9, :cond_0

    move-object/from16 v11, p4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v13

    iget-object v3, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p4

    if-eqz p3, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v12

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    move-object v8, p1

    move-object/from16 v9, p4

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    const/4 v0, 0x0

    :goto_0
    move v11, v0

    if-ge v11, v10, :cond_0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v13

    iget-object v3, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v12, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v0, v11, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    move-result v12

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    invoke-virtual {v8, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, v10, -0x1

    :goto_1
    if-ltz v1, :cond_4

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v3, :cond_2

    invoke-interface {v9, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void
.end method

.method public abstract onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2, v3, p6, p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    iget-object v2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    iget-object v2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;->INSTANCE:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public abstract onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method
