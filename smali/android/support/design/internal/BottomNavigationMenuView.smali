.class public Landroid/support/design/internal/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslation:Z

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroid/support/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/design/internal/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    iput v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/design/internal/R$dimen;->design_bottom_navigation_item_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    sget v3, Landroid/support/design/internal/R$dimen;->design_bottom_navigation_item_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMinWidth:I

    sget v3, Landroid/support/design/internal/R$dimen;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    sget v3, Landroid/support/design/internal/R$dimen;->design_bottom_navigation_active_item_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMinWidth:I

    sget v3, Landroid/support/design/internal/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    const v3, 0x1010038

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    new-instance v3, Landroid/support/transition/AutoTransition;

    invoke-direct {v3}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    invoke-virtual {v3, v0}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    const-wide/16 v3, 0x73

    invoke-virtual {v0, v3, v4}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/TransitionSet;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    new-instance v3, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSet;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    new-instance v3, Landroid/support/design/internal/TextScale;

    invoke-direct {v3}, Landroid/support/design/internal/TextScale;-><init>()V

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    new-instance v0, Landroid/support/design/internal/BottomNavigationMenuView$1;

    invoke-direct {v0, p0}, Landroid/support/design/internal/BottomNavigationMenuView$1;-><init>(Landroid/support/design/internal/BottomNavigationMenuView;)V

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .locals 3

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    new-instance v1, Landroid/support/design/internal/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    if-nez p1, :cond_0

    goto :goto_0

    :goto_1
    return v0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->removeAllViews()V

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v5, v4}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v0

    move v2, v1

    :goto_1
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v3, v4, v2

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setIconSize(I)V

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    invoke-virtual {v3, v0}, Landroid/support/design/internal/BottomNavigationItemView;->setShifting(Z)V

    iget v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v1}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    invoke-virtual {v3, v2}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v1

    sub-int/2addr v1, v4

    iget v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 11

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v6, 0x3

    new-array v7, v6, [[I

    sget-object v8, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Landroid/support/design/internal/BottomNavigationMenuView;->CHECKED_STATE_SET:[I

    aput-object v8, v7, v2

    sget-object v8, Landroid/support/design/internal/BottomNavigationMenuView;->EMPTY_STATE_SET:[I

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [I

    sget-object v8, Landroid/support/design/internal/BottomNavigationMenuView;->DISABLED_STATE_SET:[I

    invoke-virtual {v1, v8, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v9

    aput v3, v6, v2

    aput v4, v6, v10

    invoke-direct {v5, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method public getItemHorizontalTranslation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslation:Z

    return v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    sub-int v7, v1, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v8, v1, v5

    invoke-virtual {v6, v7, v4, v8, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v5, v4, v7, v2}, Landroid/view/View;->layout(IIII)V

    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, v0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v3

    iget v4, v0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v6, v0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-direct {v0, v6, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v6

    const/16 v7, 0x8

    const/4 v9, 0x1

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslation:Z

    if-eqz v6, :cond_7

    iget v6, v0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    invoke-virtual {v0, v6}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v10, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMinWidth:I

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_0

    iget v11, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v6, v11, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eq v11, v7, :cond_1

    move v11, v9

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    sub-int v11, v2, v11

    iget v12, v0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v12, v11

    sub-int v12, v1, v12

    iget v13, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int v14, v1, v13

    if-nez v11, :cond_2

    move v15, v9

    goto :goto_1

    :cond_2
    move v15, v11

    :goto_1
    div-int/2addr v14, v15

    iget v15, v0, Landroid/support/design/internal/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int v16, v1, v13

    mul-int v17, v15, v11

    sub-int v16, v16, v17

    move/from16 v17, v16

    const/16 v16, 0x0

    :goto_2
    move/from16 v18, v16

    move/from16 v5, v18

    if-ge v5, v3, :cond_6

    invoke-virtual {v0, v5}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v7, :cond_4

    iget-object v8, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    iget v7, v0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    if-ne v5, v7, :cond_3

    move v7, v13

    goto :goto_3

    :cond_3
    move v7, v15

    :goto_3
    aput v7, v8, v5

    if-lez v17, :cond_5

    iget-object v7, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aget v8, v7, v5

    add-int/2addr v8, v9

    aput v8, v7, v5

    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    :cond_4
    iget-object v7, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    :cond_5
    :goto_4
    add-int/lit8 v16, v5, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v7, 0x8

    goto :goto_2

    :cond_6
    goto :goto_8

    :cond_7
    if-nez v2, :cond_8

    move v5, v9

    goto :goto_5

    :cond_8
    move v5, v2

    :goto_5
    div-int v5, v1, v5

    iget v6, v0, Landroid/support/design/internal/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v7, v6, v2

    sub-int v7, v1, v7

    move v8, v7

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_b

    invoke-virtual {v0, v7}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_9

    iget-object v10, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aput v6, v10, v7

    if-lez v8, :cond_a

    iget-object v10, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aget v11, v10, v7

    add-int/2addr v11, v9

    aput v11, v10, v7

    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_9
    iget-object v10, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    const/4 v11, 0x0

    aput v11, v10, v7

    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    const/4 v5, 0x0

    move v6, v5

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_d

    invoke-virtual {v0, v5}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_c

    goto :goto_a

    :cond_c
    iget-object v8, v0, Landroid/support/design/internal/BottomNavigationMenuView;->tempChildWidths:[I

    aget v8, v8, v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v6, v10

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    nop

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    iget v8, v0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHeight:I

    invoke-static {v8, v4, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {v0, v5, v7}, Landroid/support/design/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemBackgroundRes:I

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemHorizontalTranslation:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemIconSize:I

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceActive:I

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextAppearanceInactive:I

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 7

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    return-void

    :cond_1
    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iput v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemPosition:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->selectedItemId:I

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->set:Landroid/support/transition/TransitionSet;

    invoke-static {p0, v3}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    :cond_4
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->isShifting(II)Z

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_5

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v5, v5, v4

    iget v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->labelVisibilityMode:I

    invoke-virtual {v5, v6}, Landroid/support/design/internal/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setShifting(Z)V

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->buttons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v5, v5, v4

    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v6, v4}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v5, v6, v2}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    iget-object v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->presenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v5, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method
