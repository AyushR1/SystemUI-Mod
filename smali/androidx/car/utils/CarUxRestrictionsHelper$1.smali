.class Landroidx/car/utils/CarUxRestrictionsHelper$1;
.super Ljava/lang/Object;
.source "CarUxRestrictionsHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/utils/CarUxRestrictionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/utils/CarUxRestrictionsHelper;


# direct methods
.method constructor <init>(Landroidx/car/utils/CarUxRestrictionsHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    iget-object v1, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    invoke-static {v1}, Landroidx/car/utils/CarUxRestrictionsHelper;->access$100(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/Car;

    move-result-object v1

    const-string v2, "uxrestriction"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-static {v0, v1}, Landroidx/car/utils/CarUxRestrictionsHelper;->access$002(Landroidx/car/utils/CarUxRestrictionsHelper;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    invoke-static {v0}, Landroidx/car/utils/CarUxRestrictionsHelper;->access$000(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    invoke-static {v1}, Landroidx/car/utils/CarUxRestrictionsHelper;->access$200(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->registerListener(Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;)V

    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    invoke-static {v0}, Landroidx/car/utils/CarUxRestrictionsHelper;->access$200(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    invoke-static {v1}, Landroidx/car/utils/CarUxRestrictionsHelper;->access$000(Landroidx/car/utils/CarUxRestrictionsHelper;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->getCurrentCarUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsManager$OnUxRestrictionsChangedListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
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

    iget-object v0, p0, Landroidx/car/utils/CarUxRestrictionsHelper$1;->this$0:Landroidx/car/utils/CarUxRestrictionsHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/car/utils/CarUxRestrictionsHelper;->access$002(Landroidx/car/utils/CarUxRestrictionsHelper;Landroid/car/drivingstate/CarUxRestrictionsManager;)Landroid/car/drivingstate/CarUxRestrictionsManager;

    return-void
.end method
