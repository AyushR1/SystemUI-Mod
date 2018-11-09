.class Lcom/android/systemui/ambient/play/RecognitionObserver$1;
.super Ljava/lang/Thread;
.source "RecognitionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ambient/play/RecognitionObserver;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/ambient/play/RecognitionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    const v1, 0x3b376

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$202(Lcom/android/systemui/ambient/play/RecognitionObserver;[B)[B

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    new-instance v7, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    const/16 v3, 0x2b11

    const/16 v4, 0x10

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$900()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-static {v0, v7}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$402(Lcom/android/systemui/ambient/play/RecognitionObserver;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    new-instance v1, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    iget-object v2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;-><init>(Lcom/android/systemui/ambient/play/RecognitionObserver;Lcom/android/systemui/ambient/play/RecognitionObserver$1;)V

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$1002(Lcom/android/systemui/ambient/play/RecognitionObserver;Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;)Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$400(Lcom/android/systemui/ambient/play/RecognitionObserver;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$1000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RecognitionObserver"

    const-string v2, "Cannot start recording for recognition"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchRecognitionError()V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->getRecordingMaxTime()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchRecognitionError()V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$500(Lcom/android/systemui/ambient/play/RecognitionObserver;)V

    return-void
.end method
