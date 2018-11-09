.class public Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "KeyguardSliceProvider.java"

# interfaces
.implements Lcom/android/internal/util/custom/weather/WeatherClient$WeatherObserver;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;
    }
.end annotation


# static fields
.field static final ALARM_VISIBILITY_HOURS:I = 0xc
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field protected mAlarmManager:Landroid/app/AlarmManager;

.field protected final mAlarmUri:Landroid/net/Uri;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private final mCurrentTime:Ljava/util/Date;

.field private mDateFormat:Landroid/icu/text/DateFormat;

.field private mDatePattern:Ljava/lang/String;

.field protected final mDateUri:Landroid/net/Uri;

.field protected final mDndUri:Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mLastText:Ljava/lang/String;

.field private mNextAlarm:Ljava/lang/String;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mRegistered:Z

.field protected final mSliceUri:Landroid/net/Uri;

.field private final mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWeatherClient:Lcom/android/internal/util/custom/weather/WeatherClient;

.field private mWeatherInfo:Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;

.field private mWeatherSettingsObserver:Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;

.field protected final mWeatherUri:Landroid/net/Uri;

.field private mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private useMetricUnit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroidx/slice/SliceProvider;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    new-instance v0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$IhzByd8TsqFuOrSyuGurVskyPLo;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardSliceProvider$IhzByd8TsqFuOrSyuGurVskyPLo;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    const-string v0, "content://com.android.systemui.keyguard/main"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/date"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmUri:Landroid/net/Uri;

    const-string v0, "content://com.android.systemui.keyguard/dnd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDndUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->useMetricUnit:Z

    return p1
.end method

.method public static synthetic lambda$IhzByd8TsqFuOrSyuGurVskyPLo(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateNextAlarm()V

    return-void
.end method

.method private registerClockUpdate()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    return-void
.end method

.method private updateNextAlarm()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->withinNHours(Landroid/app/AlarmManager$AlarmClockInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "H:mm"

    goto :goto_0

    :cond_0
    const-string v0, "h:mm"

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private withinNHours(Landroid/app/AlarmManager$AlarmClockInfo;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method


# virtual methods
.method protected addNextAlarm(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080136

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmUri:Landroid/net/Uri;

    invoke-direct {v1, p1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method protected addPrimaryAction(Landroidx/slice/builders/ListBuilder;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080136

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    new-instance v2, Landroidx/slice/builders/SliceAction;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V

    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    const-string v4, "content://com.android.systemui.keyguard/action"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method protected addWeather(Landroidx/slice/builders/ListBuilder;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/custom/weather/WeatherClient;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherInfo:Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherInfo:Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;

    invoke-virtual {v0}, Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherInfo:Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;->getTemperature(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherInfo:Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;->getTemperature(Z)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->useMetricUnit:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u00b0C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u00b0F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherInfo:Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;

    invoke-virtual {v4}, Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;->getWeatherConditionImage()I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    new-instance v4, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherUri:Landroid/net/Uri;

    invoke-direct {v4, p1, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method protected addZenMode(Landroidx/slice/builders/ListBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->isDndSuppressingNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDndUri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0803ac

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    return-void
.end method

.method cleanDateFormat()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    return-void
.end method

.method protected getFormattedDate()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDatePattern:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1, v2}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateFormat:Landroid/icu/text/DateFormat;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mCurrentTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDndSuppressingNotifications()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method isRegistered()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mRegistered:Z

    return v0
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 3

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDateUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addWeather(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addNextAlarm(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addZenMode(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->addPrimaryAction(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v1

    return-object v1
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateSliceProvider()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/custom/weather/WeatherClient;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherSettingsObserver:Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherSettingsObserver:Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherSettingsObserver:Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->updateLockscreenUnit()V

    new-instance v0, Lcom/android/internal/util/custom/weather/WeatherClient;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/custom/weather/WeatherClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherClient:Lcom/android/internal/util/custom/weather/WeatherClient;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherClient:Lcom/android/internal/util/custom/weather/WeatherClient;

    invoke-virtual {v0, p0}, Lcom/android/internal/util/custom/weather/WeatherClient;->addObserver(Lcom/android/internal/util/custom/weather/WeatherClient$WeatherObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110526

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mDatePattern:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->registerClockUpdate()V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateClock()V

    const/4 v0, 0x1

    return v0
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 9

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mNextAlarmInfo:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-string v6, "lock_screen_next_alarm"

    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mUpdateNextAlarm:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mHandler:Landroid/os/Handler;

    move-wide v4, v0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->updateNextAlarm()V

    return-void
.end method

.method public onWeatherUpdated(Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mWeatherInfo:Lcom/android/internal/util/custom/weather/WeatherClient$WeatherInfo;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected updateClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->getFormattedDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mLastText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
