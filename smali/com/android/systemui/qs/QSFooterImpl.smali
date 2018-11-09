.class public Lcom/android/systemui/qs/QSFooterImpl;
.super Landroid/widget/FrameLayout;
.source "QSFooterImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/qs/QSFooter;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;
    }
.end annotation


# instance fields
.field private mActionsContainer:Landroid/view/View;

.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private final mColorForeground:I

.field private mDivider:Landroid/view/View;

.field private mDragHandle:Landroid/view/View;

.field protected mEdit:Landroid/view/View;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private final mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

.field private mListening:Z

.field private mMobileGroup:Landroid/view/View;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSignal:Landroid/widget/ImageView;

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mQsDisabled:Z

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEmergencyCallsOnly:Z

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;-><init>(Lcom/android/systemui/qs/QSFooterImpl;Lcom/android/systemui/qs/QSFooterImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    const v0, 0x1010030

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mColorForeground:I

    return-void
.end method

.method private createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 6

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDivider:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const-string v2, "alpha"

    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileGroup:Landroid/view/View;

    const-string v2, "alpha"

    new-array v5, v3, [F

    fill-array-data v5, :array_2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    const-string v2, "alpha"

    new-array v5, v3, [F

    fill-array-data v5, :array_3

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDragHandle:Landroid/view/View;

    const-string v2, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleUpdateState()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileGroup:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->visible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->visible:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->roaming:Z

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileRoaming:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mColorForeground:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mColorForeground:I

    invoke-static {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getColorIntensity(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->mobileSignalIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->contentDescription:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->contentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->roaming:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f1101e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->typeContentDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f1101e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->typeContentDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f1101b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v2, v2, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method static synthetic lambda$onClick$4()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$onClick$5(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    return-void
.end method

.method public static synthetic lambda$onClick$6(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$p6Eelc3uV5Rv_Va6Mn0QpjivHN4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$p6Eelc3uV5Rv_Va6Mn0QpjivHN4;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11056a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;)V
    .locals 2

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$BPGtDaa2eU-tTCTVDpjGrKOXYOs;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$BPGtDaa2eU-tTCTVDpjGrKOXYOs;-><init>(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$2(Lcom/android/systemui/qs/QSFooterImpl;Landroid/view/View;IIIIIIII)V
    .locals 1

    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->updateAnimator(I)V

    return-void
.end method

.method public static synthetic lambda$updateEverything$3(Lcom/android/systemui/qs/QSFooterImpl;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateVisibilities()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setClickable(Z)V

    return-void
.end method

.method private showUserSwitcher(Z)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v2, "no_user_switch"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-le v1, v2, :cond_2

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateAnimator(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07038a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int v2, v0, v1

    sub-int v2, p1, v2

    add-int/lit8 v3, v0, -0x1

    div-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    const-string v6, "translationX"

    const/4 v7, 0x2

    new-array v8, v7, [F

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_0

    sub-int v9, v2, v3

    :goto_0
    int-to-float v9, v9

    goto :goto_1

    :cond_0
    sub-int v9, v2, v3

    neg-int v9, v9

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    aput v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const-string v6, "rotation"

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x3d100000    # -120.0f
        0x0
    .end array-data
.end method

.method private updateFooterAnimator()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->createFooterAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void
.end method

.method private updateListeners()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateResources()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateFooterAnimator()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateVisibilities()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    const v1, 0x7f0a0378

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    nop

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->showUserSwitcher(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-nez v0, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    goto :goto_6

    :cond_6
    :goto_5
    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsDisabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v0, :cond_4

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$ORlOcuwnOcEc1bdhJcTagEFJfI4;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$ORlOcuwnOcEc1bdhJcTagEFJfI4;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x196

    goto :goto_0

    :cond_2
    const/16 v1, 0x1ea

    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v0

    if-eqz v0, :cond_3

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$QqFCwKmpQEaqoIsbaA3_odDeJWo;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$QqFCwKmpQEaqoIsbaA3_odDeJWo;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->startSettingsActivity()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setListening(Z)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a028b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDivider:Landroid/view/View;

    const v0, 0x1020003

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mEdit:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$3QBg0cgvu2IRpUDq3RvpL257x8c;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$3QBg0cgvu2IRpUDq3RvpL257x8c;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a012b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01f9

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileGroup:Landroid/view/View;

    const v0, 0x7f0a01ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileSignal:Landroid/widget/ImageView;

    const v0, 0x7f0a01fd

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMobileRoaming:Landroid/widget/ImageView;

    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mCarrierText:Lcom/android/keyguard/CarrierText;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setDisplayFlags(I)V

    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a021f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v0, 0x7f0a0288

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mDragHandle:Landroid/view/View;

    const v0, 0x7f0a028a

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActionsContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$GSAG9gEF755NpvH4khVvAa75uPs;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$GSAG9gEF755NpvH4khVvAa75uPs;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooterImpl;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateResources()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mContext:Landroid/content/Context;

    const v1, 0x1010030

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEmergencyCallsOnly:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mShowEmergencyCallsOnly:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    :cond_1
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateEverything()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mSettingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mFooterAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->setExpansion(F)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->updateListeners()V

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZLjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->mobileSignalIconId:I

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->contentDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iput-object p7, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->typeContentDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    iput-boolean p11, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->roaming:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->handleUpdateState()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mInfo:Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/QSFooterImpl$CellSignalState;->visible:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterImpl;->handleUpdateState()V

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterImpl;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterImpl;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    :cond_0
    return-void
.end method

.method public updateEverything()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$FK1In3z-Y3ppRrcllMggnruYa_s;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/-$$Lambda$QSFooterImpl$FK1In3z-Y3ppRrcllMggnruYa_s;-><init>(Lcom/android/systemui/qs/QSFooterImpl;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterImpl;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
