.class Lcom/android/systemui/recents/RecentsOnboarding$2;
.super Ljava/lang/Object;
.source "RecentsOnboarding.java"

# interfaces
.implements Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverviewShown(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1100(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1200(Lcom/android/systemui/recents/RecentsOnboarding;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1300(Lcom/android/systemui/recents/RecentsOnboarding;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$800(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1008(Lcom/android/systemui/recents/RecentsOnboarding;)I

    :cond_2
    return-void
.end method

.method public onQuickScrubStarted()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$200(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1400(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    :cond_0
    return-void
.end method

.method public onQuickStepStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$2;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void
.end method
