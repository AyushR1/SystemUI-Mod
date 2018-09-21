.class public Landroidx/car/utils/ColumnCalculator;
.super Ljava/lang/Object;
.source "ColumnCalculator.java"


# static fields
.field private static sInstance:Landroidx/car/utils/ColumnCalculator;

.field private static sScreenWidth:I


# instance fields
.field private mColumnWidth:I

.field private mGutterSize:I

.field private mNumOfColumns:I

.field private mNumOfGutters:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$dimen;->car_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Landroidx/car/R$dimen;->car_gutter_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/car/utils/ColumnCalculator;->mGutterSize:I

    sget v2, Landroidx/car/R$integer;->car_column_number:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroidx/car/utils/ColumnCalculator;->mNumOfColumns:I

    const-string v2, "ColumnCalculator"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const-string v2, "ColumnCalculator"

    const-string v6, "marginSize: %d; numOfColumns: %d; gutterSize: %d"

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    iget v8, p0, Landroidx/car/utils/ColumnCalculator;->mNumOfColumns:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget v8, p0, Landroidx/car/utils/ColumnCalculator;->mGutterSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Landroidx/car/utils/ColumnCalculator;->mNumOfColumns:I

    sub-int/2addr v2, v5

    iput v2, p0, Landroidx/car/utils/ColumnCalculator;->mNumOfGutters:I

    sget v2, Landroidx/car/utils/ColumnCalculator;->sScreenWidth:I

    mul-int/2addr v4, v1

    sub-int/2addr v2, v4

    iget v4, p0, Landroidx/car/utils/ColumnCalculator;->mNumOfGutters:I

    iget v5, p0, Landroidx/car/utils/ColumnCalculator;->mGutterSize:I

    mul-int/2addr v4, v5

    sub-int/2addr v2, v4

    iget v4, p0, Landroidx/car/utils/ColumnCalculator;->mNumOfColumns:I

    div-int v4, v2, v4

    iput v4, p0, Landroidx/car/utils/ColumnCalculator;->mColumnWidth:I

    const-string v4, "ColumnCalculator"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ColumnCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mColumnWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/car/utils/ColumnCalculator;->mColumnWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/car/utils/ColumnCalculator;
    .locals 3

    sget-object v0, Landroidx/car/utils/ColumnCalculator;->sInstance:Landroidx/car/utils/ColumnCalculator;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Landroidx/car/utils/ColumnCalculator;->sScreenWidth:I

    new-instance v2, Landroidx/car/utils/ColumnCalculator;

    invoke-direct {v2, p0}, Landroidx/car/utils/ColumnCalculator;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroidx/car/utils/ColumnCalculator;->sInstance:Landroidx/car/utils/ColumnCalculator;

    :cond_0
    sget-object v0, Landroidx/car/utils/ColumnCalculator;->sInstance:Landroidx/car/utils/ColumnCalculator;

    return-object v0
.end method


# virtual methods
.method public getSizeForColumnSpan(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Landroidx/car/utils/ColumnCalculator;->mColumnWidth:I

    mul-int/2addr v1, p1

    iget v2, p0, Landroidx/car/utils/ColumnCalculator;->mGutterSize:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method
