.class public Landroid/support/v17/leanback/widget/ImageCardView;
.super Landroid/support/v17/leanback/widget/BaseCardView;
.source "ImageCardView.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mBadgeImage:Landroid/widget/ImageView;

.field private mContentView:Landroid/widget/TextView;

.field mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mImageView:Landroid/widget/ImageView;

.field private mInfoArea:Landroid/view/ViewGroup;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$attr;->imageCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ImageCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget v0, Landroid/support/v17/leanback/R$style;->Widget_Leanback_ImageCardView:I

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v17/leanback/widget/ImageCardView;->buildImageCardView(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private buildImageCardView(Landroid/util/AttributeSet;II)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusable(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->setFocusableInTouchMode(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_image_card_view:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/ImageCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/support/v17/leanback/R$styleable;->lbImageCardView:[I

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_lbImageCardViewType:I

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-nez v4, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    and-int/lit8 v10, v4, 0x1

    if-ne v10, v1, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    and-int/lit8 v11, v4, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    move v11, v1

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    and-int/lit8 v12, v4, 0x4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    move v12, v1

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    const/16 v14, 0x8

    if-nez v12, :cond_4

    and-int/lit8 v15, v4, 0x8

    if-ne v15, v14, :cond_4

    move v15, v1

    goto :goto_4

    :cond_4
    move v15, v8

    :goto_4
    sget v14, Landroid/support/v17/leanback/R$id;->main_image:I

    invoke-virtual {v0, v14}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_5

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v14, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const-string v14, "alpha"

    new-array v1, v1, [F

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v1, v8

    invoke-static {v13, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x10e0000

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget v1, Landroid/support/v17/leanback/R$id;->info_field:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->removeView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_6
    if-eqz v10, :cond_7

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_title:I

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v13, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    if-eqz v11, :cond_8

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_content:I

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v13, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    if-nez v12, :cond_9

    if-eqz v15, :cond_b

    :cond_9
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_right:I

    if-eqz v15, :cond_a

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_image_card_view_themed_badge_left:I

    :cond_a
    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v13, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    const/16 v1, 0x10

    const/16 v8, 0x11

    if-eqz v10, :cond_d

    if-nez v11, :cond_d

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v13, :cond_d

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_c

    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    invoke-virtual {v13, v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    :cond_c
    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getId()I

    move-result v14

    invoke-virtual {v13, v1, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_5
    iget-object v14, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    if-eqz v11, :cond_10

    iget-object v13, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v10, :cond_e

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x14

    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v13, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_f
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    iget-object v1, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v11, :cond_11

    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v8

    const/16 v13, 0x8

    invoke-virtual {v1, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    :cond_11
    const/16 v13, 0x8

    if-eqz v10, :cond_12

    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v8

    invoke-virtual {v1, v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_12
    :goto_6
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbImageCardView_infoAreaBackground:I

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ImageCardView;->setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_15

    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_15

    iget-object v8, v0, Landroid/support/v17/leanback/widget/ImageCardView;->mBadgeImage:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private fadeIn()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ImageCardView;->fadeIn()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mAttachedToWindow:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-super {p0}, Landroid/support/v17/leanback/widget/BaseCardView;->onDetachedFromWindow()V

    return-void
.end method

.method public setInfoAreaBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ImageCardView;->mInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
