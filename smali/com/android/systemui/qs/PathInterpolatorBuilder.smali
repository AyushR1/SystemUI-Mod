.class public Lcom/android/systemui/qs/PathInterpolatorBuilder;
.super Ljava/lang/Object;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
    }
.end annotation


# instance fields
.field private mDist:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initCubic(FFFF)V

    return-void
.end method

.method private initCubic(FFFF)V
    .locals 8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PathInterpolatorBuilder;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x3b03126f    # 0.002f

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v1

    array-length v3, v1

    div-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    const/4 v5, 0x2

    aget v7, v1, v5

    cmpl-float v6, v7, v6

    if-nez v6, :cond_6

    array-length v6, v1

    sub-int/2addr v6, v5

    aget v5, v1, v6

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    array-length v5, v1

    sub-int/2addr v5, v4

    aget v5, v1, v5

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    new-array v5, v3, [F

    iput-object v5, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    new-array v5, v3, [F

    iput-object v5, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    new-array v5, v3, [F

    iput-object v5, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    add-int/lit8 v10, v7, 0x1

    aget v7, v1, v7

    add-int/lit8 v11, v10, 0x1

    aget v10, v1, v10

    add-int/lit8 v12, v11, 0x1

    aget v11, v1, v11

    cmpl-float v13, v7, v6

    if-nez v13, :cond_1

    cmpl-float v13, v10, v9

    if-nez v13, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_1
    cmpg-float v13, v10, v9

    if-ltz v13, :cond_3

    iget-object v13, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    aput v10, v13, v5

    iget-object v13, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    aput v11, v13, v5

    if-lez v5, :cond_2

    iget-object v13, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    aget v13, v13, v5

    iget-object v14, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    add-int/lit8 v15, v5, -0x1

    aget v14, v14, v15

    sub-float/2addr v13, v14

    iget-object v14, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    aget v14, v14, v5

    iget-object v15, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    add-int/lit8 v16, v5, -0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    mul-float v15, v13, v13

    mul-float v16, v14, v14

    add-float v15, v15, v16

    move/from16 v17, v9

    float-to-double v8, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v15, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    add-int/lit8 v16, v5, -0x1

    aget v15, v15, v16

    add-float/2addr v15, v8

    aput v15, v9, v5

    goto :goto_2

    :cond_2
    move/from16 v17, v9

    :goto_2
    move v9, v10

    move v6, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v12

    goto :goto_0

    :cond_3
    move/from16 v17, v9

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "The Path cannot loop back on itself."

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move/from16 v17, v9

    iget-object v5, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v8, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    array-length v8, v8

    sub-int/2addr v8, v4

    aget v4, v5, v8

    const/16 v18, 0x0

    :goto_3
    move/from16 v5, v18

    if-ge v5, v3, :cond_5

    iget-object v8, v0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    aget v9, v8, v5

    div-float/2addr v9, v4

    aput v9, v8, v5

    add-int/lit8 v18, v5, 0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getXInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mX:[F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$1;)V

    return-object v0
.end method

.method public getYInterpolator()Landroid/view/animation/Interpolator;
    .locals 4

    new-instance v0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mDist:[F

    iget-object v2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder;->mY:[F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$1;)V

    return-object v0
.end method
