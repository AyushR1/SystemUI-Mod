.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mControlValueInitialized:Z

.field private final mDefaultBacklight:I

.field private final mDefaultBacklightForVr:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMaximumBacklightForVr:I

.field private final mMinimumBacklight:I

.field private final mMinimumBacklightForVr:I

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/16 v1, 0x3ff

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/Dependency;->initDependencies(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$7;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v1, "vrmanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/settings/BrightnessController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/BrightnessController;->updateSlider(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method private animateSliderTo(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v3}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v3

    aput v3, v0, v2

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$T5g_am3jK-it6CD1eLLpr05aFxc;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessController$T5g_am3jK-it6CD1eLLpr05aFxc;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$animateSliderTo$0(Lcom/android/systemui/settings/BrightnessController;Landroid/animation/ValueAnimator;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return-void
.end method

.method private setBrightness(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    return-void
.end method

.method private updateIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f08024f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private updateSlider(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v2}, Lcom/android/systemui/settings/ToggleSlider;->getValue()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result v2

    if-ne p1, v2, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/BrightnessController;->animateSliderTo(I)V

    return-void
.end method

.method private updateVrMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$9;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1f2

    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    const-string v3, "screen_brightness_for_vr"

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xdb

    goto :goto_0

    :cond_3
    const/16 v0, 0xda

    :goto_0
    iget v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    const-string v3, "screen_brightness"

    :goto_1
    invoke-static {p4, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinear(III)I

    move-result v4

    if-eqz p5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_5

    new-instance v5, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v6}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public registerCallbacks()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to register VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to unregister VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    return-void
.end method
