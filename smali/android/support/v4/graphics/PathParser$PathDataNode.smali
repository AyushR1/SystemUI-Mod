.class public Landroid/support/v4/graphics/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field public mParams:[F

.field public mType:C


# direct methods
.method constructor <init>(C[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-object p2, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iget-object v0, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    return-void
.end method

.method private static addCommand(Landroid/graphics/Path;[FCC[F)V
    .locals 29

    move-object/from16 v10, p0

    move-object/from16 v13, p4

    const/4 v0, 0x2

    const/4 v14, 0x0

    aget v1, p1, v14

    const/4 v15, 0x1

    aget v2, p1, v15

    const/16 v16, 0x2

    aget v3, p1, v16

    const/16 v17, 0x3

    aget v4, p1, v17

    const/16 v18, 0x4

    aget v5, p1, v18

    const/16 v19, 0x5

    aget v6, p1, v19

    sparse-switch p3, :sswitch_data_0

    :goto_0
    move/from16 v20, v0

    goto :goto_1

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    move v1, v5

    move v2, v6

    move v3, v5

    move v4, v6

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    :goto_1
    move/from16 v7, p2

    move v9, v1

    move v8, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move v0, v14

    :goto_2
    move v6, v0

    array-length v0, v13

    if-ge v6, v0, :cond_e

    const/16 v0, 0x73

    const/16 v1, 0x63

    const/16 v2, 0x54

    const/16 v3, 0x51

    const/16 v4, 0x74

    const/16 v5, 0x71

    const/high16 v25, 0x40000000    # 2.0f

    const/4 v15, 0x0

    sparse-switch p3, :sswitch_data_1

    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    goto/16 :goto_f

    :sswitch_6
    add-int/lit8 v0, v6, 0x0

    aget v0, v13, v0

    invoke-virtual {v10, v15, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v0, v6, 0x0

    aget v0, v13, v0

    add-float/2addr v8, v0

    nop

    :goto_3
    move/from16 v27, v6

    goto/16 :goto_7

    :sswitch_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eq v7, v5, :cond_0

    if-eq v7, v4, :cond_0

    if-eq v7, v3, :cond_0

    if-ne v7, v2, :cond_1

    :cond_0
    sub-float v0, v9, v21

    sub-float v1, v8, v22

    :cond_1
    add-int/lit8 v2, v6, 0x0

    aget v2, v13, v2

    add-int/lit8 v3, v6, 0x1

    aget v3, v13, v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float v2, v9, v0

    add-float v3, v8, v1

    add-int/lit8 v4, v6, 0x0

    aget v4, v13, v4

    add-float/2addr v9, v4

    add-int/lit8 v4, v6, 0x1

    aget v4, v13, v4

    add-float/2addr v8, v4

    nop

    move/from16 v21, v2

    move/from16 v22, v3

    goto :goto_3

    :sswitch_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v7, v1, :cond_3

    if-eq v7, v0, :cond_3

    const/16 v0, 0x43

    if-eq v7, v0, :cond_3

    const/16 v0, 0x53

    if-ne v7, v0, :cond_2

    goto :goto_4

    :cond_2
    move v15, v2

    move/from16 v25, v3

    goto :goto_5

    :cond_3
    :goto_4
    sub-float v0, v9, v21

    sub-float v1, v8, v22

    move v15, v0

    move/from16 v25, v1

    :goto_5
    add-int/lit8 v0, v6, 0x0

    aget v3, v13, v0

    add-int/lit8 v0, v6, 0x1

    aget v4, v13, v0

    add-int/lit8 v0, v6, 0x2

    aget v5, v13, v0

    add-int/lit8 v0, v6, 0x3

    aget v26, v13, v0

    move-object v0, v10

    move v1, v15

    move/from16 v2, v25

    move/from16 v27, v6

    move/from16 v6, v26

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v0, v9

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-float/2addr v1, v8

    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-float/2addr v9, v2

    add-int/lit8 v6, v27, 0x3

    aget v2, v13, v6

    add-float/2addr v8, v2

    goto/16 :goto_6

    :sswitch_9
    move/from16 v27, v6

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v3, v13, v6

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v0, v9

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-float/2addr v1, v8

    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-float/2addr v9, v2

    add-int/lit8 v6, v27, 0x3

    aget v2, v13, v6

    add-float/2addr v8, v2

    goto/16 :goto_6

    :sswitch_a
    move/from16 v27, v6

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v9, v0

    add-int/lit8 v6, v27, 0x1

    aget v0, v13, v6

    add-float/2addr v8, v0

    if-lez v27, :cond_4

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v0, v9

    move v1, v8

    nop

    move/from16 v23, v0

    move/from16 v24, v1

    goto :goto_7

    :sswitch_b
    move/from16 v27, v6

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v9, v0

    add-int/lit8 v6, v27, 0x1

    aget v0, v13, v6

    add-float/2addr v8, v0

    goto :goto_7

    :sswitch_c
    move/from16 v27, v6

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    invoke-virtual {v10, v0, v15}, Landroid/graphics/Path;->rLineTo(FF)V

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-float/2addr v9, v0

    goto :goto_7

    :sswitch_d
    move/from16 v27, v6

    add-int/lit8 v6, v27, 0x0

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x4

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x5

    aget v6, v13, v6

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    add-int/lit8 v6, v27, 0x2

    aget v0, v13, v6

    add-float/2addr v0, v9

    add-int/lit8 v6, v27, 0x3

    aget v1, v13, v6

    add-float/2addr v1, v8

    add-int/lit8 v6, v27, 0x4

    aget v2, v13, v6

    add-float/2addr v9, v2

    add-int/lit8 v6, v27, 0x5

    aget v2, v13, v6

    add-float/2addr v8, v2

    nop

    :goto_6
    move/from16 v21, v0

    move/from16 v22, v1

    :goto_7
    move v14, v7

    goto/16 :goto_f

    :sswitch_e
    move/from16 v27, v6

    add-int/lit8 v6, v27, 0x5

    aget v0, v13, v6

    add-float v3, v0, v9

    add-int/lit8 v6, v27, 0x6

    aget v0, v13, v6

    add-float v4, v0, v8

    add-int/lit8 v6, v27, 0x0

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v6, v13, v6

    add-int/lit8 v0, v27, 0x2

    aget v25, v13, v0

    add-int/lit8 v0, v27, 0x3

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_5

    const/16 v26, 0x1

    goto :goto_8

    :cond_5
    move/from16 v26, v14

    :goto_8
    add-int/lit8 v0, v27, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_6

    const/4 v15, 0x1

    goto :goto_9

    :cond_6
    move v15, v14

    :goto_9
    move-object v0, v10

    move v1, v9

    move v2, v8

    move v14, v7

    move/from16 v7, v25

    move v11, v8

    move/from16 v8, v26

    move v12, v9

    move v9, v15

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    add-int/lit8 v6, v27, 0x5

    aget v0, v13, v6

    add-float v9, v12, v0

    add-int/lit8 v6, v27, 0x6

    aget v0, v13, v6

    add-float v8, v11, v0

    move v0, v9

    move v1, v8

    goto/16 :goto_c

    :sswitch_f
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    invoke-virtual {v10, v12, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v27, 0x0

    aget v8, v13, v6

    goto/16 :goto_f

    :sswitch_10
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    move v0, v12

    move v1, v11

    if-eq v14, v5, :cond_7

    if-eq v14, v4, :cond_7

    if-eq v14, v3, :cond_7

    if-ne v14, v2, :cond_8

    :cond_7
    mul-float v9, v25, v12

    sub-float v0, v9, v21

    mul-float v25, v25, v11

    sub-float v1, v25, v22

    :cond_8
    add-int/lit8 v6, v27, 0x0

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v3, v13, v6

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v2, v0

    move v3, v1

    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v8, v13, v6

    nop

    move/from16 v21, v2

    move/from16 v22, v3

    goto/16 :goto_f

    :sswitch_11
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    move v2, v12

    move v3, v11

    if-eq v14, v1, :cond_a

    if-eq v14, v0, :cond_a

    const/16 v0, 0x43

    if-eq v14, v0, :cond_a

    const/16 v0, 0x53

    if-ne v14, v0, :cond_9

    goto :goto_a

    :cond_9
    move v9, v2

    move/from16 v25, v3

    goto :goto_b

    :cond_a
    :goto_a
    mul-float v9, v25, v12

    sub-float v9, v9, v21

    mul-float v25, v25, v11

    sub-float v25, v25, v22

    :goto_b
    add-int/lit8 v6, v27, 0x0

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v6, v13, v6

    move-object v0, v10

    move v1, v9

    move/from16 v2, v25

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v8, v13, v6

    nop

    move/from16 v21, v0

    move/from16 v22, v1

    move v9, v2

    goto/16 :goto_f

    :sswitch_12
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v3, v13, v6

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v9, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v8, v13, v6

    goto/16 :goto_c

    :sswitch_13
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v8, v13, v6

    if-lez v27, :cond_b

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    :cond_b
    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v9

    move v1, v8

    nop

    move/from16 v23, v0

    move/from16 v24, v1

    goto/16 :goto_f

    :sswitch_14
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v1, v13, v6

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v8, v13, v6

    goto/16 :goto_f

    :sswitch_15
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    add-int/lit8 v6, v27, 0x0

    aget v0, v13, v6

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v27, 0x0

    aget v9, v13, v6

    goto/16 :goto_f

    :sswitch_16
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    add-int/lit8 v6, v27, 0x0

    aget v1, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v2, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x4

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x5

    aget v6, v13, v6

    move-object v0, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v6, v27, 0x4

    aget v9, v13, v6

    add-int/lit8 v6, v27, 0x5

    aget v8, v13, v6

    add-int/lit8 v6, v27, 0x2

    aget v0, v13, v6

    add-int/lit8 v6, v27, 0x3

    aget v1, v13, v6

    nop

    :goto_c
    move/from16 v21, v0

    move/from16 v22, v1

    goto :goto_f

    :sswitch_17
    move/from16 v27, v6

    move v14, v7

    move v11, v8

    move v12, v9

    add-int/lit8 v6, v27, 0x5

    aget v3, v13, v6

    add-int/lit8 v6, v27, 0x6

    aget v4, v13, v6

    add-int/lit8 v6, v27, 0x0

    aget v5, v13, v6

    add-int/lit8 v6, v27, 0x1

    aget v6, v13, v6

    add-int/lit8 v0, v27, 0x2

    aget v7, v13, v0

    add-int/lit8 v0, v27, 0x3

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_c

    const/4 v8, 0x1

    goto :goto_d

    :cond_c
    const/4 v8, 0x0

    :goto_d
    add-int/lit8 v0, v27, 0x4

    aget v0, v13, v0

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_d

    const/4 v9, 0x1

    goto :goto_e

    :cond_d
    const/4 v9, 0x0

    :goto_e
    move-object v0, v10

    move v1, v12

    move v2, v11

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    add-int/lit8 v6, v27, 0x5

    aget v9, v13, v6

    add-int/lit8 v6, v27, 0x6

    aget v8, v13, v6

    move v0, v9

    move v1, v8

    goto :goto_c

    :goto_f
    move/from16 v7, p3

    add-int v0, v27, v20

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_e
    move v14, v7

    move v11, v8

    move v2, v11

    const/4 v1, 0x0

    aput v9, p1, v1

    const/4 v1, 0x1

    aput v2, p1, v1

    aput v21, p1, v16

    aput v22, p1, v17

    aput v23, p1, v18

    aput v24, p1, v19

    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x56 -> :sswitch_3
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
        0x76 -> :sswitch_3
        0x7a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_16
        0x48 -> :sswitch_15
        0x4c -> :sswitch_14
        0x4d -> :sswitch_13
        0x51 -> :sswitch_12
        0x53 -> :sswitch_11
        0x54 -> :sswitch_10
        0x56 -> :sswitch_f
        0x61 -> :sswitch_e
        0x63 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6d -> :sswitch_a
        0x71 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 76

    move-wide/from16 v0, p5

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v8, p17, v6

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    move-wide/from16 v9, p15

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    neg-double v6, v0

    mul-double/2addr v6, v11

    mul-double v6, v6, v17

    mul-double v21, p7, v13

    mul-double v21, v21, v15

    sub-double v6, v6, v21

    move-wide/from16 v23, v6

    neg-double v6, v0

    mul-double/2addr v6, v13

    mul-double v6, v6, v17

    mul-double v21, p7, v11

    mul-double v21, v21, v15

    add-double v6, v6, v21

    move-wide/from16 v25, v6

    int-to-double v6, v8

    div-double v6, p17, v6

    const/16 v21, 0x0

    move-wide/from16 v28, v25

    move-wide/from16 v26, p11

    move-wide/from16 v24, v23

    move-wide/from16 v22, p9

    :goto_0
    move/from16 v30, v21

    move/from16 v4, v30

    if-ge v4, v8, :cond_0

    move/from16 v31, v4

    add-double v4, v9, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    mul-double v36, v0, v11

    mul-double v36, v36, v34

    add-double v36, p1, v36

    mul-double v38, p7, v13

    mul-double v38, v38, v32

    move-wide/from16 v40, v6

    sub-double v6, v36, v38

    mul-double v36, v0, v13

    mul-double v36, v36, v34

    add-double v36, p3, v36

    mul-double v42, p7, v11

    mul-double v42, v42, v32

    move-wide/from16 v44, v6

    add-double v6, v36, v42

    move-wide/from16 v46, v6

    neg-double v6, v0

    mul-double/2addr v6, v11

    mul-double v6, v6, v32

    mul-double v36, p7, v13

    mul-double v36, v36, v34

    sub-double v6, v6, v36

    move-wide/from16 v48, v6

    neg-double v6, v0

    mul-double/2addr v6, v13

    mul-double v6, v6, v32

    mul-double v36, p7, v11

    mul-double v36, v36, v34

    add-double v6, v6, v36

    sub-double v36, v4, v9

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    div-double v0, v36, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sub-double v2, v4, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    mul-double v42, v36, v0

    mul-double v42, v42, v0

    move-wide/from16 v50, v0

    const-wide/high16 v19, 0x4010000000000000L    # 4.0

    add-double v0, v19, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v42, 0x3ff0000000000000L    # 1.0

    sub-double v0, v0, v42

    mul-double/2addr v2, v0

    div-double v2, v2, v36

    mul-double v0, v2, v24

    add-double v0, v22, v0

    mul-double v36, v2, v28

    move/from16 v52, v8

    move-wide/from16 v53, v9

    add-double v8, v26, v36

    mul-double v36, v2, v48

    move-wide/from16 v55, v11

    sub-double v10, v44, v36

    mul-double v36, v2, v6

    move-wide/from16 v57, v2

    sub-double v2, v46, v36

    const/4 v12, 0x0

    move-wide/from16 v66, v13

    move-object/from16 v13, p0

    invoke-virtual {v13, v12, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v12, v0

    double-to-float v14, v8

    move-wide/from16 v68, v0

    double-to-float v0, v10

    double-to-float v1, v2

    move-wide/from16 v70, v2

    move-wide/from16 v72, v8

    move-wide/from16 v2, v44

    double-to-float v8, v2

    move-wide/from16 v74, v10

    move-wide/from16 v9, v46

    double-to-float v11, v9

    move-object/from16 v59, v13

    move/from16 v60, v12

    move/from16 v61, v14

    move/from16 v62, v0

    move/from16 v63, v1

    move/from16 v64, v8

    move/from16 v65, v11

    invoke-virtual/range {v59 .. v65}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-wide v0, v4

    move-wide/from16 v22, v2

    move-wide/from16 v26, v9

    move-wide/from16 v24, v48

    move-wide/from16 v28, v6

    add-int/lit8 v21, v31, 0x1

    move-wide v9, v0

    move-wide/from16 v6, v40

    move/from16 v8, v52

    move-wide/from16 v11, v55

    move-wide/from16 v13, v66

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v40, v6

    move/from16 v52, v8

    move-wide/from16 v53, v9

    move-wide/from16 v55, v11

    move-wide/from16 v66, v13

    move-object/from16 v13, p0

    return-void
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 74

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p9

    move/from16 v8, p7

    float-to-double v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    float-to-double v0, v10

    mul-double v0, v0, v35

    float-to-double v2, v11

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v39, v0, v2

    neg-float v0, v10

    float-to-double v0, v0

    mul-double v0, v0, v37

    float-to-double v2, v11

    mul-double v2, v2, v35

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v41, v0, v2

    float-to-double v0, v12

    mul-double v0, v0, v35

    float-to-double v2, v13

    mul-double v2, v2, v37

    add-double/2addr v0, v2

    float-to-double v2, v14

    div-double v43, v0, v2

    neg-float v0, v12

    float-to-double v0, v0

    mul-double v0, v0, v37

    float-to-double v2, v13

    mul-double v2, v2, v35

    add-double/2addr v0, v2

    float-to-double v2, v15

    div-double v45, v0, v2

    sub-double v47, v39, v43

    sub-double v49, v41, v45

    add-double v0, v39, v43

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v51, v0, v2

    add-double v0, v41, v45

    div-double v53, v0, v2

    mul-double v0, v47, v47

    mul-double v2, v49, v49

    add-double v4, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v2, v4, v0

    if-nez v2, :cond_0

    const-string v0, "PathParser"

    const-string v1, " Points are coincident"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v4

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    sub-double v2, v2, v16

    cmpg-double v16, v2, v0

    if-gez v16, :cond_1

    const-string v0, "PathParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v55, v2

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v0, v2

    double-to-float v3, v0

    mul-float v16, v14, v3

    mul-float v17, v15, v3

    move-object/from16 v0, p0

    move v1, v10

    move-wide/from16 v14, v55

    move v2, v11

    move/from16 v18, v3

    move v3, v12

    move-wide/from16 v55, v4

    move v4, v13

    move/from16 v5, v16

    move-wide/from16 v59, v6

    move/from16 v6, v17

    move v7, v8

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroid/support/v4/graphics/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    :cond_1
    move-wide v14, v2

    move-wide/from16 v55, v4

    move-wide/from16 v59, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v4, v2, v47

    mul-double v6, v2, v49

    move/from16 v8, p8

    move/from16 v9, p9

    if-ne v8, v9, :cond_2

    sub-double v16, v51, v6

    add-double v18, v53, v4

    goto :goto_0

    :cond_2
    add-double v16, v51, v6

    sub-double v18, v53, v4

    :goto_0
    sub-double v0, v41, v18

    move-wide/from16 v63, v2

    sub-double v2, v39, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v2, v45, v18

    move-wide/from16 v65, v4

    sub-double v4, v43, v16

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double v4, v2, v0

    const-wide/16 v20, 0x0

    cmpl-double v22, v4, v20

    if-ltz v22, :cond_3

    const/16 v22, 0x1

    :goto_1
    move-wide/from16 v67, v2

    move/from16 v2, v22

    goto :goto_2

    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    :goto_2
    if-eq v9, v2, :cond_5

    cmpl-double v2, v4, v20

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v2, :cond_4

    sub-double v4, v4, v20

    goto :goto_3

    :cond_4
    add-double v4, v4, v20

    :cond_5
    :goto_3
    move-wide/from16 v69, v6

    move/from16 v2, p5

    float-to-double v6, v2

    mul-double v16, v16, v6

    move/from16 v3, p6

    float-to-double v6, v3

    mul-double v18, v18, v6

    move-wide/from16 v6, v16

    mul-double v20, v16, v35

    mul-double v22, v18, v37

    sub-double v57, v20, v22

    mul-double v16, v6, v37

    mul-double v20, v18, v35

    add-double v61, v16, v20

    move-wide/from16 v71, v6

    float-to-double v6, v2

    float-to-double v8, v3

    float-to-double v2, v10

    float-to-double v12, v11

    move-object/from16 v16, p0

    move-wide/from16 v17, v57

    move-wide/from16 v19, v61

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v2

    move-wide/from16 v27, v12

    move-wide/from16 v29, v59

    move-wide/from16 v31, v0

    move-wide/from16 v33, v4

    invoke-static/range {v16 .. v34}, Landroid/support/v4/graphics/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/16 v1, 0x6d

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v4, p0, v2

    iget-object v4, v4, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    invoke-static {p1, v0, v1, v3, v4}, Landroid/support/v4/graphics/PathParser$PathDataNode;->addCommand(Landroid/graphics/Path;[FCC[F)V

    aget-object v3, p0, v2

    iget-char v1, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public interpolatePathDataNode(Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/support/v4/graphics/PathParser$PathDataNode;F)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    iget-object v2, p1, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v2, v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float/2addr v2, v3

    iget-object v3, p2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v3, v3, v0

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
