.class Lcom/android/systemui/ScreenDecorations$1;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$200(Lcom/android/systemui/ScreenDecorations;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/ScreenDecorations;->access$302(Lcom/android/systemui/ScreenDecorations;Z)Z

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v4}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v4}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;ILcom/android/systemui/ScreenDecorations$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$1;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v1}, Lcom/android/systemui/ScreenDecorations;->access$500(Lcom/android/systemui/ScreenDecorations;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
