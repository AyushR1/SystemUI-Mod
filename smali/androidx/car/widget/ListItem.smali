.class public abstract Landroidx/car/widget/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/ListItem$ViewHolder;,
        Landroidx/car/widget/ListItem$ViewBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/car/widget/ListItem$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBodyTextAppearance:I

.field private final mCustomBinderCleanUps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem$ViewBinder<",
            "TVH;>;>;"
        }
    .end annotation
.end field

.field private final mCustomBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/car/widget/ListItem$ViewBinder<",
            "TVH;>;>;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mHideDivider:Z

.field private mTitleTextAppearance:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/ListItem;->mCustomBinders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/car/widget/ListItem;->mCustomBinderCleanUps:Ljava/util/List;

    sget v0, Landroidx/car/R$style;->TextAppearance_Car_Body1:I

    iput v0, p0, Landroidx/car/widget/ListItem;->mTitleTextAppearance:I

    sget v0, Landroidx/car/R$style;->TextAppearance_Car_Body2:I

    iput v0, p0, Landroidx/car/widget/ListItem;->mBodyTextAppearance:I

    return-void
.end method


# virtual methods
.method final bind(Landroidx/car/widget/ListItem$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/car/widget/ListItem$ViewHolder;->cleanUp()V

    iget-object v0, p0, Landroidx/car/widget/ListItem;->mCustomBinderCleanUps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/widget/ListItem$ViewBinder;

    invoke-virtual {p1, v1}, Landroidx/car/widget/ListItem$ViewHolder;->addCleanUp(Landroidx/car/widget/ListItem$ViewBinder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/car/widget/ListItem;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/car/widget/ListItem;->resolveDirtyState()V

    invoke-virtual {p0}, Landroidx/car/widget/ListItem;->markClean()V

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/car/widget/ListItem;->onBind(Landroidx/car/widget/ListItem$ViewHolder;)V

    iget-object v0, p0, Landroidx/car/widget/ListItem;->mCustomBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/widget/ListItem$ViewBinder;

    invoke-interface {v1, p1}, Landroidx/car/widget/ListItem$ViewBinder;->bind(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method final getBodyTextAppearance()I
    .locals 1

    iget v0, p0, Landroidx/car/widget/ListItem;->mBodyTextAppearance:I

    return v0
.end method

.method final getTitleTextAppearance()I
    .locals 1

    iget v0, p0, Landroidx/car/widget/ListItem;->mTitleTextAppearance:I

    return v0
.end method

.method public abstract getViewType()I
.end method

.method protected isDirty()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/car/widget/ListItem;->mDirty:Z

    return v0
.end method

.method protected markClean()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/widget/ListItem;->mDirty:Z

    return-void
.end method

.method protected markDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/widget/ListItem;->mDirty:Z

    return-void
.end method

.method protected abstract onBind(Landroidx/car/widget/ListItem$ViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation
.end method

.method protected abstract resolveDirtyState()V
.end method

.method setBodyTextAppearance(I)V
    .locals 0

    iput p1, p0, Landroidx/car/widget/ListItem;->mBodyTextAppearance:I

    return-void
.end method

.method setTitleTextAppearance(I)V
    .locals 0

    iput p1, p0, Landroidx/car/widget/ListItem;->mTitleTextAppearance:I

    return-void
.end method

.method public shouldHideDivider()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/car/widget/ListItem;->mHideDivider:Z

    return v0
.end method
