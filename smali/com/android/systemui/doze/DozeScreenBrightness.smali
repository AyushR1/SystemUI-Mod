.class public Lcom/android/systemui/doze/DozeScreenBrightness;
.super Ljava/lang/Object;
.source "DozeScreenBrightness.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultDozeBrightness:I

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSensorValue:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mPaused:Z

.field private mRegistered:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorToBrightness:[I

.field private final mSensorToScrimOpacity:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;I[I[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    iput-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    iput-object p5, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p6, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    iput p7, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    iput-object p8, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    iput-object p9, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    iget-object v12, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;I[I[I)V

    return-void
.end method

.method private computeBrightness(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToBrightness:[I

    aget v0, v0, p1

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private computeScrimOpacity(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorToScrimOpacity:[I

    aget v0, v0, p1

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private resetBrightnessToDefault()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    iget v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDefaultDozeBrightness:I

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setPaused(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady()V

    :cond_0
    return-void
.end method

.method private updateBrightnessAndReady()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeScreenBrightness;->computeBrightness(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v2, v0}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    :cond_1
    const/4 v2, -0x1

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mPaused:Z

    if-eqz v3, :cond_2

    const/16 v2, 0xff

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    invoke-direct {p0, v3}, Lcom/android/systemui/doze/DozeScreenBrightness;->computeScrimOpacity(I)I

    move-result v2

    :cond_3
    :goto_1
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    int-to-float v4, v2

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeScreenBrightness.onSensorChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mLastSensorValue:I

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->updateBrightnessAndReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/doze/DozeScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->resetBrightnessToDefault()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setLightSensorEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeScreenBrightness;->resetBrightnessToDefault()V

    nop

    :goto_0
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeScreenBrightness;->setPaused(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
