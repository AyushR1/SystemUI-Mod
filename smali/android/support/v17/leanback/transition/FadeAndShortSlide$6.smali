.class Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;
.super Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "FadeAndShortSlide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/FadeAndShortSlide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/transition/FadeAndShortSlide;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/transition/FadeAndShortSlide;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;->this$0:Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoneY(Landroid/support/v17/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 5

    const/4 v0, 0x1

    aget v1, p4, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v2, p0, Landroid/support/v17/leanback/transition/FadeAndShortSlide$6;->this$0:Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-virtual {v2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    aget v0, p4, v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->getVerticalDistance(Landroid/view/ViewGroup;)F

    move-result v4

    add-float/2addr v3, v4

    return v3
.end method
