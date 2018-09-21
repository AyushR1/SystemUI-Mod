.class public Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "MultiWindowStateChangedEvent.java"


# instance fields
.field public final inMultiWindow:Z

.field public final showDeferredAnimation:Z

.field public final stack:Lcom/android/systemui/shared/recents/model/TaskStack;


# direct methods
.method public constructor <init>(ZZLcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-void
.end method
