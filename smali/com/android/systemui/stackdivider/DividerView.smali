.class public Lcom/android/systemui/stackdivider/DividerView;
.super Landroid/widget/FrameLayout;
.source "DividerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# static fields
.field private static final DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAdjustedForIme:Z

.field private mBackground:Landroid/view/View;

.field private mBackgroundLifted:Z

.field private mCurrentAnimator:Landroid/animation/ValueAnimator;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDisplayHeight:I

.field private mDisplayRotation:I

.field private mDisplayWidth:I

.field private mDividerInsets:I

.field private mDividerSize:I

.field private mDividerWindowWidth:I

.field private mDockSide:I

.field private final mDockedInsetRect:Landroid/graphics/Rect;

.field private final mDockedRect:Landroid/graphics/Rect;

.field private mDockedStackMinimized:Z

.field private final mDockedTaskRect:Landroid/graphics/Rect;

.field private mEntranceAnimationRunning:Z

.field private mExitAnimationRunning:Z

.field private mExitStartPosition:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGrowRecents:Z

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private final mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeStackResizable:Z

.field private mIsInMinimizeInteraction:Z

.field private final mLastResizeRect:Landroid/graphics/Rect;

.field private mLongPressEntraceAnimDuration:I

.field private mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

.field private mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mMoving:Z

.field private final mOtherInsetRect:Landroid/graphics/Rect;

.field private final mOtherRect:Landroid/graphics/Rect;

.field private final mOtherTaskRect:Landroid/graphics/Rect;

.field private mRemoved:Z

.field private final mResetBackgroundRunnable:Ljava/lang/Runnable;

.field private final mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

.field private mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStartPosition:I

.field private mStartX:I

.field private mStartY:I

.field private mState:Lcom/android/systemui/stackdivider/DividerState;

.field private final mTempInt2:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTouchElevation:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f    # 0.23f

    const v3, 0x3f5eb852    # 0.87f

    const v4, 0x3f051eb8    # 0.52f

    const v5, -0x421eb852    # -0.11f

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/stackdivider/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;-><init>(Landroid/os/Handler;Landroid/view/Display;Landroid/view/Choreographer;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDefaultDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0, p4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gt p4, v5, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    move v4, p5

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    iget v5, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-lt p4, v5, :cond_1

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v4, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    invoke-static {v3, p4, p2}, Lcom/android/systemui/stackdivider/DividerView;->isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateParallaxDismissingFraction(FI)F

    move-result v0

    int-to-float v1, v4

    iget v5, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v6, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v1

    iput v7, p1, Landroid/graphics/Rect;->top:I

    add-int v7, v1, v6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_1
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v1

    iput v7, p1, Landroid/graphics/Rect;->left:I

    add-int v7, v1, v5

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v7, v8

    iput v7, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :pswitch_2
    sub-int v7, v1, v6

    iput v7, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_3
    sub-int v7, v1, v5

    iput v7, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    nop

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyExitAnimationParallax(Landroid/graphics/Rect;I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static calculateParallaxDismissingFraction(FI)F
    .locals 2

    sget-object v0, Lcom/android/systemui/stackdivider/DividerView;->SLOWDOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x40600000    # 3.5f

    div-float/2addr v0, v1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private calculatePosition(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->calculateYPosition(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->calculateXPosition(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private calculatePositionForInsetBounds()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v0

    return v0
.end method

.method private calculateXPosition(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private calculateYPosition(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private cancelFlingAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 4

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    nop

    :cond_2
    :goto_0
    move v0, v2

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->maximizeDockedStack()V

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v1, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    return-void
.end method

.method private convertToScreenCoordinates(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-void
.end method

.method private static dockSideBottomRight(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

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

.method private static dockSideTopLeft(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private fling(IFZZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_1
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    int-to-float v4, p1

    iget v5, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v5, v5

    invoke-virtual {v3, v2, v4, v5, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0, p1, p2, p7, p8}, Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateDismissingFraction(I)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->DIM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    :cond_1
    return v0
.end method

.method private getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    :cond_0
    iget v0, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v1

    iget v1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    aput v1, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$o4c7SI5Mz67OwDjq6n3ndBTEfNk;-><init>(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$fuKXuLmLQTYwkdmcrCKfS4vkKk8;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$fuKXuLmLQTYwkdmcrCKfS4vkKk8;-><init>(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    new-instance v9, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$PQ9UBhgXlQLedw0JrRm_JR-uZkk;

    invoke-direct {v9, p0}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$PQ9UBhgXlQLedw0JrRm_JR-uZkk;-><init>(Lcom/android/systemui/stackdivider/DividerView;)V

    new-instance v10, Lcom/android/systemui/stackdivider/DividerView$4;

    move-object v3, v10

    move-object v4, p0

    move-wide v5, p3

    move-object v7, v9

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/stackdivider/DividerView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    return-object v1
.end method

.method private getWindowingModeForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private hasInsetsAtDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_6

    move v1, v2

    nop

    :cond_6
    return v1
.end method

.method private initializeSnapAlgorithm()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :cond_2
    return-void
.end method

.method private static isDismissing(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v2, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0
.end method

.method public static synthetic lambda$getFlingAnimator$0(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v1, p2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method public static synthetic lambda$getFlingAnimator$1(Lcom/android/systemui/stackdivider/DividerView;Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerView;->commitSnapFlags(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$getFlingAnimator$2(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onRecentsDrawn$3(Lcom/android/systemui/stackdivider/DividerView;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    int-to-long v4, v0

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0xc8

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    return-void
.end method

.method private liftBackground()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    const v1, 0x3fb33333    # 1.4f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private logResizeEvent(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/16 v1, 0x186

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_0

    nop

    move v2, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v4

    if-eqz v4, :cond_2

    nop

    move v2, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/16 v1, 0x185

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    const/4 v2, 0x2

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_5

    nop

    move v2, v3

    goto :goto_2

    :cond_5
    nop

    :goto_2
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    nop

    move v2, v3

    :goto_3
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_8
    :goto_4
    return-void
.end method

.method private releaseBackground()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackgroundLifted:Z

    return-void
.end method

.method private repositionSnapTargetBeforeMinimized()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method

.method private resetBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    return-void
.end method

.method private resizeStack(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 2

    iget v0, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method private restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I
    .locals 2

    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lcom/android/systemui/stackdivider/DividerView;->dockSideBottomRight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    return p1
.end method

.method private saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget v1, p1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    :goto_0
    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    return-void
.end method

.method private stopDragging()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method private updateDisplayInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRotation:I

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    return-void
.end method

.method private updateDockSide()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    return-void
.end method


# virtual methods
.method public calculateBoundsForPosition(IILandroid/graphics/Rect;)V
    .locals 6

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    move v0, p1

    move v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    :goto_0
    return-object v0
.end method

.method public getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method

.method public growsRecents()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    return v1

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public injectDependencies(Lcom/android/systemui/stackdivider/DividerWindowManager;Lcom/android/systemui/stackdivider/DividerState;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerState;->mRatioPositionBeforeMinimized:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->repositionSnapTargetBeforeMinimized()V

    :goto_0
    return-void
.end method

.method public isHorizontalDivision()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public notifyDockSideChanged(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setDockSide(I)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v3, v1, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->repositionSnapTargetBeforeMinimized()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_3
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->saveSnapTargetBeforeMinimized(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 3

    iget v0, p1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->calculatePositionForInsetBounds()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    const-wide/16 v5, 0x150

    const-wide/16 v7, 0x64

    const-wide/16 v9, 0x0

    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    :cond_2
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 11

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method onDividerRemoved()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const v0, 0x7f0a00f7

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerInsets:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchElevation:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mLongPressEntraceAnimDuration:I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mGrowRecents:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const/16 v3, 0x3f6

    goto :goto_1

    :cond_1
    const/16 v3, 0x3f7

    :goto_1
    invoke-static {v2, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setPointerIcon(Landroid/view/PointerIcon;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandleDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->layout(IIII)V

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerHandleView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/DividerHandleView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerHandleView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerHandleView;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setTouchRegion(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method public onRecentsDrawn()V
    .locals 7

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->calculatePositionForInsetBounds()I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->animateAfterRecentsDrawn:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$6QXub7h9g3mZn2yBpbDKCxY_TW4;-><init>(Lcom/android/systemui/stackdivider/DividerView;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iget-boolean v0, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mState:Lcom/android/systemui/stackdivider/DividerState;

    iput-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerState;->growAfterRecentsDrawn:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    const-wide/16 v3, 0x150

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/systemui/stackdivider/DividerView;->convertToScreenCoordinates(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    nop

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-gt v5, v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mTouchSlop:I

    if-le v5, v6, :cond_2

    :cond_1
    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    iput v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    invoke-virtual {p0, v6, v7, v1}, Lcom/android/systemui/stackdivider/DividerView;->resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->calculatePosition(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v6

    :goto_1
    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    goto :goto_2

    :pswitch_2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartY:I

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mStartPosition:I

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMoving:Z

    return v2

    :cond_6
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    iget-boolean v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mRemoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v0

    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mLastResizeRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    const/4 v1, 0x3

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v1, :cond_3

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    iget-object v12, v6, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v13, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v14, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v15, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    const/16 v17, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_4
    iget-boolean v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mEntranceAnimationRunning:Z

    const v2, 0x7fffffff

    if-eqz v0, :cond_6

    if-eq v8, v2, :cond_6

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v1, :cond_5

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    sub-int/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Rect;->offset(II)V

    :cond_5
    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v12, v6, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v13, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v14, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    const/16 v17, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_6
    iget-boolean v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mExitAnimationRunning:Z

    if-eqz v0, :cond_8

    if-eq v8, v2, :cond_8

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mExitStartPosition:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v2}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v2

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v2, v3}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v7}, Lcom/android/systemui/stackdivider/DividerView;->applyExitAnimationParallax(Landroid/graphics/Rect;I)V

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v0, v1, :cond_7

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v7, v1

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDividerSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Rect;->offset(II)V

    :cond_7
    iget-object v12, v6, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v13, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v14, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v15, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_8
    if-eq v8, v2, :cond_a

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v12

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-direct {v6, v8, v0, v9}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v13

    nop

    invoke-direct {v6, v8, v12, v9}, Lcom/android/systemui/stackdivider/DividerView;->restrictDismissingTaskPosition(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v14

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v13, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v14, v12, v0}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDisplayWidth:I

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDisplayHeight:I

    invoke-virtual {v0, v11, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->dockSideTopLeft(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_9
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignBottomRight(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->alignTopLeft(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    move-object v0, v6

    move-object v3, v9

    move v4, v7

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    move v2, v12

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerView;->applyDismissingParallax(Landroid/graphics/Rect;ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;II)V

    iget-object v15, v6, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedTaskRect:Landroid/graphics/Rect;

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedInsetRect:Landroid/graphics/Rect;

    iget-object v3, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherTaskRect:Landroid/graphics/Rect;

    iget-object v4, v6, Lcom/android/systemui/stackdivider/DividerView;->mOtherInsetRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v15 .. v20}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_a
    iget-object v0, v6, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v1, v6, Lcom/android/systemui/stackdivider/DividerView;->mDockedRect:Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/android/systemui/stackdivider/DividerView;->getDimFraction(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v1

    iget-object v2, v6, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    cmpl-float v3, v1, v10

    if-eqz v3, :cond_b

    const/4 v11, 0x1

    nop

    :cond_b
    invoke-direct {v6, v0}, Lcom/android/systemui/stackdivider/DividerView;->getWindowingModeForDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)I

    move-result v3

    invoke-virtual {v2, v11, v3, v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizeDimLayer(ZIF)V

    return-void
.end method

.method public resizeStackDelayed(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mSfChoreographer:Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->scheduleAtSfVsync(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public setAdjustedForIme(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void
.end method

.method public setAdjustedForIme(ZJ)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/stackdivider/DividerView;->IME_ADJUST_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mAdjustedForIme:Z

    return-void
.end method

.method public setMinimizedDockStack(ZJZ)V
    .locals 9

    iput-boolean p4, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    const/4 v0, 0x1

    if-nez p4, :cond_8

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v1, v0, :cond_4

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v4, v0, :cond_5

    nop

    move v0, v3

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_6

    move v2, v3

    nop

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :cond_7
    :goto_3
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    goto :goto_8

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq v1, p1, :cond_b

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    goto :goto_4

    :goto_5
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_6
    move-object v3, v0

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    goto :goto_6

    :goto_7
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/systemui/stackdivider/DividerView;->setAdjustedForIme(ZJ)V

    :cond_b
    :goto_8
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mResetBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setMinimizedDockStack(ZZ)V
    .locals 5

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView;->mHomeStackResizable:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDockSide()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->resetBackground()V

    goto :goto_1

    :cond_0
    if-nez p2, :cond_4

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-eq v2, v0, :cond_2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    if-ne v3, v0, :cond_3

    nop

    move v3, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedShadow:Lcom/android/systemui/stackdivider/MinimizedDockShadow;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/stackdivider/MinimizedDockShadow;->setAlpha(F)V

    if-nez p2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setAlpha(F)V

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    goto :goto_5

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    if-eq v1, p1, :cond_b

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockedStackMinimized:Z

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRotation:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->repositionSnapTargetBeforeMinimized()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    :goto_4
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    if-ne v1, p1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mCurrentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_b

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerView;->requestLayout()V

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mMinimizedSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mSnapTargetBeforeMinimized:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0, v0}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mIsInMinimizeInteraction:Z

    :cond_b
    :goto_5
    return-void
.end method

.method public startDragging(ZZ)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->cancelFlingAnimation()V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mDisplayRotation:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->updateDisplayInfo()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->initializeSnapAlgorithm()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->setResizing(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->liftBackground()V

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    invoke-direct {v3}, Lcom/android/systemui/stackdivider/events/StartedDragingEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView;->mDockSide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public stopDragging(IFZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/stackdivider/DividerView;->fling(IFZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/stackdivider/DividerHandleView;->setTouching(ZZ)V

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/stackdivider/DividerView;->flingTo(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView;->mWindowManager:Lcom/android/systemui/stackdivider/DividerWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerWindowManager;->setSlippery(Z)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView;->releaseBackground()V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V
    .locals 10

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;J)V
    .locals 10

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v7, p6

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJJLandroid/view/animation/Interpolator;)V

    return-void
.end method
