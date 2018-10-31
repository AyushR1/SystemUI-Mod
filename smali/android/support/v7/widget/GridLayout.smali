.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayout$Alignment;,
        Landroid/support/v7/widget/GridLayout$Spec;,
        Landroid/support/v7/widget/GridLayout$Interval;,
        Landroid/support/v7/widget/GridLayout$Bounds;,
        Landroid/support/v7/widget/GridLayout$PackedMap;,
        Landroid/support/v7/widget/GridLayout$Assoc;,
        Landroid/support/v7/widget/GridLayout$MutableInt;,
        Landroid/support/v7/widget/GridLayout$Arc;,
        Landroid/support/v7/widget/GridLayout$LayoutParams;,
        Landroid/support/v7/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I

.field public static final BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final COLUMN_COUNT:I

.field private static final COLUMN_ORDER_PRESERVED:I

.field public static final END:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final FILL:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I

.field public static final RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final ROW_COUNT:I

.field private static final ROW_ORDER_PRESERVED:I

.field public static final START:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final TOP:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final USE_DEFAULT_MARGINS:I


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    new-instance v0, Landroid/support/v7/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_orientation:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ORIENTATION:I

    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ROW_COUNT:I

    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->COLUMN_COUNT:I

    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_useDefaultMargins:I

    sput v0, Landroid/support/v7/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_alignmentMode:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ALIGNMENT_MODE:I

    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    new-instance v0, Landroid/support/v7/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    new-instance v0, Landroid/support/v7/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    new-instance v0, Landroid/support/v7/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    new-instance v0, Landroid/support/v7/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    new-instance v0, Landroid/support/v7/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    new-instance v0, Landroid/support/v7/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/support/v7/widget/GridLayout$Axis;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    new-instance v0, Landroid/support/v7/widget/GridLayout$Axis;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    iput-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    iput v1, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    sget-object v0, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/gridlayout/R$dimen;->default_gap:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    sget-object v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v3, Landroid/support/v7/widget/GridLayout;->ROW_COUNT:I

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    sget v3, Landroid/support/v7/widget/GridLayout;->COLUMN_COUNT:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    sget v3, Landroid/support/v7/widget/GridLayout;->ORIENTATION:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout;->setOrientation(I)V

    sget v3, Landroid/support/v7/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->setUseDefaultMargins(Z)V

    sget v2, Landroid/support/v7/widget/GridLayout;->ALIGNMENT_MODE:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->setAlignmentMode(I)V

    sget v2, Landroid/support/v7/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->setRowOrderPreserved(Z)V

    sget v2, Landroid/support/v7/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static adjust(II)I
    .locals 2

    add-int v0, p0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V
    .locals 7

    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string v0, "row"

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_1
    iget-object v2, v1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v3, v2, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    iget v3, v2, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-gez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " indices must be positive"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    :goto_2
    iget v5, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    if-eq v5, v4, :cond_5

    iget v4, v2, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-le v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v4

    if-le v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " span mustn\'t exceed the "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int v2, p2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayout$LayoutParams;

    const/16 v5, 0x1f

    mul-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private consistencyCheck()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->validateLayoutParams()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$5;-><init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private static fits([IIII)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    aget v2, p0, v0

    if-le v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 5

    const/4 v0, 0x7

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    and-int v3, p0, v1

    shr-int/2addr v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v0, :cond_4

    const v0, 0x800003

    if-eq v3, v0, :cond_3

    const v0, 0x800005

    if-eq v3, v0, :cond_2

    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    :cond_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    :cond_3
    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    :cond_4
    sget-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    :cond_5
    if-eqz p1, :cond_6

    sget-object v0, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_2
    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_3

    :cond_8
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_3
    return-object v0

    :cond_9
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0
.end method

.method private getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_0
    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    :goto_1
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    const/4 v4, 0x1

    if-eqz p3, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p4, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_2

    :cond_4
    move v5, p4

    :goto_2
    if-eqz v5, :cond_6

    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_5

    :goto_3
    move v1, v4

    goto :goto_4

    :cond_5
    goto :goto_4

    :cond_6
    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_5

    goto :goto_3

    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    return v4
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v4/widget/Space;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 6

    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    if-eqz p2, :cond_3

    iget-object v3, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v3, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_2
    if-eqz p3, :cond_4

    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v4, v4, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v4, v4, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    :goto_3
    aget v5, v1, v4

    return v5
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static handleInvalidParams(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method private invalidateValues()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    :cond_0
    return-void
.end method

.method private isLayoutRtlCompat()Z
    .locals 2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static max2([II)I
    .locals 4

    move v0, p1

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 2

    nop

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    invoke-static {p2, v0, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    nop

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    invoke-static {p3, v1, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 18

    move-object/from16 v6, p0

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v1

    move v7, v0

    :goto_0
    move v8, v1

    if-ge v7, v8, :cond_7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v6, v9}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v10

    if-eqz p3, :cond_1

    iget v4, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    iget v5, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_1
    iget v0, v6, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    if-eqz v11, :cond_3

    iget-object v0, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v0, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_2
    move-object v12, v0

    invoke-virtual {v12, v11}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_6

    iget-object v13, v12, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    if-eqz v11, :cond_4

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    :goto_3
    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v15

    iget v0, v13, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v0, v15, v0

    iget v1, v13, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v1, v15, v1

    sub-int v16, v0, v1

    invoke-direct {v6, v9, v11}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    sub-int v17, v16, v0

    if-eqz v11, :cond_5

    iget v5, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_5
    iget v4, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v1, v8

    goto :goto_0

    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private static setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    .locals 2

    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    return-void
.end method

.method public static spec(I)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/GridLayout;->spec(II)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1

    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 7

    new-instance v6, Landroid/support/v7/widget/GridLayout$Spec;

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v6

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;F)V

    return-object v6
.end method

.method private validateLayoutParams()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    :goto_1
    iget v4, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    iget v2, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    nop

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v2, [I

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_e

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/GridLayout$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v10, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_3

    :cond_3
    iget-object v10, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_3
    iget-object v11, v10, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget-boolean v12, v10, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v13

    if-eqz v12, :cond_4

    iget v4, v11, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    :cond_4
    if-eqz v1, :cond_5

    iget-object v14, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_4

    :cond_5
    iget-object v14, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_4
    iget-object v15, v14, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget-boolean v0, v14, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    move-object/from16 v16, v3

    invoke-static {v15, v0, v2}, Landroid/support/v7/widget/GridLayout;->clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I

    move-result v3

    if-eqz v0, :cond_6

    iget v5, v15, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    :cond_6
    if-eqz v2, :cond_c

    if-eqz v12, :cond_8

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v17, v8

    goto :goto_7

    :cond_8
    :goto_5
    move/from16 v17, v8

    add-int v8, v5, v3

    invoke-static {v6, v4, v5, v8}, Landroid/support/v7/widget/GridLayout;->fits([IIII)Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v0, :cond_9

    add-int/lit8 v4, v4, 0x1

    :goto_6
    move/from16 v8, v17

    goto :goto_5

    :cond_9
    add-int v8, v5, v3

    if-gt v8, v2, :cond_a

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int v8, v5, v3

    move/from16 v18, v0

    add-int v0, v4, v13

    invoke-static {v6, v5, v8, v0}, Landroid/support/v7/widget/GridLayout;->procrusteanFill([IIII)V

    goto :goto_8

    :cond_c
    move/from16 v18, v0

    move/from16 v17, v8

    :goto_8
    if-eqz v1, :cond_d

    invoke-static {v9, v4, v13, v5, v3}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_9

    :cond_d
    invoke-static {v9, v5, v3, v4, v13}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    :goto_9
    add-int/2addr v5, v3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move/from16 v8, v17

    move-object/from16 v0, p0

    goto :goto_2

    :cond_e
    move-object/from16 v16, v3

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    return v2
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 2

    instance-of v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/support/v7/widget/GridLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I

    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 47

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    sub-int v9, p4, p2

    sub-int v12, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v16

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    sub-int v1, v9, v13

    sub-int/2addr v1, v15

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    sub-int v1, v12, v14

    sub-int v1, v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v17

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v1

    move v5, v0

    :goto_0
    move v4, v1

    if-ge v5, v4, :cond_4

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move/from16 v43, v4

    move/from16 v39, v5

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    iget-object v1, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iget-object v0, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iget-object v7, v1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget-object v8, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v19, v2

    iget v2, v7, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v20, v17, v2

    iget v2, v8, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v21, v18, v2

    iget v2, v7, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v22, v17, v2

    iget v2, v8, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v23, v18, v2

    sub-int v24, v22, v20

    sub-int v25, v23, v21

    const/4 v2, 0x1

    move-object/from16 v26, v7

    invoke-direct {v6, v3, v2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v7

    const/4 v2, 0x0

    move-object/from16 v28, v8

    invoke-direct {v6, v3, v2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v8

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v10

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v11

    iget-object v2, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayout$Bounds;

    move-object/from16 v30, v0

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$Bounds;

    move-object/from16 v31, v1

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v27

    sub-int v1, v24, v27

    invoke-virtual {v10, v3, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v27

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v32

    sub-int v1, v25, v32

    invoke-virtual {v11, v3, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v32

    const/4 v1, 0x1

    invoke-direct {v6, v3, v1, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    move-object/from16 v34, v0

    const/4 v0, 0x0

    invoke-direct {v6, v3, v0, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v29

    invoke-direct {v6, v3, v1, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v35

    invoke-direct {v6, v3, v0, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v36

    add-int v37, v33, v35

    add-int v38, v29, v36

    add-int v39, v7, v37

    const/16 v40, 0x1

    move-object v0, v2

    move-object v1, v6

    move-object/from16 v41, v2

    move-object v2, v3

    move-object/from16 v42, v3

    move-object v3, v10

    move/from16 v43, v4

    move/from16 v4, v39

    move/from16 v39, v5

    move/from16 v5, v40

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v40

    add-int v4, v8, v38

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v2, v42

    move-object v3, v11

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v0

    sub-int v1, v24, v37

    invoke-virtual {v10, v2, v7, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v1

    sub-int v3, v25, v38

    invoke-virtual {v11, v2, v8, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v3

    add-int v4, v20, v27

    add-int v4, v4, v40

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v5

    if-nez v5, :cond_1

    add-int v5, v13, v33

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    sub-int v5, v9, v1

    sub-int/2addr v5, v15

    sub-int v5, v5, v35

    sub-int/2addr v5, v4

    :goto_1
    add-int v42, v14, v21

    add-int v42, v42, v32

    add-int v42, v42, v0

    move/from16 v44, v0

    add-int v0, v42, v29

    move/from16 v45, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    :cond_3
    add-int v4, v5, v1

    add-int v6, v0, v3

    invoke-virtual {v2, v5, v0, v4, v6}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/lit8 v5, v39, 0x1

    move/from16 v1, v43

    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v2, v0

    invoke-static {p1, v2}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v2

    neg-int v3, v1

    invoke-static {p2, v3}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget v4, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v5}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v6, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    invoke-direct {p0, v2, v3, v5}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    :goto_0
    add-int v7, v4, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v6, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    nop

    invoke-static {v7, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    invoke-static {v8, p2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v9, v5}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    return-void
.end method
