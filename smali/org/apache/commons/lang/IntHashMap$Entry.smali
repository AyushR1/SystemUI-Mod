.class Lorg/apache/commons/lang/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final hash:I

.field final key:I

.field next:Lorg/apache/commons/lang/IntHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lorg/apache/commons/lang/IntHashMap$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->hash:I

    iput p2, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->key:I

    iput-object p3, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/commons/lang/IntHashMap$Entry;->next:Lorg/apache/commons/lang/IntHashMap$Entry;

    return-void
.end method
