.class Landroid/support/transition/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method constructor <init>([F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/transition/FloatArrayEvaluator;->mArray:[F

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/transition/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object p1

    return-object p1
.end method

.method public evaluate(F[F[F)[F
    .locals 5

    iget-object v0, p0, Landroid/support/transition/FloatArrayEvaluator;->mArray:[F

    if-nez v0, :cond_0

    array-length v1, p2

    new-array v0, v1, [F

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    aget v3, p3, v1

    sub-float v4, v3, v2

    mul-float/2addr v4, p1

    add-float/2addr v4, v2

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
