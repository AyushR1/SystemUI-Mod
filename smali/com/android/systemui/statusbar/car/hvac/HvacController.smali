.class public Lcom/android/systemui/statusbar/car/hvac/HvacController;
.super Ljava/lang/Object;
.source "HvacController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;
    }
.end annotation


# instance fields
.field private mCar:Landroid/car/Car;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mHardwareCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private final mRestart:Landroid/os/IBinder$DeathRecipient;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTempComponents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/car/hvac/TemperatureView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mTempComponents:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/hvac/HvacController$1;-><init>(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/hvac/HvacController$2;-><init>(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mRestart:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/android/systemui/statusbar/car/hvac/HvacController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/hvac/HvacController$3;-><init>(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHardwareCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mRestart:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/hardware/hvac/CarHvacManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/car/hvac/HvacController;Landroid/car/hardware/hvac/CarHvacManager;)Landroid/car/hardware/hvac/CarHvacManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/Car;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHardwareCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->initComponents()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/car/hvac/HvacController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->destroyHvacManager()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/car/hvac/HvacController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mTempComponents:Ljava/util/HashMap;

    return-object v0
.end method

.method private destroyHvacManager()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHardwareCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->unregisterCallback(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    :cond_0
    return-void
.end method

.method private initComponent(Lcom/android/systemui/statusbar/car/hvac/TemperatureView;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->getPropertyId()I

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->getAreaId()I

    move-result v1

    const/high16 v2, 0x7fc00000    # NaNf

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v3, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->isPropertyAvailable(II)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v3, v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->getFloatProperty(II)F

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->setTemp(F)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->setTemp(F)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->setTemp(F)V

    const-string v2, "HvacController"

    const-string v4, "Failed to get value from hvac service"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private initComponents()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mTempComponents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->initComponent(Lcom/android/systemui/statusbar/car/hvac/TemperatureView;)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addHvacTextView(Lcom/android/systemui/statusbar/car/hvac/TemperatureView;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->getPropertyId()I

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/car/hvac/TemperatureView;->getAreaId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/car/hvac/HvacController$HvacKey;-><init>(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mTempComponents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mTempComponents:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mTempComponents:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/hvac/HvacController;->initComponent(Lcom/android/systemui/statusbar/car/hvac/TemperatureView;)V

    return-void
.end method

.method public connectToCarService()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/os/Handler;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mCar:Landroid/car/Car;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mCar:Landroid/car/Car;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    :cond_0
    return-void
.end method

.method public removeAllComponents()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/hvac/HvacController;->mTempComponents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
