.class public Lcom/android/systemui/qs/AutoSizingList;
.super Landroid/widget/LinearLayout;
.source "AutoSizingList.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mBindChildren:Ljava/lang/Runnable;

.field private mCount:I

.field private final mDataObserver:Landroid/database/DataSetObserver;

.field private mEnableAutoSizing:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mItemSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/qs/AutoSizingList$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/AutoSizingList$1;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/qs/AutoSizingList$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/AutoSizingList$2;-><init>(Lcom/android/systemui/qs/AutoSizingList;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/R$styleable;->AutoSizingList:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->rebindChildren()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/AutoSizingList;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/AutoSizingList;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/AutoSizingList;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    return-void
.end method

.method private getDesiredCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getItemCount(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->getDesiredCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mEnableAutoSizing:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mItemSize:I

    div-int v1, p1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    nop

    move v1, v0

    :goto_0
    return v1
.end method

.method private postRebindChildren()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mBindChildren:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rebindChildren()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/AutoSizingList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eq v2, v1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/AutoSizingList;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/qs/AutoSizingList;->addView(Landroid/view/View;I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/AutoSizingList;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/AutoSizingList;->removeViewAt(I)V

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/AutoSizingList;->getItemCount(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-eq v2, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoSizingList;->postRebindChildren()V

    iput v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method
