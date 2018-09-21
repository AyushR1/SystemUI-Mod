.class public Lcom/android/systemui/SystemUIFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# static fields
.field static mFactory:Lcom/android/systemui/SystemUIFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f1101c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/SystemUIFactory;

    sput-object v2, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating SystemUIFactory component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemUIFactory"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No SystemUIFactory component configured"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lcom/android/systemui/SystemUIFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$0(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$1(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$10(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$2(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationGutsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$3(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$4(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$5(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$6(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationListener;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$7(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$8(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$injectDependencies$9()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/SmartReplyController;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 9

    new-instance v8, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v6

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/classifier/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;)V

    return-object v8
.end method

.method public createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)V

    return-object v0
.end method

.method public createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method

.method public createQSTileHost(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTileHost;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/qs/QSTileHost;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V

    return-object v0
.end method

.method public createScrimController(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/app/AlarmManager;",
            ")",
            "Lcom/android/systemui/statusbar/phone/ScrimController;"
        }
    .end annotation

    new-instance v7, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;)V

    return-object v7
.end method

.method public createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

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

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$z1zarcUJ1CMoFj5AQN_-O19KBck;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$z1zarcUJ1CMoFj5AQN_-O19KBck;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    sget-object v1, Lcom/android/systemui/-$$Lambda$rO7kD_xRtn44ztbLT-z5d6D1204;->INSTANCE:Lcom/android/systemui/-$$Lambda$rO7kD_xRtn44ztbLT-z5d6D1204;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    sget-object v1, Lcom/android/systemui/-$$Lambda$FU21uH-husoEIyZzPMfnsCEG9NU;->INSTANCE:Lcom/android/systemui/-$$Lambda$FU21uH-husoEIyZzPMfnsCEG9NU;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$_ZkpB3cw8KjSnUV2DiHEuXgnP3w;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$_ZkpB3cw8KjSnUV2DiHEuXgnP3w;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$VIDF11F4Hm4FO29fDzfbBuWaMOc;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$VIDF11F4Hm4FO29fDzfbBuWaMOc;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$SlUzUgfPqIqhXzgg5laArZqKWxA;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$SlUzUgfPqIqhXzgg5laArZqKWxA;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$eSzRlAsk6D28lmD2v1NPm3s9RoI;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$eSzRlAsk6D28lmD2v1NPm3s9RoI;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$Lv29Gbe9ThWNLK8qa10kXlPqUkA;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$Lv29Gbe9ThWNLK8qa10kXlPqUkA;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$L-4aOdTXuzt8OB3pSNymTUOwMhQ;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$L-4aOdTXuzt8OB3pSNymTUOwMhQ;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationLogger;

    sget-object v1, Lcom/android/systemui/-$$Lambda$B5VatWTpOGVcdPdOJiZQrQp6aIs;->INSTANCE:Lcom/android/systemui/-$$Lambda$B5VatWTpOGVcdPdOJiZQrQp6aIs;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$MTw0XI2_566RG6bGYjhDG7AgFHQ;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$MTw0XI2_566RG6bGYjhDG7AgFHQ;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$hCjEFu27r-GMURswSL_JwEDKp54;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$hCjEFu27r-GMURswSL_JwEDKp54;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    sget-object v1, Lcom/android/systemui/-$$Lambda$ymijKB1VyNKZxZAbdPMXGO8_FBg;->INSTANCE:Lcom/android/systemui/-$$Lambda$ymijKB1VyNKZxZAbdPMXGO8_FBg;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/SmartReplyController;

    sget-object v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$d_KgUKmojSRkzZuEYEfWqICK6w4;->INSTANCE:Lcom/android/systemui/-$$Lambda$SystemUIFactory$d_KgUKmojSRkzZuEYEfWqICK6w4;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIFactory$c6WNy_UO3Uf9By2n25BDlugW55Y;

    invoke-direct {v1, p2}, Lcom/android/systemui/-$$Lambda$SystemUIFactory$c6WNy_UO3Uf9By2n25BDlugW55Y;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
