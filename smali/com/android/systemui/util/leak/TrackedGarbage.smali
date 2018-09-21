.class public Lcom/android/systemui/util/leak/TrackedGarbage;
.super Ljava/lang/Object;
.source "TrackedGarbage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;
    }
.end annotation


# instance fields
.field private final mGarbage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    iput-object p1, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    return-void
.end method

.method private cleanUp()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isOld(JJ)Z
    .locals 2

    const-wide/32 v0, 0xea60

    add-long/2addr v0, p1

    cmp-long v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized countOldGarbage()I
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedGarbage;->cleanUp()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    invoke-static {v4}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->access$100(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/systemui/util/leak/TrackedGarbage;->isOld(JJ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedGarbage;->cleanUp()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    invoke-static {v5}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->access$000(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v5}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->access$000(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->access$100(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v0, v1}, Lcom/android/systemui/util/leak/TrackedGarbage;->isOld(JJ)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v5}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->access$000(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v5}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->access$000(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " total, "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, " old"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized track(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedGarbage;->cleanUp()V

    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    new-instance v1, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    iget-object v2, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    iget-object v1, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    const-string v2, "Garbage"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->track(Ljava/util/Collection;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
