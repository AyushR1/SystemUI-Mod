.class public Lcom/android/systemui/statusbar/car/CarFacetButtonController;
.super Ljava/lang/Object;
.source "CarFacetButtonController.java"


# instance fields
.field protected mButtonsByCategory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/car/CarFacetButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mButtonsByComponentName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/car/CarFacetButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mButtonsByPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/car/CarFacetButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private findFacetButtongByComponentName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/car/CarFacetButton;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarFacetButton;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/car/CarFacetButton;

    :goto_0
    return-object v1
.end method

.method private getDisplayId()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addFacetButton(Lcom/android/systemui/statusbar/car/CarFacetButton;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getCategories()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getFacetPackages()[Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getComponentName()[Ljava/lang/String;

    move-result-object v3

    nop

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    return-void
.end method

.method protected getPackageCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/car/CarFacetButton;

    invoke-virtual {v2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    return-void
.end method

.method public taskChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->getDisplayId()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$StackInfo;

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget v4, v3, Landroid/app/ActivityManager$StackInfo;->displayId:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setSelected(Z)V

    :cond_4
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->findFacetButtongByComponentName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/car/CarFacetButton;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/statusbar/car/CarFacetButton;

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/systemui/statusbar/car/CarFacetButton;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setSelected(Z)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    :cond_7
    return-void
.end method
