.class public Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.super Ljava/lang/Object;
.source "HeadsUpAppearanceController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field private final mClockView:Landroid/view/View;

.field private final mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mExpandFraction:F

.field private mExpandedHeight:F

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

.field private mIsExpanded:Z

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private final mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field mPoint:Landroid/graphics/Point;

.field private final mSetExpandedHeight:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetTrackingHeadsUp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShown:Z

.field private final mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mUpdatePanelTranslation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Landroid/view/View;)V
    .locals 8

    nop

    const v0, 0x7f0a015b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const v0, 0x7f0a024b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const v0, 0x7f0a0245

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v0, 0x7f0a00ac

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/HeadsUpStatusBarView;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$Ndod8fRabzshTVmNSVHx_M0XNU4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Ndod8fRabzshTVmNSVHx_M0XNU4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$22QZFjoGlQJQoKOrFe-bHbZltB4;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DialNTWPBOn27MISeLu6p9klZxI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DialNTWPBOn27MISeLu6p9klZxI;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$hwNOwOgXItDjQM7QwL00pigpnrk;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1d3l5klDiH8maZOdHwrJBKgigPE;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addVerticalTranslationListener(Ljava/lang/Runnable;)V

    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method private getRtlTranslation()I
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPoint:Landroid/graphics/Point;

    iget v0, v1, Landroid/graphics/Point;->x:I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    nop

    :cond_6
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRight()I

    move-result v9

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    sub-int/2addr v9, v0

    return v9
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updatePanelTranslation()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    return-void
.end method

.method public static synthetic lambda$setShown$2(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$setShown$3(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$updateHeadsUpHeaders$4(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method private setShown(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    const/16 v0, 0x64

    const/4 v1, 0x0

    const-wide/16 v2, 0x6e

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-static {v4, v2, v3, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$iMPD_c-MpkAUOLIdQAujzNCdyYQ;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$iMPD_c-MpkAUOLIdQAujzNCdyYQ;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mClockView:Landroid/view/View;

    invoke-static {v4, v2, v3, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;JI)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateHeadsUpHeaders()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1KnuQ6evxsUDWWnSk6M2Hz6dh50;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1KnuQ6evxsUDWWnSk6M2Hz6dh50;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateIsolatedIconLocation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getIconDrawingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setIsolatedIconLocation(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private updateTopEntry()V
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->getTopEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getShowingEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    if-eq v0, v1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    xor-int/2addr v4, v5

    move v2, v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->setShown(Z)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    xor-int/2addr v4, v5

    move v2, v4

    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateIsolatedIconLocation(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    if-nez v0, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showIconIsolated(Lcom/android/systemui/statusbar/StatusBarIconView;Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetTrackingHeadsUp:Ljava/util/function/Consumer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mUpdatePanelTranslation:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeVerticalTranslationListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mSetExpandedHeight:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeOnExpandedHeightListener(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScrollLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mDarkIconDispatcher:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    return-void
.end method

.method public isShown()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mShown:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method public setExpandedHeight(FF)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v1, v2

    nop

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeadsUpHeaders()V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-eq v1, v2, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    :cond_3
    return-void
.end method

.method public setPublicMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPublicMode(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_0
    return-void
.end method

.method public shouldBeVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mIsExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateHeader(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mTrackedChild:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandFraction:F

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeaderVisibleAmount(F)V

    return-void
.end method

.method public updatePanelTranslation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->getRtlTranslation()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpStatusBarView:Lcom/android/systemui/statusbar/HeadsUpStatusBarView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPanelTranslation(F)V

    return-void
.end method
