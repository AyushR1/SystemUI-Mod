.class public Lcom/android/systemui/statusbar/notification/RowInflaterTask;
.super Ljava/lang/Object;
.source "RowInflaterTask.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;
.implements Lcom/android/systemui/statusbar/InflationTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mInflateOrigin:Ljava/lang/Throwable;

.field private mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mCancelled:Z

    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;)V
    .locals 2

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "inflate requested here"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V

    const v1, 0x7f0d015d

    invoke-virtual {v0, v1, p2, p0}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mCancelled:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;->onInflationFinished(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in inflation finished listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    const-string v3, "RowInflaterTask"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method
