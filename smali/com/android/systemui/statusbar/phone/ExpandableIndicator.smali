.class public Lcom/android/systemui/statusbar/phone/ExpandableIndicator;
.super Landroid/widget/ImageView;
.source "ExpandableIndicator.java"


# instance fields
.field private mExpanded:Z

.field private mIsDefaultDirection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    return-void
.end method

.method private getContentDescription(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mContext:Landroid/content/Context;

    const v1, 0x7f1100ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mContext:Landroid/content/Context;

    const v1, 0x7f1100b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getDrawableResourceId(Z)I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mIsDefaultDirection:Z

    const v1, 0x7f0802b6

    const v2, 0x7f0802b4

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    nop

    move v1, v2

    :goto_1
    return v1
.end method

.method private updateIndicatorDrawable()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getDrawableResourceId(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->updateIndicatorDrawable()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->mExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getDrawableResourceId(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
