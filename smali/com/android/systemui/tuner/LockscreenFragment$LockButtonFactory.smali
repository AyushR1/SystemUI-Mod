.class public Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;
.super Ljava/lang/Object;
.source "LockscreenFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockButtonFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory<",
        "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Ljava/util/Map;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->getShortcutInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->getActivityinfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    return-object v2

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic create(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->create(Ljava/util/Map;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p1

    return-object p1
.end method

.method public keys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
