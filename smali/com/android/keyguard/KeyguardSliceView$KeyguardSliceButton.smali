.class Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;
.super Landroid/widget/Button;
.source "KeyguardSliceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyguardSliceButton"
.end annotation


# instance fields
.field private shouldTintDrawable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f12018d

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->shouldTintDrawable:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->onDensityOrFontScaleChanged()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private updateDrawableColors()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->shouldTintDrawable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePadding()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070467

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    mul-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070469

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setCompoundDrawablePadding(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updateDrawableColors()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    return-void
.end method

.method public setShouldTintDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->shouldTintDrawable:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updateDrawableColors()V

    return-void
.end method
