.class Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AmbientIndicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ambient/play/AmbientIndicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$300(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$100(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$200(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$402(Lcom/android/systemui/ambient/play/AmbientIndicationManager;J)J

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$502(Lcom/android/systemui/ambient/play/AmbientIndicationManager;I)I

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$100(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$000(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$100(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$1;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$200(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)V

    :cond_5
    :goto_1
    return-void
.end method
