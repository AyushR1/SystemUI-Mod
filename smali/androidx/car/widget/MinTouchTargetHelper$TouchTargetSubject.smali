.class Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;
.super Ljava/lang/Object;
.source "MinTouchTargetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/widget/MinTouchTargetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchTargetSubject"
.end annotation


# instance fields
.field private mSubjectView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->mSubjectView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroidx/car/widget/MinTouchTargetHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hasMinTouchSize$40(Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;ILandroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->mSubjectView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p1, :cond_1

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    new-instance p1, Landroid/view/TouchDelegate;

    iget-object v3, p0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->mSubjectView:Landroid/view/View;

    invoke-direct {p1, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method


# virtual methods
.method hasMinTouchSize(I)V
    .locals 3

    if-lez p1, :cond_1

    iget-object v0, p0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->mSubjectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->mSubjectView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;

    invoke-direct {v1, p0, p1, v0}, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;-><init>(Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subject view does not have a valid parent of type View. Parent is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->mSubjectView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Minimum touch target size must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
