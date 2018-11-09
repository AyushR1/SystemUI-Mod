.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$ThermalEventListener;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;,
        Lcom/android/systemui/power/PowerUI$Receiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final SIX_HOURS_MILLIS:J


# instance fields
.field mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryStatus:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field private final mHandler:Landroid/os/Handler;

.field private mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

.field private mInvalidCharger:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastEstimate:Lcom/android/systemui/power/Estimate;

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field private mLowWarningShownThisChargeCycle:Z

.field private mNextLogTime:J

.field private mNumTemps:I

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRecentTemps:[F

.field private mScreenOffTime:J

.field private mSevereWarningShownThisChargeCycle:Z

.field private mThermalService:Landroid/os/IThermalService;

.field private mThresholdTemp:F

.field private mTimeRemaining:J

.field private final mUpdateTempCallback:Ljava/lang/Runnable;

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const/16 v0, 0x7d

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    new-instance v0, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 3

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    rsub-int/lit8 v2, v1, -0x1

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not possible!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initTemperatureWarning()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "show_temperature_warning"

    const v3, 0x7f0b001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "warning_temperature"

    const v3, 0x7f0b001e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aget v4, v2, v3

    const v5, -0x800001

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    aget v3, v2, v3

    const v4, 0x7f0b001f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v2, :cond_5

    const-string v2, "thermalservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    new-instance v4, Lcom/android/systemui/power/PowerUI$ThermalEventListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/power/PowerUI$ThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    invoke-interface {v3, v4}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    goto :goto_3

    :cond_4
    const-string v3, "PowerUI"

    const-string v4, "cannot find thermalservice, no throttling push notifications"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    return-void
.end method

.method private isEnhancedTrigger(ZJZI)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_7

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v1

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    if-nez v4, :cond_2

    if-nez p4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v4}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-gt v4, v2, :cond_2

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v5}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-gt v5, v3, :cond_4

    :cond_3
    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    goto :goto_3

    :cond_6
    :goto_2
    move v0, v1

    :goto_3
    return v0

    :cond_7
    :goto_4
    return v0
.end method

.method public static synthetic lambda$UShUnCLjyLd54pAqMZk3QJ-gMNs(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    return-void
.end method

.method private logAtTemperatureThreshold(F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",thresholdTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",batteryStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",recentTemps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "PowerUI"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logTemperatureStats()V
    .locals 8

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v3, v3, v1

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v5, v5, v4

    add-float/2addr v0, v5

    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    move v3, v5

    :cond_1
    cmpg-float v6, v5, v2

    if-gez v6, :cond_2

    move v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    int-to-float v4, v4

    div-float v4, v0, v4

    const-string v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_avg"

    float-to-int v7, v4

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_min"

    float-to-int v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_max"

    float-to-int v7, v3

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    return-void
.end method

.method private setNextLogTime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    return-void
.end method

.method private showThermalShutdownDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showThermalShutdownWarning()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mThresholdTemp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mNextLogTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected maybeShowBatteryWarning(IZZII)V
    .locals 17

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v10

    const/4 v0, 0x0

    const/4 v11, 0x1

    move/from16 v12, p4

    move/from16 v13, p5

    if-ne v13, v12, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v11

    :goto_1
    move v14, v1

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v1}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mLastEstimate:Lcom/android/systemui/power/Estimate;

    if-eqz v1, :cond_2

    iget v2, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v8, p1

    if-eq v2, v8, :cond_3

    goto :goto_2

    :cond_2
    move/from16 v8, p1

    :goto_2
    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v2}, Lcom/android/systemui/power/EnhancedEstimates;->getEstimate()Lcom/android/systemui/power/Estimate;

    move-result-object v1

    iput-object v1, v9, Lcom/android/systemui/power/PowerUI;->mLastEstimate:Lcom/android/systemui/power/Estimate;

    :cond_3
    if-eqz v1, :cond_5

    iget-wide v2, v1, Lcom/android/systemui/power/Estimate;->estimateMillis:J

    iput-wide v2, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateEstimate(Lcom/android/systemui/power/Estimate;)V

    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v3, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v3}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v3

    iget-object v5, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v5}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateThresholds(JJ)V

    iget v2, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_5

    iget-wide v2, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    sget-wide v4, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iput-boolean v0, v9, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    iput-boolean v0, v9, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    goto :goto_3

    :cond_4
    move/from16 v8, p1

    :cond_5
    :goto_3
    iget-wide v5, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget v7, v9, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move-object v0, v9

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v12

    move v4, v13

    move/from16 v16, v7

    move v7, v10

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/power/PowerUI;->shouldShowLowBatteryWarning(ZZIIJZI)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v14}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    if-eqz v15, :cond_a

    iget-wide v0, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v2}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget v0, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v1, v1, v11

    if-ge v0, v1, :cond_6

    goto :goto_4

    :cond_6
    iput-boolean v11, v9, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    goto :goto_5

    :cond_7
    :goto_4
    iput-boolean v11, v9, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    goto :goto_5

    :cond_8
    iget-wide v4, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    move-object v0, v9

    move/from16 v1, p2

    move v2, v12

    move v3, v13

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/power/PowerUI;->shouldDismissLowBatteryWarning(ZIIJZ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_5

    :cond_9
    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    :cond_a
    :goto_5
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/-$$Lambda$PowerUI$UShUnCLjyLd54pAqMZk3QJ-gMNs;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/-$$Lambda$PowerUI$UShUnCLjyLd54pAqMZk3QJ-gMNs;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method shouldDismissLowBatteryWarning(ZIIJZ)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v3}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v3

    cmp-long v3, p4, v3

    if-lez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-le p3, p2, :cond_1

    if-lez p3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz p6, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    if-nez p1, :cond_4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v5}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    return v1
.end method

.method shouldShowLowBatteryWarning(ZZIIJZI)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p1

    move-wide v2, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/power/PowerUI;->isEnhancedTrigger(ZJZI)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-nez p7, :cond_2

    if-lt p4, p3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-gez p4, :cond_2

    if-eq p8, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "hardware_properties"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HardwarePropertiesManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-class v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const-class v0, Lcom/android/systemui/power/EnhancedEstimates;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/EnhancedEstimates;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showThermalShutdownDialog()V

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    return-void
.end method

.method updateBatteryWarningLevels()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v4, 0x1

    aput v0, v2, v4

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return-void
.end method

.method protected updateTemperatureWarning()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_1

    aget v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    aput v1, v2, v3

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerUI;->logAtTemperatureThreshold(F)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighTemperatureWarning()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighTemperatureWarning()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->logTemperatureStats()V

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
