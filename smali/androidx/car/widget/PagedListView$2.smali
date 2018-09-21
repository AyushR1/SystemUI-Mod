.class Landroidx/car/widget/PagedListView$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PagedListView.java"


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

    iput-object p1, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/car/widget/PagedListView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$700(Landroidx/car/widget/PagedListView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v1}, Landroidx/car/widget/PagedListView;->access$600(Landroidx/car/widget/PagedListView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/car/widget/PagedListView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->isAtStart()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    invoke-static {v0}, Landroidx/car/widget/PagedListView;->access$300(Landroidx/car/widget/PagedListView;)Landroidx/car/widget/PagedListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/car/widget/PagedListView$OnScrollListener;->onReachBottom()V

    :cond_0
    iget-object v0, p0, Landroidx/car/widget/PagedListView$2;->this$0:Landroidx/car/widget/PagedListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/car/widget/PagedListView;->access$500(Landroidx/car/widget/PagedListView;Z)V

    return-void
.end method
