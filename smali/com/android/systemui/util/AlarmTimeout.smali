.class public Lcom/android/systemui/util/AlarmTimeout;
.super Ljava/lang/Object;
.source "AlarmTimeout.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mScheduled:Z

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/AlarmTimeout;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/systemui/util/AlarmTimeout;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    iput-object p3, p0, Lcom/android/systemui/util/AlarmTimeout;->mTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/util/AlarmTimeout;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    :cond_0
    return-void
.end method

.method public isScheduled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    return v0
.end method

.method public onAlarm()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    iget-object v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {v0}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V

    return-void
.end method

.method public schedule(JI)V
    .locals 8

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/AlarmTimeout;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v5, p0, Lcom/android/systemui/util/AlarmTimeout;->mTag:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/util/AlarmTimeout;->mHandler:Landroid/os/Handler;

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/AlarmTimeout;->mScheduled:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/util/AlarmTimeout;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timeout is already scheduled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
