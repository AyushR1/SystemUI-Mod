.class public Landroidx/car/widget/SubheaderListItem;
.super Landroidx/car/widget/ListItem;
.source "SubheaderListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/SubheaderListItem$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/car/widget/ListItem<",
        "Landroidx/car/widget/SubheaderListItem$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem$ViewBinder<",
            "Landroidx/car/widget/SubheaderListItem$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mListItemSubheaderTextAppearance:I

.field private mText:Ljava/lang/String;

.field private mTextStartMarginType:I


# direct methods
.method public static createViewHolder(Landroid/view/View;)Landroidx/car/widget/SubheaderListItem$ViewHolder;
    .locals 1

    new-instance v0, Landroidx/car/widget/SubheaderListItem$ViewHolder;

    invoke-direct {v0, p0}, Landroidx/car/widget/SubheaderListItem$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic lambda$setItemLayoutHeight$34(ILandroidx/car/widget/SubheaderListItem$ViewHolder;)V
    .locals 1

    iget-object v0, p1, Landroidx/car/widget/SubheaderListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p1, Landroidx/car/widget/SubheaderListItem$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static synthetic lambda$setText$35(Landroidx/car/widget/SubheaderListItem;ILandroidx/car/widget/SubheaderListItem$ViewHolder;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/car/widget/SubheaderListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/SubheaderListItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroidx/car/widget/SubheaderListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Landroidx/car/widget/SubheaderListItem;->mListItemSubheaderTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    nop

    invoke-virtual {p2}, Landroidx/car/widget/SubheaderListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Landroidx/car/widget/SubheaderListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p2}, Landroidx/car/widget/SubheaderListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private setItemLayoutHeight()V
    .locals 3

    iget-object v0, p0, Landroidx/car/widget/SubheaderListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_sub_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroidx/car/widget/SubheaderListItem;->mBinders:Ljava/util/List;

    new-instance v2, Landroidx/car/widget/-$$Lambda$SubheaderListItem$pX63PRVy60h4-UCc1K6ZIvA0_uw;

    invoke-direct {v2, v0}, Landroidx/car/widget/-$$Lambda$SubheaderListItem$pX63PRVy60h4-UCc1K6ZIvA0_uw;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setText()V
    .locals 3

    iget v0, p0, Landroidx/car/widget/SubheaderListItem;->mTextStartMarginType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown text start margin type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget v0, Landroidx/car/R$dimen;->car_keyline_4:I

    goto :goto_0

    :pswitch_1
    sget v0, Landroidx/car/R$dimen;->car_keyline_3:I

    goto :goto_0

    :pswitch_2
    sget v0, Landroidx/car/R$dimen;->car_keyline_1:I

    nop

    :goto_0
    nop

    iget-object v1, p0, Landroidx/car/widget/SubheaderListItem;->mBinders:Ljava/util/List;

    new-instance v2, Landroidx/car/widget/-$$Lambda$SubheaderListItem$k9KJJv38Lo9m6s3jbPUlTHuO2bE;

    invoke-direct {v2, p0, v0}, Landroidx/car/widget/-$$Lambda$SubheaderListItem$k9KJJv38Lo9m6s3jbPUlTHuO2bE;-><init>(Landroidx/car/widget/SubheaderListItem;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getViewType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected bridge synthetic onBind(Landroidx/car/widget/ListItem$ViewHolder;)V
    .locals 0

    check-cast p1, Landroidx/car/widget/SubheaderListItem$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/car/widget/SubheaderListItem;->onBind(Landroidx/car/widget/SubheaderListItem$ViewHolder;)V

    return-void
.end method

.method protected onBind(Landroidx/car/widget/SubheaderListItem$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/SubheaderListItem;->mBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/widget/ListItem$ViewBinder;

    invoke-interface {v1, p1}, Landroidx/car/widget/ListItem$ViewBinder;->bind(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/car/widget/SubheaderListItem$ViewHolder;->getText()Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/car/widget/SubheaderListItem;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected resolveDirtyState()V
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/SubheaderListItem;->mBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Landroidx/car/widget/SubheaderListItem;->setItemLayoutHeight()V

    invoke-direct {p0}, Landroidx/car/widget/SubheaderListItem;->setText()V

    return-void
.end method
