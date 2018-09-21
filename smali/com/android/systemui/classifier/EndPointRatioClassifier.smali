.class public Lcom/android/systemui/classifier/EndPointRatioClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "EndPointRatioClassifier.java"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/EndPointRatioClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 2

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getEndPointLength()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v1

    div-float/2addr v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/classifier/EndPointRatioEvaluator;->evaluate(F)F

    move-result v1

    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "END_RTIO"

    return-object v0
.end method
