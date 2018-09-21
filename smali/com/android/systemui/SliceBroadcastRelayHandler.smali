.class public Lcom/android/systemui/SliceBroadcastRelayHandler;
.super Lcom/android/systemui/SystemUI;
.source "SliceBroadcastRelayHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    }
.end annotation


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRelays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/SliceBroadcastRelayHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SliceBroadcastRelayHandler$1;-><init>(Lcom/android/systemui/SliceBroadcastRelayHandler;)V

    iput-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getAndRemoveRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    return-object v0
.end method

.method private getOrCreateRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    invoke-direct {v1, p1}, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;-><init>(Landroid/net/Uri;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mRelays:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method handleIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "com.android.settingslib.action.REGISTER_SLICE_RECEIVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "receiver"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    const-string v2, "filter"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    invoke-direct {p0, v0}, Lcom/android/systemui/SliceBroadcastRelayHandler;->getOrCreateRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;->register(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/IntentFilter;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.android.settingslib.action.UNREGISTER_SLICE_RECEIVER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/systemui/SliceBroadcastRelayHandler;->getAndRemoveRelay(Landroid/net/Uri;)Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SliceBroadcastRelayHandler$BroadcastRelay;->unregister(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settingslib.action.REGISTER_SLICE_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settingslib.action.UNREGISTER_SLICE_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/SliceBroadcastRelayHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
