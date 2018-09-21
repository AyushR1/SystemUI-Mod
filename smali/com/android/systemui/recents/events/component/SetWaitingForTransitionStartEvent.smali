.class public Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "SetWaitingForTransitionStartEvent.java"


# instance fields
.field public final waitingForTransitionStart:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;->waitingForTransitionStart:Z

    return-void
.end method
