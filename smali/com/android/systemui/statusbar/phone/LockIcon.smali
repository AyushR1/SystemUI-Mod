.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mHasFaceUnlockIcon:Z

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LockIcon$0dMARpPtuLHOj252cR_FbaJx3Kc;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    const v0, 0x7f08030b

    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_1

    const v0, 0x7f0803d9

    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    const v0, 0x7f080129

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    const v0, 0x7f080309

    return v0

    :cond_3
    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f080305

    return v0

    :cond_4
    if-ne p2, v1, :cond_7

    if-nez p5, :cond_5

    if-eqz p6, :cond_5

    if-nez p4, :cond_6

    :cond_5
    if-eqz p6, :cond_7

    if-nez p3, :cond_7

    if-eqz p4, :cond_7

    :cond_6
    const v0, 0x7f080307

    return v0

    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    const v0, 0x7f080169

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const v0, 0x7f080168

    goto :goto_0

    :cond_0
    const v0, 0x7f080307

    :goto_0
    goto :goto_1

    :pswitch_2
    const v0, 0x7f080167

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const v0, 0x7f0801a6

    goto :goto_1

    :pswitch_4
    const v0, 0x7f0801a5

    nop

    :goto_1
    nop

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getState()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    return v3

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    return v3

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method private updateClickability()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1100f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    :goto_0
    return-void
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 17

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    move v10, v0

    if-eqz v10, :cond_1

    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    goto :goto_1

    :cond_1
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v11

    const/4 v0, 0x3

    if-eq v11, v0, :cond_3

    const/4 v0, 0x4

    if-ne v11, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move v12, v0

    const/4 v0, 0x2

    if-ne v11, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move v0, v9

    :goto_4
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    move v13, v12

    move v14, v12

    iget v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v11, v0, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-ne v0, v1, :cond_6

    iget-boolean v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v16, v10

    goto/16 :goto_e

    :cond_6
    :goto_5
    iget v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iget-boolean v5, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    iget-boolean v6, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object v0, v7

    move v2, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    move v1, v9

    :goto_6
    const v2, 0x7f080305

    if-ne v0, v2, :cond_8

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v3, 0x1

    :goto_7
    move v14, v3

    goto :goto_8

    :cond_8
    const v3, 0x7f0803d9

    if-ne v0, v3, :cond_9

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const v3, 0x7f080129

    if-ne v0, v3, :cond_a

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    goto :goto_7

    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    iget-object v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_9

    :cond_b
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iget-boolean v4, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-direct {v7, v11, v3, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_9
    instance-of v4, v3, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v4, :cond_c

    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070188

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f070189

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-nez v12, :cond_e

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    if-ne v8, v5, :cond_d

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    if-eq v8, v6, :cond_e

    :cond_d
    new-instance v8, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v8, v3, v6, v5}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v3, v8

    :cond_e
    if-eqz v13, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v2, 0x7f070165

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_b

    :cond_f
    nop

    move v2, v9

    :goto_b
    invoke-virtual {v7, v9, v9, v9, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    nop

    if-eqz v12, :cond_10

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_10
    const/high16 v2, 0x3f000000    # 0.5f

    :goto_c
    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    invoke-virtual {v7, v3, v9}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFaceUnlockIcon:Z

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x7f1100e6

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_11
    iput-boolean v12, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v4, :cond_12

    if-eqz v1, :cond_12

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_12
    const v2, 0x7f080305

    if-ne v0, v2, :cond_13

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move/from16 v16, v10

    const-wide/16 v9, 0x320

    invoke-virtual {v7, v2, v9, v10}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    :cond_13
    move/from16 v16, v10

    iget-object v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    invoke-virtual {v7, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_d
    iput v11, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    iget-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    :goto_e
    iget-object v0, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v14, :cond_14

    const/4 v15, 0x1

    goto :goto_f

    :cond_14
    const/4 v15, 0x0

    :goto_f
    move v0, v15

    iget-object v1, v7, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    return-void
.end method
