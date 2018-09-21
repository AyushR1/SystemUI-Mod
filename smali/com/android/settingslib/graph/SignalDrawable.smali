.class public Lcom/android/settingslib/graph/SignalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;
    }
.end annotation


# static fields
.field private static final FIT:[F

.field private static final INV_TAN:F

.field private static X_PATH:[[F


# instance fields
.field private mAnimating:Z

.field private final mAppliedCornerInset:F

.field private final mChangeDot:Ljava/lang/Runnable;

.field private mCurrentDot:I

.field private final mCutPath:Landroid/graphics/Path;

.field private final mDarkModeBackgroundColor:I

.field private final mDarkModeFillColor:I

.field private final mForegroundPaint:Landroid/graphics/Paint;

.field private final mForegroundPath:Landroid/graphics/Path;

.field private final mFullPath:Landroid/graphics/Path;

.field private final mHandler:Landroid/os/Handler;

.field private mIntrinsicSize:I

.field private mLevel:I

.field private final mLightModeBackgroundColor:I

.field private final mLightModeFillColor:I

.field private mNumLevels:F

.field private mOldDarkIntensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

.field private mState:I

.field private final mVirtualLeft:Landroid/graphics/PointF;

.field private final mVirtualTop:Landroid/graphics/PointF;

.field private mVisible:Z

.field private final mXPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    const/16 v1, 0xc

    new-array v1, v1, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    aput-object v3, v1, v0

    new-array v0, v2, [F

    fill-array-data v0, :array_5

    const/4 v3, 0x4

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_6

    const/4 v3, 0x5

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_7

    const/4 v3, 0x6

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_8

    const/4 v3, 0x7

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_9

    const/16 v3, 0x8

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_a

    const/16 v3, 0x9

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_b

    const/16 v3, 0xa

    aput-object v0, v1, v3

    new-array v0, v2, [F

    fill-array-data v0, :array_c

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    const-wide v0, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    sput v1, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    return-void

    nop

    :array_0
    .array-data 4
        0x4010a3d7    # 2.26f
        -0x3fbeb852    # -3.02f
        0x3fe147ae    # 1.76f
    .end array-data

    :array_1
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    :array_2
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    :array_3
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    :array_5
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    :array_6
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_7
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    :array_8
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    :array_9
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    :array_a
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    :array_b
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    :array_c
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;-><init>(Lcom/android/settingslib/graph/SignalDrawable;Lcom/android/settingslib/graph/SignalDrawable$1;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/SignalDrawable$1;-><init>(Lcom/android/settingslib/graph/SignalDrawable;)V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    sget v0, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_background:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeBackgroundColor:I

    sget v0, Lcom/android/settingslib/R$color;->dark_mode_icon_color_dual_tone_fill:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeFillColor:I

    sget v0, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_background:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeBackgroundColor:I

    sget v0, Lcom/android/settingslib/R$color;->light_mode_icon_color_dual_tone_fill:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeFillColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->signal_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->stat_sys_mobile_signal_circle_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    return-void
.end method

.method static synthetic access$102(Lcom/android/settingslib/graph/SignalDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    return p1
.end method

.method static synthetic access$104(Lcom/android/settingslib/graph/SignalDrawable;)I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settingslib/graph/SignalDrawable;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/graph/SignalDrawable;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private calcFit(F)F
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    array-length v3, v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/android/settingslib/graph/SignalDrawable;->FIT:[F

    aget v3, v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    mul-float/2addr v1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V
    .locals 7

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mCurrentDot:I

    if-ne p6, v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    add-float v4, p3, p5

    add-float v5, p4, p5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, p3

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public static getAirplaneModeState(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    return v0
.end method

.method private getBackgroundColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getCarrierChangeState(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getEmptyState(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    return v0
.end method

.method private getFillColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getLevel(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getNumLevels(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getState(I)I
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static getState(IIZ)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method

.method private setSignalState(I)V
    .locals 1

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    invoke-direct {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateAnimation()V
    .locals 3

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mAnimating:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settingslib/graph/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/graph/SignalDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v8, v9, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v8, v1, v14}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const v15, 0x3daaaaab

    mul-float v1, v15, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v6, v1

    const v1, 0x3d34b4b5

    mul-float v22, v1, v10

    const v1, 0x3f3504f7

    mul-float v23, v1, v22

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    sub-float v3, v10, v6

    sub-float v3, v3, v22

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    add-float v3, v6, v22

    iget v4, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v3, v16, v22

    sub-float v25, v2, v3

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v26, v6, v2

    sub-float v27, v9, v6

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v2, v6

    mul-float v3, v16, v22

    add-float v28, v2, v3

    const/16 v29, 0x0

    const/high16 v30, -0x3cf90000    # -135.0f

    const/16 v31, 0x0

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v2, v6

    add-float v2, v2, v22

    sub-float v2, v2, v23

    sub-float v3, v10, v6

    sub-float v3, v3, v22

    sub-float v3, v3, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float v25, v6, v2

    sub-float v2, v10, v6

    mul-float v3, v16, v22

    sub-float v26, v2, v3

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v2, v6

    mul-float v3, v16, v22

    add-float v27, v2, v3

    sub-float v28, v10, v6

    const/high16 v29, -0x3cf90000    # -135.0f

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    sub-float v2, v2, v22

    sub-float v3, v10, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v9, v6

    mul-float v3, v16, v22

    sub-float v25, v2, v3

    sub-float v2, v10, v6

    mul-float v3, v16, v22

    sub-float v26, v2, v3

    sub-float v27, v9, v6

    sub-float v28, v10, v6

    const/high16 v29, 0x42b40000    # 90.0f

    const/high16 v30, -0x3d4c0000    # -90.0f

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v31}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const v1, 0x3f155556

    mul-float v3, v1, v9

    const v1, 0x3e2aaaab

    mul-float v2, v1, v9

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float v17, v1, v10

    const v1, 0x3d2aaaab

    mul-float v18, v1, v10

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v4, v9, v6

    sub-float v5, v10, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v4, v3

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v4, v2

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    mul-float v0, v18, v16

    add-float v19, v0, v17

    sub-float v0, v9, v6

    sub-float v20, v0, v17

    sub-float v0, v10, v6

    sub-float v21, v0, v17

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v4, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/16 v24, 0x2

    move-object v0, v7

    move/from16 v25, v2

    move-object v2, v4

    move/from16 v26, v3

    move/from16 v3, v20

    const/4 v5, 0x3

    move/from16 v4, v21

    move v11, v5

    const/4 v14, 0x2

    move/from16 v5, v17

    move/from16 v27, v6

    move/from16 v6, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    sub-float v3, v20, v19

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    mul-float v0, v19, v16

    sub-float v3, v20, v0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/graph/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    goto :goto_1

    :cond_2
    move v11, v4

    move/from16 v27, v6

    const/4 v14, 0x2

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne v1, v14, :cond_3

    const v1, 0x3ea88889

    mul-float/2addr v1, v9

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v3, v9, v27

    sub-float v4, v10, v27

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v3, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_3
    :goto_1
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne v0, v12, :cond_4

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    sub-float v1, v9, v27

    add-float v6, v27, v22

    iget v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v6, v2

    sget v2, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float v2, v2, v22

    sub-float/2addr v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    add-float v6, v27, v22

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mAppliedCornerInset:F

    add-float/2addr v6, v1

    sget v1, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float v1, v1, v22

    sub-float/2addr v6, v1

    sub-float v1, v10, v27

    invoke-virtual {v0, v6, v1}, Landroid/graphics/PointF;->set(FF)V

    mul-float/2addr v15, v10

    sget v0, Lcom/android/settingslib/graph/SignalDrawable;->INV_TAN:F

    mul-float/2addr v0, v15

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v9, v27

    sub-float/2addr v2, v15

    sub-float v3, v10, v27

    sub-float/2addr v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v9, v27

    sub-float/2addr v2, v15

    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mVirtualLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v0

    sub-float v3, v10, v27

    sub-float/2addr v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v9, v27

    sub-float/2addr v2, v15

    sub-float v3, v10, v27

    sub-float/2addr v3, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_2

    :cond_4
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mSlash:Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;

    float-to-int v1, v10

    float-to-int v2, v9

    iget-object v3, v7, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/settingslib/graph/SignalDrawable$SlashArtist;->draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-eq v0, v11, :cond_6

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    int-to-float v0, v0

    iget v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-direct {v7, v0}, Lcom/android/settingslib/graph/SignalDrawable;->calcFit(F)F

    move-result v0

    mul-float v16, v16, v27

    sub-float v1, v9, v16

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    int-to-float v2, v0

    add-float v19, v27, v2

    sub-float v20, v10, v27

    sget-object v21, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v16, v1

    move/from16 v17, v27

    move/from16 v18, v27

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    iget-object v2, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mState:I

    if-ne v0, v14, :cond_8

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    mul-float/2addr v1, v9

    sget-object v3, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    aget-object v3, v3, v2

    aget v2, v3, v12

    mul-float/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v12

    :goto_3
    sget-object v1, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float/2addr v2, v9

    sget-object v4, Lcom/android/settingslib/graph/SignalDrawable;->X_PATH:[[F

    aget-object v4, v4, v0

    aget v4, v4, v12

    mul-float/2addr v4, v10

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, v7, Lcom/android/settingslib/graph/SignalDrawable;->mXPath:Landroid/graphics/Path;

    iget-object v1, v7, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/16 v0, 0xff

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2

    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getNumLevels(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setNumLevels(I)V

    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/graph/SignalDrawable;->setSignalState(I)V

    invoke-static {p1}, Lcom/android/settingslib/graph/SignalDrawable;->getLevel(I)I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mLevel:I

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->getBackgroundColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/settingslib/graph/SignalDrawable;->getFillColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mOldDarkIntensity:F

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setIntrinsicSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mIntrinsicSize:I

    return-void
.end method

.method public setNumLevels(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/settingslib/graph/SignalDrawable;->mNumLevels:F

    invoke-virtual {p0}, Lcom/android/settingslib/graph/SignalDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iput-boolean p1, p0, Lcom/android/settingslib/graph/SignalDrawable;->mVisible:Z

    invoke-direct {p0}, Lcom/android/settingslib/graph/SignalDrawable;->updateAnimation()V

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
