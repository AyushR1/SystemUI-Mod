.class Lcom/android/systemui/volume/ZenModePanel$7;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/SegmentedButtons$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2100(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method public onSelected(Ljava/lang/Object;Z)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SegmentedButtons;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenModePanel;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa5

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mZenButtonsCallback selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$7;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->access$1900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->access$2000(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/ZenModePanel$7$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/volume/ZenModePanel$7$1;-><init>(Lcom/android/systemui/volume/ZenModePanel$7;ILandroid/net/Uri;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
