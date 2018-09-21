.class final Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;
.super Landroid/os/Handler;
.source "ShortcutKeyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;->this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;->this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-static {v1}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->access$100(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;->onShortcutKeyPressed(J)V

    :goto_0
    return-void
.end method
