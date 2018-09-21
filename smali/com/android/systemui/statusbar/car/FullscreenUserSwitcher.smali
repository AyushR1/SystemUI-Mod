.class public Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;
.super Ljava/lang/Object;
.source "FullscreenUserSwitcher.java"


# instance fields
.field private final mContainer:Landroid/view/View;

.field private mCurrentForegroundUserId:I

.field private final mParent:Landroid/view/View;

.field private final mShortAnimDuration:I

.field private mShowing:Z

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

.field private final mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewStub;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->buildAdapter()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    new-instance v2, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$aJmHs-UVhjESZPP4fORPpYI740g;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$aJmHs-UVhjESZPP4fORPpYI740g;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->setUserSelectionListener(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;)V

    new-instance v1, Lcom/android/settingslib/users/UserManagerHelper;

    invoke-direct {v1, p3}, Lcom/android/settingslib/users/UserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->updateCurrentForegroundUser()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    return-void
.end method

.method private dismissKeyguard()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private fadeOut(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private foregroundUserChanged()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mCurrentForegroundUserId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v1}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$IK7lNRNVhlYLd9PajOKix9WDNFg(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->dismissKeyguard()V

    return-void
.end method

.method public static synthetic lambda$aJmHs-UVhjESZPP4fORPpYI740g(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->onUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V

    return-void
.end method

.method private onUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsForeground:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->dismissKeyguard()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->toggleSwitchInProgress(Z)V

    return-void
.end method

.method private toggleSwitchInProgress(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->fadeOut(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->fadeIn(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateCurrentForegroundUser()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mCurrentForegroundUserId:I

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->foregroundUserChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->toggleSwitchInProgress(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->updateCurrentForegroundUser()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$IK7lNRNVhlYLd9PajOKix9WDNFg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$IK7lNRNVhlYLd9PajOKix9WDNFg;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/UserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v1}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->userIsSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
