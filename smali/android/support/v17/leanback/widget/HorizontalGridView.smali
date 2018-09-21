.class public Landroid/support/v17/leanback/widget/HorizontalGridView;
.super Landroid/support/v17/leanback/widget/BaseGridView;
.source "HorizontalGridView.java"


# instance fields
.field private mFadingHighEdge:Z

.field private mFadingLowEdge:Z

.field private mHighFadeShader:Landroid/graphics/LinearGradient;

.field private mHighFadeShaderLength:I

.field private mHighFadeShaderOffset:I

.field private mLowFadeShader:Landroid/graphics/LinearGradient;

.field private mLowFadeShaderLength:I

.field private mLowFadeShaderOffset:I

.field private mTempBitmapHigh:Landroid/graphics/Bitmap;

.field private mTempBitmapLow:Landroid/graphics/Bitmap;

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOrientation(I)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private needsFadingHighEdge()Z
    .locals 7

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalRight(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v5, v6

    if-le v4, v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private needsFadingLowEdge()Z
    .locals 7

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalLeft(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private updateLayerType()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingLowEdge()Z

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingHighEdge()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iput-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    :cond_0
    if-nez v3, :cond_1

    iput-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    iget-boolean v5, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v5

    iget v7, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v5, v7

    iget v7, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    iget-boolean v7, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    add-int/2addr v7, v8

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-boolean v9, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v9, :cond_5

    iget v9, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_2
    add-int/2addr v9, v5

    iget-boolean v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v10, :cond_6

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    goto :goto_3

    :cond_6
    move v10, v6

    :goto_3
    sub-int v10, v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    invoke-virtual {v1, v9, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super/range {p0 .. p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    const/4 v15, 0x0

    if-eqz v2, :cond_7

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-lez v10, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v13

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v6, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v10, v5

    int-to-float v10, v10

    invoke-virtual {v9, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {v0, v9}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move/from16 v17, v10

    move-object v10, v9

    move/from16 v18, v13

    move/from16 v13, v17

    move-object/from16 v19, v14

    move v14, v15

    move-object v15, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    iput v10, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v5

    const/4 v15, 0x0

    invoke-virtual {v1, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v11, v19

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v4, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    neg-int v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v4, v15}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    if-eqz v3, :cond_8

    iget v4, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-lez v4, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v14

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v6, v6, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v10, v7, v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v9, v10, v15}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {v0, v9}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    int-to-float v13, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v15, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    move/from16 v16, v10

    move-object v10, v9

    move/from16 v17, v14

    move/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v10, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v10, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    iput v10, v6, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v6, v7, v6

    int-to-float v6, v6

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {v1, v4, v6, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v6, v0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v6, v7, v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    return-void
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_numberOfRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->updateLayerType()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setNumRows(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setNumRows(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method public setRowHeight(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    return-void
.end method

.method setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 3

    sget v0, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    :cond_0
    return-void
.end method
