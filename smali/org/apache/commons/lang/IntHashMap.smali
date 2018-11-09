.class Lorg/apache/commons/lang/IntHashMap;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient count:I

.field private final loadFactor:F

.field private transient table:[Lorg/apache/commons/lang/IntHashMap$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang/IntHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p2, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    new-array v0, p1, [Lorg/apache/commons/lang/IntHashMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    move v1, p1

    const v2, 0x7fffffff

    and-int v3, v1, v2

    array-length v4, v0

    rem-int/2addr v3, v4

    aget-object v4, v0, v3

    :goto_0
    if-eqz v4, :cond_1

    iget v5, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    if-ne v5, v1, :cond_0

    iget-object v2, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    return-object v2

    :cond_0
    iget-object v4, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    goto :goto_0

    :cond_1
    iget v4, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    if-lt v4, v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang/IntHashMap;->rehash()V

    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    and-int/2addr v2, v1

    array-length v4, v0

    rem-int v3, v2, v4

    :cond_2
    new-instance v2, Lorg/apache/commons/lang/IntHashMap$Entry;

    aget-object v4, v0, v3

    invoke-direct {v2, v1, p1, p2, v4}, Lorg/apache/commons/lang/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lorg/apache/commons/lang/IntHashMap$Entry;)V

    aput-object v2, v0, v3

    iget v4, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/lang/IntHashMap;->count:I

    const/4 v4, 0x0

    return-object v4
.end method

.method protected rehash()V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lorg/apache/commons/lang/IntHashMap$Entry;

    int-to-float v4, v2

    iget v5, p0, Lorg/apache/commons/lang/IntHashMap;->loadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lorg/apache/commons/lang/IntHashMap;->threshold:I

    iput-object v3, p0, Lorg/apache/commons/lang/IntHashMap;->table:[Lorg/apache/commons/lang/IntHashMap$Entry;

    move v4, v0

    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_1

    aget-object v4, v1, v5

    :goto_1
    if-eqz v4, :cond_0

    move-object v6, v4

    iget-object v4, v4, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    iget v7, v6, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    rem-int/2addr v7, v2

    aget-object v8, v3, v7

    iput-object v8, v6, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    aput-object v6, v3, v7

    goto :goto_1

    :cond_0
    move v4, v5

    goto :goto_0

    :cond_1
    return-void
.end method
