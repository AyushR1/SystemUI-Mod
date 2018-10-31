.class Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;
.super Ljava/lang/Object;
.source "KeyguardSliceView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliceViewTransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSliceView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSliceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;->this$0:Lcom/android/keyguard/KeyguardSliceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSliceView;Lcom/android/keyguard/KeyguardSliceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;-><init>(Lcom/android/keyguard/KeyguardSliceView;)V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 4

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;->this$0:Lcom/android/keyguard/KeyguardSliceView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;->this$0:Lcom/android/keyguard/KeyguardSliceView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;->this$0:Lcom/android/keyguard/KeyguardSliceView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;->this$0:Lcom/android/keyguard/KeyguardSliceView;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    neg-int v3, v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;->this$0:Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSliceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070351

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p3, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x226

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
