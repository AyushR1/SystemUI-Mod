.class Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationDozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->setIntensityDark(Ljava/util/function/Consumer;ZZJLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->this$0:Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    const v1, 0x7f0a00f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper$3;->val$view:Landroid/view/View;

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
