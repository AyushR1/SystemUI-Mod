.class abstract Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KeyframeSet"
.end annotation


# instance fields
.field private final mFrameWidth:F

.field private final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mSize:I

    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    return-void
.end method

.method public static varargs ofFloat(Landroid/util/Property;[F)Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;-><init>(Landroid/util/Property;[F)V

    return-object v0
.end method


# virtual methods
.method protected abstract interpolate(IFLjava/lang/Object;)V
.end method

.method setValue(FLjava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->interpolate(IFLjava/lang/Object;)V

    return-void
.end method
