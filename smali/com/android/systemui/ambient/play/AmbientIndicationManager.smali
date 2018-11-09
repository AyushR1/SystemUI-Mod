.class public Lcom/android/systemui/ambient/play/AmbientIndicationManager;
.super Ljava/lang/Object;
.source "AmbientIndicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;
    }
.end annotation


# instance fields
.field private ACTION_UPDATE_AMBIENT_INDICATION:Ljava/lang/String;

.field public DEBUG:Z

.field private NO_MATCH_COUNT:I

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private isRecognitionEnabled:Z

.field private isRecognitionEnabledOnKeyguard:Z

.field private isRecognitionNotificationEnabled:Z

.field private isRecognitionObserverBusy:Z

.field private lastAlarmInterval:I

.field private lastUpdated:J

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mRecognitionObserver:Lcom/android/systemui/ambient/play/RecognitionObserver;

.field private mSettingsObserver:Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "update_ambient_indication"

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->ACTION_UPDATE_AMBIENT_INDICATION:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    iput v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastAlarmInterval:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastUpdated:J

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionObserverBusy:Z

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    new-instance v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;-><init>(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)V

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mCallbacks:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mBatteryManager:Landroid/os/BatteryManager;

    new-instance v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;-><init>(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mSettingsObserver:Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mSettingsObserver:Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mSettingsObserver:Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->update()V

    new-instance v0, Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/ambient/play/RecognitionObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/ambient/play/AmbientIndicationManager;)V

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mRecognitionObserver:Lcom/android/systemui/ambient/play/RecognitionObserver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->ACTION_UPDATE_AMBIENT_INDICATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->needsUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->updateAmbientPlayAlarm(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->startRecording()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->ACTION_UPDATE_AMBIENT_INDICATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/ambient/play/AmbientIndicationManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastUpdated:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/systemui/ambient/play/AmbientIndicationManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastAlarmInterval:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchSettingsChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabledOnKeyguard:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabledOnKeyguard:Z

    return p1
.end method

.method private dispatchSettingsChanged(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;->onSettingsChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method private needsUpdate()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastUpdated:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastAlarmInterval:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private showNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    const-string v2, "music_recognized_channel"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "android.substName"

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const v2, 0x7f08023b

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x104006f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v8, 0x1

    aput-object p2, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x1060157

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$AmbientPlayHistoryActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    new-instance v6, Landroid/app/NotificationChannel;

    const-string v7, "music_recognized_channel"

    iget-object v9, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v3, v6

    invoke-virtual {v5, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    const v7, 0x74a40e7

    invoke-virtual {v5, v7, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private startRecording()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionObserverBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionObserverBusy:Z

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mRecognitionObserver:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->startRecording()V

    :cond_0
    return-void
.end method

.method private updateAmbientPlayAlarm(Z)V
    .locals 10

    const v0, 0x5c12b97

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->ACTION_UPDATE_AMBIENT_INDICATION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput v3, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastAlarmInterval:I

    iget-boolean v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabled:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->getNetworkStatus()I

    move-result v2

    const v4, 0x249f0

    iget-object v5, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v5}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v5

    if-eqz v5, :cond_2

    const v4, 0x1d4c0

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_3

    const v4, 0x493e0

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    :cond_4
    const v4, 0x2bf20

    :cond_5
    :goto_0
    iput v4, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastAlarmInterval:I

    iget-object v5, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, v4

    add-long/2addr v6, v8

    invoke-virtual {v5, v3, v6, v7, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public dispatchRecognitionError()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionObserverBusy:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastUpdated:J

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;

    :try_start_0
    invoke-interface {v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;->onRecognitionError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->updateAmbientPlayAlarm(Z)V

    return-void
.end method

.method public dispatchRecognitionNoResult()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionObserverBusy:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastUpdated:J

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;

    :try_start_0
    invoke-interface {v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;->onRecognitionNoResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->updateAmbientPlayAlarm(Z)V

    return-void
.end method

.method public dispatchRecognitionResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionObserverBusy:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->lastUpdated:J

    iput v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->NO_MATCH_COUNT:I

    iget-boolean v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchRecognitionNoResult()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionNotificationEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Song:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Artist:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Song:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Artist:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/custom/ambient/play/AmbientPlayHistoryManager;->addSong(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/custom/ambient/play/AmbientPlayHistoryManager;->sendMatchBroadcast(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;

    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;->onRecognitionResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->updateAmbientPlayAlarm(Z)V

    return-void
.end method

.method public getAmbientClearViewInterval()I
    .locals 1

    const v0, 0x2bf20

    return v0
.end method

.method public getNetworkStatus()I
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v1, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    return v7

    :cond_1
    invoke-virtual {v3, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    :cond_2
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x2

    return v4

    :cond_3
    return v4
.end method

.method public getRecordingMaxTime()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public registerCallback(Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ambient_recognition"

    iget-boolean v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;->onSettingsChanged(Ljava/lang/String;Z)V

    const-string v0, "ambient_recognition_keyguard"

    iget-boolean v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionEnabledOnKeyguard:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;->onSettingsChanged(Ljava/lang/String;Z)V

    const-string v0, "ambient_recognition_notification"

    iget-boolean v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->isRecognitionNotificationEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;->onSettingsChanged(Ljava/lang/String;Z)V

    return-void
.end method
