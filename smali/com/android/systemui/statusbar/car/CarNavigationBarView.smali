.class Lcom/android/systemui/statusbar/car/CarNavigationBarView;
.super Landroid/widget/LinearLayout;
.source "CarNavigationBarView.java"


# instance fields
.field private mCarStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

.field private mContext:Landroid/content/Context;

.field private mLockScreenButtons:Landroid/view/View;

.field private mNavButtons:Landroid/view/View;

.field private mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hideKeyguardButtons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    const v0, 0x7f0a0221

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/view/View;

    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/car/-$$Lambda$Y4nI6w7N50JXOiy6kyuMQKNxBt8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$Y4nI6w7N50JXOiy6kyuMQKNxBt8;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationBarView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a031e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    move-object v0, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setShouldLog(Z)V

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_1
    return-void
.end method

.method protected onNotificationsClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mCarStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->togglePanel()V

    return-void
.end method

.method setStatusBar(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mCarStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    return-void
.end method

.method public showKeyguardButtons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
