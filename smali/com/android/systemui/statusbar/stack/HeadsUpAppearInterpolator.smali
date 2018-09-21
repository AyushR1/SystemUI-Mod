.class public Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "HeadsUpAppearInterpolator.java"


# static fields
.field private static X1:F

.field private static X2:F

.field private static XTOT:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x437a0000    # 250.0f

    sput v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X2:F

    sget v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    sget v1, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X2:F

    add-float/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->XTOT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->getAppearPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method private static getAppearPath()Landroid/graphics/Path;
    .locals 11

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x42a00000    # 80.0f

    sget v1, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    sget v3, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float v3, v1, v3

    div-float v4, v8, v9

    sget v1, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    mul-float/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float v5, v1, v2

    div-float v6, v8, v9

    sget v1, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    sget v2, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float v7, v1, v2

    div-float v10, v8, v9

    move-object v1, v0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    sget v1, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    sget v2, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X2:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sget v2, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float v2, v1, v2

    div-float v3, v8, v9

    sget v1, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    sget v4, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X2:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    sget v4, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float v4, v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method

.method public static getFractionUntilOvershoot()F
    .locals 2

    sget v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->X1:F

    sget v1, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->XTOT:F

    div-float/2addr v0, v1

    return v0
.end method
