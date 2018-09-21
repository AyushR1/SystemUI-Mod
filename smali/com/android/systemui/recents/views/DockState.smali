.class public Lcom/android/systemui/recents/views/DockState;
.super Ljava/lang/Object;
.source "DockState.java"

# interfaces
.implements Lcom/android/systemui/recents/views/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/DockState$ViewState;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/android/systemui/recents/views/DockState;

.field public static final LEFT:Lcom/android/systemui/recents/views/DockState;

.field public static final NONE:Lcom/android/systemui/recents/views/DockState;

.field public static final RIGHT:Lcom/android/systemui/recents/views/DockState;

.field public static final TOP:Lcom/android/systemui/recents/views/DockState;

.field private static final mTmpRect:Landroid/graphics/Rect;


# instance fields
.field public final createMode:I

.field private final dockArea:Landroid/graphics/RectF;

.field public final dockSide:I

.field private final expandedTouchDockArea:Landroid/graphics/RectF;

.field private final touchArea:Landroid/graphics/RectF;

.field public final viewState:Lcom/android/systemui/recents/views/DockState$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v9, Lcom/android/systemui/recents/views/DockState;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x50

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/recents/views/DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v9, Lcom/android/systemui/recents/views/DockState;->NONE:Lcom/android/systemui/recents/views/DockState;

    new-instance v0, Lcom/android/systemui/recents/views/DockState;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x3e000000    # 0.125f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/RectF;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct {v6, v4, v4, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x50

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v10 .. v18}, Lcom/android/systemui/recents/views/DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/views/DockState;->LEFT:Lcom/android/systemui/recents/views/DockState;

    new-instance v0, Lcom/android/systemui/recents/views/DockState;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v4, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x50

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move-object/from16 v24, v2

    invoke-direct/range {v16 .. v24}, Lcom/android/systemui/recents/views/DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/views/DockState;->TOP:Lcom/android/systemui/recents/views/DockState;

    new-instance v0, Lcom/android/systemui/recents/views/DockState;

    new-instance v14, Landroid/graphics/RectF;

    const/high16 v1, 0x3f600000    # 0.875f

    invoke-direct {v14, v1, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15, v1, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v7, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/16 v11, 0x50

    const/4 v13, 0x1

    move-object v8, v0

    move-object/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/recents/views/DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/views/DockState;->RIGHT:Lcom/android/systemui/recents/views/DockState;

    new-instance v0, Lcom/android/systemui/recents/views/DockState;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v7, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v17, 0x4

    const/16 v18, 0x1

    move-object/from16 v16, v0

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v1

    invoke-direct/range {v16 .. v24}, Lcom/android/systemui/recents/views/DockState;-><init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    sput-object v0, Lcom/android/systemui/recents/views/DockState;->BOTTOM:Lcom/android/systemui/recents/views/DockState;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(IIIIILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/views/DockState;->dockSide:I

    iput p2, p0, Lcom/android/systemui/recents/views/DockState;->createMode:I

    new-instance v6, Lcom/android/systemui/recents/views/DockState$ViewState;

    const v4, 0x7f110489

    const/4 v5, 0x0

    move-object v0, v6

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/DockState$ViewState;-><init>(IIIILcom/android/systemui/recents/views/DockState$1;)V

    iput-object v6, p0, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    iput-object p7, p0, Lcom/android/systemui/recents/views/DockState;->dockArea:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/android/systemui/recents/views/DockState;->touchArea:Landroid/graphics/RectF;

    iput-object p8, p0, Lcom/android/systemui/recents/views/DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    return-void
.end method

.method private getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V
    .locals 5

    iget v0, p1, Landroid/graphics/RectF;->left:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, p3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private updateBoundsWithSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/DockState;->dockSide:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/DockState;->dockSide:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public acceptsDrop(IIIILandroid/graphics/Rect;Z)Z
    .locals 2

    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState;->expandedTouchDockArea:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3, p4, v1}, Lcom/android/systemui/recents/views/DockState;->getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState;->touchArea:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3, p4, v1}, Lcom/android/systemui/recents/views/DockState;->getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p5}, Lcom/android/systemui/recents/views/DockState;->updateBoundsWithSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public getDockedBounds(IIILandroid/graphics/Rect;Landroid/content/res/Resources;)Landroid/graphics/Rect;
    .locals 9

    nop

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    invoke-static {v0, p4, p1, p2, p3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v7

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v8, v1

    iget v2, p0, Lcom/android/systemui/recents/views/DockState;->dockSide:I

    move v1, v7

    move-object v3, v8

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-object v8
.end method

.method public getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    nop

    invoke-virtual/range {p7 .. p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v2, v4

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static {v2, v1, v10, v11, v12}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v13

    iget v4, v0, Lcom/android/systemui/recents/views/DockState;->dockSide:I

    invoke-static {v4}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v5

    move v4, v13

    move-object/from16 v6, p8

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-static/range {v4 .. v9}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, v0, Lcom/android/systemui/recents/views/DockState;->dockArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    nop

    :goto_1
    move/from16 v17, v3

    goto :goto_2

    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :goto_2
    const/16 v18, 0x0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v14, p6

    move-object/from16 v15, p1

    move-object/from16 v16, p8

    move/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v14 .. v20}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    return-object v4
.end method

.method public getPreDockedBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState;->dockArea:Landroid/graphics/RectF;

    sget-object v1, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/recents/views/DockState;->getMappedRect(Landroid/graphics/RectF;IILandroid/graphics/Rect;)V

    sget-object v0, Lcom/android/systemui/recents/views/DockState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/recents/views/DockState;->updateBoundsWithSystemInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState;->viewState:Lcom/android/systemui/recents/views/DockState$ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/DockState$ViewState;->update(Landroid/content/Context;)V

    return-void
.end method
