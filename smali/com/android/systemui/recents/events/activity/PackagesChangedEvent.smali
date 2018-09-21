.class public Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "PackagesChangedEvent.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    return-void
.end method
