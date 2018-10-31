.class Lcom/android/keyguard/KeyguardEsimArea;
.super Landroid/widget/Button;
.source "KeyguardEsimArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardEsimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardEsimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x1030259

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardEsimArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/keyguard/KeyguardEsimArea$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardEsimArea$1;-><init>(Lcom/android/keyguard/KeyguardEsimArea;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardEsimArea;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "euicc"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardEsimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, p0}, Lcom/android/keyguard/KeyguardEsimArea;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardEsimArea;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardEsimArea;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isEsimLocked(Landroid/content/Context;I)Z
    .locals 4

    const-string v0, "euicc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardEsimArea;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardEsimArea;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.keyguard.disable_esim"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.systemui.permission.SELF"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keyguard.disable_esim"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardEsimArea;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardEsimArea;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v0, v4, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardEsimArea;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardEsimArea;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardEsimArea;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    return-void
.end method
