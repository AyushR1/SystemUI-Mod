.class Landroidx/slice/widget/GridRowView$1;
.super Ljava/lang/Object;
.source "GridRowView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/GridRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/GridRowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/GridRowView;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    iget-object v1, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-static {v1}, Landroidx/slice/widget/GridRowView;->access$100(Landroidx/slice/widget/GridRowView;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/slice/widget/GridRowView;->access$002(Landroidx/slice/widget/GridRowView;I)I

    iget-object v0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-static {v0}, Landroidx/slice/widget/GridRowView;->access$200(Landroidx/slice/widget/GridRowView;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v0}, Landroidx/slice/widget/GridRowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView$1;->this$0:Landroidx/slice/widget/GridRowView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/slice/widget/GridRowView;->access$302(Landroidx/slice/widget/GridRowView;Z)Z

    const/4 v0, 0x1

    return v0
.end method
