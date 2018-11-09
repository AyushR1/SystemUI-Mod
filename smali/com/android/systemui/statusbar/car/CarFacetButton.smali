.class public Lcom/android/systemui/statusbar/car/CarFacetButton;
.super Landroid/widget/LinearLayout;
.source "CarFacetButton.java"


# instance fields
.field private mComponentNames:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFacetCategories:[Ljava/lang/String;

.field private mFacetPackages:[Ljava/lang/String;

.field private mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

.field private mIconResourceId:I

.field private mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

.field private mSelected:Z

.field private mSelectedAlpha:F

.field private mSelectedIconResourceId:I

.field private mUnselectedAlpha:F

.field private mUseMoreIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUseMoreIcon:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0039

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget-object v0, Lcom/android/systemui/R$styleable;->CarFacetButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setupIntents(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setupIcons(Landroid/content/res/TypedArray;)V

    const-class v1, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->addFacetButton(Lcom/android/systemui/statusbar/car/CarFacetButton;)V

    return-void
.end method

.method public static synthetic lambda$setupIntents$0(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    const-string v0, "launch_picker"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic lambda$setupIntents$1(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    return v0
.end method

.method private setupIcons(Landroid/content/res/TypedArray;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    invoke-virtual {v0, v3}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    invoke-virtual {v0, v3}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setImageResource(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedIconResourceId:I

    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    invoke-virtual {v0, v2}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setVisibility(I)V

    const/16 v0, 0x9

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUseMoreIcon:Z

    return-void
.end method

.method private setupIntents(Landroid/content/res/TypedArray;)V
    .locals 9

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "filter_id"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_0

    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    const-string v7, "packages"

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz v2, :cond_1

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    const-string v7, "categories"

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz v5, :cond_2

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mComponentNames:[Ljava/lang/String;

    :cond_2
    new-instance v7, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$i_dU0gknjwIWw7BhdaypNSeIb4I;

    invoke-direct {v7, p0, v6}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$i_dU0gknjwIWw7BhdaypNSeIb4I;-><init>(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_3

    invoke-static {v1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$531BxJPdfLOepcWw24yntC-HGBQ;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/statusbar/car/-$$Lambda$CarFacetButton$531BxJPdfLOepcWw24yntC-HGBQ;-><init>(Lcom/android/systemui/statusbar/car/CarFacetButton;Landroid/content/Intent;)V

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    nop

    return-void

    :catch_0
    move-exception v4

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Failed to attach intent"

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method


# virtual methods
.method public getCategories()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetCategories:[Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mComponentNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mComponentNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getFacetPackages()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mFacetPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public setSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setSelected(ZZ)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedAlpha:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUnselectedAlpha:F

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelected:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mSelectedIconResourceId:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mIconResourceId:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setImageResource(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mUseMoreIcon:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButton;->mMoreIcon:Lcom/android/keyguard/AlphaOptimizedImageButton;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setVisibility(I)V

    :cond_3
    return-void
.end method
