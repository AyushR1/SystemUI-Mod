.class public Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;,
        Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;
    }
.end annotation


# instance fields
.field private mAnimationPending:Z

.field private final mNotificationContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/NotificationListContainer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$l5Gj6YM2XO6z1WFQpGTriWePKVk;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$ActivityLaunchAnimator$l5Gj6YM2XO6z1WFQpGTriWePKVk;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/NotificationListContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mNotificationContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setAnimationPending(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setAnimationPending(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->collapsePanel(Z)V

    return-void
.end method

.method private setAnimationPending(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mAnimationPending:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setExpandAnimationPending(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getLaunchAnimation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Landroid/view/RemoteAnimationAdapter;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;-><init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    new-instance v0, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0xfa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnimationPending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mAnimationPending:Z

    return v0
.end method

.method public setLaunchResult(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setAnimationPending(Z)V

    return-void
.end method
