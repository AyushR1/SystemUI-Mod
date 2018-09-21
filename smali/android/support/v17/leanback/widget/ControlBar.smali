.class Landroid/support/v17/leanback/widget/ControlBar;
.super Landroid/widget/LinearLayout;
.source "ControlBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;
    }
.end annotation


# instance fields
.field private mChildMarginFromCenter:I

.field mDefaultFocusToMiddle:Z

.field mLastFocusIndex:I

.field private mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getDefaultFocusIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method getDefaultFocusIndex()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/support/v17/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v0, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/ControlBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getDefaultFocusIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;->onChildFocusedListener(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method
