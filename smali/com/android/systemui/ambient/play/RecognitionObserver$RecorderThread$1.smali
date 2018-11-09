.class Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;
.super Ljava/lang/Thread;
.source "RecognitionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->tryMatchCurrentBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;


# direct methods
.method constructor <init>(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;->this$1:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;->this$1:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;->this$1:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->access$600(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;->this$1:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    invoke-static {v2}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->access$600(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->access$700(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;[BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;->this$1:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    invoke-static {v1, v0}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->access$800(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;Ljava/lang/String;)V

    return-void
.end method
