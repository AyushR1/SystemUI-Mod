.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    :cond_5
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_3
    return-void
.end method
