.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;
    }
.end annotation


# static fields
.field private static sDrawableFactory:Landroid/util/IconDrawableFactory;


# instance fields
.field mAppIconView:Landroid/widget/ImageView;

.field mAppInfoDescFormat:Ljava/lang/String;

.field mAppInfoView:Landroid/widget/ImageView;

.field mAppOverlayView:Landroid/widget/FrameLayout;

.field mAppTitleView:Landroid/widget/TextView;

.field private mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field mCornerRadius:I

.field mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

.field mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimLayerPaint:Landroid/graphics/Paint;

.field mDisabledTaskBarBackgroundColor:I

.field mDismissButton:Landroid/widget/ImageView;

.field mDismissDescFormat:Ljava/lang/String;

.field private mFocusTimerCountDown:Landroid/os/CountDownTimer;

.field mFocusTimerIndicator:Landroid/widget/ProgressBar;

.field mHeaderBarHeight:I

.field mHeaderButtonPadding:I

.field mHighlightHeight:I

.field mIconView:Landroid/widget/ImageView;

.field mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

.field mLightInfoIcon:Landroid/graphics/drawable/Drawable;

.field mMoveTaskButton:Landroid/widget/ImageView;

.field private mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

.field private mShouldDarkenBackgroundColor:Z

.field mTask:Lcom/android/systemui/shared/recents/model/Task;

.field mTaskBarViewDarkTextColor:I

.field mTaskBarViewLightTextColor:I

.field mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mTaskWindowingMode:I

.field mTitleView:Landroid/widget/TextView;

.field private mTmpHSL:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskWindowingMode:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080377

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f080376

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0703a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0x7f0703cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    const v2, 0x7f0703ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHighlightHeight:I

    const v2, 0x7f060164

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    const v2, 0x7f060160

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    const v2, 0x7f080384

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightFullscreenIcon:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f080383

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkFullscreenIcon:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f08037c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f08037b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f060162

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v3, 0x7f1100db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissDescFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    const v3, 0x7f1100da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    new-instance v2, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    const/16 v3, 0xff

    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/TaskViewHeader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/TaskViewHeader;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    return-object v0
.end method

.method private static getIconDrawableFactory()Landroid/util/IconDrawableFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sDrawableFactory:Landroid/util/IconDrawableFactory;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sDrawableFactory:Landroid/util/IconDrawableFactory;

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sDrawableFactory:Landroid/util/IconDrawableFactory;

    return-object v0
.end method

.method private hideAppOverlay(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method private showAppOverlay()V
    .locals 9

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-nez v4, :cond_1

    const v4, 0x7f0a0059

    invoke-static {p0, v4}, Lcom/android/systemui/shared/recents/utilities/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v5, 0x7f0a0053

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v5, 0x7f0a0054

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const v5, 0x7f0a005b

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconDrawableFactory()Landroid/util/IconDrawableFactory;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v5, v5, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightInfoIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkInfoIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v4, v5, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v7, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private updateBackgroundColor(IF)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {p1, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    const/high16 v3, -0x42800000    # -0.0625f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p2

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mOverlayBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTmpHSL:[F

    invoke-static {v1}, Landroid/support/v4/graphics/ColorUtils;->HSLToColor([F)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->setColorAndDim(IF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    const v5, 0x800003

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const v4, 0x800013

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x800005

    if-eqz p3, :cond_1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v0, v2

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    invoke-virtual {p4, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDisabledTaskBarBackgroundColor:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-boolean v2, p1, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewLightTextColor:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskBarViewDarkTextColor:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-boolean v2, p1, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissDescFormat:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoDescFormat:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_5
    return-void
.end method

.method public cancelFocusTimerIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getSecondaryColor(IZ)I
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "overview_task_dismissed_source"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    const-class v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {p0, v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->findParent(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskWindowingMode:I

    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;ZII)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0703c8

    const v3, 0x7f0703c8

    const v4, 0x7f0703c8

    const v5, 0x7f0703c9

    const v6, 0x7f0703c8

    const v7, 0x7f0703c9

    const v8, 0x7f0703a8

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0703c6

    const v4, 0x7f0703c6

    const v5, 0x7f0703c6

    const v6, 0x7f0703c7

    const v7, 0x7f0703c6

    const v8, 0x7f0703c7

    const v9, 0x7f0703a7

    invoke-static/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIIII)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    if-eq v2, v3, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderBarHeight:I

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mHeaderButtonPadding:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppOverlayView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppTitleView:Landroid/widget/TextView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppInfoView:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateLayoutParams(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v6, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCornerRadius:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    const v1, 0x7f0a0165

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a0351

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0a00f2

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->showAppOverlay()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mAppIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    return v1

    :cond_1
    return v2
.end method

.method public onTaskDataLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTaskViewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v4

    sub-int v4, p1, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x4

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    int-to-float v7, v4

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    move v6, v1

    nop

    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v1, v1, p1, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLeftTopRightBottom(IIII)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->hideAppOverlay(Z)V

    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimAlpha:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTitleView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$HighlightColorDrawable;->getColor()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateBackgroundColor(IF)V

    :cond_0
    return-void
.end method

.method public setNoUserInteractionState()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setShouldDarkenBackgroundColor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mShouldDarkenBackgroundColor:Z

    return-void
.end method

.method public startFocusTimerIndicator(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    int-to-long v3, p1

    const-wide/16 v5, 0x1e

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusTimerCountDown:Landroid/os/CountDownTimer;

    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v5, v0

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method unbindFromTask(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method
