.class Lcom/android/systemui/qs/QSSecurityFooter$H;
.super Landroid/os/Handler;
.source "QSSecurityFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "handleRefreshState"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$900(Lcom/android/systemui/qs/QSSecurityFooter;)V

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    const-string v1, "handleClick"

    move-object v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QSSecurityFooter"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/qs/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
