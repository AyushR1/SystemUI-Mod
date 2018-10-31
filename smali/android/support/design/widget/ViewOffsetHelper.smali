.class Landroid/support/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private layoutLeft:I

.field private layoutTop:I

.field private offsetLeft:I

.field private offsetTop:I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    return-void
.end method

.method private updateOffsets()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    iget-object v2, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetLeft:I

    iget-object v2, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getLayoutTop()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutTop:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutTop:I

    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->layoutLeft:I

    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetLeft:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetLeft:I

    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->offsetTop:I

    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
