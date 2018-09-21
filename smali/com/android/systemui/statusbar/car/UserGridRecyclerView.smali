.class public Lcom/android/systemui/statusbar/car/UserGridRecyclerView;
.super Landroidx/car/widget/PagedListView;
.source "UserGridRecyclerView.java"

# interfaces
.implements Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;,
        Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;,
        Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

.field private mContext:Landroid/content/Context;

.field private mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

.field private mUserSelectionListener:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/car/widget/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settingslib/users/UserManagerHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/users/UserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserSelectionListener:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/settingslib/users/UserManagerHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    return-object v0
.end method

.method private addGuestUserRecord()Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;
    .locals 4

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0}, Landroid/content/pm/UserInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mContext:Landroid/content/Context;

    const v2, 0x7f1101aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v2, v2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;-><init>(Landroid/content/pm/UserInfo;ZZZ)V

    return-object v1
.end method

.method private addUserRecord()Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;
    .locals 4

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0}, Landroid/content/pm/UserInfo;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mContext:Landroid/content/Context;

    const v2, 0x7f1101a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, v2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;-><init>(Landroid/content/pm/UserInfo;ZZZ)V

    return-object v1
.end method

.method private createUserRecords(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v3}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    new-instance v4, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    invoke-direct {v4, v2, v5, v5, v3}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;-><init>(Landroid/content/pm/UserInfo;ZZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v1}, Lcom/android/settingslib/users/UserManagerHelper;->foregroundUserIsGuestUser()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->addGuestUserRecord()Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v1}, Lcom/android/settingslib/users/UserManagerHelper;->foregroundUserCanAddUsers()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->addUserRecord()Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public buildAdapter()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->createUserRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;-><init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    invoke-super {p0, v1}, Landroidx/car/widget/PagedListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/car/widget/PagedListView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/UserManagerHelper;->unregisterOnUsersUpdateListener()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroidx/car/widget/PagedListView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/users/UserManagerHelper;->registerOnUsersUpdateListener(Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;)V

    return-void
.end method

.method public onUsersUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->clearUsers()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v1}, Lcom/android/settingslib/users/UserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->createUserRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->updateUsers(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setUserSelectionListener(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->mUserSelectionListener:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;

    return-void
.end method
