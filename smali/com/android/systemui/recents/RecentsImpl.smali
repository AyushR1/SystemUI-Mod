.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_SET:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private static mToggleFollowingTransitionStart:Z

.field private static mWaitingForTransitionStart:Z

.field protected static sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

.field protected static sLastPipTime:J


# instance fields
.field private mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field private mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private final mEmptyTaskStack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field private mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

.field private mResetToggleFlagListener:Ljava/lang/Runnable;

.field mTaskBarHeight:I

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field mTmpBounds:Landroid/graphics/Rect;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/RecentsImpl;->EMPTY_SET:Landroid/util/ArraySet;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mResetToggleFlagListener:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsImpl$2;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v2, 0xe1

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$3;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mOverviewProxyListener:Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mEmptyTaskStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string v1, "trust"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$300()Landroid/util/ArraySet;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->EMPTY_SET:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_2

    if-lez v1, :cond_2

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p1, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3, p1, v6, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v8, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    iget v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    iget-object v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v8, v9, v6}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v3

    monitor-exit v4

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    return-object v3
.end method

.method public static getLastPipTime()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    return-wide v0
.end method

.method private getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/Task;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    iget-object v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    new-instance v10, Lcom/android/systemui/recents/RecentsImpl$4;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object v2, v10

    move-object v3, p0

    move-object v5, v9

    move-object v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/RecentsImpl$4;-><init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/os/Handler;Landroid/graphics/RectF;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mResetToggleFlagListener:Ljava/lang/Runnable;

    :goto_0
    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->createAspectScaleAnimation(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/shared/recents/model/Task;->copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v6, 0x0

    move-object v3, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v2
.end method

.method private getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v7

    const/4 v2, 0x4

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v6

    move v1, p1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    return-object v0
.end method

.method public static synthetic lambda$preloadRecents$0(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_1

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$setWaitingForTransitionStart$1(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    return-void
.end method

.method static synthetic lambda$startRecentsActivity$4(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityAsUserAsync(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;->composeSpecsSynchronous()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startRecentsActivityAndDismissKeyguardIfNeeded$2(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    return-void
.end method

.method public static synthetic lambda$startRecentsActivityAndDismissKeyguardIfNeeded$3(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$p86QbP39-AERJwYL1CmDcPooyqY;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$p86QbP39-AERJwYL1CmDcPooyqY;-><init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private preloadIcon(I)V
    .locals 3

    new-instance v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iput p1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    return-void
.end method

.method private reloadResources()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0703c8

    const v3, 0x7f0703c8

    const v4, 0x7f0703c8

    const v5, 0x7f0703c9

    const v6, 0x7f0703c8

    const v7, 0x7f0703c9

    const v8, 0x7f0703a8

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0139

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutDirection(I)V

    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 11

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    const/4 v3, -0x1

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    :cond_4
    sget-object v4, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_5

    move v5, v6

    goto :goto_1

    :cond_5
    move v5, v7

    :goto_1
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    if-eqz v5, :cond_6

    move v8, v6

    goto :goto_2

    :cond_6
    move v8, v7

    :goto_2
    if-nez v8, :cond_7

    iget-boolean v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v9, :cond_7

    move v9, v6

    goto :goto_3

    :cond_7
    move v9, v7

    :goto_3
    iput-boolean v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v8, :cond_9

    iget-boolean v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-eqz v9, :cond_8

    goto :goto_4

    :cond_8
    move v6, v7

    nop

    :cond_9
    :goto_4
    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    iput-boolean v7, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    nop

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->isNextLaunchTargetPip(J)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    iput v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/RecentsImpl;->setWaitingForTransitionStart(Z)V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    invoke-direct {p0, p4}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v7

    iget v9, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iget v9, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    const/4 v9, 0x0

    if-nez p3, :cond_a

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v10, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-direct {p0, v3, v9}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    return-void

    :cond_a
    if-eqz v8, :cond_b

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_6

    :cond_b
    new-instance v3, Landroid/util/Pair;

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v10

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v10

    :goto_5
    invoke-direct {v3, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/app/ActivityOptions;

    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    return-void
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;-><init>()V

    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mEmptyTaskStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    return-void
.end method

.method private updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 10

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v1

    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-direct {p0, v9, p3, v8}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p3, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p1, v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    if-eqz p2, :cond_2

    iget v4, v9, Landroid/graphics/Rect;->top:I

    iget v5, v9, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v2, v8

    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v8, p3, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 9

    invoke-direct {p0, p2}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v3

    invoke-direct {p0, v3, p1, v0}, Lcom/android/systemui/recents/RecentsImpl;->updateDummyStackViewLayout(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeAllTasks(Z)V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, p1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->initialize(Landroid/graphics/Rect;)V

    nop

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {v5, v3, v6, v7, v4}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTransform(IILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v1, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    if-lez v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v5

    if-ne v5, v1, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v5, v6, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setShouldDarkenBackgroundColor(Z)V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->forceLayout()V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    invoke-virtual {v5, v3, v3, v1, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    return-void
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0100ac

    const v3, 0x7f0100ad

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    const v2, 0x7f0100ae

    const v3, 0x7f0100af

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onAnimationFinished()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 4

    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mBackgroundLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDraggingInRecents(F)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onShowCurrentUserToast(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setRecentsVisibility(Z)V

    return-void
.end method

.method public preloadRecents()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$j3kxRIim5t_10M0HDPUojNhJV5I;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$j3kxRIim5t_10M0HDPUojNhJV5I;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWaitingForTransitionStart(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$8KagPhOavaRXCFab5YBHz8Lgk54;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$8KagPhOavaRXCFab5YBHz8Lgk54;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    return-void
.end method

.method public showNextTask()V
    .locals 15

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v11, v10, -0x1

    :goto_1
    if-lt v11, v7, :cond_5

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v5, :cond_3

    add-int/lit8 v7, v11, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0100b2

    const v14, 0x7f0100ab

    invoke-static {v7, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v9

    goto :goto_2

    :cond_3
    iget-object v13, v12, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v13, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v13, v14, :cond_4

    add-int/lit8 v7, v11, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v13, 0x7f0100b5

    const v14, 0x7f0100b4

    invoke-static {v7, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v9

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v8, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0100b3

    invoke-static {v7, v11}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v7

    iget-object v11, v8, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v9, v12, v12}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public showRecents(ZZZI)V
    .locals 10

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v3

    iget-boolean v4, v1, Landroid/util/MutableBoolean;->value:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    return-void

    :cond_4
    :goto_1
    if-nez v5, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    move v7, v6

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v2

    :goto_3
    if-nez v7, :cond_7

    if-nez v3, :cond_a

    :cond_7
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget-boolean v9, v1, Landroid/util/MutableBoolean;->value:Z

    if-nez v9, :cond_9

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, v6

    nop

    :cond_9
    :goto_4
    invoke-virtual {p0, v8, v2, p3, p4}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivityAndDismissKeyguardIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    goto :goto_5

    :catch_0
    move-exception v2

    const-string v6, "RecentsImpl"

    const-string v7, "Failed to launch RecentsActivity"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public splitPrimaryTask(IIILandroid/graphics/Rect;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setTaskWindowingModeSplitScreenPrimary(IILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void
.end method

.method protected startRecentsActivityAndDismissKeyguardIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 13

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;

    move-object v7, v1

    move-object v8, p0

    move-object v9, p1

    move v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;-><init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    :goto_0
    return-void
.end method

.method public toggleRecents(I)V
    .locals 11

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsImpl;->mWaitingForTransitionStart:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sput-boolean v1, Lcom/android/systemui/recents/RecentsImpl;->mToggleFollowingTransitionStart:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    :try_start_0
    new-instance v2, Landroid/util/MutableBoolean;

    invoke-direct {v2, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v6

    const-wide/16 v7, 0x15e

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v9

    iget-boolean v10, v9, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    move v0, v1

    nop

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v7}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v7, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    invoke-direct {v7}, Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    :cond_6
    cmp-long v0, v3, v7

    if-gez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    :goto_1
    return-void

    :cond_8
    cmp-long v0, v3, v7

    if-gez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-boolean v6, v2, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {p0, v0, v6, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivityAndDismissKeyguardIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-string v6, "recentapps"

    invoke-virtual {v1, v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "RecentsImpl"

    const-string v2, "Failed to launch RecentsActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
