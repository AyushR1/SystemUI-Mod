.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardUserSwitcherScrim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mAlpha:I

.field private mDarkColor:I

.field private mLayoutWidth:I

.field private mRadialGradientPaint:Landroid/graphics/Paint;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    const v0, 0x7f0600c8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    return-void
.end method

.method private updatePaint()V
    .locals 13

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float v5, v5

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v8, v7, [I

    iget v11, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    mul-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    aput v11, v8, v3

    aput v3, v8, v2

    new-array v7, v7, [F

    iget v11, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float v11, v11

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float/2addr v11, v12

    div-float/2addr v11, v0

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v7, v3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v5

    move v4, v6

    move v5, v0

    move-object v6, v8

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v6, v3, v2

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz v0, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    move v5, v4

    nop

    :cond_1
    const/4 v6, 0x0

    if-eqz v0, :cond_2

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    :goto_1
    move v7, v4

    goto :goto_2

    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    goto :goto_1

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
