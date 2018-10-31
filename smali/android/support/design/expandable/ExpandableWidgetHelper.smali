.class public final Landroid/support/design/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;
.source "ExpandableWidgetHelper.java"


# instance fields
.field private expanded:Z

.field private expandedComponentIdHint:I

.field private final widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/design/expandable/ExpandableWidget;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    iput v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    return-void
.end method

.method private dispatchExpandedStateChanged()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .locals 1

    iget v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    const-string v0, "expandedComponentIdHint"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    iget-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "expanded"

    iget-boolean v2, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "expandedComponentIdHint"

    iget v2, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
