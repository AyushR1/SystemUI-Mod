.class public Lcom/android/systemui/statusbar/notification/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;
    }
.end annotation


# static fields
.field private static CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/TransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mOwnPosition:[I

.field private mSameAsAny:Z

.field protected mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

.field private mTransformationEndX:F

.field private mTransformationEndY:F

.field protected mTransformedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    new-instance v0, Lcom/android/systemui/statusbar/notification/TransformState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TransformState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 3

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102018d

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020345

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->obtain()Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203ad

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setIsSameAsAnyView(Z)V

    :cond_4
    return-object v0

    :cond_5
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0

    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    return-object v0
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TransformState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-object v1
.end method

.method private setTransformationStartScaleX(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0364

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private setTransformationStartScaleY(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0365

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    and-int/lit8 v5, p2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v9

    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    const/high16 v12, -0x40800000    # -1.0f

    if-nez v11, :cond_8

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v11

    cmpl-float v13, v11, v12

    if-eqz v13, :cond_2

    move v13, v11

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v13

    :goto_2
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v11

    cmpl-float v13, v11, v12

    if-eqz v13, :cond_4

    move v13, v11

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v13

    :goto_3
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v11

    if-eqz v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v14

    if-eq v13, v14, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v13

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setPivotX(F)V

    goto :goto_4

    :cond_6
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    :goto_4
    if-eqz v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v14

    if-eq v13, v14, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v13

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    invoke-virtual {v4, v10}, Landroid/view/View;->setPivotY(F)V

    goto :goto_5

    :cond_7
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    :goto_5
    invoke-virtual {v0, v4, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :cond_8
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v13

    if-eqz v5, :cond_b

    aget v14, v11, v6

    aget v15, v13, v6

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move v15, v10

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v16

    if-eqz v16, :cond_9

    iget v14, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    :cond_9
    nop

    invoke-virtual {v2, v7, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-interface {v12, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    :cond_a
    move v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v6

    invoke-static {v6, v14, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    :cond_b
    if-eqz v8, :cond_e

    aget v6, v11, v7

    aget v7, v13, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move v7, v10

    if-eqz v2, :cond_d

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget v6, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    :cond_c
    nop

    const/16 v12, 0x10

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v14}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-interface {v12, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v12

    invoke-static {v12, v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    if-eqz v9, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v7

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v14, v7, v12

    if-eqz v14, :cond_f

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    invoke-static {v7, v12, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setScaleX(F)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v12

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_10

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v14, v1

    invoke-static {v12, v14, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_10
    return-void
.end method


# virtual methods
.method public abortTransformation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0a0366

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0a0367

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0a0364

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0365

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    return-void
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    return-void
.end method

.method protected ensureVisible()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getLaidOutLocationOnScreen()[I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getLocationOnScreen()[I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v5

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    move-result v3

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    return-object v0
.end method

.method public getTransformationStartScaleX()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0364

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformationStartScaleY()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformationStartX()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0366

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformationStartY()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-object v0
.end method

.method protected getViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getViewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    return-void
.end method

.method public prepareFadeIn()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    return-void
.end method

.method public recycle()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/TransformState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected resetTransformedView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    return v0
.end method

.method protected setClippingDeactivated(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {p1, p2, v0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    return-void
.end method

.method public setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setIsSameAsAnyView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    return-void
.end method

.method public setTransformationEndY(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    return-void
.end method

.method public setTransformationStartX(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0366

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setTransformationStartY(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0367

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 2

    const/16 v0, 0x8

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    return-void
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    return-void
.end method

.method protected transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v10

    if-eq v10, v9, :cond_2

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v13

    if-eq v13, v12, :cond_3

    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-nez v11, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/4 v7, 0x0

    cmpl-float v17, v3, v7

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v17, :cond_9

    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v17

    cmpl-float v17, v17, v6

    if-eqz v17, :cond_9

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v17

    cmpl-float v17, v17, v6

    if-eqz v17, :cond_9

    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v17

    cmpl-float v17, v17, v6

    if-nez v17, :cond_8

    if-nez v14, :cond_9

    :cond_8
    if-eqz v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v17

    cmpl-float v17, v17, v6

    if-nez v17, :cond_14

    if-eqz v11, :cond_14

    :cond_9
    cmpl-float v17, v3, v7

    if-eqz v17, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v17

    goto :goto_5

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v17

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v19

    if-eqz v2, :cond_c

    move-object/from16 v6, p1

    invoke-virtual {v2, v0, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v20

    if-nez v20, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_9

    :cond_c
    move-object/from16 v6, p1

    :goto_7
    if-eqz v5, :cond_d

    const/16 v18, 0x0

    aget v20, v17, v18

    aget v18, v19, v18

    sub-int v7, v20, v18

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_d
    if-eqz v8, :cond_e

    const/4 v7, 0x1

    aget v18, v17, v7

    aget v20, v19, v7

    sub-int v7, v18, v20

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    if-eqz v15, :cond_f

    if-eqz v14, :cond_f

    int-to-float v1, v13

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v18

    mul-float v1, v1, v18

    int-to-float v6, v12

    div-float/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_8

    :cond_f
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    :goto_8
    if-eqz v15, :cond_10

    if-eqz v11, :cond_10

    int-to-float v1, v10

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v1, v6

    int-to-float v6, v9

    div-float/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_6

    :cond_10
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    :goto_9
    if-nez v5, :cond_11

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    :cond_11
    if-nez v8, :cond_12

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    :cond_12
    if-nez v15, :cond_13

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    :cond_13
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :cond_14
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    if-eqz v5, :cond_17

    move v6, v1

    if-eqz v2, :cond_15

    nop

    move/from16 v21, v5

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v7}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_a

    :cond_15
    move/from16 v21, v5

    :cond_16
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_b

    :cond_17
    move/from16 v21, v5

    :goto_b
    if-eqz v8, :cond_19

    move v5, v1

    if-eqz v2, :cond_18

    nop

    const/16 v6, 0x10

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_19
    if-eqz v15, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v7, :cond_1a

    nop

    invoke-static {v5, v6, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v7

    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v16, v7, v16

    if-eqz v16, :cond_1b

    nop

    invoke-static {v7, v6, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    :cond_1b
    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    const/4 v0, 0x1

    return v0
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    return-void
.end method
