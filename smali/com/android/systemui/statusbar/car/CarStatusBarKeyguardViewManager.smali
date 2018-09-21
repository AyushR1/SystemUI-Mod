.class public Lcom/android/systemui/statusbar/car/CarStatusBarKeyguardViewManager;
.super Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
.source "CarStatusBarKeyguardViewManager.java"


# instance fields
.field protected mShouldHideNavBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBarKeyguardViewManager;->mShouldHideNavBar:Z

    return-void
.end method


# virtual methods
.method protected shouldDestroyViewOnReset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected updateNavigationBarVisibility(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBarKeyguardViewManager;->mShouldHideNavBar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBarKeyguardViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast v0, Lcom/android/systemui/statusbar/car/CarStatusBar;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->setNavBarVisibility(I)V

    return-void
.end method
