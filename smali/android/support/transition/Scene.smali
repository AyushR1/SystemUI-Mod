.class public Landroid/support/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mExitAction:Ljava/lang/Runnable;

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method static getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;
    .locals 1

    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Scene;

    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V
    .locals 1

    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
