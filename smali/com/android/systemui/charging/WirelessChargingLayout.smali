.class public Lcom/android/systemui/charging/WirelessChargingLayout;
.super Landroid/widget/FrameLayout;
.source "WirelessChargingLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    const v2, 0x7f0d0171

    move-object/from16 v3, p1

    invoke-static {v3, v2, v0}, Lcom/android/systemui/charging/WirelessChargingLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x7f0a03b1

    invoke-virtual {v0, v2}, Lcom/android/systemui/charging/WirelessChargingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/charging/WirelessChargingView;

    const v4, 0x7f0a03af

    invoke-virtual {v0, v4}, Lcom/android/systemui/charging/WirelessChargingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, -0x1

    if-eqz p4, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/systemui/charging/WirelessChargingView;->setPaintColor(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const/4 v6, 0x0

    move/from16 v7, p3

    if-eq v7, v5, :cond_1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    int-to-float v8, v1

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b0086

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f0b0085

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v10, v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v12, 0x7f070473

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070472

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    const-string v13, "textSize"

    const/4 v14, 0x2

    new-array v6, v14, [F

    const/16 v16, 0x0

    aput v5, v6, v16

    const/16 v17, 0x1

    aput v12, v6, v17

    invoke-static {v4, v13, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v13, Landroid/view/animation/PathInterpolator;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {v13, v0, v0, v0, v14}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x7f0b0084

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v13, v0

    invoke-virtual {v6, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string v0, "alpha"

    const/4 v13, 0x2

    new-array v14, v13, [F

    fill-array-data v14, :array_0

    invoke-static {v4, v0, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v13, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0083

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0082

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string v13, "alpha"

    move/from16 v18, v1

    const/4 v14, 0x2

    new-array v1, v14, [F

    fill-array-data v1, :array_1

    invoke-static {v4, v13, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v13, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string v13, "alpha"

    const/4 v14, 0x2

    new-array v3, v14, [F

    fill-array-data v3, :array_2

    invoke-static {v2, v13, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v13, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/Animator;

    aput-object v6, v14, v16

    aput-object v0, v14, v17

    const/4 v15, 0x2

    aput-object v1, v14, v15

    const/4 v15, 0x3

    aput-object v3, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/charging/WirelessChargingLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method
