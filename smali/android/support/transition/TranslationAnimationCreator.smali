.class Landroid/support/transition/TranslationAnimationCreator;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;
    }
.end annotation


# direct methods
.method static createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTranslationY()F

    move-result v11

    iget-object v0, v9, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v12, :cond_0

    aget v2, v12, v1

    sub-int v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v2, v10

    aget v3, v12, v0

    sub-int v3, v3, p3

    int-to-float v3, v3

    add-float/2addr v3, v11

    move v7, v2

    move v6, v3

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    move/from16 v6, p5

    :goto_0
    sub-float v2, v7, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v13, p2, v2

    sub-float v2, v6, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v14, p3, v2

    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v2, v7, p6

    if-nez v2, :cond_1

    cmpl-float v2, v6, p7

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v2, [F

    aput v7, v5, v1

    aput p6, v5, v0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v1

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v6, v2, v1

    aput p7, v2, v0

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v8, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v15, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;

    iget-object v2, v9, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v8

    move v3, v13

    move v4, v14

    move-object/from16 v17, v5

    move v5, v10

    move/from16 v18, v6

    move v6, v11

    move/from16 v19, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/support/transition/TranslationAnimationCreator$1;)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v1, v0}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v1
.end method
