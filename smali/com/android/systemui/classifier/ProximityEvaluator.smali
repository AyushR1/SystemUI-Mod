.class public Lcom/android/systemui/classifier/ProximityEvaluator;
.super Ljava/lang/Object;
.source "ProximityEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .locals 6

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    cmpl-float v2, p0, v1

    if-ltz v2, :cond_1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    double-to-float v0, v2

    :cond_1
    return v0
.end method
