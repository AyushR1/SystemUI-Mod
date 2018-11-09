.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled:Z

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public disable(IIZ)V
    .locals 2

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    :cond_2
    return-void
.end method

.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZ)V

    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 12

    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xf2

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f120235

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v5, v5, 0x700

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v4, 0x7e4

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    const v5, 0x10d0120

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x1030004

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    const v5, 0x10900ee

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v6, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f040392

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/KeyguardManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    const v8, 0x102000d

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v9, 0x1020014

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_0

    const v10, 0x104056f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-class v11, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v11}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    if-eqz v7, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v11, v3}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    iget v4, v10, Landroid/graphics/Point;->x:I

    iget v5, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method
