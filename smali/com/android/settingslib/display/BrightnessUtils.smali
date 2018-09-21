.class public Lcom/android/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# direct methods
.method public static final convertGammaToLinear(III)I
    .locals 5

    int-to-float v0, p0

    const/4 v1, 0x0

    const v2, 0x447fc000    # 1023.0f

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    div-float v1, v0, v1

    invoke-static {v1}, Landroid/util/MathUtils;->sq(F)F

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x3f0f564f

    sub-float v1, v0, v1

    const v2, 0x3e371ff0

    div-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/MathUtils;->exp(F)F

    move-result v1

    const v2, 0x3e91c020

    add-float/2addr v1, v2

    :goto_0
    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v4, 0x41400000    # 12.0f

    div-float v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static final convertLinearToGamma(III)I
    .locals 4

    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-static {v0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const v1, 0x3e371ff0

    const v2, 0x3e91c020

    sub-float v2, v0, v2

    invoke-static {v2}, Landroid/util/MathUtils;->log(F)F

    move-result v2

    mul-float/2addr v1, v2

    const v2, 0x3f0f564f

    add-float/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    const v3, 0x447fc000    # 1023.0f

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method
