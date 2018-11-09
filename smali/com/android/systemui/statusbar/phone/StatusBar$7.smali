.class Lcom/android/systemui/statusbar/phone/StatusBar$7;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognitionError()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;IZ)V

    return-void
.end method

.method public onRecognitionNoResult()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$400(Lcom/android/systemui/statusbar/phone/StatusBar;IZ)V

    return-void
.end method

.method public onRecognitionResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$7$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$7;Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSettingsChanged(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "ambient_recognition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "ambient_recognition_keyguard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$702(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
