.class public Lcom/android/systemui/qs/car/CarStatusBarHeader;
.super Landroid/widget/LinearLayout;
.source "CarStatusBarHeader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyDarkness(ILandroid/graphics/Rect;FI)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const v3, 0x7f0a0074

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    const v4, 0x7f0a00a9

    invoke-direct {p0, v4, v2, v1, v0}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->applyDarkness(ILandroid/graphics/Rect;FI)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/car/CarStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/BatteryMeterView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/BatteryMeterView;->setForceShowPercent(Z)V

    return-void
.end method
