.class public Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;
.super Lcom/android/systemui/shared/recents/model/TaskKeyCache;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/systemui/shared/recents/model/TaskKeyCache<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;


# direct methods
.method public constructor <init>(ILcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/TaskKeyCache;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$1;-><init>(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;I)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;)Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/shared/recents/model/TaskKeyLruCache$EvictionCallback;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "TaskKeyCache"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " numEntries="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected evictAllCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method protected getCacheEntry(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected putCacheEntry(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected removeCacheEntry(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final trimToSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    return-void
.end method
