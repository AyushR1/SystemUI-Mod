.class public Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;
.super Landroid/content/BroadcastReceiver;
.source "ConnectedDeviceSignalController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# static fields
.field private static final SIGNAL_STRENGTH_ICONS:[I


# instance fields
.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mNetworkSignalView:Landroid/widget/ImageView;

.field private final mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field private final mSignalsView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->SIGNAL_STRENGTH_ICONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private processActionAgEvent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_0

    const v2, 0x7f0803ba

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->setNetworkSignalIcon(I)V

    :cond_0
    const-string v2, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    sget-object v3, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->SIGNAL_STRENGTH_ICONS:[I

    aget v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->setNetworkSignalIcon(I)V

    :cond_1
    const-string v3, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    nop

    return-void
.end method

.method private setNetworkSignalIcon(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/SignalDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewVisibility(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->SIGNAL_STRENGTH_ICONS:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->setNetworkSignalIcon(I)V

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onBluetoothDevicesChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->processActionAgEvent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->updateViewVisibility(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_1
    :goto_0
    return-void
.end method
