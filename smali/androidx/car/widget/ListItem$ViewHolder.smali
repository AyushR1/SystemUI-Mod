.class public abstract Landroidx/car/widget/ListItem$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mCleanUps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem$ViewBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/ListItem$ViewHolder;->mCleanUps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCleanUp(Landroidx/car/widget/ListItem$ViewBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/car/widget/ListItem$ViewBinder<",
            "Landroidx/car/widget/ListItem$ViewHolder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/car/widget/ListItem$ViewHolder;->mCleanUps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected abstract applyUxRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)V
.end method

.method public final cleanUp()V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/ListItem$ViewHolder;->mCleanUps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/widget/ListItem$ViewBinder;

    invoke-interface {v1, p0}, Landroidx/car/widget/ListItem$ViewBinder;->bind(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
