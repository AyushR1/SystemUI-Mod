.class public Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "PipAccessibilityInteractionConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;
    }
.end annotation


# instance fields
.field private mAccessibilityNodeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    return-void
.end method

.method private getNodeList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    :cond_0
    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mAccessibilityNodeInfoList:Ljava/util/List;

    return-object v1
.end method

.method public static synthetic lambda$performAccessibilityAction$0(Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;->onAccessibilityShowMenu()V

    return-void
.end method

.method public static obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSourceNodeId(JI)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setImportantForAccessibility(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-object v0
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 2

    nop

    :try_start_0
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->getNodeList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p5, v0, p4}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p6, v0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p6, v0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p6, v0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p6, v0, p5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 9

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    const/4 v0, 0x0

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/high16 v4, 0x40000

    if-eq v2, v4, :cond_2

    const/high16 v4, 0x100000

    if-eq v2, v4, :cond_1

    const v4, 0x1020042

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v7, v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v8, v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$yj5JMyeINsNwnRK777qXcVORJV0;

    invoke-direct {v5, v1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipAccessibilityInteractionConnection$yj5JMyeINsNwnRK777qXcVORJV0;-><init>(Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    nop

    :cond_4
    :goto_0
    move v4, v0

    move v5, p5

    move-object v6, p6

    :try_start_0
    invoke-interface {v6, v4, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method
