.class public Lcom/android/systemui/classifier/SpeedEvaluator;
.super Ljava/lang/Object;
.source "SpeedEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 7

    const/4 v0, 0x0

    float-to-double v1, p0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    cmpg-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v2

    :cond_0
    float-to-double v3, p0

    const-wide v5, 0x400199999999999aL    # 2.2

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    :cond_1
    float-to-double v3, p0

    const-wide v5, 0x4041800000000000L    # 35.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    add-float/2addr v0, v2

    :cond_2
    float-to-double v3, p0

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    add-float/2addr v0, v2

    :cond_3
    return v0
.end method
