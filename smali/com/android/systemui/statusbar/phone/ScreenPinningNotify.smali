.class public Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;
.super Ljava/lang/Object;
.source "ScreenPinningNotify.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastShowToastTime:J

.field private mLastToast:Landroid/widget/Toast;

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mWindowManagerService:Landroid/view/IWindowManager;

    return-void
.end method

.method private hasNavigationBar()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/custom/NavbarUtils;->isEnabled(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private makeAllUserToastAndShow(I)Landroid/widget/Toast;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v0
.end method

.method private supportsGesturesOnFP()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public showEscapeToast(Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastShowToastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string v2, "ScreenPinningNotify"

    const-string v3, "Ignore toast since it is requested in very short interval."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->supportsGesturesOnFP()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1104b6

    goto :goto_0

    :cond_2
    const v2, 0x7f1104b5

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const v2, 0x7f1104b4

    goto :goto_0

    :cond_4
    const v2, 0x7f1104b7

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastShowToastTime:J

    return-void
.end method

.method public showPinningExitToast()V
    .locals 1

    const v0, 0x7f1104af

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    return-void
.end method

.method public showPinningStartToast()V
    .locals 1

    const v0, 0x7f1104b2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    return-void
.end method
