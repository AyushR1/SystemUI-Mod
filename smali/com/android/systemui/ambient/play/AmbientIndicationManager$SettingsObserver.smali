.class Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AmbientIndicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ambient/play/AmbientIndicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$600(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambient_recognition"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$600(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambient_recognition_keyguard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$600(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambient_recognition_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->update()V

    const-string v0, "ambient_recognition"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$402(Lcom/android/systemui/ambient/play/AmbientIndicationManager;J)J

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$502(Lcom/android/systemui/ambient/play/AmbientIndicationManager;I)I

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    const-string v2, "ambient_recognition"

    iget-object v3, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v3}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$700(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$800(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$100(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "ambient_recognition_keyguard"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    const-string v1, "ambient_recognition_keyguard"

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$900(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$800(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "ambient_recognition_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    const-string v1, "ambient_recognition_notification"

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$1000(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$800(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public update()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$600(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ambient_recognition"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$702(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$600(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "ambient_recognition_keyguard"

    invoke-static {v1, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$902(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationManager$SettingsObserver;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationManager;

    invoke-static {v1}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$600(Lcom/android/systemui/ambient/play/AmbientIndicationManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "ambient_recognition_notification"

    invoke-static {v1, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-static {v0, v2}, Lcom/android/systemui/ambient/play/AmbientIndicationManager;->access$1002(Lcom/android/systemui/ambient/play/AmbientIndicationManager;Z)Z

    return-void
.end method
