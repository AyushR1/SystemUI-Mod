.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "EmergencyCarrierArea.java"


# instance fields
.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    new-instance v1, Lcom/android/keyguard/EmergencyCarrierArea$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyCarrierArea$1;-><init>(Lcom/android/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCarrierTextVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    return-void
.end method
