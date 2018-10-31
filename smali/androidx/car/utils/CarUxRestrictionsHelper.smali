.class public Landroidx/car/utils/CarUxRestrictionsHelper;
.super Ljava/lang/Object;
.source "CarUxRestrictionsHelper.java"


# instance fields
.field private final mCar:Landroid/car/Car;

.field private mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

.field private final mListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/car/utils/CarUxRestrictionsHelper$1;

    invoke-direct {v0, p0}, Landroidx/car/utils/CarUxRestrictionsHelper$1;-><init>(Landroidx/car/utils/CarUxRestrictionsHelper;)V

    iput-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mCar:Landroid/car/Car;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/drivingstate/CarUxRestrictionsManager;
    .locals 1

    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-object v0
.end method

.method static synthetic access$002(Landroidx/car/utils/CarUxRestrictionsHelper;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;
    .locals 0

    iput-object p1, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mCarUxRestrictionsManager:Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-object p1
.end method

.method static synthetic access$100(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/Car;
    .locals 1

    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;
    .locals 1

    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper;->mListener:Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    return-object v0
.end method
