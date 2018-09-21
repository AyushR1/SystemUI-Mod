.class Landroid/support/v17/leanback/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method static createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v12

    iget-object v0, v8, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->transitionPosition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [I

    if-eqz v13, :cond_0

    const/4 v0, 0x0

    aget v0, v13, v0

    sub-int v0, v0, p2

    int-to-float v0, v0

    add-float/2addr v0, v11

    const/4 v1, 0x1

    aget v1, v13, v1

    sub-int v1, v1, p3

    int-to-float v1, v1

    add-float/2addr v1, v12

    move v6, v0

    move v5, v1

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    move/from16 v5, p5

    :goto_0
    sub-float v0, v6, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v14, p2, v0

    sub-float v0, v5, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int v15, p3, v0

    invoke-virtual {v7, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v0, v6, v9

    if-nez v0, :cond_1

    cmpl-float v0, v5, v10

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v4, v0

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v7, v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v16, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v8, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v7, v3

    move v3, v14

    move-object/from16 v17, v4

    move v4, v15

    move/from16 v18, v5

    move v5, v11

    move/from16 v19, v6

    move v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/support/v17/leanback/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    move-object/from16 v1, p9

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v2, p8

    invoke-virtual {v7, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v7
.end method
