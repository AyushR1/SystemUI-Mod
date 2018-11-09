.class Lcom/android/systemui/statusbar/phone/StatusBar$8;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->hideAmbientPlayIndication(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$forceClear:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->val$forceClear:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->hideIndication()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->val$forceClear:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->setIndication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
