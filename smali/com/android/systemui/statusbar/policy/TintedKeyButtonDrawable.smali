.class public Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;
.super Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.source "TintedKeyButtonDrawable.java"


# instance fields
.field private final mDarkColor:I

.field private mDarkIntensity:F

.field private final mLightColor:I


# direct methods
.method private constructor <init>([Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mDarkIntensity:F

    iput p2, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mLightColor:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mDarkColor:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->setDarkIntensity(F)V

    return-void
.end method

.method private blendAlpha(IF)I
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {p1, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    return v3
.end method

.method public static create(Landroid/graphics/drawable/Drawable;II)Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1, p1, p2}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;-><init>([Landroid/graphics/drawable/Drawable;II)V

    return-object v0
.end method


# virtual methods
.method public getDarkIntensity()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mDarkIntensity:F

    return v0
.end method

.method public isDarkIntensitySet()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mDarkIntensity:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDarkIntensity(F)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mDarkIntensity:F

    iget v0, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mDarkColor:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->blendAlpha(IF)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->mLightColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->blendAlpha(IF)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/TintedKeyButtonDrawable;->invalidateSelf()V

    return-void
.end method
