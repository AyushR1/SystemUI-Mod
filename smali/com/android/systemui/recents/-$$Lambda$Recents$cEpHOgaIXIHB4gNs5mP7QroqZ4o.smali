.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$Recents$cEpHOgaIXIHB4gNs5mP7QroqZ4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/Recents;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/Recents;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$cEpHOgaIXIHB4gNs5mP7QroqZ4o;->f$0:Lcom/android/systemui/recents/Recents;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$cEpHOgaIXIHB4gNs5mP7QroqZ4o;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$cEpHOgaIXIHB4gNs5mP7QroqZ4o;->f$0:Lcom/android/systemui/recents/Recents;

    iget-object v1, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$cEpHOgaIXIHB4gNs5mP7QroqZ4o;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/Recents;->lambda$toggleRecentApps$1(Lcom/android/systemui/recents/Recents;Ljava/lang/Runnable;)V

    return-void
.end method
