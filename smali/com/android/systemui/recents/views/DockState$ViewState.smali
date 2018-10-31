.class public Lcom/android/systemui/recents/views/DockState$ViewState;
.super Ljava/lang/Object;
.source "DockState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/DockState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewState"
.end annotation


# static fields
.field private static final HINT_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/android/systemui/recents/views/DockState$ViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final dockAreaAlpha:I

.field public final dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

.field public final hintTextAlpha:I

.field public final hintTextOrientation:I

.field private mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

.field private mHintText:Ljava/lang/String;

.field private mHintTextAlpha:I

.field private mHintTextBounds:Landroid/graphics/Point;

.field private mHintTextPaint:Landroid/graphics/Paint;

.field private final mHintTextResId:I

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/views/DockState$ViewState$1;

    const-string v1, "drawableAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DockState$ViewState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DockState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaAlpha:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iput p2, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->hintTextAlpha:I

    iput p3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->hintTextOrientation:I

    iput p4, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextResId:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/android/systemui/recents/views/DockState$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/DockState$ViewState;-><init>(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/DockState$ViewState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/views/DockState$ViewState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->hintTextOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v3, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintText:Ljava/lang/String;

    int-to-float v5, v1

    int-to-float v6, v2

    iget-object v7, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->hintTextOrientation:I

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, p2, :cond_2

    if-eqz p6, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    sget-object v5, Lcom/android/systemui/shared/recents/utilities/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v6, v2, [I

    iget-object v7, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v7

    aput v7, v6, v4

    aput p2, v6, v3

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v5, p4

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    if-eq v1, p3, :cond_5

    if-eqz p6, :cond_4

    sget-object v1, Lcom/android/systemui/recents/views/DockState$ViewState;->HINT_ALPHA:Landroid/util/IntProperty;

    new-array v5, v2, [I

    iget v6, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    aput v6, v5, v4

    aput p3, v5, v3

    invoke-static {p0, v1, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x96

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget v5, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    if-le p3, v5, :cond_3

    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iput p3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextAlpha:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->invalidateSelf()V

    :cond_5
    :goto_2
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p7, :cond_6

    sget-object v1, Lcom/android/systemui/shared/recents/utilities/Utilities;->DRAWABLE_RECT:Landroid/util/Property;

    sget-object v5, Lcom/android/systemui/shared/recents/utilities/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-array v2, v2, [Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v6, v2, v4

    aput-object p1, v2, v3

    invoke-static {v1, v5, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v3, p4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->dockAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mDockAreaOverlayAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_8
    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextResId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f07039d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextBounds:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mHintText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/DockState$ViewState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
