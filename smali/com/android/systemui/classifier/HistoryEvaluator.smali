.class public Lcom/android/systemui/classifier/HistoryEvaluator;
.super Ljava/lang/Object;
.source "HistoryEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    }
.end annotation


# instance fields
.field private final mGestureWeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdate:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    return-void
.end method

.method private decayValue()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    iget-wide v4, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    iget-object v3, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    iput-wide v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    return-void
.end method

.method private decayValue(Ljava/util/ArrayList;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;F)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v4, v3, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v4, p2

    iput v4, v3, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v2, v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->isZero(F)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isZero(F)Z
    .locals 1

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, -0x48d83a54    # -1.0E-5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private weightedAverage(Ljava/util/ArrayList;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v5, v4, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->evaluation:F

    iget v6, v4, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    iget v5, v4, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    add-float/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_1

    return v3

    :cond_1
    div-float v3, v0, v1

    return v3
.end method


# virtual methods
.method public addGesture(F)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStroke(F)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEvaluation()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
