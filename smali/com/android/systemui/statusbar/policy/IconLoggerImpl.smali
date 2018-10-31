.class public Lcom/android/systemui/statusbar/policy/IconLoggerImpl;
.super Ljava/lang/Object;
.source "IconLoggerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IconLogger;


# static fields
.field protected static MIN_LOG_INTERVAL:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcons:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLog:J

.field private final mLog:Ljava/lang/Runnable;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->MIN_LOG_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$IconLoggerImpl$R-UnLK2IlCvdUfqG-_mI_-TEpe4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$IconLoggerImpl$R-UnLK2IlCvdUfqG-_mI_-TEpe4;-><init>(Lcom/android/systemui/statusbar/policy/IconLoggerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIconIndex:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->doLog()V

    return-void
.end method

.method private doLog()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v4

    :try_start_0
    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x445

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x447

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    const/16 v7, 0x446

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->getBitField(Landroid/util/ArraySet;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private getBitField(Landroid/util/ArraySet;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIconIndex:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    or-int/2addr v0, v4

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public static synthetic lambda$R-UnLK2IlCvdUfqG-_mI_-TEpe4(Lcom/android/systemui/statusbar/policy/IconLoggerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->doLog()V

    return-void
.end method


# virtual methods
.method public onIconHidden(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->MIN_LOG_INTERVAL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onIconShown(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->MIN_LOG_INTERVAL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
