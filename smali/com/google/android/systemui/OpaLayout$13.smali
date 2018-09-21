.class Lcom/google/android/systemui/OpaLayout$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/OpaLayout;->fadeInButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;

.field final synthetic val$viewToFade:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$13;->this$0:Lcom/google/android/systemui/OpaLayout;

    iput-object p2, p0, Lcom/google/android/systemui/OpaLayout$13;->val$viewToFade:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$13;->val$viewToFade:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
