.class public Lcom/android/systemui/egg/MLandActivity;
.super Landroid/app/Activity;
.source "MLandActivity.java"


# instance fields
.field mLand:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->setContentView(I)V

    const v0, 0x7f0a03b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand;

    iput-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const v1, 0x7f0a02ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setScoreFieldHolder(Landroid/view/ViewGroup;)V

    const v0, 0x7f0a03a5

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v1, v0}, Lcom/android/systemui/egg/MLand;->setSplash(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand;->getGameControllers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2, v1}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    return-void
.end method

.method public playerMinus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->removePlayer()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    return-void
.end method

.method public playerPlus(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->addPlayer()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    return-void
.end method

.method public startButtonPressed(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public updateSplashPlayers()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const v1, 0x7f0a0277

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0278

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
