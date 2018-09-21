.class public Landroidx/car/moderator/ContentRateLimiter;
.super Ljava/lang/Object;
.source "ContentRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;
    }
.end annotation


# instance fields
.field private final mElapsedTimeProvider:Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;

.field private mFillDelayMs:J

.field private mLastCalculatedPermitCount:D

.field private mMaxStoredPermits:D

.field private mResumeIncrementingMs:J

.field private mSecondaryFillDelayPermitAvailable:Z

.field private mStableIntervalMs:J

.field private mUnlimitedModeEnabled:Z


# direct methods
.method public constructor <init>(DDJ)V
    .locals 8

    new-instance v7, Landroidx/car/moderator/SystemClockTimeProvider;

    invoke-direct {v7}, Landroidx/car/moderator/SystemClockTimeProvider;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Landroidx/car/moderator/ContentRateLimiter;-><init>(DDJLandroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;)V

    return-void
.end method

.method constructor <init>(DDJLandroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mSecondaryFillDelayPermitAvailable:Z

    iput-object p7, p0, Landroidx/car/moderator/ContentRateLimiter;->mElapsedTimeProvider:Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;

    iget-object v1, p0, Landroidx/car/moderator/ContentRateLimiter;->mElapsedTimeProvider:Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;

    invoke-interface {v1}, Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;->getElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/car/moderator/ContentRateLimiter;->mResumeIncrementingMs:J

    invoke-virtual {p0, p1, p2}, Landroidx/car/moderator/ContentRateLimiter;->setAcquiredPermitsRate(D)V

    invoke-virtual {p0, p3, p4}, Landroidx/car/moderator/ContentRateLimiter;->setMaxStoredPermits(D)V

    invoke-virtual {p0, p5, p6}, Landroidx/car/moderator/ContentRateLimiter;->setPermitFillDelay(J)V

    const-string v1, "ContentRateLimiter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContentRateLimiter"

    const-string v3, "permitsPerSecond: %f maxStoredPermits: %f, fillDelayMs %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getLastCalculatedPermitCount()D
    .locals 8

    iget-object v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mElapsedTimeProvider:Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;

    invoke-interface {v0}, Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;->getElapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/car/moderator/ContentRateLimiter;->mResumeIncrementingMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Landroidx/car/moderator/ContentRateLimiter;->mResumeIncrementingMs:J

    sub-long v2, v0, v2

    long-to-double v4, v2

    iget-wide v6, p0, Landroidx/car/moderator/ContentRateLimiter;->mStableIntervalMs:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    iget-wide v6, p0, Landroidx/car/moderator/ContentRateLimiter;->mLastCalculatedPermitCount:D

    add-double/2addr v6, v4

    invoke-direct {p0, v6, v7, v0, v1}, Landroidx/car/moderator/ContentRateLimiter;->setLastCalculatedPermitCount(DJ)V

    :cond_0
    iget-wide v2, p0, Landroidx/car/moderator/ContentRateLimiter;->mLastCalculatedPermitCount:D

    return-wide v2
.end method

.method private setLastCalculatedPermitCount(DJ)V
    .locals 2

    iget-wide v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mMaxStoredPermits:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mLastCalculatedPermitCount:D

    iput-wide p3, p0, Landroidx/car/moderator/ContentRateLimiter;->mResumeIncrementingMs:J

    return-void
.end method


# virtual methods
.method public setAcquiredPermitsRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkArgument(Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mStableIntervalMs:J

    return-void
.end method

.method public setMaxStoredPermits(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/car/moderator/ContentRateLimiter;->mMaxStoredPermits:D

    iput-wide p1, p0, Landroidx/car/moderator/ContentRateLimiter;->mLastCalculatedPermitCount:D

    return-void
.end method

.method public setPermitFillDelay(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/util/Preconditions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/car/moderator/ContentRateLimiter;->mFillDelayMs:J

    return-void
.end method

.method public setUnlimitedMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/car/moderator/ContentRateLimiter;->mUnlimitedModeEnabled:Z

    return-void
.end method

.method public tryAcquire()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/car/moderator/ContentRateLimiter;->tryAcquire(I)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(I)Z
    .locals 13

    iget-boolean v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mUnlimitedModeEnabled:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "ContentRateLimiter"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContentRateLimiter"

    const-string v1, "Unlimited mode is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    invoke-direct {p0}, Landroidx/car/moderator/ContentRateLimiter;->getLastCalculatedPermitCount()D

    move-result-wide v3

    iget-object v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mElapsedTimeProvider:Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;

    invoke-interface {v0}, Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;->getElapsedRealtime()J

    move-result-wide v5

    const-string v0, "ContentRateLimiter"

    const/4 v7, 0x2

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    const-string v0, "ContentRateLimiter"

    const-string v9, "Requesting: %d, Stored: %f/%f"

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    iget-wide v11, p0, Landroidx/car/moderator/ContentRateLimiter;->mLastCalculatedPermitCount:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v2

    iget-wide v11, p0, Landroidx/car/moderator/ContentRateLimiter;->mMaxStoredPermits:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    int-to-double v9, p1

    cmpg-double v0, v3, v9

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    iget-wide v9, p0, Landroidx/car/moderator/ContentRateLimiter;->mFillDelayMs:J

    add-long/2addr v9, v5

    invoke-direct {p0, v0, v1, v9, v10}, Landroidx/car/moderator/ContentRateLimiter;->setLastCalculatedPermitCount(DJ)V

    return v8

    :cond_3
    iget-wide v9, p0, Landroidx/car/moderator/ContentRateLimiter;->mResumeIncrementingMs:J

    cmp-long v0, v5, v9

    if-gez v0, :cond_5

    iget-boolean v0, p0, Landroidx/car/moderator/ContentRateLimiter;->mSecondaryFillDelayPermitAvailable:Z

    if-eqz v0, :cond_5

    iget-wide v9, p0, Landroidx/car/moderator/ContentRateLimiter;->mFillDelayMs:J

    add-long/2addr v9, v5

    invoke-direct {p0, v3, v4, v9, v10}, Landroidx/car/moderator/ContentRateLimiter;->setLastCalculatedPermitCount(DJ)V

    iput-boolean v8, p0, Landroidx/car/moderator/ContentRateLimiter;->mSecondaryFillDelayPermitAvailable:Z

    const-string v0, "ContentRateLimiter"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ContentRateLimiter"

    const-string v1, "Used up free secondary permit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    int-to-double v0, p1

    sub-double v0, v3, v0

    iget-wide v9, p0, Landroidx/car/moderator/ContentRateLimiter;->mFillDelayMs:J

    add-long/2addr v9, v5

    invoke-direct {p0, v0, v1, v9, v10}, Landroidx/car/moderator/ContentRateLimiter;->setLastCalculatedPermitCount(DJ)V

    const-string v0, "ContentRateLimiter"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ContentRateLimiter"

    const-string v1, "permits remaining %s, secondary permit available %s"

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v9, p0, Landroidx/car/moderator/ContentRateLimiter;->mLastCalculatedPermitCount:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    iget-boolean v8, p0, Landroidx/car/moderator/ContentRateLimiter;->mSecondaryFillDelayPermitAvailable:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-boolean v2, p0, Landroidx/car/moderator/ContentRateLimiter;->mSecondaryFillDelayPermitAvailable:Z

    return v2
.end method
