.class public final Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UserGridRecyclerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;,
        Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAddUserRecord:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

.field private mAddUserView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mGuestName:Ljava/lang/String;

.field private final mNewUserName:Ljava/lang/String;

.field private final mRes:Landroid/content/res/Resources;

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mRes:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->updateUsers(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f1101aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mGuestName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f1101ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mNewUserName:Ljava/lang/String;

    return-void
.end method

.method private getUserRecordIcon(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)Landroid/graphics/Bitmap;
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsStartGuestSession:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$100(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/settingslib/users/UserManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/users/UserManagerHelper;->getGuestDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsAddUser:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0800e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$100(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/settingslib/users/UserManagerHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->getUserIcon(Landroid/content/pm/UserInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsStartGuestSession:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->notifyUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$100(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/settingslib/users/UserManagerHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mGuestName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->startNewGuestSession(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsAddUser:Z

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mAddUserView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mAddUserView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f110580

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f110582

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mAddUserRecord:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f120200

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110583

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->notifyUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$100(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/settingslib/users/UserManagerHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUser(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method private notifyUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$000(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$000(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;->onUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearUsers()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->onBindViewHolder(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mUsers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mRes:Landroid/content/res/Resources;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->getUserRecordIcon(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->mUserAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->mUserNameTextView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mInfo:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->mView:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;-><init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mAddUserRecord:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->notifyUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V

    new-instance v1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;-><init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$1;)V

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mNewUserName:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mAddUserView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mAddUserView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    new-instance v1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;-><init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public updateUsers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->mUsers:Ljava/util/List;

    return-void
.end method
