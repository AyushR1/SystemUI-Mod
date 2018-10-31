.class Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field private static sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    return-void
.end method

.method static getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p0

    iget v2, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    iget v2, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    if-nez p2, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    if-ne v1, p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    :goto_0
    sub-int/2addr v6, v2

    iget-boolean v2, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v6, v2

    goto :goto_1

    :cond_2
    iget v2, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v6, v2

    :cond_3
    :goto_1
    iget v2, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_2
    int-to-float v2, v2

    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    sub-int/2addr v6, v2

    :cond_5
    if-eq p0, v1, :cond_11

    sget-object v2, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->right:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v2, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRightInset()I

    move-result v3

    add-int v6, v2, v3

    goto/16 :goto_8

    :cond_6
    iget-boolean v6, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v6, :cond_8

    iget v6, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v4, v6, v4

    if-nez v4, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3

    :cond_7
    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    :cond_8
    :goto_3
    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_a

    if-ne v1, p0, :cond_9

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_4
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    :cond_a
    move v6, v2

    if-eq p0, v1, :cond_11

    sget-object v2, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->left:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v2, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeftInset()I

    move-result v3

    sub-int v6, v2, v3

    goto :goto_8

    :cond_b
    iget-boolean v6, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v6, :cond_d

    iget v6, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v4, v6, v4

    if-nez v4, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_5

    :cond_c
    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    :cond_d
    :goto_5
    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_f

    if-ne v1, p0, :cond_e

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalHeight(Landroid/view/View;)I

    move-result v3

    goto :goto_6

    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_6
    int-to-float v3, v3

    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    :cond_f
    if-eq p0, v1, :cond_10

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    sget-object v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTopInset()I

    move-result v4

    sub-int/2addr v3, v4

    move v6, v3

    goto :goto_7

    :cond_10
    move v6, v2

    :goto_7
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->isAlignedToTextViewBaseLine()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    add-int/2addr v6, v2

    :cond_11
    :goto_8
    return v6
.end method
