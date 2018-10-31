.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private mCurrentUserId:I

.field private final mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mDemoMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mNonAdaptedColor:I

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecondTick:Ljava/lang/Runnable;

.field private mSecondsHandler:Landroid/os/Handler;

.field private final mShowDark:Z

.field private mShowSeconds:Z

.field private mUseWallpaperTextColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$2;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$3;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/Clock$4;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/R$styleable;->Clock:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    nop

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/Clock;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 15

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    const v3, 0xef00

    const v4, 0xef01

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    if-eqz v5, :cond_1

    if-eqz v1, :cond_0

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v5, v2, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const v7, 0xef01

    const v8, 0xef00

    const/4 v9, 0x1

    if-nez v6, :cond_9

    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-eqz v6, :cond_8

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v10

    move v10, v11

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v10, v13, :cond_6

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x27

    if-ne v13, v14, :cond_4

    if-nez v12, :cond_3

    move v14, v9

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    move v12, v14

    :cond_4
    if-nez v12, :cond_5

    const/16 v14, 0x61

    if-ne v13, v14, :cond_5

    move v6, v10

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-ltz v6, :cond_8

    move v10, v6

    :goto_4
    if-lez v10, :cond_7

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_7

    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "a"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_8
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    goto :goto_5

    :cond_9
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    :goto_5
    move-object v6, v10

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-eqz v11, :cond_c

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v8, :cond_c

    if-le v7, v8, :cond_c

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v12, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v11, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_a
    iget v12, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-ne v12, v9, :cond_b

    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v12, 0x3f333333    # 0.7f

    invoke-direct {v9, v12}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v12, 0x22

    invoke-virtual {v11, v9, v8, v7, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v11, v7, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v11, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_6
    return-object v11

    :cond_c
    return-object v10
.end method

.method private updateClockVisibility()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-class v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/IconLogger;

    const-string v3, "clock"

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/policy/IconLogger;->onIconVisibility(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    return-void
.end method

.method private updateShowSeconds()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 2

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibilityByPolicy(Z)V

    :cond_1
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_5

    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "millis"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "hhmm"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v3}, Ljava/util/Calendar;->set(II)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    sget-object v4, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "clock_seconds"

    const-string v3, "icon_blacklist"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    const v0, 0x7f070407

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070408

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070406

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    :cond_1
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "clock_seconds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v2, "clock"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    :goto_1
    return-void
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    return-void
.end method

.method final updateClock()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    const v1, 0x7f040392

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    :goto_0
    return-void
.end method
