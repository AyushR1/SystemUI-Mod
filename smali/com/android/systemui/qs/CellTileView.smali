.class public Lcom/android/systemui/qs/CellTileView;
.super Lcom/android/systemui/qs/SignalTileView;
.source "CellTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/CellTileView$SignalIcon;
    }
.end annotation


# instance fields
.field private final mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/CellTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/graph/SignalDrawable;->setColors(II)V

    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setIntrinsicSize(I)V

    return-void
.end method


# virtual methods
.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    instance-of v0, v0, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/SignalTileView;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const v1, 0x7f0a028a

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v2, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    check-cast v2, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    invoke-virtual {v2}, Lcom/android/systemui/qs/CellTileView$SignalIcon;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/SignalDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
