.class public Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ReverseLinearLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$Reversable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverseRelativeLayout"
.end annotation


# instance fields
.field private mDefaultGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    return-void
.end method


# virtual methods
.method public reverse(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->updateGravity(Z)V

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->access$000(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setDefaultGravity(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    return-void
.end method

.method public updateGravity(Z)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    const/16 v1, 0x50

    const/16 v2, 0x30

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->getGravity()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    :cond_3
    return-void
.end method
