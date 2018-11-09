.class Lcom/android/systemui/statusbar/phone/StatusBar$7$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$7;->onRecognitionResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

.field final synthetic val$observed:Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$7;Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->val$observed:Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$700(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->val$observed:Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;

    iget-object v3, v3, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Song:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->val$observed:Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;

    iget-object v4, v4, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Artist:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->setIndication(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->getAmbientClearViewInterval()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;IZ)V

    :goto_0
    return-void
.end method
