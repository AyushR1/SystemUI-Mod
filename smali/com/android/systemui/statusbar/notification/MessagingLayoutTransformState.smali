.class public Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "MessagingLayoutTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/widget/MessagingGroup;",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

.field private mRelativeTranslationOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    return-void
.end method

.method private adaptGroupAppear(Lcom/android/internal/widget/MessagingGroup;FFZ)V
    .locals 3

    if-eqz p4, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    mul-float/2addr v0, p2

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    mul-float/2addr v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v1, p3

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    return-void
.end method

.method private appear(Landroid/view/View;F)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private appear(Lcom/android/internal/widget/MessagingGroup;F)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Landroid/view/View;F)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    return-void
.end method

.method private disappear(Landroid/view/View;F)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private disappear(Lcom/android/internal/widget/MessagingGroup;F)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Landroid/view/View;F)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    return-void
.end method

.method private filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findPairs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/android/internal/widget/MessagingGroup;",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const v0, 0x7fffffff

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/MessagingGroup;->calculateGroupCompatibility(Lcom/android/internal/widget/MessagingGroup;)I

    move-result v7

    if-le v7, v4, :cond_0

    move v4, v7

    move-object v3, v6

    move v0, v5

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    return-object v1
.end method

.method private isGone(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v2, v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;-><init>()V

    return-object v1
.end method

.method private resetTransformedView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return-void
.end method

.method private setVisible(Landroid/view/View;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->isAnimatingAlpha(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private transformGroups(Lcom/android/internal/widget/MessagingGroup;Lcom/android/internal/widget/MessagingGroup;FZ)V
    .locals 20

    move-object/from16 v14, p0

    nop

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v0

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_0

    iget-object v0, v14, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    move v6, v13

    goto :goto_0

    :cond_0
    move v6, v15

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, v14

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x1

    move-object v7, v14

    move/from16 v8, p3

    move/from16 v9, p4

    move v0, v13

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getMessages()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move/from16 v3, p3

    :goto_1
    move v5, v15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    sub-int/2addr v7, v5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v7}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    nop

    move-object/from16 v7, p1

    goto/16 :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    sub-int v12, v7, v5

    const/4 v7, 0x0

    if-ltz v12, :cond_2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v8}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    :cond_2
    move-object v11, v7

    const/4 v10, 0x0

    if-nez v11, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    if-eqz p4, :cond_3

    sub-float/2addr v8, v3

    move v3, v8

    :cond_3
    const/4 v15, 0x0

    move-object v7, v14

    move v8, v3

    move/from16 v9, p4

    move/from16 v16, v10

    move-object v10, v13

    move-object/from16 v17, v11

    move/from16 v18, v12

    move v12, v15

    move-object/from16 v19, v13

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V

    cmpl-float v7, v3, v16

    if-nez v7, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v7

    move-object/from16 v8, v17

    if-ne v7, v8, :cond_4

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/MessagingGroup;->setTransformingImages(Z)V

    goto :goto_2

    :cond_4
    move-object/from16 v7, p1

    goto :goto_2

    :cond_5
    move-object/from16 v7, p1

    move-object/from16 v8, v17

    :goto_2
    if-nez v8, :cond_6

    move-object/from16 v9, v19

    invoke-virtual {v9, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v14, v9, v0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    goto :goto_3

    :cond_6
    move-object/from16 v9, v19

    if-eqz p4, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v11

    sub-float/2addr v11, v10

    nop

    move v4, v11

    goto :goto_3

    :cond_7
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    move-result v4

    :goto_3
    add-int/lit8 v15, v5, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    return-void
.end method

.method private transformView(FZLandroid/view/View;Landroid/view/View;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    if-eqz p6, :cond_0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/notification/TransformState;->setIsSameAsAnyView(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-static {p4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    return-void
.end method

.method private transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->ensureVisible()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v4, p1

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->filterHiddenGroups(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->findPairs(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_0
    if-ltz v10, :cond_8

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingGroup;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/MessagingGroup;

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_7

    if-eqz v12, :cond_2

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformGroups(Lcom/android/internal/widget/MessagingGroup;Lcom/android/internal/widget/MessagingGroup;FZ)V

    if-nez v7, :cond_0

    move-object v7, v11

    if-eqz v2, :cond_1

    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v13

    invoke-virtual {v12}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    nop

    invoke-virtual {v12}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v9

    sub-float v8, v9, v13

    nop

    :cond_0
    :goto_1
    move-object/from16 v18, v3

    goto :goto_4

    :cond_1
    invoke-virtual {v12}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v13

    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v8

    sub-float v9, v8, v13

    goto :goto_1

    :cond_2
    move v13, v1

    if-eqz v7, :cond_4

    invoke-direct {v0, v11, v1, v8, v2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->adaptGroupAppear(Lcom/android/internal/widget/MessagingGroup;FFZ)V

    invoke-virtual {v7}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v14

    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;->isAnimating()Z

    move-result v15

    if-eqz v15, :cond_3

    int-to-float v15, v14

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Lcom/android/internal/widget/MessagingGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x3f400000    # 0.75f

    mul-float v15, v15, v16

    :goto_2
    int-to-float v1, v14

    sub-float/2addr v1, v15

    sub-float v1, v9, v1

    div-float v13, v1, v15

    move/from16 v17, v1

    const/4 v1, 0x0

    move-object/from16 v18, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    if-eqz v2, :cond_5

    sub-float v13, v3, v13

    goto :goto_3

    :cond_4
    move-object/from16 v18, v3

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-direct {v0, v11, v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->disappear(Lcom/android/internal/widget/MessagingGroup;F)V

    goto :goto_4

    :cond_6
    invoke-direct {v0, v11, v13}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->appear(Lcom/android/internal/widget/MessagingGroup;F)V

    goto :goto_4

    :cond_7
    move-object/from16 v18, v3

    :goto_4
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v3, v18

    move/from16 v1, p2

    move-object/from16 v4, p1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v18, v3

    return-void
.end method


# virtual methods
.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformedView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/widget/MessagingLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mTransformedView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->getMessagingLayout()Lcom/android/internal/widget/MessagingLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mRelativeTranslationOffset:F

    :cond_0
    return-void
.end method

.method public prepareFadeIn()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(ZZ)V

    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method protected reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    return-void
.end method

.method protected resetTransformedView()V
    .locals 8

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/MessagingGroup;->setTranslationY(F)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/MessagingLinearLayout;->setTranslationY(F)V

    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/MessagingGroup;->setTransformingImages(Z)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->setVisible(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->resetTransformedView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingGroup;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v4

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getAvatar()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getSenderView()Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    invoke-virtual {v3}, Lcom/android/internal/widget/MessagingGroup;->getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v5, p1, p2}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->setVisible(Landroid/view/View;ZZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    :goto_0
    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->transformViewInternal(Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;FZ)V

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z

    move-result v0

    return v0
.end method
