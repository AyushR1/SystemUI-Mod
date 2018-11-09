.class public Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationHeaderViewWrapper.java"


# static fields
.field private static final LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;


# instance fields
.field protected mColor:I

.field private mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private mHeaderText:Landroid/widget/TextView;

.field protected mHeaderTranslation:F

.field private mIcon:Landroid/widget/ImageView;

.field private mIsLowPriority:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mShowExpandButtonAtEnd:Z

.field private mTransformLowPriorityTitle:Z

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field private final mTranslationForHeader:I

.field private mWorkProfileImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mShowExpandButtonAtEnd:Z

    new-instance v0, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->addAppOpsOnClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTranslationForHeader:I

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return v0
.end method

.method private addAppOpsOnClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppOpsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setAppOpsOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addRemainingTransformTypes()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addRemainingTransformTypes(Landroid/view/View;)V

    return-void
.end method

.method private updateCropToPaddingForImageViews()V
    .locals 5

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    goto :goto_2

    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTranslation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTranslation:F

    float-to-int v0, v0

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->addRemainingTransformTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateCropToPaddingForImageViews()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    const v5, 0x7f0a016e

    invoke-virtual {v3, v5, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v3

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->resetTransformedView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected resolveHeaderViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mShowExpandButtonAtEnd:Z

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setShowExpandButtonAtEnd(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mColor:I

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setHeaderVisibleAmount(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTranslationForHeader:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTranslation:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setIsChildInGroup(Z)V

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz p1, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
