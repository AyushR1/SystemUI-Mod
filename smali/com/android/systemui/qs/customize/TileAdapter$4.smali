.class Lcom/android/systemui/qs/customize/TileAdapter$4;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->showAccessibilityDialog(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;ILcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$position:I

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$position:I

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$800(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$position:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$info:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$900(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->val$v:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1000(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$900(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$4;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method
