.class public Landroid/support/transition/ArcMotion;
.super Landroid/support/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_TANGENT:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    nop

    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v0, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/support/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v2, Landroid/support/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    sget-object v2, Landroid/support/transition/Styleable;->ARC_MOTION:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "minimumVerticalAngle"

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    const-string v5, "minimumHorizontalAngle"

    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    const-string v5, "maximumAngle"

    const/4 v6, 0x2

    invoke-static {v2, v3, v5, v6, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/transition/ArcMotion;->setMaximumAngle(F)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static toTangent(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arc must be between 0 and 90 degrees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v10, v3

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v11, p3, v1

    sub-float v12, p4, v2

    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float v13, v3, v4

    add-float v3, v1, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    add-float v3, v2, p4

    div-float v15, v3, v4

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v16, v13, v3

    cmpl-float v3, v2, p4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move/from16 v17, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    mul-float v3, v4, v12

    div-float v3, v13, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-eqz v17, :cond_1

    add-float v5, p4, v3

    move/from16 v6, p3

    goto :goto_1

    :cond_1
    add-float v5, v2, v3

    move v6, v1

    :goto_1
    iget v7, v0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v7, v7, v16

    iget v8, v0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v7, v8

    nop

    move/from16 v30, v6

    move v6, v5

    move/from16 v5, v30

    goto :goto_3

    :cond_2
    mul-float v3, v4, v11

    div-float v3, v13, v3

    if-eqz v17, :cond_3

    add-float v5, v1, v3

    move v6, v2

    goto :goto_2

    :cond_3
    sub-float v5, p3, v3

    move/from16 v6, p4

    :goto_2
    iget v7, v0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v7, v7, v16

    iget v8, v0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v7, v8

    :goto_3
    move/from16 v18, v7

    sub-float v19, v14, v5

    sub-float v20, v15, v6

    mul-float v3, v19, v19

    mul-float v7, v20, v20

    add-float v21, v3, v7

    iget v3, v0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    mul-float v3, v3, v16

    iget v7, v0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    mul-float v22, v3, v7

    const/4 v3, 0x0

    cmpg-float v7, v21, v18

    if-gez v7, :cond_5

    move/from16 v3, v18

    :cond_4
    :goto_4
    move/from16 v23, v3

    goto :goto_5

    :cond_5
    cmpl-float v7, v21, v22

    if-lez v7, :cond_4

    move/from16 v3, v22

    goto :goto_4

    :goto_5
    const/4 v3, 0x0

    cmpl-float v3, v23, v3

    if-eqz v3, :cond_6

    div-float v3, v23, v21

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v8, v5, v14

    mul-float/2addr v8, v7

    add-float v5, v14, v8

    sub-float v8, v6, v15

    mul-float/2addr v8, v7

    add-float v6, v15, v8

    :cond_6
    move/from16 v24, v5

    move/from16 v25, v6

    add-float v3, v1, v24

    div-float v26, v3, v4

    add-float v3, v2, v25

    div-float v27, v3, v4

    add-float v3, v24, p3

    div-float v28, v3, v4

    add-float v3, v25, p4

    div-float v29, v3, v4

    move-object v3, v10

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v6, v28

    move/from16 v7, v29

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v10
.end method

.method public setMaximumAngle(F)V
    .locals 1

    iput p1, p0, Landroid/support/transition/ArcMotion;->mMaximumAngle:F

    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .locals 1

    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalAngle:F

    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumHorizontalTangent:F

    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .locals 1

    iput p1, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalAngle:F

    invoke-static {p1}, Landroid/support/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ArcMotion;->mMinimumVerticalTangent:F

    return-void
.end method
