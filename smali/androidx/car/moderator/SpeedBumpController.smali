.class Landroidx/car/moderator/SpeedBumpController;
.super Ljava/lang/Object;
.source "SpeedBumpController.java"


# instance fields
.field private final mCar:Landroid/car/Car;

.field private mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

.field private final mContentRateLimiter:Landroidx/car/moderator/ContentRateLimiter;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInteractionPermitted:Z

.field private final mLockOutMessageDurationMs:I

.field private final mLockoutImageView:Landroid/widget/ImageView;

.field private final mLockoutMessageView:Landroid/view/View;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroidx/car/moderator/SpeedBumpView;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Landroidx/car/moderator/ContentRateLimiter;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    const-wide/16 v5, 0x258

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/car/moderator/ContentRateLimiter;-><init>(DDJ)V

    iput-object v7, p0, Landroidx/car/moderator/SpeedBumpController;->mContentRateLimiter:Landroidx/car/moderator/ContentRateLimiter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/moderator/SpeedBumpController;->mInteractionPermitted:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/car/moderator/SpeedBumpController$3;

    invoke-direct {v1, p0}, Landroidx/car/moderator/SpeedBumpController$3;-><init>(Landroidx/car/moderator/SpeedBumpController;)V

    iput-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroidx/car/moderator/SpeedBumpView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/car/R$layout;->lock_out_message:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    sget v3, Landroidx/car/R$id;->lock_out_drawable:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/car/R$integer;->speed_bump_lock_out_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroidx/car/moderator/SpeedBumpController;->mLockOutMessageDurationMs:I

    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/car/moderator/SpeedBumpController;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v2, v3}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v2

    iput-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mContentRateLimiter:Landroidx/car/moderator/ContentRateLimiter;

    invoke-virtual {v2, v0}, Landroidx/car/moderator/ContentRateLimiter;->setUnlimitedMode(Z)V

    return-void
.end method

.method static synthetic access$000(Landroidx/car/moderator/SpeedBumpController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/car/moderator/SpeedBumpController;)I
    .locals 1

    iget v0, p0, Landroidx/car/moderator/SpeedBumpController;->mLockOutMessageDurationMs:I

    return v0
.end method

.method static synthetic access$200(Landroidx/car/moderator/SpeedBumpController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/car/moderator/SpeedBumpController;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/moderator/SpeedBumpController;->hideLockOutMessage()V

    return-void
.end method

.method static synthetic access$402(Landroidx/car/moderator/SpeedBumpController;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/car/moderator/SpeedBumpController;->mInteractionPermitted:Z

    return p1
.end method

.method static synthetic access$500(Landroidx/car/moderator/SpeedBumpController;)Landroid/car/drivingstate/CarUxRestrictionsManager;
    .locals 1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-object v0
.end method

.method static synthetic access$502(Landroidx/car/moderator/SpeedBumpController;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;
    .locals 0

    iput-object p1, p0, Landroidx/car/moderator/SpeedBumpController;->mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/car/moderator/SpeedBumpController;)Landroid/car/Car;
    .locals 1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/car/moderator/SpeedBumpController;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/car/moderator/SpeedBumpController;->updateUnlimitedModeEnabled(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method static synthetic access$800(Landroidx/car/moderator/SpeedBumpController;)Landroidx/car/moderator/ContentRateLimiter;
    .locals 1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mContentRateLimiter:Landroidx/car/moderator/ContentRateLimiter;

    return-object v0
.end method

.method private hideLockOutMessage()V
    .locals 2

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mContext:Landroid/content/Context;

    sget v1, Landroidx/car/R$anim;->lock_out_message_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroidx/car/moderator/SpeedBumpController$2;

    invoke-direct {v1, p0}, Landroidx/car/moderator/SpeedBumpController$2;-><init>(Landroidx/car/moderator/SpeedBumpController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private showLockOutMessage()V
    .locals 2

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mContext:Landroid/content/Context;

    sget v1, Landroidx/car/R$anim;->lock_out_message_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroidx/car/moderator/SpeedBumpController$1;

    invoke-direct {v1, p0}, Landroidx/car/moderator/SpeedBumpController$1;-><init>(Landroidx/car/moderator/SpeedBumpController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private updateUnlimitedModeEnabled(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mContentRateLimiter:Landroidx/car/moderator/ContentRateLimiter;

    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/car/moderator/ContentRateLimiter;->setUnlimitedMode(Z)V

    return-void
.end method


# virtual methods
.method getLockoutMessageView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mLockoutMessageView:Landroid/view/View;

    return-object v0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController;->mContentRateLimiter:Landroidx/car/moderator/ContentRateLimiter;

    invoke-virtual {v2}, Landroidx/car/moderator/ContentRateLimiter;->tryAcquire()Z

    move-result v2

    iget-boolean v3, p0, Landroidx/car/moderator/SpeedBumpController;->mInteractionPermitted:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroidx/car/moderator/SpeedBumpController;->mInteractionPermitted:Z

    invoke-direct {p0}, Landroidx/car/moderator/SpeedBumpController;->showLockOutMessage()V

    return v1

    :cond_1
    iget-boolean v1, p0, Landroidx/car/moderator/SpeedBumpController;->mInteractionPermitted:Z

    return v1
.end method

.method start()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeedBumpController"

    const-string v2, "start(); cannot connect to Car"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method stop()V
    .locals 3

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictionsManager;->unregisterListener()V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SpeedBumpController"

    const-string v2, "stop(); cannot unregister listener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "SpeedBumpController"

    const-string v2, "stop(); cannot disconnect from Car."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
