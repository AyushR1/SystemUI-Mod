.class public Landroid/support/transition/CircularPropagation;
.super Landroid/support/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/support/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)F
    .locals 4

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    return-wide v3

    :cond_0
    const/4 v5, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/transition/CircularPropagation;->getViewVisibility(Landroid/support/transition/TransitionValues;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p4

    goto :goto_1

    :cond_2
    :goto_0
    move-object v6, v1

    const/4 v5, -0x1

    :goto_1
    nop

    invoke-virtual {v0, v6}, Landroid/support/transition/CircularPropagation;->getViewX(Landroid/support/transition/TransitionValues;)I

    move-result v7

    invoke-virtual {v0, v6}, Landroid/support/transition/CircularPropagation;->getViewY(Landroid/support/transition/TransitionValues;)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    move-object/from16 v12, p1

    goto :goto_2

    :cond_3
    const/4 v10, 0x2

    new-array v11, v10, [I

    move-object/from16 v12, p1

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v13, 0x0

    aget v13, v11, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    div-int/2addr v14, v10

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/4 v14, 0x1

    aget v14, v11, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    div-int/2addr v15, v10

    add-int/2addr v14, v15

    int-to-float v10, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v14

    add-float/2addr v10, v14

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v13

    :goto_2
    int-to-float v13, v7

    int-to-float v14, v8

    int-to-float v15, v10

    int-to-float v3, v11

    invoke-static {v13, v14, v15, v3}, Landroid/support/transition/CircularPropagation;->distance(FFFF)F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-static {v14, v14, v4, v13}, Landroid/support/transition/CircularPropagation;->distance(FFFF)F

    move-result v4

    div-float v13, v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_4

    const-wide/16 v14, 0x12c

    :cond_4
    int-to-long v1, v5

    mul-long/2addr v1, v14

    long-to-float v1, v1

    iget v2, v0, Landroid/support/transition/CircularPropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method
