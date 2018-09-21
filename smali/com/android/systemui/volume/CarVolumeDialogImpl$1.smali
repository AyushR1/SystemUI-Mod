.class Lcom/android/systemui/volume/CarVolumeDialogImpl$1;
.super Landroid/car/media/ICarVolumeCallback$Stub;
.source "CarVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/CarVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-direct {p0}, Landroid/car/media/ICarVolumeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupVolumeChanged(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1700(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/CarAudioManager;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1800(Landroid/car/media/CarAudioManager;I)I

    move-result v1

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$600(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$500(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Landroidx/car/widget/SeekbarListItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/car/widget/SeekbarListItem;->setProgress(I)V

    invoke-static {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$602(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->show(I)V

    :cond_0
    return-void
.end method

.method public onMasterMuteChanged(I)V
    .locals 0

    return-void
.end method
