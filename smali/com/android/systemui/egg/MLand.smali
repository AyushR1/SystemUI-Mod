.class public Lcom/android/systemui/egg/MLand;
.super Landroid/widget/FrameLayout;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/egg/MLand$Star;,
        Lcom/android/systemui/egg/MLand$Cloud;,
        Lcom/android/systemui/egg/MLand$Mountain;,
        Lcom/android/systemui/egg/MLand$Cactus;,
        Lcom/android/systemui/egg/MLand$Building;,
        Lcom/android/systemui/egg/MLand$Scenery;,
        Lcom/android/systemui/egg/MLand$Stem;,
        Lcom/android/systemui/egg/MLand$Pop;,
        Lcom/android/systemui/egg/MLand$Obstacle;,
        Lcom/android/systemui/egg/MLand$Player;,
        Lcom/android/systemui/egg/MLand$GameView;,
        Lcom/android/systemui/egg/MLand$Params;
    }
.end annotation


# static fields
.field static final ANTENNAE:[I

.field static final CACTI:[I

.field public static final DEBUG:Z

.field public static final DEBUG_IDDQD:Z

.field static final EYES:[I

.field static final MOUNTAINS:[I

.field static final MOUTHS:[I

.field private static PARAMS:Lcom/android/systemui/egg/MLand$Params;

.field private static final SKIES:[[I

.field private static dp:F

.field static final hsv:[F

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCountdown:I

.field private mCurrentPipeId:I

.field private mFlipped:Z

.field private mFrozen:Z

.field private mGameControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/egg/MLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerTracePaint:Landroid/graphics/Paint;

.field private mPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/egg/MLand$Player;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScene:I

.field private mScoreFields:Landroid/view/ViewGroup;

.field private mSplash:Landroid/view/View;

.field private mTaps:I

.field private mTimeOfDay:I

.field private mTouchPaint:Landroid/graphics/Paint;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWidth:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "MLand"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    const-string v0, "MLand.iddqd"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    const/4 v0, 0x4

    new-array v2, v0, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v1

    sput-object v2, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lcom/android/systemui/egg/MLand;->dp:F

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    sput-object v2, Lcom/android/systemui/egg/MLand;->hsv:[F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/systemui/egg/MLand;->sTmpRect:Landroid/graphics/Rect;

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    sput-object v2, Lcom/android/systemui/egg/MLand;->ANTENNAE:[I

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    sput-object v2, Lcom/android/systemui/egg/MLand;->EYES:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUTHS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/systemui/egg/MLand;->CACTI:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUNTAINS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x3f3f01
        -0x5f5f01
    .end array-data

    :array_1
    .array-data 4
        -0xfffff0
        -0x1000000
    .end array-data

    :array_2
    .array-data 4
        -0xffffc0
        -0xfffff0
    .end array-data

    :array_3
    .array-data 4
        -0x5f7fe0
        -0xdfbf80
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x7f08031d
        0x7f08031e
    .end array-data

    :array_6
    .array-data 4
        0x7f08031f
        0x7f080320
    .end array-data

    :array_7
    .array-data 4
        0x7f080322
        0x7f080323
        0x7f080324
        0x7f080325
    .end array-data

    :array_8
    .array-data 4
        0x7f0800dd
        0x7f0800de
        0x7f0800df
    .end array-data

    :array_9
    .array-data 4
        0x7f080327
        0x7f080328
        0x7f080329
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand;->setFocusable(Z)V

    new-instance v2, Lcom/android/systemui/egg/MLand$Params;

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/egg/MLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object v2, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    sget-object v2, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    const v3, -0x7f000001

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/systemui/egg/MLand;->dp:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->setLayoutDirection(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "egg_mland_create"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MLand"

    array-length v1, p1

    if-nez v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/egg/MLand;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/egg/MLand;->step(JJ)V

    return-void
.end method

.method static synthetic access$1000()Lcom/android/systemui/egg/MLand$Params;
    .locals 1

    sget-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    return-object v0
.end method

.method static synthetic access$1100(I)F
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/egg/MLand;->luma(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/egg/MLand;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/systemui/egg/MLand;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/egg/MLand;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/egg/MLand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    return p1
.end method

.method private addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    nop

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static final clamp(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private clearPlayers()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final frand()F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static final irand(II)I
    .locals 2

    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static isGamePad(Landroid/view/InputDevice;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    and-int/lit16 v1, v0, 0x401

    const/16 v2, 0x401

    if-eq v1, v2, :cond_1

    const v1, 0x1000010

    and-int v2, v0, v1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static final lerp(FFF)F
    .locals 1

    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private static luma(I)F
    .locals 3

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v1, v0

    const/high16 v0, 0x4b7f0000    # 1.671168E7f

    div-float/2addr v1, v0

    const v0, 0xff00

    and-int/2addr v0, p0

    int-to-float v0, v0

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v2, v0

    const/high16 v0, 0x477f0000    # 65280.0f

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    and-int/lit16 v0, p0, 0xff

    int-to-float v0, v0

    const v2, 0x3d93dd98    # 0.0722f

    mul-float/2addr v2, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public static pick([I)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    aget v0, p0, v0

    return v0
.end method

.method private poke(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    return-void
.end method

.method private poke(IFF)V
    .locals 5

    const-string v0, "poke(%d)"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand;->start(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    iget v2, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_0
    return-void
.end method

.method private realignPlayers()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v3, v1}, Lcom/android/systemui/egg/MLand$Player;->setX(F)V

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/egg/MLand$Player;->access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    :cond_0
    return-void
.end method

.method public static final rlerp(FFF)F
    .locals 2

    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private step(JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    long-to-float v1, v8

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-wide/from16 v10, p3

    long-to-float v1, v10

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->dt:F

    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/systemui/egg/MLand;->t:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->t:F

    iget v1, v0, Lcom/android/systemui/egg/MLand;->dt:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->dt:F

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    move v1, v13

    :goto_0
    move v14, v1

    if-ge v14, v12, :cond_2

    invoke-virtual {v0, v14}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v1, v15, Lcom/android/systemui/egg/MLand$GameView;

    if-eqz v1, :cond_1

    move-object v1, v15

    check-cast v1, Lcom/android/systemui/egg/MLand$GameView;

    iget v6, v0, Lcom/android/systemui/egg/MLand;->t:F

    iget v7, v0, Lcom/android/systemui/egg/MLand;->dt:F

    move-wide v2, v8

    move-wide v4, v10

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/egg/MLand$GameView;->step(JJFF)V

    :cond_1
    add-int/lit8 v1, v14, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v14, v3

    :goto_1
    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_a

    invoke-virtual {v0, v14}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/egg/MLand$Player;->access$500(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/MLand$Player;->below(I)Z

    move-result v4

    const-wide/16 v5, 0x50

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v4, :cond_3

    invoke-direct {v0, v14}, Lcom/android/systemui/egg/MLand;->poke(I)V

    invoke-direct {v0, v14}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    goto :goto_2

    :cond_3
    const-string v4, "player %d hit the floor"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v13

    invoke-static {v4, v7}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v14, v5, v6}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->die()V

    :cond_4
    :goto_2
    const/4 v4, 0x0

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_3
    add-int/lit8 v15, v7, -0x1

    if-lez v7, :cond_7

    iget-object v7, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/egg/MLand$Obstacle;

    invoke-virtual {v7, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->intersects(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v16

    if-eqz v16, :cond_5

    sget-boolean v16, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-nez v16, :cond_5

    const-string v2, "player hit an obstacle"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x50

    invoke-direct {v0, v14, v5, v6}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->cleared(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v7, Lcom/android/systemui/egg/MLand$Stem;

    if-eqz v2, :cond_6

    move-object v2, v7

    check-cast v2, Lcom/android/systemui/egg/MLand$Stem;

    iget v2, v2, Lcom/android/systemui/egg/MLand$Stem;->id:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v2

    :cond_6
    :goto_4
    move v7, v15

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v3}, Lcom/android/systemui/egg/MLand$Player;->access$600(Lcom/android/systemui/egg/MLand$Player;)I

    move-result v2

    if-le v4, v2, :cond_8

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand$Player;->access$700(Lcom/android/systemui/egg/MLand$Player;I)V

    :cond_8
    invoke-static {v3}, Lcom/android/systemui/egg/MLand$Player;->access$500(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_a
    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "egg_mland_taps"

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iput v13, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v13

    :goto_5
    if-ge v3, v2, :cond_b

    iget-object v4, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "egg_mland_score"

    invoke-virtual {v4}, Lcom/android/systemui/egg/MLand$Player;->getScore()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v1, v14, -0x1

    const/4 v2, 0x0

    if-lez v14, :cond_e

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/egg/MLand$Obstacle;

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v2, v4, v2

    if-gez v2, :cond_d

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    instance-of v4, v3, Lcom/android/systemui/egg/MLand$Scenery;

    if-eqz v4, :cond_d

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/egg/MLand$Scenery;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    iget v6, v4, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v2, v5, v2

    if-gez v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_d
    :goto_7
    nop

    move v14, v1

    goto :goto_6

    :cond_e
    iget-boolean v3, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v3, :cond_f

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    iget v3, v0, Lcom/android/systemui/egg/MLand;->t:F

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v3

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    add-int/2addr v3, v4

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int/2addr v4, v5

    div-int/2addr v4, v6

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    div-int/2addr v5, v6

    const/16 v6, 0xfa

    invoke-static {v13, v6}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v7

    new-instance v14, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v15

    sub-int v6, v3, v5

    int-to-float v6, v6

    invoke-direct {v14, v0, v15, v6, v13}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    move-object v6, v14

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v15, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v15, v15, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    iget v13, v6, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v13, v13

    const/16 v2, 0x33

    invoke-direct {v14, v15, v13, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v14}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v13, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v13, v4

    int-to-float v13, v13

    invoke-virtual {v6, v13}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    iget v13, v6, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    neg-float v13, v13

    int-to-float v14, v5

    sub-float/2addr v13, v14

    invoke-virtual {v6, v13}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v13, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v13, v13, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v14, 0x3f400000    # 0.75f

    mul-float/2addr v13, v14

    invoke-virtual {v6, v13}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    invoke-virtual {v6}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    int-to-long v14, v7

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v13, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v14

    sget-object v15, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v15, v15, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v15, v15

    invoke-direct {v13, v0, v14, v15}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v15, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v15, v15, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    move/from16 v17, v1

    sget-object v1, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    invoke-direct {v14, v15, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v13, v14}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v13, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    sget-object v1, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v13, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v1, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    invoke-virtual {v13, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v13, v1}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    const/high16 v14, -0x41800000    # -0.25f

    invoke-virtual {v13, v14}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    invoke-virtual {v13}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v14

    iget v15, v6, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    int-to-float v1, v4

    sub-float/2addr v15, v1

    invoke-virtual {v14, v15}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v14}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v15, -0x40800000    # -1.0f

    invoke-virtual {v1, v15}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v14, v7

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v14, 0xfa

    invoke-virtual {v1, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/16 v14, 0xfa

    invoke-static {v1, v14}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v1

    new-instance v14, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v15

    iget v2, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int/2addr v2, v3

    move/from16 v18, v3

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {v14, v0, v15, v2, v3}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    move-object v2, v14

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v14, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v14, v14, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    iget v15, v2, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v15, v15

    move-object/from16 v19, v6

    const/16 v6, 0x33

    invoke-direct {v3, v14, v15, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float/2addr v3, v6

    invoke-virtual {v2, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v6, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v6, v6

    iget v14, v2, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v6, v14

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v14, v1

    invoke-virtual {v3, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v14, 0x190

    invoke-virtual {v3, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v14, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v14, v14, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v14, v14

    invoke-direct {v3, v0, v6, v14}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v14, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v14, v14, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    sget-object v15, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v15, v15, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    move/from16 v20, v4

    const/16 v4, 0x33

    invoke-direct {v6, v14, v15, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationX(F)V

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationY(F)V

    sget-object v4, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/MLand$Obstacle;->setTranslationZ(F)V

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleX(F)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/MLand$Obstacle;->setScaleY(F)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Obstacle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v6, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v6, v6

    iget v14, v2, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v6, v14

    int-to-float v14, v5

    sub-float/2addr v6, v14

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v14, v1

    invoke-virtual {v4, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v14, 0x190

    invoke-virtual {v4, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v4, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    move/from16 v17, v1

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->invalidate()V

    return-void
.end method

.method private thump(IJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v2

    long-to-float v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method private unpoke(I)V
    .locals 4

    const-string v0, "unboost(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addPlayer()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    return-void
.end method

.method public getControllerPlayer(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getGameControllers()Ljava/util/ArrayList;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/egg/MLand;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    return-object v1
.end method

.method public getGameTime()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->t:F

    return v0
.end method

.method public getNumPlayers()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPlayer(I)Lcom/android/systemui/egg/MLand$Player;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hideSplash()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/egg/MLand$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/egg/MLand$3;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->access$800(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/android/systemui/egg/MLand$Player;->color:I

    const v4, -0x7f000001

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/android/systemui/egg/MLand$Player;->color:I

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->access$800(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->access$900(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->getX()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->getPivotX()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->getY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->getPivotY()F

    move-result v6

    add-float/2addr v5, v6

    const v6, 0x3fc90fdb

    sub-float v7, v4, v2

    float-to-double v7, v7

    sub-float v9, v5, v3

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v12, v6, v7

    float-to-double v6, v2

    float-to-double v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v2, v6

    float-to-double v6, v3

    float-to-double v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v10, v8

    add-double/2addr v6, v10

    double-to-float v3, v6

    iget-object v11, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "generic: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "keyDown: %d"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x60

    if-eq p1, v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->poke(I)V

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "keyDown: %d"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0x60

    if-eq p1, v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "touch: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v2, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget-boolean v6, p0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int v5, v6, v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v1

    :pswitch_2
    invoke-direct {p0, v5, v2, v4}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "trackball: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v1

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/systemui/egg/MLand;->poke(I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removePlayer()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    return-void
.end method

.method public reset()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "reset"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v4, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    iget v5, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    aget-object v4, v4, v5

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, v0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    iget-boolean v4, v0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/systemui/egg/MLand;->setScaleX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getChildCount()I

    move-result v4

    :goto_2
    add-int/lit8 v8, v4, -0x1

    if-lez v4, :cond_3

    invoke-virtual {v0, v8}, Lcom/android/systemui/egg/MLand;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v9, v4, Lcom/android/systemui/egg/MLand$GameView;

    if-eqz v9, :cond_2

    invoke-virtual {v0, v8}, Lcom/android/systemui/egg/MLand;->removeViewAt(I)V

    :cond_2
    nop

    move v4, v8

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput v2, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getWidth()I

    move-result v4

    iput v4, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getHeight()I

    move-result v4

    iput v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    if-eqz v4, :cond_4

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const/4 v11, 0x3

    if-ne v4, v11, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v4

    float-to-double v11, v4

    cmpl-double v4, v11, v9

    if-lez v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    const v11, 0x7f07041c

    if-eqz v4, :cond_7

    new-instance v12, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    const v13, 0x7f0803d1

    invoke-virtual {v12, v13}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v14, v13

    iget v15, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    sub-int/2addr v15, v13

    int-to-float v15, v15

    invoke-static {v14, v15}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v14

    invoke-virtual {v12, v14}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    iget v14, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const v15, 0x3f28f5c3    # 0.66f

    if-nez v14, :cond_6

    int-to-float v14, v13

    iget v6, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v15

    invoke-static {v14, v6}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v6

    invoke-virtual {v12, v6}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    invoke-virtual {v12}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_4

    :cond_6
    iget v6, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v15

    iget v14, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int/2addr v14, v13

    int-to-float v14, v14

    invoke-static {v6, v14}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v6

    invoke-virtual {v12, v6}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    invoke-virtual {v12}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v14}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v14, -0x3f008000    # -7.984375f

    invoke-virtual {v6, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_4
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v12, v6}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const/4 v6, 0x2

    if-nez v4, :cond_e

    iget v12, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    if-eq v12, v3, :cond_9

    iget v12, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    if-ne v12, v6, :cond_8

    goto :goto_5

    :cond_8
    move v12, v2

    goto :goto_6

    :cond_9
    :goto_5
    move v12, v3

    :goto_6
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v13

    if-eqz v12, :cond_a

    const/high16 v14, 0x3f400000    # 0.75f

    cmpg-float v14, v13, v14

    if-ltz v14, :cond_b

    :cond_a
    cmpg-float v5, v13, v5

    if-gez v5, :cond_e

    :cond_b
    new-instance v5, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v0, v14}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    const v14, 0x7f080326

    invoke-virtual {v5, v14}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    invoke-virtual {v5}, Lcom/android/systemui/egg/MLand$Star;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v12, :cond_c

    const/16 v15, 0xff

    goto :goto_7

    :cond_c
    const/16 v15, 0x80

    :goto_7
    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v14, v14, v16

    if-lez v14, :cond_d

    const/high16 v14, -0x40800000    # -1.0f

    goto :goto_8

    :cond_d
    move v14, v7

    :goto_8
    invoke-virtual {v5, v14}, Lcom/android/systemui/egg/MLand$Star;->setScaleX(F)V

    invoke-virtual {v5}, Lcom/android/systemui/egg/MLand$Star;->getScaleX()F

    move-result v14

    const/high16 v15, 0x40a00000    # 5.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v15, v2}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v2

    mul-float/2addr v14, v2

    invoke-virtual {v5, v14}, Lcom/android/systemui/egg/MLand$Star;->setRotation(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v11, v2

    iget v14, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    sub-int/2addr v14, v2

    int-to-float v14, v14

    invoke-static {v11, v14}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/systemui/egg/MLand$Star;->setTranslationX(F)V

    int-to-float v11, v2

    iget v14, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int/2addr v14, v2

    int-to-float v14, v14

    invoke-static {v11, v14}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/systemui/egg/MLand$Star;->setTranslationY(F)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v11}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    iget v2, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    div-int/lit8 v2, v2, 0x6

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v5

    float-to-double v11, v5

    cmpg-double v5, v11, v9

    if-gez v5, :cond_f

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    const/16 v5, 0x14

    const/4 v8, 0x0

    :goto_a
    const/16 v9, 0x14

    if-ge v8, v9, :cond_16

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x3fd3333333333333L    # 0.3

    cmpg-double v10, v10, v12

    if-gez v10, :cond_10

    iget v10, v0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    if-eqz v10, :cond_10

    new-instance v10, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    :goto_b
    goto :goto_d

    :cond_10
    float-to-double v10, v9

    const-wide v12, 0x3fe3333333333333L    # 0.6

    cmpg-double v10, v10, v12

    if-gez v10, :cond_11

    if-nez v3, :cond_11

    new-instance v10, Lcom/android/systemui/egg/MLand$Cloud;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/android/systemui/egg/MLand$Cloud;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto :goto_b

    :cond_11
    iget v10, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    packed-switch v10, :pswitch_data_0

    new-instance v10, Lcom/android/systemui/egg/MLand$Building;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/android/systemui/egg/MLand$Building;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto :goto_c

    :pswitch_0
    new-instance v10, Lcom/android/systemui/egg/MLand$Mountain;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/android/systemui/egg/MLand$Mountain;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto :goto_c

    :pswitch_1
    new-instance v10, Lcom/android/systemui/egg/MLand$Cactus;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lcom/android/systemui/egg/MLand$Cactus;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    nop

    :goto_c
    nop

    int-to-float v11, v8

    const/high16 v12, 0x41a00000    # 20.0f

    div-float/2addr v11, v12

    iput v11, v10, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    const v11, 0x3f59999a    # 0.85f

    iget v12, v10, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    mul-float/2addr v11, v12

    iput v11, v10, Lcom/android/systemui/egg/MLand$Scenery;->v:F

    iget v11, v0, Lcom/android/systemui/egg/MLand;->mScene:I

    if-nez v11, :cond_12

    const v11, -0x777778

    invoke-virtual {v10, v11}, Lcom/android/systemui/egg/MLand$Scenery;->setBackgroundColor(I)V

    sget-object v11, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v11, v11, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    invoke-static {v11, v2}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    :cond_12
    const/high16 v11, 0x437f0000    # 255.0f

    iget v12, v10, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v10}, Lcom/android/systemui/egg/MLand$Scenery;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_13
    :goto_d
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    iget v12, v10, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    iget v13, v10, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    instance-of v12, v10, Lcom/android/systemui/egg/MLand$Building;

    if-eqz v12, :cond_14

    const/16 v12, 0x50

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_e

    :cond_14
    const/16 v12, 0x30

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v12

    instance-of v13, v10, Lcom/android/systemui/egg/MLand$Star;

    if-eqz v13, :cond_15

    mul-float v13, v12, v12

    iget v14, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_e

    :cond_15
    mul-float v13, v12, v12

    iget v14, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float v13, v7, v13

    float-to-int v13, v13

    iget v14, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    div-int/2addr v14, v6

    add-int/2addr v13, v14

    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_e
    invoke-virtual {v0, v10, v11}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v12, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    neg-int v12, v12

    int-to-float v12, v12

    iget v13, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    iget v14, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-static {v12, v13}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/android/systemui/egg/MLand$Scenery;->setTranslationX(F)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    :cond_16
    iget-object v6, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v0, v7}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;)V

    invoke-virtual {v7}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    goto :goto_f

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    iget-object v6, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v6}, Landroid/animation/TimeAnimator;->cancel()V

    :cond_18
    new-instance v6, Landroid/animation/TimeAnimator;

    invoke-direct {v6}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    iget-object v6, v0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    new-instance v7, Lcom/android/systemui/egg/MLand$1;

    invoke-direct {v7, v0}, Lcom/android/systemui/egg/MLand$1;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual {v6, v7}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScoreFieldHolder(Landroid/view/ViewGroup;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-void
.end method

.method public setupPlayers(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->clearPlayers()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showSplash()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v4, 0x7f0a026d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v3, 0x7f0a026e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v2, 0x7f0a026c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 5

    const-string v0, "start(startPlaying=%s)"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v2, 0x7f0a026c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v2, 0x7f0a026d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const v3, 0x7f0a026e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    new-instance v3, Lcom/android/systemui/egg/MLand$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/egg/MLand$2;-><init>(Lcom/android/systemui/egg/MLand;Landroid/widget/TextView;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/egg/MLand$Player;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    iput-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    :cond_3
    return-void
.end method

.method public startPlaying()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->t:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getGameTime()F

    move-result v0

    sget-object v1, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->hideSplash()V

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "egg_mland_players"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v3, v0}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->start()V

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    sget-object v1, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    iput-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/egg/MLand$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$4;-><init>(Lcom/android/systemui/egg/MLand;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/egg/MLand;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public willNotDraw()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
