.class public Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealInfo"
.end annotation


# instance fields
.field public centerX:F

.field public centerY:F

.field public radius:F


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iput p2, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iput p3, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/circularreveal/CircularRevealWidget$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 3

    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v2, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public isInvalid()Z
    .locals 2

    iget v0, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(FFF)V
    .locals 0

    iput p1, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iput p2, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iput p3, p0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    return-void
.end method

.method public set(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 3

    iget v0, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v2, p1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    return-void
.end method
