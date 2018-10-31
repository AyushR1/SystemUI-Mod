.class public Lcom/android/systemui/util/leak/DumpTruck;
.super Ljava/lang/Object;
.source "DumpTruck.java"


# instance fields
.field final body:Ljava/lang/StringBuilder;

.field private final context:Landroid/content/Context;

.field private hprofUri:Landroid/net/Uri;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    return-void
.end method

.method private static zipUp(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/high16 v2, 0x80000

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v2, [B

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-direct {v8, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_1
    invoke-virtual {v7, v4, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v10, v9

    if-lez v9, :cond_0

    invoke-virtual {v1, v4, v0, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v3, v7}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v5, v3

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    move-object v11, v5

    move-object v5, v2

    move-object v2, v11

    :goto_2
    :try_start_5
    invoke-static {v5, v7}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_1
    const/4 v2, 0x1

    :try_start_6
    invoke-static {v3, v1}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    return v2

    :catchall_2
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    :try_start_8
    invoke-static {v3, v1}, Lcom/android/systemui/util/leak/DumpTruck;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    const-string v2, "DumpTruck"

    const-string v3, "error zipping up profile data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public captureHeaps([I)Lcom/android/systemui/util/leak/DumpTruck;
    .locals 14

    const-class v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "leak"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v4, "Build: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\nProcesses:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    array-length v5, p1

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v6, :cond_2

    aget v9, v5, v7

    iget-object v10, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v11, "  pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v9}, Lcom/android/systemui/util/leak/GarbageMonitor;->getMemInfo(I)Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " up="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->getUptime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " pss="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v10, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentPss:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " uss="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v10, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentUss:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    if-ne v9, v4, :cond_1

    new-instance v10, Ljava/io/File;

    const-string v11, "heap-%d.ahprof"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v3

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v10, "DumpTruck"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dumping memory info for process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v8}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v11, " (hprof attached)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    const-string v11, "DumpTruck"

    const-string v12, "error dumping memory:"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v11, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v12, "\n** Could not dump heap: \n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "hprof-%d.zip"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/util/leak/DumpTruck;->zipUp(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    const-string v8, "com.android.systemui.fileprovider"

    invoke-static {v7, v8, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    goto :goto_2

    :catch_1
    move-exception v3

    const-string v6, "DumpTruck"

    const-string v7, "unable to zip up heapdumps"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    const-string v7, "\n** Could not zip up files: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-object p0
.end method

.method public createShareIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "SystemUI memory dump"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method
