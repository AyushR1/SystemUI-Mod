.class public Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Landroid/support/design/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"


# instance fields
.field private final cradleDiameter:F

.field private cradleVerticalOffset:F

.field private horizontalOffset:F

.field private final roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/shape/EdgeTreatment;-><init>()V

    iput p1, p0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleDiameter:F

    iput p2, p0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    iput p3, p0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_0

    iput v0, p0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cradleVerticalOffset must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCradleVerticalOffset()F
    .locals 1

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFLandroid/support/design/shape/ShapePath;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v9, p3

    iget v2, v0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleDiameter:F

    mul-float v2, v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v2, v3

    iget v2, v0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v11, p2, v2

    div-float v2, v1, v3

    iget v3, v0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v12, v2, v3

    iget v2, v0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v13, p2, v2

    div-float v14, v13, v10

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v14, v2

    const/4 v8, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {v9, v1, v8}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    return-void

    :cond_0
    mul-float v15, v13, v13

    mul-float v2, v10, v10

    sub-float/2addr v2, v15

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v7, v2

    sub-float v16, v12, v7

    sub-float v6, v16, v11

    add-float v17, v12, v7

    add-float v18, v17, v11

    invoke-virtual {v9, v6, v8}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    const/4 v4, 0x0

    const/high16 v19, 0x43870000    # 270.0f

    const/high16 v20, 0x42b40000    # 90.0f

    move-object v2, v9

    move v3, v6

    move/from16 v5, v16

    move/from16 v21, v6

    move v6, v11

    move/from16 v22, v7

    move/from16 v7, v19

    move v0, v8

    move/from16 v8, v20

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/shape/ShapePath;->addArc(FFFFFF)V

    neg-float v2, v10

    sub-float v19, v2, v13

    sub-float v20, v10, v13

    sub-float v3, v12, v10

    add-float v5, v12, v10

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v8, -0x3ccc0000    # -180.0f

    move-object v2, v9

    move/from16 v4, v19

    move/from16 v6, v20

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/shape/ShapePath;->addArc(FFFFFF)V

    const/4 v4, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    move/from16 v3, v17

    move/from16 v5, v18

    move v6, v11

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/shape/ShapePath;->addArc(FFFFFF)V

    invoke-virtual {v9, v1, v0}, Landroid/support/design/shape/ShapePath;->lineTo(FF)V

    return-void
.end method

.method public setHorizontalOffset(F)V
    .locals 0

    iput p1, p0, Landroid/support/design/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return-void
.end method
