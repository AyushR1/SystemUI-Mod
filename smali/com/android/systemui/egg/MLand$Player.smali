.class Lcom/android/systemui/egg/MLand$Player;
.super Landroid/widget/ImageView;
.source "MLand.java"

# interfaces
.implements Lcom/android/systemui/egg/MLand$GameView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Player"
.end annotation


# static fields
.field static sNextColor:I


# instance fields
.field public color:I

.field public final corners:[F

.field public dv:F

.field private mAlive:Z

.field private mBoosting:Z

.field private mLand:Lcom/android/systemui/egg/MLand;

.field private mScore:I

.field private mScoreField:Landroid/widget/TextView;

.field private mTouchX:F

.field private mTouchY:F

.field private final sColors:[I

.field private final sHull:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    sget v1, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/systemui/egg/MLand$Player;->sNextColor:I

    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Player;->sColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance v0, Lcom/android/systemui/egg/MLand$Player$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$Player$1;-><init>(Lcom/android/systemui/egg/MLand$Player;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    :array_0
    .array-data 4
        -0x24bbc9
        -0xc48719
        -0xb4c00
        -0xf062a8
        -0x84e780
        -0x616162
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
        0x3f333333    # 0.7f
        0x0
        0x3f6b851f    # 0.92f
        0x3ea8f5c3    # 0.33f
        0x3f6b851f    # 0.92f
        0x3f400000    # 0.75f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3da3d70a    # 0.08f
        0x3f400000    # 0.75f
        0x3da3d70a    # 0.08f
        0x3ea8f5c3    # 0.33f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/egg/MLand$Player;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/egg/MLand$Player;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/egg/MLand$Player;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/egg/MLand$Player;->addScore(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/egg/MLand$Player;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/egg/MLand$Player;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    return v0
.end method

.method private addScore(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    return-void
.end method

.method public static create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;
    .locals 4

    new-instance v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/egg/MLand$Player;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lcom/android/systemui/egg/MLand$Player;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand$Player;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/egg/MLand;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private setScore(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v1, :cond_0

    const-string v1, "??"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public below(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aget v3, v3, v4

    float-to-int v3, v3

    if-lt v3, p1, :cond_0

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public boost()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3fa00000    # 1.25f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z_BOOST:F

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setScaleX(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setScaleY(F)V

    return-void
.end method

.method public boost(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    iput p2, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->boost()V

    return-void
.end method

.method public die()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    return-void
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    return v0
.end method

.method public prepareCheckIntersections()V
    .locals 9

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_HIT_SIZE:I

    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v3, 0x2

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    mul-int/lit8 v8, v3, 0x2

    aget v7, v7, v8

    mul-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-float v6, v1

    iget-object v7, p0, Lcom/android/systemui/egg/MLand$Player;->sHull:[F

    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    mul-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/egg/MLand$Player;->corners:[F

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public reset()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-static {v0}, Lcom/android/systemui/egg/MLand;->access$1200(Lcom/android/systemui/egg/MLand;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setY(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    return-void
.end method

.method public setScoreField(Landroid/widget/TextView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScore:I

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setScore(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Player;->mScoreField:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->color:I

    invoke-static {v1}, Lcom/android/systemui/egg/MLand;->access$1100(I)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    return-void
.end method

.method public step(JJFF)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mAlive:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getTranslationX()F

    move-result v0

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->TRANSLATION_PER_SEC:F

    mul-float/2addr v1, p6

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Player;->setTranslationX(F)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BOOST_DV:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->G:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    :goto_0
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    mul-float/2addr v1, p6

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLand$Player;->setTranslationY(F)V

    iget v1, p0, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    int-to-float v2, v2

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/egg/MLand$Params;->MAX_V:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/egg/MLand;->rlerp(FFF)F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/egg/MLand;->clamp(F)F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v1, v3, v2}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result v1

    add-float/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/egg/MLand$Player;->setRotation(F)V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->prepareCheckIntersections()V

    return-void
.end method

.method public unboost()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand$Player;->mBoosting:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchY:F

    iput v0, p0, Lcom/android/systemui/egg/MLand$Player;->mTouchX:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->PLAYER_Z:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
