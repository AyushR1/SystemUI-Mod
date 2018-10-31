.class public Landroidx/car/widget/AlphaJumpOverlayView;
.super Landroid/support/v7/widget/GridLayout;
.source "AlphaJumpOverlayView.java"


# instance fields
.field private mAdapter:Landroidx/car/widget/IAlphaJumpAdapter;

.field private mBuckets:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroidx/car/widget/IAlphaJumpAdapter$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private mPagedListView:Landroidx/car/widget/PagedListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;)V

    sget v0, Landroidx/car/R$color;->car_card:I

    invoke-virtual {p0, v0}, Landroidx/car/widget/AlphaJumpOverlayView;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$integer;->alpha_jump_button_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/car/widget/AlphaJumpOverlayView;->setColumnCount(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/car/widget/AlphaJumpOverlayView;->setUseDefaultMargins(Z)V

    return-void
.end method

.method private createButtons()V
    .locals 7

    invoke-virtual {p0}, Landroidx/car/widget/AlphaJumpOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/car/widget/AlphaJumpOverlayView;->removeAllViews()V

    iget-object v1, p0, Landroidx/car/widget/AlphaJumpOverlayView;->mBuckets:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/widget/IAlphaJumpAdapter$Bucket;

    sget v3, Landroidx/car/R$layout;->car_alpha_jump_button:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v5, Landroidx/car/R$id;->button:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-interface {v2}, Landroidx/car/widget/IAlphaJumpAdapter$Bucket;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroidx/car/widget/-$$Lambda$AlphaJumpOverlayView$jvBkp9orbcY37Ll81Kas50b1n0U;

    invoke-direct {v6, p0}, Landroidx/car/widget/-$$Lambda$AlphaJumpOverlayView$jvBkp9orbcY37Ll81Kas50b1n0U;-><init>(Landroidx/car/widget/AlphaJumpOverlayView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-interface {v2}, Landroidx/car/widget/IAlphaJumpAdapter$Bucket;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v3}, Landroidx/car/widget/AlphaJumpOverlayView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$jvBkp9orbcY37Ll81Kas50b1n0U(Landroidx/car/widget/AlphaJumpOverlayView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/car/widget/AlphaJumpOverlayView;->onButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private onButtonClick(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/car/widget/AlphaJumpOverlayView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/widget/IAlphaJumpAdapter$Bucket;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/car/widget/AlphaJumpOverlayView;->mAdapter:Landroidx/car/widget/IAlphaJumpAdapter;

    invoke-interface {v1, v0}, Landroidx/car/widget/IAlphaJumpAdapter;->onAlphaJumpLeave(Landroidx/car/widget/IAlphaJumpAdapter$Bucket;)V

    iget-object v1, p0, Landroidx/car/widget/AlphaJumpOverlayView;->mPagedListView:Landroidx/car/widget/PagedListView;

    invoke-interface {v0}, Landroidx/car/widget/IAlphaJumpAdapter$Bucket;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/car/widget/PagedListView;->snapToPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method init(Landroidx/car/widget/PagedListView;Landroidx/car/widget/IAlphaJumpAdapter;)V
    .locals 1

    iput-object p1, p0, Landroidx/car/widget/AlphaJumpOverlayView;->mPagedListView:Landroidx/car/widget/PagedListView;

    iput-object p2, p0, Landroidx/car/widget/AlphaJumpOverlayView;->mAdapter:Landroidx/car/widget/IAlphaJumpAdapter;

    invoke-interface {p2}, Landroidx/car/widget/IAlphaJumpAdapter;->getAlphaJumpBuckets()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/AlphaJumpOverlayView;->mBuckets:Ljava/util/Collection;

    invoke-direct {p0}, Landroidx/car/widget/AlphaJumpOverlayView;->createButtons()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/AlphaJumpOverlayView;->mAdapter:Landroidx/car/widget/IAlphaJumpAdapter;

    invoke-interface {v0}, Landroidx/car/widget/IAlphaJumpAdapter;->onAlphaJumpEnter()V

    :cond_0
    return-void
.end method
