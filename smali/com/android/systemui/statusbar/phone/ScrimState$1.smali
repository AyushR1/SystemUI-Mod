.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$1;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha(F)F
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mScrimBehindAlphaKeyguard:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    invoke-static {v1, v2, v0, v3, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mBlankScreen:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimationDuration:J

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mDisplayRequiresBlanking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mBlankScreen:Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xdc

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimationDuration:J

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mScrimBehindAlphaKeyguard:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mCurrentBehindAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mCurrentInFrontAlpha:F

    return-void
.end method
