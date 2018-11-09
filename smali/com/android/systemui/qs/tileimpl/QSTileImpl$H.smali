.class public final Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
.super Landroid/os/Handler;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "handleAddCallback"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$000(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    const-string v1, "handleRemoveCallbacks"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$100(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)V

    goto/16 :goto_4

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    const-string v1, "handleRemoveCallback"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$200(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto/16 :goto_4

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4

    const-string v1, "handleClick"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$300(Lcom/android/systemui/qs/tileimpl/QSTileImpl;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v2, v1, v4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleClick()V

    goto/16 :goto_4

    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    const-string v1, "handleSecondaryClick"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSecondaryClick()V

    goto/16 :goto_4

    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    const-string v1, "handleLongClick"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    goto/16 :goto_4

    :cond_6
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    const-string v1, "handleRefreshState"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    const-string v1, "handleShowDetail"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$400(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto/16 :goto_4

    :cond_9
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_a

    const-string v1, "handleUserSwitch"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    goto/16 :goto_4

    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_c

    const-string v1, "handleToggleStateChanged"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    goto :goto_1

    :cond_b
    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$500(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_4

    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_e

    const-string v1, "handleScanStateChanged"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_d

    goto :goto_2

    :cond_d
    move v2, v4

    :goto_2
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$600(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Z)V

    goto :goto_4

    :cond_e
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_f

    const-string v1, "handleDestroy"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    goto :goto_4

    :cond_f
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_11

    const-string v1, "handleSetListeningInternal"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_10

    goto :goto_3

    :cond_10
    move v2, v4

    :goto_3
    invoke-static {v1, v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->access$700(Lcom/android/systemui/qs/tileimpl/QSTileImpl;Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_11
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_12

    const-string v1, "handleStale"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleStale()V

    :goto_4
    goto :goto_5

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v3, v2, v1}, Lcom/android/systemui/qs/QSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
