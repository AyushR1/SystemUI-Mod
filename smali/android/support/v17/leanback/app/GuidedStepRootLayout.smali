.class Landroid/support/v17/leanback/app/GuidedStepRootLayout;
.super Landroid/widget/LinearLayout;
.source "GuidedStepRootLayout.java"


# instance fields
.field private mFocusOutEnd:Z

.field private mFocusOutStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutStart:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutEnd:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutStart:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutEnd:Z

    return-void
.end method


# virtual methods
.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x42

    const/16 v2, 0x11

    if-eq p2, v2, :cond_0

    if-ne p2, v1, :cond_4

    :cond_0
    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/Util;->isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_2

    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    :goto_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutStart:Z

    if-nez v1, :cond_4

    return-object p1

    :cond_3
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->mFocusOutEnd:Z

    if-nez v1, :cond_4

    return-object p1

    :cond_4
    return-object v0
.end method
