.class public Lcom/android/systemui/tuner/PowerNotificationControlsFragment;
.super Landroid/app/Fragment;
.source "PowerNotificationControlsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    move-result v0

    return v0
.end method

.method private isEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_importance_slider"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d00f7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    nop

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x188

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    nop

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x188

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a032f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    const v2, 0x7f0a0332

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f110525

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const v3, 0x7f110524

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;-><init>(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;Landroid/widget/Switch;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
