.class Landroid/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v1, v1, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    iget-object v3, v3, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
