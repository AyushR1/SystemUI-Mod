.class Landroidx/slice/widget/RowView$1;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slice/widget/RowView;->addRange(Landroidx/slice/SliceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RowView;

.field final synthetic val$finalMinValue:I

.field final synthetic val$range:Landroidx/slice/SliceItem;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;ILandroidx/slice/SliceItem;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    iput p2, p0, Landroidx/slice/widget/RowView$1;->val$finalMinValue:I

    iput-object p3, p0, Landroidx/slice/widget/RowView$1;->val$range:Landroidx/slice/SliceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget v0, p0, Landroidx/slice/widget/RowView$1;->val$finalMinValue:I

    add-int/2addr p2, v0

    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/RowView$1;->val$range:Landroidx/slice/SliceItem;

    iget-object v1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v1}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
