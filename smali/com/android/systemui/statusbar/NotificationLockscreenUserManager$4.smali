.class Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$4;
.super Landroid/database/ContentObserver;
.source "NotificationLockscreenUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updateLockscreenNotificationSetting()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$400(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    :cond_0
    return-void
.end method
