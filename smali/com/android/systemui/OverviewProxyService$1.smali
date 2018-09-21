.class Lcom/android/systemui/OverviewProxyService$1;
.super Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/OverviewProxyService;


# direct methods
.method constructor <init>(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onOverviewShown$1(Lcom/android/systemui/OverviewProxyService$1;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$400(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/OverviewProxyService;->access$400(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onOverviewShown(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setBackButtonAlpha$3(Lcom/android/systemui/OverviewProxyService$1;FZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/OverviewProxyService;->access$300(Lcom/android/systemui/OverviewProxyService;FZ)V

    return-void
.end method

.method public static synthetic lambda$setInteractionState$2(Lcom/android/systemui/OverviewProxyService$1;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$400(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/OverviewProxyService;->access$400(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onInteractionFlagsChanged(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startScreenPinning$0(Lcom/android/systemui/OverviewProxyService$1;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v2, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/Divider;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onOverviewShown(Z)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$2pq3hQvAlKaOK9NXRBZWEO44FEQ;-><init>(Lcom/android/systemui/OverviewProxyService$1;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onSplitScreenInvoked()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public screenshot(Landroid/graphics/Rect;IIIIZI)Lcom/android/systemui/shared/system/GraphicBufferCompat;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Lcom/android/systemui/shared/system/GraphicBufferCompat;

    invoke-static/range {p1 .. p7}, Landroid/view/SurfaceControl;->screenshotToBuffer(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/system/GraphicBufferCompat;-><init>(Landroid/graphics/GraphicBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackButtonAlpha(FZ)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;-><init>(Lcom/android/systemui/OverviewProxyService$1;FZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setInteractionState(I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$100(Lcom/android/systemui/OverviewProxyService;)I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2, p1}, Lcom/android/systemui/OverviewProxyService;->access$102(Lcom/android/systemui/OverviewProxyService;I)I

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$OIMBB4z7B0rilnGoiEee2hjNc3M;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$OIMBB4z7B0rilnGoiEee2hjNc3M;-><init>(Lcom/android/systemui/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "QuickStepInteractionFlags"

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v4}, Lcom/android/systemui/OverviewProxyService;->access$100(Lcom/android/systemui/OverviewProxyService;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/OverviewProxyService;->access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v4}, Lcom/android/systemui/OverviewProxyService;->access$100(Lcom/android/systemui/OverviewProxyService;)I

    move-result v4

    const-string v5, "QuickStepInteractionFlags"

    invoke-static {v3, v5, v4}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startScreenPinning(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService$1;->this$0:Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/OverviewProxyService;->access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$zYh14hGzctRPjhdkAv_VxvbnwC4;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$zYh14hGzctRPjhdkAv_VxvbnwC4;-><init>(Lcom/android/systemui/OverviewProxyService$1;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
