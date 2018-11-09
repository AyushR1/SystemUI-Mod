.class public Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"


# instance fields
.field private final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method static synthetic lambda$setIntensityDark$0(Ljava/util/function/Consumer;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setIntensityDark(Ljava/util/function/Consumer;ZZJLandroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;ZZJ",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationDozeHelper$cAhupcRGr8viAUyxaXt90IAG2is;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationDozeHelper$cAhupcRGr8viAUyxaXt90IAG2is;-><init>(Ljava/util/function/Consumer;)V

    new-instance v5, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;

    invoke-direct {v5, p0, p6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;Landroid/view/View;)V

    move-object v0, p0

    move v2, p2

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_0
    const v0, 0x7f0a00f9

    invoke-virtual {p6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    if-eqz p5, :cond_2

    invoke-virtual {v1, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateGrayscale(Landroid/widget/ImageView;F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void
.end method

.method public updateGrayscaleMatrix(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    return-void
.end method
