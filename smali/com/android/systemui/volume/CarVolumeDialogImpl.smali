.class public Lcom/android/systemui/volume/CarVolumeDialogImpl;
.super Ljava/lang/Object;
.source "CarVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;,
        Lcom/android/systemui/volume/CarVolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAvailableVolumeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCar:Landroid/car/Car;

.field private mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

.field private mExpanded:Z

.field private final mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

.field private mHovering:Z

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mListView:Landroidx/car/widget/PagedListView;

.field private mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowing:Z

.field private final mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

.field private final mVolumeItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeLineItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mAvailableVolumeItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$1;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f12032d

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/CarVolumeDialogImpl;Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->addSeekbarListItem(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroidx/car/widget/SeekbarListItem;)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->findVolumeItem(Landroidx/car/widget/SeekbarListItem;)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroidx/car/widget/ListItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/CarAudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/car/media/CarAudioManager;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getSeekbarValue(Landroid/car/media/CarAudioManager;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/Car;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/CarVolumeDialogImpl;[I)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getVolumeItemForUsages([I)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/ICarVolumeCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->cleanupAudioManager()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/CarVolumeDialogImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mExpanded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/CarVolumeDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mExpanded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mAvailableVolumeItems:Ljava/util/List;

    return-object v0
.end method

.method private addSeekbarListItem(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;
    .locals 6

    new-instance v0, Landroidx/car/widget/SeekbarListItem;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/car/widget/SeekbarListItem;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-static {v1, p2}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getMaxSeekbarValue(Landroid/car/media/CarAudioManager;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/car/widget/SeekbarListItem;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    invoke-static {v2, p2}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->getSeekbarValue(Landroid/car/media/CarAudioManager;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/car/widget/SeekbarListItem;->setProgress(I)V

    new-instance v3, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;

    iget-object v4, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    const/4 v5, 0x0

    invoke-direct {v3, p0, p2, v4, v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;ILandroid/car/media/CarAudioManager;Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V

    invoke-virtual {v0, v3}, Landroidx/car/widget/SeekbarListItem;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$300(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v3}, Landroidx/car/widget/SeekbarListItem;->setPrimaryActionIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, v5, v4, p4}, Landroidx/car/widget/SeekbarListItem;->setSupplementalIcon(Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroidx/car/widget/SeekbarListItem;->setSupplementalEmptyIcon(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$502(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;Landroidx/car/widget/SeekbarListItem;)Landroidx/car/widget/SeekbarListItem;

    invoke-static {p1, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$602(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    return-object v0
.end method

.method private cleanupAudioManager()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeChangeCallback:Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v1}, Landroid/car/media/ICarVolumeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/media/CarAudioManager;->unregisterVolumeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method private computeTimeoutH()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3e80

    goto :goto_0

    :cond_0
    const/16 v0, 0xbb8

    :goto_0
    return v0
.end method

.method private findVolumeItem(Landroidx/car/widget/SeekbarListItem;)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$500(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Landroidx/car/widget/SeekbarListItem;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMaxSeekbarValue(Landroid/car/media/CarAudioManager;I)I
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupMaxVolume(I)I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static getSeekbarValue(Landroid/car/media/CarAudioManager;I)I
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/car/media/CarAudioManager;->getGroupVolume(I)I

    move-result v0
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private getVolumeItemForUsages([I)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .locals 7

    const v0, 0x7fffffff

    const/4 v1, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p1, v3

    iget-object v5, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    invoke-static {v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$200(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v6

    if-ge v6, v0, :cond_0

    invoke-static {v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$200(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I

    move-result v0

    move-object v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private initDialog()V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->loadAudioUsageItems()V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHovering:Z

    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10002

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x10c0128

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-class v1, Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v4, -0x2

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v3, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d004d

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->setContentView(I)V

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$vlKmnqSHXeP1A03lvbFsgzjPtc0;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$vlKmnqSHXeP1A03lvbFsgzjPtc0;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x7f0a0399

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/car/widget/PagedListView;

    iput-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$ttx6YehS3HDGJCSyF1Z5F3v3yDI;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$ttx6YehS3HDGJCSyF1Z5F3v3yDI;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    invoke-virtual {v2, v3}, Landroidx/car/widget/PagedListView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v2, Landroidx/car/widget/ListItemAdapter;

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroidx/car/widget/ListItemProvider$ListProvider;

    iget-object v5, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeLineItems:Ljava/util/List;

    invoke-direct {v4, v5}, Landroidx/car/widget/ListItemProvider$ListProvider;-><init>(Ljava/util/List;)V

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Landroidx/car/widget/ListItemAdapter;-><init>(Landroid/content/Context;Landroidx/car/widget/ListItemProvider;I)V

    iput-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    invoke-virtual {v2, v3}, Landroidx/car/widget/PagedListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v2, v1}, Landroidx/car/widget/PagedListView;->setMaxPages(I)V

    return-void
.end method

.method public static synthetic lambda$dismissH$2(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v1, "mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$dismissH$3(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$Ta8M0dGuIMjlpBaP0lNmvgYiiqA;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$Ta8M0dGuIMjlpBaP0lNmvgYiiqA;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$initDialog$0(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v1}, Landroidx/car/widget/PagedListView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/car/widget/PagedListView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$initDialog$1(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHovering:Z

    invoke-virtual {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->rescheduleTimeoutH()V

    return v1
.end method

.method private loadAudioUsageItems()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f150000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "carVolumeItems"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    const/4 v6, 0x0

    move v7, v4

    move v4, v6

    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v7, v8

    if-eq v8, v5, :cond_5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_5

    :cond_2
    if-ne v7, v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v8, "item"

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/R$styleable;->carVolumeItems_item:[I

    invoke-virtual {v8, v2, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    if-ltz v9, :cond_4

    new-instance v10, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    invoke-direct {v10, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V

    invoke-static {v10, v9}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$102(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    invoke-static {v10, v4}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$202(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    invoke-virtual {v8, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$302(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I

    iget-object v11, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mVolumeItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :cond_4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    goto :goto_4

    :cond_7
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Meta-data does not start with carVolumeItems tag"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    :try_start_5
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    :goto_3
    throw v2
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing volume groups configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method private showH(I)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->rescheduleTimeoutH()V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mPagedListAdapter:Landroidx/car/widget/ListItemAdapter;

    invoke-virtual {v0}, Landroidx/car/widget/ListItemAdapter;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mDialog:Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$CustomDialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->cleanupAudioManager()V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    return-void
.end method

.method protected dismissH(I)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissH r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/systemui/volume/Events;->DISMISS_REASONS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mShowing:Z

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/car/widget/PagedListView;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroidx/car/widget/PagedListView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v2}, Landroidx/car/widget/PagedListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mListView:Landroidx/car/widget/PagedListView;

    invoke-virtual {v3}, Landroidx/car/widget/PagedListView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v3}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$rCIGYbfmmruUBwL8pG_nmk6yEXo;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/-$$Lambda$CarVolumeDialogImpl$rCIGYbfmmruUBwL8pG_nmk6yEXo;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v1, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->initDialog()V

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/volume/CarVolumeDialogImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rescheduleTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl;->mHandler:Lcom/android/systemui/volume/CarVolumeDialogImpl$H;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
