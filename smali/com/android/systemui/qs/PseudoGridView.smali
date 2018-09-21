.class public Lcom/android/systemui/qs/PseudoGridView;
.super Landroid/view/ViewGroup;
.source "PseudoGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    sget-object v1, Lcom/android/systemui/R$styleable;->PseudoGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->isLayoutRtl()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v3, v4

    const/4 v4, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    iget v9, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int/2addr v9, v4

    iget v10, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v10, v9

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v7

    move v7, v9

    :goto_2
    if-ge v7, v10, :cond_3

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v1, :cond_1

    sub-int/2addr v11, v13

    :cond_1
    add-int v15, v11, v13

    add-int v5, v6, v14

    invoke-virtual {v12, v11, v6, v15, v5}, Landroid/view/View;->layout(IIII)V

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v1, :cond_2

    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    sub-int/2addr v11, v5

    goto :goto_3

    :cond_2
    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    add-int/2addr v5, v13

    add-int/2addr v11, v5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v6, v8

    if-lez v4, :cond_4

    iget v5, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v6, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mHorizontalSpacing:I

    mul-int/2addr v2, v3

    sub-int v2, v1, v2

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/PseudoGridView;->getChildCount()I

    move-result v7

    iget v8, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    iget v9, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    div-int/2addr v8, v9

    move v10, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_4

    iget v11, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    mul-int/2addr v11, v6

    iget v12, v0, Lcom/android/systemui/qs/PseudoGridView;->mNumColumns:I

    add-int/2addr v12, v11

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    move v13, v11

    :goto_1
    if-ge v13, v12, :cond_0

    invoke-virtual {v0, v13}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v13, v11

    :goto_2
    if-ge v13, v12, :cond_2

    invoke-virtual {v0, v13}, Lcom/android/systemui/qs/PseudoGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v14, :cond_1

    invoke-virtual {v15, v4, v9}, Landroid/view/View;->measure(II)V

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_2

    :cond_2
    add-int/2addr v10, v14

    if-lez v6, :cond_3

    iget v3, v0, Lcom/android/systemui/qs/PseudoGridView;->mVerticalSpacing:I

    add-int/2addr v10, v3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_4
    move/from16 v3, p2

    const/4 v6, 0x0

    invoke-static {v10, v3, v6}, Lcom/android/systemui/qs/PseudoGridView;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/qs/PseudoGridView;->setMeasuredDimension(II)V

    return-void

    :cond_5
    move/from16 v3, p2

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Needs a maximum width"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
