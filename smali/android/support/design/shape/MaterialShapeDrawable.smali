.class public Landroid/support/design/shape/MaterialShapeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# instance fields
.field private alpha:I

.field private final cornerPaths:[Landroid/support/design/shape/ShapePath;

.field private final cornerTransforms:[Landroid/graphics/Matrix;

.field private final edgeTransforms:[Landroid/graphics/Matrix;

.field private interpolation:F

.field private final matrix:Landroid/graphics/Matrix;

.field private final paint:Landroid/graphics/Paint;

.field private paintStyle:Landroid/graphics/Paint$Style;

.field private final path:Landroid/graphics/Path;

.field private final pointF:Landroid/graphics/PointF;

.field private scale:F

.field private final scratch:[F

.field private final scratch2:[F

.field private final scratchRegion:Landroid/graphics/Region;

.field private shadowColor:I

.field private shadowElevation:I

.field private shadowEnabled:Z

.field private shadowRadius:I

.field private final shapePath:Landroid/support/design/shape/ShapePath;

.field private shapedViewModel:Landroid/support/design/shape/ShapePathModel;

.field private strokeWidth:F

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintList:Landroid/content/res/ColorStateList;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;

.field private final transparentRegion:Landroid/graphics/Region;

.field private useTintColorForShadow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/shape/MaterialShapeDrawable;-><init>(Landroid/support/design/shape/ShapePathModel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/design/shape/ShapePathModel;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowEnabled:Z

    iput-boolean v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    const/high16 v3, -0x1000000

    iput v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowColor:I

    const/4 v3, 0x5

    iput v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    const/16 v3, 0xa

    iput v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowRadius:I

    const/16 v3, 0xff

    iput v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->alpha:I

    iput v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->strokeWidth:F

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Matrix;

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    new-array v2, v0, [Landroid/graphics/Matrix;

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    new-array v2, v0, [Landroid/support/design/shape/ShapePath;

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    new-instance v2, Landroid/support/design/shape/ShapePath;

    invoke-direct {v2}, Landroid/support/design/shape/ShapePath;-><init>()V

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    nop

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    new-instance v3, Landroid/support/design/shape/ShapePath;

    invoke-direct {v3}, Landroid/support/design/shape/ShapePath;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private angleOfCorner(III)F
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    iget-object v5, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {v0, v4, v2, v3, v5}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    iget-object v4, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-int/lit8 v6, v1, 0x1

    rem-int/lit8 v6, v6, 0x4

    iget-object v7, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {v0, v6, v2, v3, v7}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    iget-object v6, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    iget-object v8, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, v0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float v10, v4, v8

    sub-float v11, v5, v9

    sub-float v12, v6, v8

    sub-float v13, v7, v9

    float-to-double v14, v11

    float-to-double v0, v10

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v14, v13

    float-to-double v1, v12

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v2, v0, v1

    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-gez v14, :cond_0

    float-to-double v14, v2

    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    add-double v14, v14, v16

    double-to-float v2, v14

    :cond_0
    return v2
.end method

.method private angleOfEdge(III)F
    .locals 12

    move v0, p1

    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2, p3, v2}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p2, p3, v4}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v6, v4, v2

    sub-float v7, v5, v3

    float-to-double v8, v7

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v8, v8

    return v8
.end method

.method private appendCornerPath(ILandroid/graphics/Path;)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/shape/ShapePath;->startX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/shape/ShapePath;->startY:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v0, v0, v2

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v1, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/support/design/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method

.method private appendEdgePath(ILandroid/graphics/Path;)V
    .locals 6

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/support/design/shape/ShapePath;->endX:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/support/design/shape/ShapePath;->endY:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/design/shape/ShapePath;->startX:F

    aput v2, v1, v3

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/design/shape/ShapePath;->startY:F

    aput v2, v1, v4

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v1, v1, v3

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v3, v3, v4

    iget-object v5, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch2:[F

    aget v4, v5, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/support/design/shape/ShapePath;->reset(FF)V

    invoke-direct {p0, p1}, Landroid/support/design/shape/MaterialShapeDrawable;->getEdgeTreatmentForIndex(I)Landroid/support/design/shape/EdgeTreatment;

    move-result-object v2

    iget v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/design/shape/EdgeTreatment;->getEdgePath(FFLandroid/support/design/shape/ShapePath;)V

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapePath:Landroid/support/design/shape/ShapePath;

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3, p2}, Landroid/support/design/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method

.method private getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p4, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_0
    int-to-float v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_1
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :pswitch_2
    int-to-float v1, p2

    invoke-virtual {p4, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCornerTreatmentForIndex(I)Landroid/support/design/shape/CornerTreatment;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getTopLeftCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getBottomLeftCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getBottomRightCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getTopRightCorner()Landroid/support/design/shape/CornerTreatment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEdgeTreatmentForIndex(I)Landroid/support/design/shape/EdgeTreatment;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getTopEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getLeftEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getBottomEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    invoke-virtual {v0}, Landroid/support/design/shape/ShapePathModel;->getRightEdge()Landroid/support/design/shape/EdgeTreatment;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPath(IILandroid/graphics/Path;)V
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->getPathForSize(IILandroid/graphics/Path;)V

    iget v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scale:F

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static modulateAlpha(II)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    mul-int v1, p0, v0

    ushr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private setCornerPathAndTransform(III)V
    .locals 5

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/shape/MaterialShapeDrawable;->getCoordinatesOfCorner(IIILandroid/graphics/PointF;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->angleOfCorner(III)F

    move-result v0

    invoke-direct {p0, p1}, Landroid/support/design/shape/MaterialShapeDrawable;->getCornerTreatmentForIndex(I)Landroid/support/design/shape/CornerTreatment;

    move-result-object v1

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v3, v3, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/design/shape/CornerTreatment;->getCornerPath(FFLandroid/support/design/shape/ShapePath;)V

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->angleOfEdge(III)F

    move-result v1

    const v2, 0x3fc90fdb

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->pointF:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v2, v2, p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private setEdgeTransform(III)V
    .locals 5

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/shape/ShapePath;->endX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerPaths:[Landroid/support/design/shape/ShapePath;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/support/design/shape/ShapePath;->endY:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->cornerTransforms:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->angleOfEdge(III)F

    move-result v0

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v2, v4, v2

    iget-object v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratch:[F

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->edgeTransforms:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private updateTintFilter()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->useTintColorForShadow:Z

    if-eqz v1, :cond_1

    iput v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowColor:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->alpha:I

    invoke-static {v0, v2}, Landroid/support/design/shape/MaterialShapeDrawable;->modulateAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowRadius:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowElevation:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {p0, v1, v2, v3}, Landroid/support/design/shape/MaterialShapeDrawable;->getPath(IILandroid/graphics/Path;)V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPathForSize(IILandroid/graphics/Path;)V
    .locals 3

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shapedViewModel:Landroid/support/design/shape/ShapePathModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1, p1, p2}, Landroid/support/design/shape/MaterialShapeDrawable;->setCornerPathAndTransform(III)V

    invoke-direct {p0, v1, p1, p2}, Landroid/support/design/shape/MaterialShapeDrawable;->setEdgeTransform(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->appendCornerPath(ILandroid/graphics/Path;)V

    invoke-direct {p0, v0, p3}, Landroid/support/design/shape/MaterialShapeDrawable;->appendEdgePath(ILandroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    invoke-direct {p0, v1, v2, v3}, Landroid/support/design/shape/MaterialShapeDrawable;->getPath(IILandroid/graphics/Path;)V

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->path:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/support/design/shape/MaterialShapeDrawable;->scratchRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->transparentRegion:Landroid/graphics/Region;

    return-object v1
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->alpha:I

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setInterpolation(F)V
    .locals 0

    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->interpolation:F

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->paintStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->shadowEnabled:Z

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->strokeWidth:F

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->updateTintFilter()V

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/shape/MaterialShapeDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->updateTintFilter()V

    invoke-virtual {p0}, Landroid/support/design/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method
