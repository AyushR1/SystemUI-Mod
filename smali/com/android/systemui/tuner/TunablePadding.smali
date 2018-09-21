.class public Lcom/android/systemui/tuner/TunablePadding;
.super Ljava/lang/Object;
.source "TunablePadding.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;
    }
.end annotation


# instance fields
.field private final mDefaultSize:I

.field private final mDensity:F

.field private final mFlags:I

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Ljava/lang/String;IILandroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/tuner/TunablePadding;->mDefaultSize:I

    iput p3, p0, Lcom/android/systemui/tuner/TunablePadding;->mFlags:I

    iput-object p4, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/systemui/tuner/TunablePadding;->mDensity:F

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/view/View;Lcom/android/systemui/tuner/TunablePadding$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/tuner/TunablePadding;-><init>(Ljava/lang/String;IILandroid/view/View;)V

    return-void
.end method

.method public static addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;
    .locals 1

    const-class v0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;->add(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    move-result-object v0

    return-object v0
.end method

.method private getPadding(II)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/tuner/TunablePadding;->mFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/android/systemui/tuner/TunablePadding;->mDefaultSize:I

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/tuner/TunablePadding;->mDensity:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/tuner/TunablePadding;->mView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result v5

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result v6

    const/16 v7, 0x8

    invoke-direct {p0, v0, v7}, Lcom/android/systemui/tuner/TunablePadding;->getPadding(II)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
