.class Landroidx/car/widget/PagedListView$3;
.super Ljava/lang/Object;
.source "PagedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/car/widget/PagedListView;


# direct methods
.method constructor <init>(Landroidx/car/widget/PagedListView;)V
    .locals 0

    iput-object p1, p0, Landroidx/car/widget/PagedListView$3;->this$0:Landroidx/car/widget/PagedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/car/widget/PagedListView$3;->this$0:Landroidx/car/widget/PagedListView;

    iget-object v0, v0, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedScrollBarView;->isUpPressed()Z

    move-result v0

    iget-object v1, p0, Landroidx/car/widget/PagedListView$3;->this$0:Landroidx/car/widget/PagedListView;

    iget-object v1, v1, Landroidx/car/widget/PagedListView;->mScrollBarView:Landroidx/car/widget/PagedScrollBarView;

    invoke-virtual {v1}, Landroidx/car/widget/PagedScrollBarView;->isDownPressed()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/car/widget/PagedListView$3;->this$0:Landroidx/car/widget/PagedListView;

    invoke-virtual {v2}, Landroidx/car/widget/PagedListView;->pageUp()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/car/widget/PagedListView$3;->this$0:Landroidx/car/widget/PagedListView;

    invoke-virtual {v2}, Landroidx/car/widget/PagedListView;->pageDown()V

    :cond_2
    :goto_0
    return-void
.end method
