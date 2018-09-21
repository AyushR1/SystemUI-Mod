.class Lcom/android/systemui/egg/MLand$Star;
.super Lcom/android/systemui/egg/MLand$Scenery;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Star"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Star;->this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Scenery;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    const p1, 0x7f08039e

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand$Star;->setBackgroundResource(I)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MIN:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->STAR_SIZE_MAX:I

    invoke-static {p1, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/egg/MLand$Star;->h:I

    iput p1, p0, Lcom/android/systemui/egg/MLand$Star;->w:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/egg/MLand$Star;->z:F

    iput p1, p0, Lcom/android/systemui/egg/MLand$Star;->v:F

    return-void
.end method
