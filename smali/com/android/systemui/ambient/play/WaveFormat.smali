.class public Lcom/android/systemui/ambient/play/WaveFormat;
.super Ljava/lang/Object;
.source "WaveFormat.java"


# instance fields
.field private mBitsPerSample:S

.field private mFormat:S

.field private mNumBytes:I

.field private mNumChannels:S

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSISI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mFormat:S

    iput p3, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mSampleRate:I

    iput-short p2, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumChannels:S

    iput-short p4, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mBitsPerSample:S

    iput p5, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumBytes:I

    return-void
.end method

.method private static writeId(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeShort(Ljava/io/OutputStream;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "WaveFormat format=%d numChannels=%d sampleRate=%d bitsPerSample=%d numBytes=%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mFormat:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-short v3, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumChannels:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mSampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-short v3, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mBitsPerSample:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RIFF"

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumBytes:I

    const/16 v1, 0x24

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/android/systemui/ambient/play/WaveFormat;->writeInt(Ljava/io/OutputStream;I)V

    const-string v0, "WAVE"

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "fmt "

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeInt(Ljava/io/OutputStream;I)V

    iget-short v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mFormat:S

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeShort(Ljava/io/OutputStream;S)V

    iget-short v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumChannels:S

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeShort(Ljava/io/OutputStream;S)V

    iget v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mSampleRate:I

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeInt(Ljava/io/OutputStream;I)V

    iget-short v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumChannels:S

    iget v1, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mSampleRate:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeInt(Ljava/io/OutputStream;I)V

    iget-short v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumChannels:S

    iget-short v1, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeShort(Ljava/io/OutputStream;S)V

    iget-short v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mBitsPerSample:S

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeShort(Ljava/io/OutputStream;S)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/ambient/play/WaveFormat;->mNumBytes:I

    invoke-static {p1, v0}, Lcom/android/systemui/ambient/play/WaveFormat;->writeInt(Ljava/io/OutputStream;I)V

    const/16 v0, 0x2c

    return v0
.end method
