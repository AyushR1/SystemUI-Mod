.class Landroidx/car/moderator/SpeedBumpController$3;
.super Ljava/lang/Object;
.source "SpeedBumpController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/moderator/SpeedBumpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/moderator/SpeedBumpController;


# direct methods
.method constructor <init>(Landroidx/car/moderator/SpeedBumpController;)V
    .locals 0

    iput-object p1, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onServiceConnected$33(Landroidx/car/moderator/SpeedBumpController;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/car/moderator/SpeedBumpController;->access$700(Landroidx/car/moderator/SpeedBumpController;Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v1}, Landroidx/car/moderator/SpeedBumpController;->access$600(Landroidx/car/moderator/SpeedBumpController;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "uxrestriction"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-static {v0, v1}, Landroidx/car/moderator/SpeedBumpController;->access$502(Landroidx/car/moderator/SpeedBumpController;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v0}, Landroidx/car/moderator/SpeedBumpController;->access$500(Landroidx/car/moderator/SpeedBumpController;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    new-instance v2, Landroidx/car/moderator/-$$Lambda$SpeedBumpController$3$DiJB13knXa5lry4ASBohbIcj-zc;

    invoke-direct {v2, v1}, Landroidx/car/moderator/-$$Lambda$SpeedBumpController$3$DiJB13knXa5lry4ASBohbIcj-zc;-><init>(Landroidx/car/moderator/SpeedBumpController;)V

    invoke-virtual {v0, v2}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    iget-object v1, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v1}, Landroidx/car/moderator/SpeedBumpController;->access$500(Landroidx/car/moderator/SpeedBumpController;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/car/moderator/SpeedBumpController;->access$700(Landroidx/car/moderator/SpeedBumpController;Landroid/car/drivingstate/CarUxRestrictions;)V

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v0}, Landroidx/car/moderator/SpeedBumpController;->access$600(Landroidx/car/moderator/SpeedBumpController;)Landroid/car/Car;

    move-result-object v0

    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/settings/CarConfigurationManager;

    nop

    invoke-virtual {v0}, Landroid/car/settings/CarConfigurationManager;->getSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;

    move-result-object v1

    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v2}, Landroidx/car/moderator/SpeedBumpController;->access$800(Landroidx/car/moderator/SpeedBumpController;)Landroidx/car/moderator/ContentRateLimiter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/car/settings/SpeedBumpConfiguration;->getAcquiredPermitsPerSecond()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/car/moderator/ContentRateLimiter;->setAcquiredPermitsRate(D)V

    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v2}, Landroidx/car/moderator/SpeedBumpController;->access$800(Landroidx/car/moderator/SpeedBumpController;)Landroidx/car/moderator/ContentRateLimiter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/car/settings/SpeedBumpConfiguration;->getMaxPermitPool()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/car/moderator/ContentRateLimiter;->setMaxStoredPermits(D)V

    iget-object v2, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    invoke-static {v2}, Landroidx/car/moderator/SpeedBumpController;->access$800(Landroidx/car/moderator/SpeedBumpController;)Landroidx/car/moderator/ContentRateLimiter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/car/settings/SpeedBumpConfiguration;->getPermitFillDelay()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/car/moderator/ContentRateLimiter;->setPermitFillDelay(J)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpController$3;->this$0:Landroidx/car/moderator/SpeedBumpController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/car/moderator/SpeedBumpController;->access$502(Landroidx/car/moderator/SpeedBumpController;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-void
.end method
