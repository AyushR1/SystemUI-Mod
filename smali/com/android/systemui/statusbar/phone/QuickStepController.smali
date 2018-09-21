.class public Lcom/android/systemui/statusbar/phone/QuickStepController;
.super Ljava/lang/Object;
.source "QuickStepController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;


# instance fields
.field private mAllowGestureDetection:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentNavigationBarView:Landroid/view/View;

.field private mDarkIntensity:F

.field private mDarkTrackColor:I

.field private mDragPositive:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private mLightTrackColor:I

.field private final mNavBarAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private final mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

.field private mQuickScrubActive:Z

.field private mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mQuickStepStarted:Z

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTrackAlpha:F

.field private final mTrackAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackAnimator:Landroid/animation/AnimatorSet;

.field private final mTrackColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackEndPadding:I

.field private final mTrackRect:Landroid/graphics/Rect;

.field private mTrackScale:F

.field private final mTrackScaleProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackThickness:I

.field private final mTransformGlobalMatrix:Landroid/graphics/Matrix;

.field private final mTransformLocalMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackColorEvaluator:Landroid/animation/ArgbEvaluator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$1;

    const-string v1, "TrackAlpha"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$2;

    const-string v1, "TrackScale"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$3;

    const-string v1, "NavBarAlpha"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStepController$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    const v1, 0x7f0702d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    const v1, 0x7f080372

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickStepController;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/QuickStepController;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickStepController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickStepController;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/QuickStepController;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickStepController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickStepController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->resetQuickScrub()V

    return-void
.end method

.method private animateEnd()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    new-array v4, v3, [F

    const v5, 0x3f733333    # 0.95f

    aput v5, v4, v6

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x86

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v6

    aput-object v2, v0, v3

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private endQuickScrub(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->animateEnd()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubEnd()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QuickStepController"

    const-string v2, "Failed to send end of quick scrub."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_f

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    if-nez v0, :cond_12

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v7, v0

    iget v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    if-eqz v0, :cond_4

    nop

    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v0

    if-le v9, v0, :cond_2

    if-le v9, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    nop

    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v10

    if-le v8, v10, :cond_3

    if-le v8, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    move v11, v7

    iget v12, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int v13, v11, v13

    iget-object v14, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    :goto_2
    move/from16 v19, v11

    move v11, v0

    move v0, v13

    move v13, v12

    move/from16 v12, v19

    goto :goto_5

    :cond_4
    nop

    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v0

    if-le v8, v0, :cond_5

    if-le v8, v9, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    nop

    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v10

    if-le v9, v10, :cond_6

    if-le v9, v8, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    move v11, v6

    iget v12, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v11, v13

    iget-object v14, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    goto :goto_2

    :goto_5
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v15, :cond_7

    if-eqz v10, :cond_7

    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->startQuickStep(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    :cond_7
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v15

    if-nez v15, :cond_8

    goto/16 :goto_a

    :cond_8
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v15, :cond_a

    iget-boolean v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    if-eqz v15, :cond_9

    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    goto :goto_6

    :cond_9
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    :goto_6
    sub-int/2addr v0, v15

    :cond_a
    move v15, v0

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v0, :cond_c

    if-gez v15, :cond_b

    if-ge v12, v13, :cond_b

    :goto_7
    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    if-ltz v15, :cond_b

    if-le v12, v13, :cond_b

    goto :goto_7

    :goto_8
    move/from16 v16, v0

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v5, v14

    div-float/2addr v0, v5

    const/4 v5, 0x0

    invoke-static {v0, v5, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v2

    if-eqz v16, :cond_d

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_d

    if-eqz v11, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->startQuickScrub()V

    :cond_d
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-eqz v0, :cond_e

    if-gez v15, :cond_f

    :cond_e
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v0, :cond_12

    if-gtz v15, :cond_12

    :cond_f
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    const-string v5, "QuickStepController"

    move/from16 v18, v2

    const-string v2, "Failed to send progress of quick scrub."

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    goto :goto_a

    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickStepController;->endQuickScrub(Z)V

    goto :goto_a

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_10

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    :cond_10
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonAtPosition(II)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v5, :cond_11

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDelayTouchFeedback(Z)V

    :cond_11
    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    sget-object v6, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    sget-object v6, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    nop

    :cond_12
    :goto_a
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_14

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    if-nez v0, :cond_13

    const/4 v0, 0x3

    if-eq v4, v0, :cond_13

    const/4 v2, 0x1

    if-ne v4, v2, :cond_15

    goto :goto_b

    :cond_13
    const/4 v2, 0x1

    :goto_b
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->proxyMotionEvents(Landroid/view/MotionEvent;)Z

    goto :goto_c

    :cond_14
    const/4 v2, 0x1

    :cond_15
    :goto_c
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_17

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    const/16 v17, 0x0

    goto :goto_e

    :cond_17
    :goto_d
    move/from16 v17, v2

    :goto_e
    return v17

    :cond_18
    :goto_f
    move-object/from16 v3, p1

    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private proxyMotionEvents(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDownHitTarget()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onPreMotionEvent(I)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "QuickStepController"

    const-string v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    nop

    const/4 v1, 0x0

    return v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    throw v1
.end method

.method private resetQuickScrub()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    return-void
.end method

.method private startQuickScrub()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v2, 0x7f060159

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mLightTrackColor:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v2, 0x7f060158

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkTrackColor:I

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    aput v5, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x86

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v6

    aput-object v3, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QuickStepController"

    const-string v4, "Failed to send start of quick scrub."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->notifyQuickScrubStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    :cond_0
    return-void
.end method

.method private startQuickStep(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickStep(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "QuickStepController"

    const-string v2, "Failed to send quick step started."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->notifyQuickStepStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->animateEnd()V

    :cond_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    throw v0
.end method


# virtual methods
.method public onDarkIntensityChange(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkIntensity:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackColorEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkIntensity:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mLightTrackColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkTrackColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScaleX()F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScaleY()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingLeft()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingTop()I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingRight()I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingBottom()I

    move-result v4

    sub-int v5, p4, p2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    sub-int v6, p5, p3

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    sub-int v7, v5, v7

    div-int/2addr v7, v8

    add-int/2addr v7, v1

    iget v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    add-int/2addr v9, v7

    iget v10, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    add-int/2addr v10, v2

    add-int v11, v10, v6

    move v12, v1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    mul-int/2addr v8, v1

    sub-int/2addr v11, v8

    goto :goto_0

    :cond_0
    move v12, v1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    sub-int v1, v6, v1

    div-int/2addr v1, v8

    add-int v10, v1, v2

    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    add-int v11, v10, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingStart()I

    move-result v1

    iget v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    add-int/2addr v7, v1

    add-int v1, v7, v5

    iget v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    mul-int/2addr v8, v9

    sub-int v9, v1, v8

    :goto_0
    move v1, v9

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v7, v10, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onNavigationButtonLongPress(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method public setBarState(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsRTL:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->endQuickScrub(Z)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsRTL:Z

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowManager;->getNavBarPosition()I

    move-result v3

    if-eq v3, v2, :cond_4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-eqz p2, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "QuickStepController"

    const-string v3, "Failed to get nav bar position."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-void
.end method
