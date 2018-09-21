.class public Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
.super Ljava/lang/Object;
.source "NoisyVelocityTracker.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;
    }
.end annotation


# static fields
.field private static final sNoisyPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_EVENTS:I

.field private mEventBuf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;",
            ">;"
        }
    .end annotation
.end field

.field private mVX:F

.field private mVY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->sNoisyPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->MAX_EVENTS:I

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    return-void
.end method

.method public static obtain()Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->sNoisyPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;-><init>()V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 14

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;

    if-eqz v1, :cond_1

    iget-wide v7, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    iget-wide v9, v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    int-to-float v8, p1

    div-float/2addr v7, v8

    iget v8, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->x:F

    iget v9, v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->x:F

    sub-float/2addr v8, v9

    iget v9, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->y:F

    iget v10, v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->y:F

    sub-float/2addr v9, v10

    iget-wide v10, v6, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    iget-wide v12, v1, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker$MotionEventCopy;->t:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    mul-float v11, v4, v8

    div-float/2addr v11, v7

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    mul-float v11, v4, v9

    div-float/2addr v11, v7

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    add-float/2addr v3, v4

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float/2addr v4, v10

    :cond_1
    move-object v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    cmpl-float v5, v3, v0

    if-lez v5, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    :goto_1
    return-void
.end method

.method public getXVelocity()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mVY:F

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/NoisyVelocityTracker;->sNoisyPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
