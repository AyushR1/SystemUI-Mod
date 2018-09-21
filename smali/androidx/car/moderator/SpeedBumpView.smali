.class public Landroidx/car/moderator/SpeedBumpView;
.super Landroid/widget/FrameLayout;
.source "SpeedBumpView.java"


# instance fields
.field private final mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroidx/car/moderator/SpeedBumpController;

    invoke-direct {v0, p0}, Landroidx/car/moderator/SpeedBumpController;-><init>(Landroidx/car/moderator/SpeedBumpView;)V

    iput-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/car/moderator/SpeedBumpView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->getLockoutMessageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0, p1}, Landroidx/car/moderator/SpeedBumpController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->start()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/car/moderator/SpeedBumpView;->mSpeedBumpController:Landroidx/car/moderator/SpeedBumpController;

    invoke-virtual {v0}, Landroidx/car/moderator/SpeedBumpController;->stop()V

    return-void
.end method
