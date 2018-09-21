.class public Landroid/support/v17/leanback/widget/ScaleFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScaleFrameLayout.java"


# instance fields
.field private mChildScale:F

.field private mLayoutScaleX:F

.field private mLayoutScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    iput v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    return-void
.end method

.method private static getScaledMeasureSpec(IF)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mChildScale:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v8

    sub-float/2addr v7, v8

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotX()F

    move-result v7

    :goto_0
    iget v8, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v8

    iget v11, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    div-float v11, v7, v11

    sub-float v11, v7, v11

    add-float/2addr v11, v10

    float-to-int v11, v11

    add-int/2addr v8, v11

    sub-int v11, p4, p2

    int-to-float v11, v11

    sub-float/2addr v11, v7

    iget v12, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    div-float/2addr v11, v12

    add-float/2addr v11, v7

    add-float/2addr v11, v10

    float-to-int v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingLeft()I

    move-result v8

    sub-int v11, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPivotY()F

    move-result v12

    iget v13, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v9, v13, v9

    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v9

    iget v13, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    div-float v13, v12, v13

    sub-float v13, v12, v13

    add-float/2addr v13, v10

    float-to-int v13, v13

    add-int/2addr v9, v13

    sub-int v13, p5, p3

    int-to-float v13, v13

    sub-float/2addr v13, v12

    iget v14, v0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    div-float/2addr v13, v14

    add-float/2addr v13, v12

    add-float/2addr v13, v10

    float-to-int v10, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v10, v13

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingTop()I

    move-result v9

    sub-int v10, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v10, v13

    :goto_2
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v4, :cond_a

    invoke-virtual {v0, v13}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v0, 0x8

    if-eq v6, v0, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const v1, 0x800033

    :cond_3
    invoke-static {v1, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v3, v1, 0x70

    move/from16 v16, v1

    and-int/lit8 v1, v2, 0x7

    move/from16 v17, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v8

    goto :goto_4

    :cond_4
    sub-int v1, v11, v6

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_4

    :cond_5
    sub-int v1, v11, v8

    sub-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    nop

    :goto_4
    nop

    const/16 v2, 0x10

    if-eq v3, v2, :cond_8

    const/16 v2, 0x30

    if-eq v3, v2, :cond_7

    const/16 v2, 0x50

    if-eq v3, v2, :cond_6

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v9

    move/from16 v18, v3

    goto :goto_5

    :cond_6
    sub-int v2, v10, v15

    move/from16 v18, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    goto :goto_5

    :cond_7
    move/from16 v18, v3

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v9

    goto :goto_5

    :cond_8
    move/from16 v18, v3

    sub-int v2, v10, v9

    sub-int/2addr v2, v15

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v9

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    nop

    :goto_5
    nop

    add-int v3, v1, v6

    move-object/from16 v19, v0

    add-int v0, v2, v15

    invoke-virtual {v14, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    int-to-float v0, v1

    sub-float v0, v7, v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v2

    sub-float v0, v12, v0

    invoke-virtual {v14, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    invoke-static {p1, v0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    invoke-static {p2, v1}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getScaledMeasureSpec(IF)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleX:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->mLayoutScaleY:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ScaleFrameLayout;->setMeasuredDimension(II)V

    nop

    :goto_1
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
