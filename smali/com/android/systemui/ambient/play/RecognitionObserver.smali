.class public Lcom/android/systemui/ambient/play/RecognitionObserver;
.super Ljava/lang/Object;
.source "RecognitionObserver.java"

# interfaces
.implements Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;,
        Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;
    }
.end annotation


# static fields
.field private static final minBufSize:I


# instance fields
.field private isRecognitionEnabled:Z

.field private isRecording:Z

.field private mBuffer:[B

.field private mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

.field private mRecThread:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

.field private mRecorder:Landroid/media/AudioRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2b11

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sput v0, Lcom/android/systemui/ambient/play/RecognitionObserver;->minBufSize:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/ambient/play/AmbientIndicationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecording:Z

    iput-object p2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-virtual {p2, p0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->registerCallback(Lcom/android/systemui/ambient/play/AmbientIndicationManagerCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecording:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecThread:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/ambient/play/RecognitionObserver;Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;)Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecThread:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/ambient/play/RecognitionObserver;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mBuffer:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/ambient/play/RecognitionObserver;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mBuffer:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecognitionEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/ambient/play/RecognitionObserver;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/ambient/play/RecognitionObserver;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ambient/play/RecognitionObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->stopRecording()V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/android/systemui/ambient/play/RecognitionObserver;->minBufSize:I

    return v0
.end method

.method private stopRecording()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecording:Z

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecThread:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecThread:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecognitionObserver"

    const-string v1, "Stopping recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecorder:Landroid/media/AudioRecord;

    iput-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mRecThread:Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    iget-boolean v1, v1, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "RecognitionObserver"

    const-string v2, "Exception occured "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onRecognitionError()V
    .locals 0

    return-void
.end method

.method public onRecognitionNoResult()V
    .locals 0

    return-void
.end method

.method public onRecognitionResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V
    .locals 0

    return-void
.end method

.method public onSettingsChanged(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ambient_recognition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecognitionEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecognitionEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecognitionObserver"

    const-string v1, "Recognition disabled, stopping all and triggering dispatchRecognitionNoResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->stopRecording()V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchRecognitionNoResult()V

    :cond_1
    return-void
.end method

.method startRecording()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecognitionEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecording:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->isRecording:Z

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->getNetworkStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/android/systemui/ambient/play/RecognitionObserver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/play/RecognitionObserver$1;-><init>(Lcom/android/systemui/ambient/play/RecognitionObserver;)V

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver$1;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "RecognitionObserver"

    const-string v1, "No connectivity, triggering dispatchRecognitionError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->stopRecording()V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver;->mManager:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchRecognitionError()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
