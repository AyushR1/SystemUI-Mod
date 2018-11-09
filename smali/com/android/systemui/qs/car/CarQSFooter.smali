.class public Lcom/android/systemui/qs/car/CarQSFooter;
.super Landroid/widget/RelativeLayout;
.source "CarQSFooter.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# instance fields
.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/qs/car/CarQSFooter;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    if-nez v0, :cond_0

    const-string v0, "CarQSFooter"

    const-string v1, "CarQSFooter not properly set up; cannot display user switcher."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-virtual {v0}, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-virtual {v0}, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-virtual {v0}, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->hide()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onFinishInflate$1()V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .locals 3

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$H3UVMkyVF99w6eHnJ5RvLZW_NH8;->INSTANCE:Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$H3UVMkyVF99w6eHnJ5RvLZW_NH8;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0220

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a021f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v0, 0x7f0a038c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserName:Landroid/widget/TextView;

    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    new-instance v1, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$xoqzki0urKxneglGiL2edvgrN-s;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$xoqzki0urKxneglGiL2edvgrN-s;-><init>(Lcom/android/systemui/qs/car/CarQSFooter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$C_VT7jTcbPDHJhehIsWtJGKaO0U;->INSTANCE:Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$C_VT7jTcbPDHJhehIsWtJGKaO0U;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    return-void
.end method

.method public setUserSwitchCallback(Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    return-void
.end method
