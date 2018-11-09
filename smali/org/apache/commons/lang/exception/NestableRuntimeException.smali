.class public Lorg/apache/commons/lang/exception/NestableRuntimeException;
.super Ljava/lang/RuntimeException;
.source "NestableRuntimeException.java"

# interfaces
.implements Lorg/apache/commons/lang/exception/Nestable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected delegate:Lorg/apache/commons/lang/exception/NestableDelegate;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    new-instance v0, Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/exception/NestableDelegate;-><init>(Lorg/apache/commons/lang/exception/Nestable;)V

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->cause:Ljava/lang/Throwable;

    iput-object p1, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final printPartialStackTrace(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public printStackTrace()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace()V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang/exception/NestableRuntimeException;->delegate:Lorg/apache/commons/lang/exception/NestableDelegate;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
