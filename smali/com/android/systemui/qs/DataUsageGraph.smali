.class public Lcom/android/systemui/qs/DataUsageGraph;
.super Landroid/view/View;
.source "DataUsageGraph.java"


# instance fields
.field private mLimitLevel:J

.field private final mMarkerWidth:I

.field private mMaxLevel:J

.field private final mOverlimitColor:I

.field private final mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/RectF;

.field private final mTrackColor:I

.field private final mUsageColor:I

.field private mUsageLevel:J

.field private final mWarningColor:I

.field private mWarningLevel:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    const v1, 0x7f0600a1

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    const v1, 0x7f07011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->getHeight()I

    move-result v3

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    int-to-float v5, v2

    iget-wide v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    int-to-float v7, v2

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    long-to-float v8, v8

    iget-wide v9, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v5, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v5, v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    int-to-float v8, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    int-to-float v8, v2

    int-to-float v9, v3

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    int-to-float v7, v2

    int-to-float v8, v3

    invoke-virtual {v0, v6, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    int-to-float v7, v3

    invoke-virtual {v0, v6, v6, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    int-to-float v7, v2

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    long-to-float v8, v8

    iget-wide v9, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    sub-int v9, v2, v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v7

    int-to-float v9, v3

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget v6, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLevels(JJJ)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {v0, v1, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->postInvalidate()V

    return-void
.end method
