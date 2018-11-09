.class Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;
.super Ljava/lang/Thread;
.source "RecognitionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ambient/play/RecognitionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation


# instance fields
.field private buffCopy:[B

.field private mResultGiven:Z

.field final synthetic this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;


# direct methods
.method private constructor <init>(Lcom/android/systemui/ambient/play/RecognitionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->mResultGiven:Z

    const p1, 0x35d54

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->buffCopy:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/ambient/play/RecognitionObserver;Lcom/android/systemui/ambient/play/RecognitionObserver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;-><init>(Lcom/android/systemui/ambient/play/RecognitionObserver;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->buffCopy:[B

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;[BI)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->sendAudioData([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->parseXmlResult(Ljava/lang/String;)V

    return-void
.end method

.method private isNullResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Artist:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Song:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parseXmlResult(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$300(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->reportResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V

    return-void

    :cond_0
    const-string v0, "did not hear any music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "no close matches"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;

    invoke-direct {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;-><init>()V

    const-string v1, "<track .*?artist_name=\"(.*?)\".*?album_name=\"(.*?)\".*?track_name=\"(.*?)\".*?album_primary_image=\"(.*?)\".*?>"

    const/16 v2, 0x28

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Artist:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Album:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->Song:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;->ArtworkUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v3}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "RecognitionObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got a match! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v3}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "RecognitionObserver"

    const-string v4, "Regular expression didn\'t match!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->reportResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "RecognitionObserver"

    const-string v2, "No match (Maybe we could not hear the song?)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->reportResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V

    :goto_2
    return-void
.end method

.method private reportResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$500(Lcom/android/systemui/ambient/play/RecognitionObserver;)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$300(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->isNullResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "RecognitionObserver"

    const-string v1, "Reporting result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->mResultGiven:Z

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchRecognitionResult(Lcom/android/systemui/ambient/play/RecognitionObserver$Observable;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "RecognitionObserver"

    const-string v1, "Reporting onNoMatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->dispatchRecognitionNoResult()V

    :goto_1
    return-void
.end method

.method private sendAudioData([BI)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$300(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "RecognitionObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing to send audio data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://search.midomi.com:443/v2/?method=search&type=identify"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const-string v2, "User-Agent"

    const-string v3, "User-Agent: AppNumber=48000 APIVersion=2.1.0.0 DEV=Android UID=dkl109sas19s"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "audio/wav"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v2}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "RecognitionObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending mic data, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v8, Lcom/android/systemui/ambient/play/WaveFormat;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x2b11

    const/16 v6, 0x10

    move-object v2, v8

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/ambient/play/WaveFormat;-><init>(SSISI)V

    move-object v2, v8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/ambient/play/WaveFormat;->write(Ljava/io/OutputStream;)I

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0x2000

    new-array v5, v5, [B

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    if-lez v7, :cond_3

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v4, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "RecognitionObserver"

    const-string v2, "Error while sending audio data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const-string v0, ""

    return-object v0
.end method

.method private tryMatchCurrentBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$300(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$500(Lcom/android/systemui/ambient/play/RecognitionObserver;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$100(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;-><init>(Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;)V

    invoke-virtual {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread$1;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "RecognitionObserver"

    const-string v1, "0 bytes recorded!?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecognitionObserver"

    const-string v1, "Started reading recorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$100(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$200(Lcom/android/systemui/ambient/play/RecognitionObserver;)[B

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$300(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$400(Lcom/android/systemui/ambient/play/RecognitionObserver;)Landroid/media/AudioRecord;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$400(Lcom/android/systemui/ambient/play/RecognitionObserver;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v2}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$200(Lcom/android/systemui/ambient/play/RecognitionObserver;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v3}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$200(Lcom/android/systemui/ambient/play/RecognitionObserver;)[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    move v0, v1

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "RecognitionObserver"

    const-string v2, "BAD_VALUE while reading recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit p0

    goto :goto_1

    :cond_3
    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "RecognitionObserver"

    const-string v2, "INVALID_OPERATION while reading recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p0

    goto :goto_1

    :cond_5
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$200(Lcom/android/systemui/ambient/play/RecognitionObserver;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->buffCopy:[B

    iget-object v3, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->buffCopy:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$300(Lcom/android/systemui/ambient/play/RecognitionObserver;)Z

    move-result v1

    if-nez v1, :cond_7

    monitor-exit p0

    goto :goto_1

    :cond_7
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->tryMatchCurrentBuffer()V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->this$0:Lcom/android/systemui/ambient/play/RecognitionObserver;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/RecognitionObserver;->access$000(Lcom/android/systemui/ambient/play/RecognitionObserver;)Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "RecognitionObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broke out of recording loop, mResultGiven="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/ambient/play/RecognitionObserver$RecorderThread;->mResultGiven:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
