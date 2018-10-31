.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mDotPadding:I

.field private mIconDotFrameWidth:I

.field private mLayoutStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsUnderflow:Z

.field private mShouldRestrictIcons:Z

.field private mStaticDotDiameter:I

.field private mUnderflowStart:I

.field private mUnderflowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->initDimens()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method private applyIconStates()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateIconTranslations()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getPaddingStart()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ltz v5, :cond_2

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v10

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    iput v7, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    iput v6, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    goto :goto_2

    :cond_1
    :goto_1
    iput v6, v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    nop

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x7

    if-gt v5, v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x6

    :goto_3
    iput v7, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    add-int/lit8 v11, v5, -0x1

    :goto_4
    if-ltz v11, :cond_7

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-eqz v13, :cond_4

    iget v13, v12, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_5

    :cond_4
    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v13, :cond_6

    if-lt v9, v8, :cond_6

    :cond_5
    move v10, v11

    goto :goto_5

    :cond_6
    iget v13, v12, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    invoke-static {v3, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    float-to-int v13, v13

    iput v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    const/4 v11, 0x0

    iget v12, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v12, v13

    iget v13, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v13, v14

    iget v14, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    sub-int/2addr v13, v14

    move v14, v13

    move v13, v11

    move v11, v10

    :goto_6
    if-ltz v11, :cond_9

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    const/4 v7, 0x1

    if-ge v13, v7, :cond_8

    int-to-float v6, v14

    iput v6, v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    iput v7, v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    sub-int/2addr v14, v12

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x2

    goto :goto_7

    :cond_8
    const/4 v6, 0x2

    iput v6, v15, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_7
    add-int/lit8 v11, v11, -0x1

    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v16, 0x0

    :goto_8
    move/from16 v6, v16

    if-ge v6, v4, :cond_a

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v11

    iget v12, v11, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    sub-float v12, v1, v12

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, v11, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->xTranslation:F

    add-int/lit8 v16, v6, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method

.method private static getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    .locals 1

    const v0, 0x7f0a0324

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    return-object v0
.end method

.method private static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getViewTotalWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initDimens()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070331

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    return-void
.end method

.method private resetViewStates()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->initFrom(Landroid/view/View;)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->alpha:F

    instance-of v4, v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->hidden:Z

    goto :goto_1

    :cond_1
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->hidden:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public isRestrictingIcons()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v7, v6

    div-float/2addr v7, v1

    sub-float v7, v0, v7

    float-to-int v7, v7

    add-int v8, v7, v6

    invoke-virtual {v4, v2, v7, v5, v8}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->resetViewStates()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->calculateIconTranslations()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->applyIconStates()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    move-object v7, v5

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x7

    if-gt v4, v5, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    const/4 v6, 0x6

    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mPaddingLeft:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mPaddingRight:I

    add-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    if-le v4, v5, :cond_3

    move v5, v11

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    nop

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v10, v4, v3

    sub-int/2addr v10, v11

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5, v9, p2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->measureChild(Landroid/view/View;II)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v10, :cond_5

    if-ge v3, v6, :cond_4

    if-eqz v8, :cond_4

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_4

    :cond_4
    if-eqz v8, :cond_6

    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v7, v10

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v10

    add-int/2addr v7, v10

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-nez v3, :cond_8

    if-le v7, v1, :cond_8

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setMeasuredDimension(II)V

    goto :goto_5

    :cond_9
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_a

    if-le v7, v1, :cond_a

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v3, v1

    move v7, v3

    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setMeasuredDimension(II)V

    :goto_5
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onViewAdded(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const v1, 0x7f0a0324

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onViewRemoved(Landroid/view/View;)V

    const v0, 0x7f0a0324

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return-void
.end method
