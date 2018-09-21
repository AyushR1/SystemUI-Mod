.class public Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;
.super Ljava/lang/Object;
.source "ImageGradientColorizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;
    .locals 42

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v0, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int v5, v1, v2

    div-int/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    neg-int v7, v3

    neg-int v8, v5

    sub-int v9, v0, v3

    sub-int v10, v1, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v9, 0x3e59b3d0    # 0.2126f

    const v10, 0x3f371759    # 0.7152f

    const v11, 0x3d93dd98    # 0.0722f

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    int-to-float v15, v12

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v15, v15, v16

    int-to-float v4, v13

    div-float v4, v4, v16

    move/from16 v18, v0

    int-to-float v0, v14

    div-float v0, v0, v16

    mul-float v19, v15, v9

    mul-float v20, v4, v10

    add-float v19, v19, v20

    mul-float v20, v0, v11

    add-float v19, v19, v20

    mul-float v19, v19, v16

    move/from16 v21, v0

    new-instance v0, Landroid/graphics/ColorMatrix;

    move/from16 v22, v1

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/16 v16, 0x0

    aput v9, v1, v16

    move/from16 v23, v3

    const/4 v3, 0x1

    aput v10, v1, v3

    const/16 v17, 0x2

    aput v11, v1, v17

    const/4 v3, 0x3

    move/from16 v25, v4

    const/4 v4, 0x0

    aput v4, v1, v3

    int-to-float v3, v12

    sub-float v3, v3, v19

    const/16 v20, 0x4

    aput v3, v1, v20

    const/4 v3, 0x5

    aput v9, v1, v3

    const/4 v3, 0x6

    aput v10, v1, v3

    const/4 v3, 0x7

    aput v11, v1, v3

    const/16 v3, 0x8

    aput v4, v1, v3

    int-to-float v3, v13

    sub-float v3, v3, v19

    const/16 v20, 0x9

    aput v3, v1, v20

    const/16 v3, 0xa

    aput v9, v1, v3

    const/16 v3, 0xb

    aput v10, v1, v3

    const/16 v3, 0xc

    aput v11, v1, v3

    const/16 v3, 0xd

    aput v4, v1, v3

    int-to-float v3, v14

    sub-float v3, v3, v19

    const/16 v20, 0xe

    aput v3, v1, v20

    const/16 v3, 0xf

    aput v4, v1, v3

    const/16 v3, 0x10

    aput v4, v1, v3

    const/16 v3, 0x11

    aput v4, v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v20, 0x12

    aput v3, v1, v20

    const/16 v20, 0x13

    aput v4, v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v20, Landroid/graphics/LinearGradient;

    int-to-float v4, v2

    move/from16 v34, v5

    const/4 v3, 0x3

    new-array v5, v3, [I

    aput v16, v5, v16

    const/high16 v3, 0x3f000000    # 0.5f

    move/from16 v35, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v3, v9, v9, v9}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v24

    const/4 v9, 0x1

    aput v24, v5, v9

    const/high16 v9, -0x1000000

    const/16 v17, 0x2

    aput v9, v5, v17

    const/4 v9, 0x3

    new-array v3, v9, [F

    fill-array-data v3, :array_0

    sget-object v33, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v20

    move/from16 v29, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v3

    invoke-direct/range {v26 .. v33}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p3, :cond_0

    move-object/from16 v36, v3

    int-to-float v3, v2

    move-object/from16 v37, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    move-object/from16 v36, v3

    move-object/from16 v37, v6

    :goto_0
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/16 v6, 0x7f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v6, 0x0

    invoke-virtual {v8, v4, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/LinearGradient;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v38, v0

    int-to-float v0, v2

    const/16 v30, 0x0

    move/from16 v39, v2

    move-object/from16 v40, v3

    const/4 v2, 0x3

    new-array v3, v2, [I

    aput v16, v3, v16

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v9, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v2

    const/4 v9, 0x1

    aput v2, v3, v9

    const/4 v2, 0x2

    const/high16 v9, -0x1000000

    aput v9, v3, v2

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    sget-object v33, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v26, v6

    move/from16 v29, v0

    move-object/from16 v31, v3

    move-object/from16 v32, v2

    invoke-direct/range {v26 .. v33}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object v0, v6

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v7

    :array_0
    .array-data 4
        0x0
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method
