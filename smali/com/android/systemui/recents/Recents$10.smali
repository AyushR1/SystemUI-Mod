.class Lcom/android/systemui/recents/Recents$10;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;

.field final synthetic val$processUser:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/Recents$10;->this$0:Lcom/android/systemui/recents/Recents;

    iput p2, p0, Lcom/android/systemui/recents/Recents$10;->val$processUser:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$10;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$000(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsImplProxy;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents$10;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v2}, Lcom/android/systemui/recents/Recents;->access$600(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/RecentsImplProxy;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iget v2, p0, Lcom/android/systemui/recents/Recents$10;->val$processUser:I

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;->registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Recents"

    const-string v2, "Failed to register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
