.class public Lcom/android/systemui/classifier/ProximityClassifier;
.super Lcom/android/systemui/classifier/GestureClassifier;
.source "ProximityClassifier.java"


# instance fields
.field private mAverageNear:F

.field private mGestureStartTimeNano:J

.field private mNear:Z

.field private mNearDuration:J

.field private mNearStartTimeNano:J


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/GestureClassifier;-><init>()V

    return-void
.end method

.method private update(ZJ)V
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    iget-wide v2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_0
    if-eqz p1, :cond_1

    iput-wide p2, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(I)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    invoke-static {v0, p1}, Lcom/android/systemui/classifier/ProximityEvaluator;->evaluate(FI)F

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "PROX"

    return-object v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearStartTimeNano:J

    iput-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/classifier/ProximityClassifier;->update(ZJ)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mGestureStartTimeNano:J

    sub-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNear:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    goto :goto_1

    :cond_3
    iget-wide v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mNearDuration:J

    long-to-float v1, v1

    long-to-float v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/ProximityClassifier;->mAverageNear:F

    :cond_4
    :goto_1
    return-void
.end method
