.class final Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "CarVolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/CarVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private final mVolumeGroupId:I

.field final synthetic this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;ILandroid/car/media/CarAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->mVolumeGroupId:I

    iput-object p3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;ILandroid/car/media/CarAudioManager;Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;ILandroid/car/media/CarAudioManager;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring volume change event because the car isn\'t connected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->mVolumeGroupId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    invoke-static {v0, p2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$602(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    iget v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;->mVolumeGroupId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/car/media/CarAudioManager;->setGroupVolume(III)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
