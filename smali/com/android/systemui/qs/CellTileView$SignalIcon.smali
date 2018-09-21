.class public Lcom/android/systemui/qs/CellTileView$SignalIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "CellTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/CellTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignalIcon"
.end annotation


# instance fields
.field private final mState:I


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v0, p1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/graph/SignalDrawable;->setColors(II)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/CellTileView$SignalIcon;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;->setLevel(I)Z

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/CellTileView$SignalIcon;->mState:I

    return v0
.end method
