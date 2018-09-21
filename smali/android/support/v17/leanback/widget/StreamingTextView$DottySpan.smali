.class Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;
.super Landroid/text/style/ReplacementSpan;
.source "StreamingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/StreamingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DottySpan"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mSeed:I

.field final synthetic this$0:Landroid/support/v17/leanback/widget/StreamingTextView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/StreamingTextView;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p2, p0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    iput p3, p0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p9

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v8, v8, Landroid/support/v17/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    mul-int/2addr v9, v8

    div-int v10, v7, v9

    rem-int v11, v7, v9

    div-int/lit8 v12, v11, 0x2

    iget-object v13, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    invoke-static {v13}, Landroid/support/v17/leanback/widget/StreamingTextView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    iget-object v14, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v14, v14, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    iget v4, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    int-to-long v4, v4

    invoke-virtual {v14, v4, v5}, Ljava/util/Random;->setSeed(J)V

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_3

    iget v14, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    add-int/2addr v14, v5

    iget-object v6, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget v6, v6, Landroid/support/v17/leanback/widget/StreamingTextView;->mStreamPosition:I

    if-lt v14, v6, :cond_0

    move v15, v7

    goto :goto_3

    :cond_0
    mul-int v6, v5, v9

    add-int/2addr v6, v12

    div-int/lit8 v14, v8, 0x2

    add-int/2addr v6, v14

    int-to-float v6, v6

    if-eqz v13, :cond_1

    int-to-float v14, v7

    add-float v14, p5, v14

    sub-float/2addr v14, v6

    move v15, v7

    int-to-float v7, v8

    sub-float/2addr v14, v7

    goto :goto_1

    :cond_1
    move v15, v7

    add-float v14, p5, v6

    :goto_1
    move v7, v14

    iget-object v14, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v14, v14, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x3f

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v14, v14, Landroid/support/v17/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v14, p7, v14

    int-to-float v14, v14

    invoke-virtual {v1, v2, v7, v14, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroid/support/v17/leanback/widget/StreamingTextView;

    iget-object v14, v14, Landroid/support/v17/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int v14, p7, v14

    int-to-float v14, v14

    invoke-virtual {v1, v2, v7, v14, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v7, v15

    move/from16 v6, p4

    goto :goto_0

    :cond_3
    move v15, v7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
