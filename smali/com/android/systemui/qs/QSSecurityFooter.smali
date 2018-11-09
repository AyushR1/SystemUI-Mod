.class public Lcom/android/systemui/qs/QSSecurityFooter;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;,
        Lcom/android/systemui/qs/QSSecurityFooter$H;,
        Lcom/android/systemui/qs/QSSecurityFooter$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDivider:Landroid/view/View;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextContent:Ljava/lang/CharSequence;

.field protected mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUm:Landroid/os/UserManager;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "QSSecurityFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSSecurityFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d012a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a012c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    const v2, 0x7f0a012a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    const v0, 0x7f080198

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleClick()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSSecurityFooter;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleRefreshState()V

    return-void
.end method

.method private createDialog()V
    .locals 23

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v7

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v8

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v10

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v11

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v12

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f120233

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f0d012b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v0, v5, v3, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6, v7, v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, -0x2

    const v0, 0x7f0a00ea

    const/16 v1, 0x8

    if-nez v4, :cond_0

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a00ec

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    invoke-virtual {v6, v7, v10, v11}, Lcom/android/systemui/qs/QSSecurityFooter;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object v5

    const v0, 0x7f0a0097

    if-nez v5, :cond_1

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0099

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1
    invoke-virtual {v6, v12}, Lcom/android/systemui/qs/QSSecurityFooter;->getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;

    move-result-object v2

    const v0, 0x7f0a022a

    if-nez v2, :cond_2

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a022c

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v6, v7, v8, v13, v14}, Lcom/android/systemui/qs/QSSecurityFooter;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x7f0a03a2

    if-nez v3, :cond_3

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a03a4

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_3
    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v5, :cond_5

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    :goto_5
    if-eqz v2, :cond_6

    const/16 v20, 0x1

    goto :goto_6

    :cond_6
    const/16 v20, 0x0

    :goto_6
    if-eqz v3, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    move-object v0, v6

    move-object/from16 v19, v2

    move/from16 v2, v17

    move-object/from16 v17, v3

    move/from16 v21, v7

    const/4 v7, -0x2

    move/from16 v3, v20

    move-object/from16 v18, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    const/4 v7, -0x1

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSSecurityFooter;->configSubtitleVisibility(ZZZZLandroid/view/View;)V

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v7, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f1103c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11036c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    return-void
.end method

.method private handleRefreshState()V
    .locals 22

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v11

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v13, v0

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v14

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v15

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v16

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v17

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v19

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v20

    iget-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v21

    if-eqz v11, :cond_1

    if-eqz v13, :cond_3

    :cond_1
    if-nez v15, :cond_3

    if-nez v16, :cond_3

    if-nez v18, :cond_3

    if-eqz v19, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    iput-boolean v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    move-object v0, v10

    move v1, v11

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/QSSecurityFooter;->getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    const v0, 0x7f080198

    if-nez v18, :cond_4

    if-eqz v19, :cond_6

    :cond_4
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f08024e

    goto :goto_3

    :cond_5
    const v0, 0x7f080268

    :cond_6
    :goto_3
    iget v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v1, v0, :cond_7

    iput v0, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v1, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected configSubtitleVisibility(ZZZZLandroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz p3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-eqz p4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    const/16 v1, 0x8

    if-eqz p2, :cond_5

    const v2, 0x7f0a0098

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p3, :cond_6

    const v2, 0x7f0a022b

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz p4, :cond_7

    const v2, 0x7f0a03a3

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11037d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11037a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    if-nez p3, :cond_9

    if-nez p4, :cond_9

    if-eqz p5, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    if-nez p8, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110444

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f11044a

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez p6, :cond_5

    if-eqz p7, :cond_3

    goto :goto_0

    :cond_3
    if-nez p8, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110441

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110447

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    if-nez p8, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110443

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p6, :cond_6

    move-object v4, p6

    goto :goto_1

    :cond_6
    move-object v4, p7

    :goto_1
    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110449

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p8, v4, v0

    if-eqz p6, :cond_8

    move-object v0, p6

    goto :goto_2

    :cond_8
    move-object v0, p7

    :goto_2
    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    if-nez p8, :cond_a

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110442

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110448

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p8, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    if-eqz p4, :cond_d

    if-nez p9, :cond_c

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11043f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110446

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p9, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    if-eqz p3, :cond_e

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f110445

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    if-eqz p6, :cond_f

    if-eqz p7, :cond_f

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11044d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    if-eqz p7, :cond_10

    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f110440

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p7, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    if-eqz p6, :cond_12

    if-eqz p2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f11044c

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f11044b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p6, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11037f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11037c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f11037e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v1, 0x7f110380

    const/4 v2, 0x2

    const v3, 0x7f110383

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    aput-object p4, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p3, :cond_2

    move-object v4, p3

    goto :goto_0

    :cond_2
    move-object v4, p4

    :goto_0
    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v5

    aput-object p4, v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f11037b

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f110382

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f110387

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v2, 0x7f110386

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f07039a

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public refreshState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialog()V

    return-void
.end method
