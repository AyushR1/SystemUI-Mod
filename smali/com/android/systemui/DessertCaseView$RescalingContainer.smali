.class public Lcom/android/systemui/DessertCaseView$RescalingContainer;
.super Landroid/widget/FrameLayout;
.source "DessertCaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DessertCaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RescalingContainer"
.end annotation


# instance fields
.field private mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1606

    invoke-virtual {p0, v0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    sub-int v3, p4, v1

    int-to-float v3, v3

    sub-int v4, p5, v2

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    const/high16 v5, 0x3e800000    # 0.25f

    div-float v6, v3, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v8, v0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    div-float v5, v4, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v7, v1

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v9, v3, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v9, v2

    mul-float/2addr v8, v4

    add-float/2addr v9, v8

    float-to-int v8, v9

    iget-object v9, v0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    sub-int v10, v7, v6

    sub-int v11, v8, v5

    add-int v12, v7, v6

    add-int v13, v8, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/systemui/DessertCaseView;->layout(IIII)V

    return-void
.end method

.method public setView(Lcom/android/systemui/DessertCaseView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$RescalingContainer;->mView:Lcom/android/systemui/DessertCaseView;

    return-void
.end method
