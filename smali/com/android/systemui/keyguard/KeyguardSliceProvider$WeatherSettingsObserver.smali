.class Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardSliceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "weather_lockscreen_unit"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v0, "weather_lockscreen_unit"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->updateLockscreenUnit()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mSliceUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateLockscreenUnit()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$WeatherSettingsObserver;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "weather_lockscreen_unit"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-static {v0, v3}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->access$102(Lcom/android/systemui/keyguard/KeyguardSliceProvider;Z)Z

    return-void
.end method
