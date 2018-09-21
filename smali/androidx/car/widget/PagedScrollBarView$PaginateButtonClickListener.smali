.class Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;
.super Ljava/lang/Object;
.source "PagedScrollBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/PagedScrollBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaginateButtonClickListener"
.end annotation


# instance fields
.field private final mPaginateDirection:I

.field private mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;->mPaginateDirection:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    iget v1, p0, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;->mPaginateDirection:I

    invoke-interface {v0, v1}, Landroidx/car/widget/PagedScrollBarView$PaginationListener;->onPaginate(I)V

    :cond_0
    return-void
.end method

.method public setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/car/widget/PagedScrollBarView$PaginateButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    return-void
.end method
