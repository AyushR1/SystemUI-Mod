.class Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBatteryTileIcon"
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mIconScale:F

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mBatteryLevel:I

    iput p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mIconScale:F

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mBatteryLevel:I

    iget v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mIconScale:F

    const v2, 0x7f080249

    invoke-static {p1, v2, v0, v1}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object v0

    return-object v0
.end method
