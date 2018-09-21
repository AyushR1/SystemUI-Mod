.class public Lcom/android/systemui/statusbar/car/CarStatusBar;
.super Lcom/android/systemui/statusbar/phone/StatusBar;
.source "CarStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field public static final ENABLE_HVAC_CONNECTION:Z


# instance fields
.field private mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

.field private mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

.field private mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

.field private mDeviceIsProvisioned:Z

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

.field private mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mLeftNavigationBarWindow:Landroid/view/ViewGroup;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mNavigationBarWindow:Landroid/view/ViewGroup;

.field private mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

.field private final mQueueLock:Ljava/lang/Object;

.field private mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mRightNavigationBarWindow:Landroid/view/ViewGroup;

.field private mShowBottom:Z

.field private mShowLeft:Z

.field private mShowRight:Z

.field private mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.car.hvac.demo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/systemui/statusbar/car/CarStatusBar;->ENABLE_HVAC_CONNECTION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mQueueLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/car/CarStatusBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->restartNavBars()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarFacetButtonController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    return-object v0
.end method

.method private attachNavBarWindows()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7e3

    const v6, 0x840028

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v2, "CarNavigationBar"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    const/high16 v2, 0x400000

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700c4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0x7e8

    const v8, 0x840028

    const/4 v9, -0x3

    move-object v4, v3

    move v5, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v4, "LeftCarNavigationBar"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v4, 0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/16 v7, 0x7e8

    const v8, 0x840028

    const/4 v9, -0x3

    move-object v4, v3

    move v5, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v4, "RightCarNavigationBar"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x5

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private buildBottomBar(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->setStatusBar(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    return-void

    :cond_0
    const-string v0, "CarStatusBar"

    const-string v1, "CarStatusBar failed inflate for R.layout.car_navigation_bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to build botom nav bar due to missing layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildLeft(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->setStatusBar(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    return-void

    :cond_0
    const-string v0, "CarStatusBar"

    const-string v1, "CarStatusBar failed inflate for R.layout.car_navigation_bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to build left nav bar due to missing layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildNavBarContent()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0041

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0042

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildBottomBar(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d003b

    goto :goto_1

    :cond_2
    const v0, 0x7f0d003c

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildLeft(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0d0048

    goto :goto_2

    :cond_4
    const v0, 0x7f0d0049

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildRight(I)V

    :cond_5
    return-void
.end method

.method private buildNavBarWindows()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    const/4 v1, 0x0

    const v2, 0x7f0d00da

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    :cond_2
    return-void
.end method

.method private buildRight(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CarStatusBar"

    const-string v1, "CarStatusBar failed inflate for R.layout.car_navigation_bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to build right nav bar due to missing layout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/car/CarBatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->addBatteryViewHandler(Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    return-object v0
.end method

.method private getDefaultWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x1080264

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$makeStatusBarView$0(Lcom/android/systemui/statusbar/car/CarStatusBar;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    return-void
.end method

.method private restartNavBars()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->removeAll()V

    sget-boolean v0, Lcom/android/systemui/statusbar/car/CarStatusBar;->ENABLE_HVAC_CONNECTION:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->removeAllComponents()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildNavBarContent()V

    return-void
.end method


# virtual methods
.method public animateExpandNotificationsPanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->releaseAllImmediately()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    return-void
.end method

.method protected createNavigationBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowBottom:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowLeft:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mShowRight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildNavBarWindows()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->buildNavBarContent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->attachNavBarWindows()V

    return-void
.end method

.method protected createUserSwitcher()V
    .locals 4

    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a0130

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewStub;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/car/CarStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStackScroller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/car/CarStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  mTaskStackListener="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mCarFacetButtonController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mFullscreenUserSwitcher="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mCarBatteryController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mBatteryMeterView="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mConnectedDeviceSignalController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mNavigationBarView="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/classifier/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "SharedPreferences:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideBatteryView()V
    .locals 3

    const-string v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public hideKeyguard()Z
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->hideKeyguard()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->hideKeyguardButtons()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->hideKeyguardButtons()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->hideKeyguardButtons()V

    :cond_2
    return v0
.end method

.method protected makeStatusBarView()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->getDefaultWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string v1, "CollapsedStatusBarFragment"

    new-instance v2, Lcom/android/systemui/statusbar/car/-$$Lambda$CarStatusBar$PUUfpFW14_Bn6H5Pyx2aCDzbBeU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarStatusBar$PUUfpFW14_Bn6H5Pyx2aCDzbBeU;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDensityOrFontScaleChanged()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->getDefaultWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUserSwitched(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->onUserSwitched(I)V

    :cond_0
    return-void
.end method

.method setNavBarVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showBatteryView()V
    .locals 3

    const-string v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showKeyguard()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showKeyguard()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->showKeyguardButtons()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mLeftNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->showKeyguardButtons()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mRightNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->showKeyguardButtons()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->start()V

    new-instance v0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;Lcom/android/systemui/statusbar/car/CarStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->startListening()V

    sget-boolean v0, Lcom/android/systemui/statusbar/car/CarStatusBar;->ENABLE_HVAC_CONNECTION:Z

    if-eqz v0, :cond_0

    const-string v0, "CarStatusBar"

    const-string v1, "Connecting to HVAC service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->connectToCarService()V

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarFacetButtonController:Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceIsProvisioned:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v1, Lcom/android/systemui/statusbar/car/CarStatusBar$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/CarStatusBar$1;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public updateKeyguardState(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 0

    return-void
.end method
