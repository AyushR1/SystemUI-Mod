.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasDockedTasks:Z

.field private mHasNavBarScrim:Z

.field private mHasTransposedNavBar:Z

.field private mNavBarScrimEnterDuration:I

.field private mNavBarScrimView:Landroid/view/View;

.field private mShouldAnimateNavBarScrim:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0223

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    return-void
.end method

.method private animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    sget-object v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getDuration(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p2, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method private animateScrimToCurrentNavBarState(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_0

    const/16 v1, 0x96

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    return-void
.end method

.method private createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .locals 3

    new-instance v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    return-object v0
.end method

.method private isNavBarScrimRequired(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasTransposedNavBar:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareEnterRecentsAnimation(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    iget v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/views/DockState;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    :cond_0
    return-void
.end method

.method public updateNavBarScrim(ZZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation(ZZ)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method
