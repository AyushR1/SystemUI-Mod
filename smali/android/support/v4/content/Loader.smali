.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mId:I

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# virtual methods
.method public abandon()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method protected onAbandon()V
    .locals 0

    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public final startLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener<",
            "TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
