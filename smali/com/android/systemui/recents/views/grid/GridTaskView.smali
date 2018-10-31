.class public Lcom/android/systemui/recents/views/grid/GridTaskView;
.super Lcom/android/systemui/recents/views/TaskView;
.source "GridTaskView.java"


# instance fields
.field private mHeaderHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/GridTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/GridTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/GridTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mHeaderHeight:I

    return-void
.end method


# virtual methods
.method protected createOutlineProvider()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;
    .locals 3

    new-instance v0, Lcom/android/systemui/recents/views/grid/AnimateableGridViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/grid/AnimateableGridViewBounds;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method protected onConfigurationChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskView;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mHeaderHeight:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget v1, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mHeaderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setTranslationY(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setSizeToFit(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setOverlayHeaderOnThumbnailActionBar(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget v2, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mHeaderHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setShouldDarkenBackgroundColor(Z)V

    return-void
.end method
