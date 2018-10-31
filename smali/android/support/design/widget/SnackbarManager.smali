.class Landroid/support/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SnackbarManager$SnackbarRecord;,
        Landroid/support/design/widget/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static snackbarManager:Landroid/support/design/widget/SnackbarManager;


# instance fields
.field private currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/SnackbarManager$1;-><init>(Landroid/support/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .locals 2

    iget-object v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Landroid/support/design/widget/SnackbarManager$Callback;->dismiss(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static getInstance()Landroid/support/design/widget/SnackbarManager;
    .locals 1

    sget-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/SnackbarManager;

    invoke-direct {v0}, Landroid/support/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    :cond_0
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->snackbarManager:Landroid/support/design/widget/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 5

    iget v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_1

    iget v0, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextSnackbarLocked()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/SnackbarManager$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/support/design/widget/SnackbarManager$Callback;->show()V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->nextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreTimeoutIfPaused(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    iget-object v1, p0, Landroid/support/design/widget/SnackbarManager;->currentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
