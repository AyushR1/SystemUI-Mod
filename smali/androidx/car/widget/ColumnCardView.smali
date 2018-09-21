.class public final Landroidx/car/widget/ColumnCardView;
.super Landroid/support/v7/widget/CardView;
.source "ColumnCardView.java"


# instance fields
.field private mColumnCalculator:Landroidx/car/utils/ColumnCalculator;

.field private mColumnSpan:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/car/widget/ColumnCardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/car/widget/ColumnCardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/car/widget/ColumnCardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-static {p1}, Landroidx/car/utils/ColumnCalculator;->getInstance(Landroid/content/Context;)Landroidx/car/utils/ColumnCalculator;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/widget/ColumnCardView;->mColumnCalculator:Landroidx/car/utils/ColumnCalculator;

    invoke-virtual {p0}, Landroidx/car/widget/ColumnCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/car/R$integer;->column_card_default_column_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget-object v1, Landroidx/car/R$styleable;->ColumnCardView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroidx/car/R$styleable;->ColumnCardView_columnSpan:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Landroidx/car/widget/ColumnCardView;->mColumnSpan:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v2, "ColumnCardView"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ColumnCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Column span: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/car/widget/ColumnCardView;->mColumnSpan:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/ColumnCardView;->mColumnCalculator:Landroidx/car/utils/ColumnCalculator;

    iget v1, p0, Landroidx/car/widget/ColumnCardView;->mColumnSpan:I

    invoke-virtual {v0, v1}, Landroidx/car/utils/ColumnCalculator;->getSizeForColumnSpan(I)I

    move-result v0

    nop

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/support/v7/widget/CardView;->onMeasure(II)V

    return-void
.end method
