.class Landroid/support/v17/leanback/widget/picker/Picker$1;
.super Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/picker/Picker;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/Picker;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 3

    nop

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/picker/Picker;->updateColumnAlpha(IZ)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker$1;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-virtual {v2, v0, v1}, Landroid/support/v17/leanback/widget/picker/Picker;->onColumnValueChanged(II)V

    :cond_0
    return-void
.end method
