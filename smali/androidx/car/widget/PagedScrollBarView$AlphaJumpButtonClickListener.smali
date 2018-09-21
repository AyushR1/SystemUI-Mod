.class Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;
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
    name = "AlphaJumpButtonClickListener"
.end annotation


# instance fields
.field private mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/car/widget/PagedScrollBarView$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    invoke-interface {v0}, Landroidx/car/widget/PagedScrollBarView$PaginationListener;->onAlphaJump()V

    :cond_0
    return-void
.end method

.method public setPaginationListener(Landroidx/car/widget/PagedScrollBarView$PaginationListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/car/widget/PagedScrollBarView$AlphaJumpButtonClickListener;->mPaginationListener:Landroidx/car/widget/PagedScrollBarView$PaginationListener;

    return-void
.end method
