.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroid/support/v4/view/ViewPager;
.source "PagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PagedTileLayout$PageListener;,
        Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    }
.end annotation


# static fields
.field private static final SCROLL_CUBIC:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAnimatingToPage:I

.field private mBounceAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mDistribute:Ljava/lang/Runnable;

.field private mLastExpansion:F

.field private mListening:Z

.field private mNumPages:I

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageIndicatorPosition:F

.field private mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/PagedTileLayout$TilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$fHkBmUM3ca-ZV4_eDd9ap-VT7Ho;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$fHkBmUM3ca-ZV4_eDd9ap-VT7Ho;

    sput-object v0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$4;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/PagedTileLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/PagedTileLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/PagedTileLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/PagedTileLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    return v0
.end method

.method private distributeTiles()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v3}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->removeAllViews()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v6}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->isFull()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d0121

    invoke-virtual {v7, v8, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    add-int/lit8 v5, v4, 0x1

    if-eq v2, v5, :cond_4

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    if-le v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    :cond_4
    return-void
.end method

.method static synthetic lambda$static$0(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private postDistributeTiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static setupBounceAnimator(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v2, [F

    aput v4, v3, v5

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v4, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v1, p1, 0x55

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private updateListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSelected()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setImportantForAccessibility(I)V

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentItem()I

    move-result v4

    if-ne v2, v4, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    return-void
.end method

.method public computeScroll()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getScrollX()I

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postInvalidateOnAnimation()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setOffscreenPageLimit(I)V

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    :cond_1
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->computeScroll()V

    return-void
.end method

.method public getColumnCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget v0, v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    return v0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSTileView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0121

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v0, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/PagedTileLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    return-void
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-void
.end method

.method public startTileReveal(Ljava/util/Set;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/systemui/qs/PagedTileLayout;->setupBounceAnimator(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/qs/PagedTileLayout$2;

    invoke-direct {v4, p0, p2}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PagedTileLayout;->setOffscreenPageLimit(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getWidth()I

    move-result v3

    iget v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAnimatingToPage:I

    mul-int/2addr v7, v3

    const/4 v8, 0x0

    const/16 v9, 0x2ee

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postInvalidateOnAnimation()V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public updateResources()Z
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070383

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    :cond_1
    return v0
.end method
