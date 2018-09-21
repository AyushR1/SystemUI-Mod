.class Landroid/support/v7/widget/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/CardViewBaseImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/CardViewBaseImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v9, p3, v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v1, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v11, v1, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v9

    sub-float v12, v1, v10

    cmpl-float v1, p3, v10

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v13, p3, v1

    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-static {v1}, Landroid/support/v7/widget/CardViewBaseImpl;->access$000(Landroid/support/v7/widget/CardViewBaseImpl;)Landroid/graphics/RectF;

    move-result-object v1

    neg-float v2, v13

    neg-float v3, v13

    invoke-virtual {v1, v2, v3, v13, v13}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    iget v2, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v13

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-static {v1}, Landroid/support/v7/widget/CardViewBaseImpl;->access$000(Landroid/support/v7/widget/CardViewBaseImpl;)Landroid/graphics/RectF;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/4 v5, 0x1

    move-object v1, v7

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    invoke-virtual {v7, v11, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-static {v1}, Landroid/support/v7/widget/CardViewBaseImpl;->access$000(Landroid/support/v7/widget/CardViewBaseImpl;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v15, 0x1

    move-object v1, v7

    move v10, v5

    move v5, v15

    move v10, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-static {v1}, Landroid/support/v7/widget/CardViewBaseImpl;->access$000(Landroid/support/v7/widget/CardViewBaseImpl;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroid/support/v7/widget/CardViewBaseImpl$1;->this$0:Landroid/support/v7/widget/CardViewBaseImpl;

    invoke-static {v1}, Landroid/support/v7/widget/CardViewBaseImpl;->access$000(Landroid/support/v7/widget/CardViewBaseImpl;)Landroid/graphics/RectF;

    move-result-object v2

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    iget v4, v8, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    add-float v5, v1, v2

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float v6, v1, v13

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v13

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v2

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v1, v13

    iget v1, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v13

    add-float v5, v1, v2

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    move-object v1, v7

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->top:F

    add-float v3, v1, p3

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v1, p3

    move-object v1, v7

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
