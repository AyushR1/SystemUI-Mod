.class public Lcom/android/systemui/car/CarSystemUIFactory;
.super Lcom/android/systemui/SystemUIFactory;
.source "CarSystemUIFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUIFactory;-><init>()V

    return-void
.end method

.method static synthetic lambda$injectDependencies$0(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/car/CarNotificationEntryManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/car/CarNotificationEntryManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$1(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$2(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/hvac/HvacController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/car/CarStatusBarKeyguardViewManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/car/CarStatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    return-object v0
.end method

.method public injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/car/-$$Lambda$CarSystemUIFactory$zPpvA4l4np15nluBhyI66mlexBs;

    invoke-direct {v1, p2}, Lcom/android/systemui/car/-$$Lambda$CarSystemUIFactory$zPpvA4l4np15nluBhyI66mlexBs;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    new-instance v1, Lcom/android/systemui/car/-$$Lambda$CarSystemUIFactory$AxN4qggzdnVRrvEYcqEOS87TAsg;

    invoke-direct {v1, p2}, Lcom/android/systemui/car/-$$Lambda$CarSystemUIFactory$AxN4qggzdnVRrvEYcqEOS87TAsg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/car/hvac/HvacController;

    new-instance v1, Lcom/android/systemui/car/-$$Lambda$CarSystemUIFactory$cECZooCw_L3zo-kWCmXHsuhl54E;

    invoke-direct {v1, p2}, Lcom/android/systemui/car/-$$Lambda$CarSystemUIFactory$cECZooCw_L3zo-kWCmXHsuhl54E;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
