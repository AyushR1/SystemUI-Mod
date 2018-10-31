.class public abstract Lcom/android/systemui/statusbar/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "ExpandableOutlineView.java"


# static fields
.field private static final BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final EMPTY_PATH:Landroid/graphics/Path;

.field private static final ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# instance fields
.field private mAlwaysRoundBothCorners:Z

.field private mBackgroundTop:I

.field private mBottomRoundness:F

.field private final mClipPath:Landroid/graphics/Path;

.field private mCurrentBottomRoundness:F

.field private mCurrentTopRoundness:F

.field private mCustomOutline:Z

.field private mDistanceToTopRoundness:F

.field private mExtraWidthForClipping:F

.field private mMinimumHeightForClipping:I

.field private mOutlineAlpha:F

.field protected mOutlineRadius:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field private final mProvider:Landroid/view/ViewOutlineProvider;

.field protected mShouldTranslateContents:Z

.field private mTmpPath:Landroid/graphics/Path;

.field private mTmpPath2:Landroid/graphics/Path;

.field private mTopAmountRounded:Z

.field private mTopRoundness:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "topRoundness"

    sget-object v1, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;

    sget-object v2, Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$5MBgGbVXpg7XHgCv0UsDp2v7mps;

    const v3, 0x7f0a035c

    const v4, 0x7f0a035a

    const v5, 0x7f0a035b

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    const-string v1, "bottomRoundness"

    sget-object v2, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$CDvYEUsuxLuUwEGYNcJdVKtGE1E;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$CDvYEUsuxLuUwEGYNcJdVKtGE1E;

    sget-object v3, Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$CcOzLRI6prAuqo1UrMutjbjeKjw;

    const v4, 0x7f0a0080

    const v5, 0x7f0a007e

    const v6, 0x7f0a007f

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTmpPath2:Landroid/graphics/Path;

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mDistanceToTopRoundness:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mMinimumHeightForClipping:I

    new-instance v0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->initDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentTopRoundness:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTopAmountRounded:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/ExpandableOutlineView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mBackgroundTop:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Path;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getClipPath()Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method private getClipPath()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getClipPath(ZZ)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V
    .locals 8

    invoke-virtual {p6}, Landroid/graphics/Path;->reset()V

    sub-int v0, p2, p0

    move v1, p4

    move v2, p5

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, p4, v3

    if-lez v4, :cond_0

    int-to-float v4, p0

    int-to-float v5, p1

    add-float/2addr v5, p4

    invoke-virtual {p6, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v4, p0

    int-to-float v5, p1

    int-to-float v6, p0

    add-float/2addr v6, v1

    int-to-float v7, p1

    invoke-virtual {p6, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    int-to-float v4, p2

    sub-float/2addr v4, v1

    int-to-float v5, p1

    invoke-virtual {p6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v4, p2

    int-to-float v5, p1

    int-to-float v6, p2

    int-to-float v7, p1

    add-float/2addr v7, p4

    invoke-virtual {p6, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :cond_0
    int-to-float v4, p0

    int-to-float v5, p1

    invoke-virtual {p6, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v4, p2

    int-to-float v5, p1

    invoke-virtual {p6, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    cmpl-float v3, p5, v3

    if-lez v3, :cond_1

    int-to-float v3, p2

    int-to-float v4, p3

    sub-float/2addr v4, p5

    invoke-virtual {p6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p2

    sub-float/2addr v5, v2

    int-to-float v6, p3

    invoke-virtual {p6, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    int-to-float v3, p0

    add-float/2addr v3, v2

    int-to-float v4, p3

    invoke-virtual {p6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v3, p0

    int-to-float v4, p3

    int-to-float v5, p0

    int-to-float v6, p3

    sub-float/2addr v6, p5

    invoke-virtual {p6, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    :cond_1
    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {p6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v3, p0

    int-to-float v4, p3

    invoke-virtual {p6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method private initDimens()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    const v1, 0x7f050035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mShouldTranslateContents:Z

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipToOutline(Z)V

    return-void
.end method

.method public static synthetic lambda$-E-rMo_VNnRS1oxWSSK8iT4OIlo(Lcom/android/systemui/statusbar/ExpandableOutlineView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setTopRoundnessInternal(F)V

    return-void
.end method

.method public static synthetic lambda$CDvYEUsuxLuUwEGYNcJdVKtGE1E(Lcom/android/systemui/statusbar/ExpandableOutlineView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBottomRoundnessInternal(F)V

    return-void
.end method

.method private setBottomRoundnessInternal(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentBottomRoundness:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method private setTopRoundnessInternal(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentTopRoundness:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method


# virtual methods
.method protected applyRoundness()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidate()V

    return-void
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->topAmountNeedsClipping()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mExtraWidthForClipping:F

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    int-to-float v5, v5

    iget v6, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mDistanceToTopRoundness:F

    sub-float/2addr v5, v6

    float-to-int v12, v5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getWidth()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mExtraWidthForClipping:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v13, v5, v6

    iget v5, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mMinimumHeightForClipping:I

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v6

    iget v7, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v12

    iget v8, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v14, v5

    iget v9, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    move v5, v4

    move v6, v12

    move v7, v13

    move v8, v14

    invoke-static/range {v5 .. v11}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-direct {v0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getClipPath()Landroid/graphics/Path;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    sget-object v6, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_4
    invoke-super/range {p0 .. p4}, Lcom/android/systemui/statusbar/ExpandableView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v5
.end method

.method protected getClipPath(ZZ)Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v4

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v5, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    iget v6, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mBackgroundTop:I

    add-int v13, v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getWidth()I

    move-result v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v5

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v5

    iget v6, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipBottomAmount:I

    sub-int/2addr v5, v6

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-eq v14, v15, :cond_2

    if-eqz p2, :cond_1

    move v14, v15

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTmpPath2:Landroid/graphics/Path;

    move v5, v12

    move v6, v13

    move v7, v3

    move v8, v15

    invoke-static/range {v5 .. v11}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTmpPath2:Landroid/graphics/Path;

    :cond_2
    :goto_1
    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v13, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    :goto_2
    move v10, v3

    move v11, v14

    sub-int v14, v11, v13

    if-nez v14, :cond_4

    sget-object v3, Lcom/android/systemui/statusbar/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-object v3

    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v3

    :goto_3
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v4, :cond_6

    iget v4, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v4

    :goto_4
    add-float v5, v3, v4

    int-to-float v6, v14

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    add-float v5, v3, v4

    int-to-float v6, v14

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentTopRoundness:F

    mul-float/2addr v6, v5

    iget v7, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentTopRoundness:F

    iget v8, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentBottomRoundness:F

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentBottomRoundness:F

    mul-float/2addr v6, v5

    iget v7, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentTopRoundness:F

    iget v8, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentBottomRoundness:F

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    :cond_7
    move v15, v3

    move/from16 v16, v4

    iget-object v9, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    move v3, v12

    move v4, v13

    move v5, v10

    move v6, v11

    move v7, v15

    move/from16 v8, v16

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    if-eqz v1, :cond_8

    sget-object v4, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_8
    return-object v3
.end method

.method protected getCurrentBackgroundRadiusBottom()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentBottomRoundness:F

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCurrentBackgroundRadiusTop()F
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentTopRoundness:F

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRadius:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCurrentBottomRoundness()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return v0
.end method

.method public getCurrentTopRoundness()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCurrentTopRoundness:F

    return v0
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutlineAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    return v0
.end method

.method public getOutlineTranslation()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method protected isClippingNeeded()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected needsOutline()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->isGroupExpansionChanging()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->initDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method protected setBackgroundTop(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mBackgroundTop:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mBackgroundTop:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public setBottomRoundness(FZ)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mBottomRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mBottomRoundness:F

    sget-object v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getClipBottomAmount()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBottomAmount(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getClipTopAmount()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setDistanceToTopRoundness(F)V

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTopAmountRounded:Z

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mDistanceToTopRoundness:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    :cond_1
    return-void
.end method

.method public setExtraWidthForClipping(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mExtraWidthForClipping:F

    return-void
.end method

.method public setMinimumHeightForClipping(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mMinimumHeightForClipping:I

    return-void
.end method

.method protected setOutlineAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .locals 4

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineRect(FFFF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->applyRoundness()V

    :goto_0
    return-void
.end method

.method public setTopRoundness(FZ)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTopRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mTopRoundness:F

    sget-object v0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public topAmountNeedsClipping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateOutline()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->needsOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
