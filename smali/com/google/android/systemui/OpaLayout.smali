.class public Lcom/google/android/systemui/OpaLayout;
.super Landroid/widget/FrameLayout;
.source "OpaLayout.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAnimationState:I

.field private mBlue:Landroid/view/View;

.field private mBottom:Landroid/view/View;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private final mCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private final mCurrentAnimators:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkModeFillColor:I

.field private final mDiamondInterpolator:Landroid/view/animation/Interpolator;

.field private final mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mGreen:Landroid/view/View;

.field private mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

.field private final mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mIconTint:I

.field private mIsPressed:Z

.field private mLeft:Landroid/view/View;

.field private mLightModeFillColor:I

.field private mLongClicked:Z

.field private mOpaEnabled:Z

.field private mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private mRed:Landroid/view/View;

.field private final mRetract:Ljava/lang/Runnable;

.field private final mRetractInterpolator:Landroid/view/animation/Interpolator;

.field private mRight:Landroid/view/View;

.field private mStartTime:J

.field private mTop:Landroid/view/View;

.field private mVertical:Z

.field private mWhite:Landroid/widget/ImageView;

.field private mYellow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mIconTint:I

    const v0, 0x7f06009f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mDarkModeFillColor:I

    const v0, 0x7f060102

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightModeFillColor:I

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$1;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$2;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mIconTint:I

    const v0, 0x7f06009f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mDarkModeFillColor:I

    const v0, 0x7f060102

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightModeFillColor:I

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$3;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$4;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$4;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mIconTint:I

    const v0, 0x7f06009f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mDarkModeFillColor:I

    const v0, 0x7f060102

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightModeFillColor:I

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$5;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$5;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$6;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$6;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mIconTint:I

    const v0, 0x7f06009f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mDarkModeFillColor:I

    const v0, 0x7f060102

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightModeFillColor:I

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$7;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$7;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/systemui/OpaLayout$8;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/OpaLayout$8;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/OpaLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/OpaLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->cancelCurrentAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startRetractAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->hideAllOpa()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/systemui/OpaLayout;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/systemui/OpaLayout;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startLineAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startCollapseAnimation()V

    return-void
.end method

.method private cancelCurrentAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return-void
.end method

.method private endCurrentAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    return-void
.end method

.method private fadeInButton(Landroid/view/View;)V
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Lcom/google/android/systemui/OpaLayout$13;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/OpaLayout$13;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fadeOutButton(Landroid/view/View;)V
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v1, Lcom/google/android/systemui/OpaLayout$14;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/OpaLayout$14;-><init>(Lcom/google/android/systemui/OpaLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getCollapseAnimatorSet()Landroid/util/ArraySet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mVertical:Z

    const/16 v2, 0x53

    const v3, 0x7f07032a

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    const/16 v6, 0xc8

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {p0, v4, v7, v6, v5}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v4, v7, v6, v5}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lcom/google/android/systemui/OpaLayout;->mVertical:Z

    const/16 v5, 0x64

    const v8, 0x7f070329

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v10

    neg-float v10, v10

    invoke-direct {p0, v4, v9, v10, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v10

    invoke-direct {p0, v4, v9, v10, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v9, v7, v6, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v9, v7, v6, v10}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean v9, p0, Lcom/google/android/systemui/OpaLayout;->mVertical:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v9, v10, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v10, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    neg-float v3, v3

    invoke-direct {p0, v9, v10, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3, v7, v6, v9}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3, v7, v6, v9}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mVertical:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    invoke-direct {p0, v3, v9, v8, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v8}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    neg-float v8, v8

    invoke-direct {p0, v3, v9, v8, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v5, v7, v6, v8}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/systemui/OpaLayout;->mDotsFullSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v5, v7, v6, v8}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/16 v8, 0x96

    invoke-direct {p0, v5, v7, v8, v6}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v7, 0x21

    invoke-virtual {v5, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v7

    new-instance v8, Lcom/google/android/systemui/OpaLayout$9;

    invoke-direct {v8, p0}, Lcom/google/android/systemui/OpaLayout$9;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
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

.method private getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-float v1, v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object v0
.end method

.method private getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-float v1, v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object v0
.end method

.method private getDiamondAnimatorSet()Landroid/util/ArraySet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    const v3, 0x7f070327

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v4

    neg-float v4, v4

    const/16 v5, 0xc8

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v6

    invoke-direct {p0, v1, v2, v6, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v6

    neg-float v6, v6

    invoke-direct {p0, v1, v2, v6, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mDiamondInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v3}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v3, 0x3f200000    # 0.625f

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$10;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$10;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLineAnimatorSet()Landroid/util/ArraySet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mVertical:Z

    const v2, 0x7f07032b

    const/16 v3, 0x85

    const v4, 0x7f07032d

    const v5, 0x7f07032c

    const/16 v6, 0x113

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    invoke-direct {p0, v1, v7, v8, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    invoke-direct {p0, v1, v7, v8, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v2}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    invoke-direct {p0, v1, v7, v8, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    neg-float v5, v5

    invoke-direct {p0, v1, v7, v5, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v4

    neg-float v4, v4

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v2}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v2

    neg-float v2, v2

    invoke-direct {p0, v1, v3, v2, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    neg-float v8, v8

    invoke-direct {p0, v1, v7, v8, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    invoke-direct {p0, v1, v7, v8, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v2}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v8

    neg-float v8, v8

    invoke-direct {p0, v1, v7, v8, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v5}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v5

    invoke-direct {p0, v1, v7, v5, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v4}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v4

    neg-float v4, v4

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/systemui/OpaLayout;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v2}, Lcom/google/android/systemui/OpaLayout;->getPxVal(I)F

    move-result v2

    invoke-direct {p0, v1, v3, v2, v6}, Lcom/google/android/systemui/OpaLayout;->getDeltaAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;FI)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mHomeDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$11;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$11;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-lez v5, :cond_0

    invoke-virtual {v4}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v0

    move-object v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getPxVal(I)F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getRetractAnimatorSet()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0x12c

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/systemui/OpaLayout;->getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetractInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v3, v2}, Lcom/google/android/systemui/OpaLayout;->getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->getLongestAnim(Landroid/util/ArraySet;)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/OpaLayout$12;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/OpaLayout$12;-><init>(Lcom/google/android/systemui/OpaLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getScaleAnimatorX(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object v0
.end method

.method private getScaleAnimatorY(Landroid/view/View;FILandroid/view/animation/Interpolator;)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object v0
.end method

.method private getTranslationAnimatorX(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object v0
.end method

.method private getTranslationAnimatorY(Landroid/view/View;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 3

    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    invoke-virtual {v0, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    return-object v0
.end method

.method private hideAllOpa()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeOutButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeOutButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeOutButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeOutButton(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->updateIconColor()V

    return-void
.end method

.method private isLightColor(I)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, -0x3

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    aput v3, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    aput v3, v1, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v1, v4

    aget v3, v1, v0

    aget v5, v1, v0

    mul-int/2addr v3, v5

    int-to-double v5, v3

    const-wide v7, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v5, v7

    aget v3, v1, v2

    aget v7, v1, v2

    mul-int/2addr v3, v7

    int-to-double v7, v3

    const-wide v9, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aget v3, v1, v4

    aget v4, v1, v4

    mul-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v7, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr v3, v7

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/16 v4, 0xaa

    if-lt v3, v4, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method private shouldShowSwipeUpUI()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    return v0
.end method

.method private showAllOpa()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeInButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeInButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeInButton(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->fadeInButton(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->updateIconColor()V

    return-void
.end method

.method private startAll(Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->showAllOpa()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startCollapseAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method private startDiamondAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getDiamondAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method private startLineAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getLineAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method private startRetractAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->getRetractAnimatorSet()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->startAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method private updateHomeDrawable(I)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->shouldShowSwipeUpUI()Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f08029d

    goto :goto_0

    :cond_0
    const v2, 0x7f08029b

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/OpaLayout;->isLightColor(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0702d6

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0702d7

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0702d8

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f06012e

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;->setShadowProperties(IIII)V

    move-object v3, v4

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/systemui/OpaLayout;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateIconColor()V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mIconTint:I

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->updateHomeDrawable(I)V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->abortCurrentGesture()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a029d

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    const v0, 0x7f0a03c0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    const v0, 0x7f0a0161

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->hideAllOpa()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCurrentAnimators:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->endCurrentAnimation()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    iput-boolean v3, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->startDiamondAnimation()V

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/systemui/OpaLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1

    :cond_3
    :pswitch_1
    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mAnimationState:I

    if-ne v0, v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/systemui/OpaLayout;->mStartTime:J

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    sub-long v8, v2, v4

    sub-long/2addr v6, v8

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/android/systemui/OpaLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mLongClicked:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mIsPressed:Z

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/google/android/systemui/OpaLayout;->mRetract:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_7
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sysui_nav_bar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mIconTint:I

    invoke-direct {p0, v0}, Lcom/google/android/systemui/OpaLayout;->updateHomeDrawable(I)V

    :cond_0
    return-void
.end method

.method public setCarMode(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/OpaLayout;->mLightModeFillColor:I

    iget v1, p0, Lcom/google/android/systemui/OpaLayout;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/OpaLayout;->getColorForDarkIntensity(FII)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/OpaLayout;->mIconTint:I

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->updateIconColor()V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout;->mHome:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOpaEnabled(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/systemui/OpaLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->hideAllOpa()V

    iput-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    goto :goto_2

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/systemui/OpaLayout;->mOpaEnabled:Z

    :goto_2
    return-void
.end method

.method public setVertical(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/systemui/OpaLayout;->mVertical:Z

    invoke-direct {p0}, Lcom/google/android/systemui/OpaLayout;->shouldShowSwipeUpUI()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mWhite:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    iget-boolean v1, p0, Lcom/google/android/systemui/OpaLayout;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRed:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mTop:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mYellow:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mBlue:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mLeft:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mGreen:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/systemui/OpaLayout;->mRight:Landroid/view/View;

    return-void
.end method
