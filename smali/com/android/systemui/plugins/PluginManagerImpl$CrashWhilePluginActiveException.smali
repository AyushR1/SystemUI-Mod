.class Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;
.super Ljava/lang/RuntimeException;
.source "PluginManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashWhilePluginActiveException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugins/PluginManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginManagerImpl$CrashWhilePluginActiveException;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
