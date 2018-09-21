.class public Landroidx/slice/widget/ShortcutView;
.super Landroidx/slice/widget/SliceChildView;
.source "ShortcutView.java"


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mIcon:Landroidx/slice/SliceItem;

.field private mLabel:Landroidx/slice/SliceItem;

.field private mLargeIconSize:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mSmallIconSize:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method private determineShortcutItems(Landroid/content/Context;)V
    .locals 13

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "image"

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "text"

    invoke-static {v4, v5, v6, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_1
    const-string v4, "action"

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    :goto_0
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-nez v4, :cond_2

    const-string v4, "image"

    const-string v5, "title"

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v4, :cond_3

    const-string v4, "text"

    const-string v5, "title"

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    :cond_3
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-nez v4, :cond_4

    const-string v4, "image"

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v4, :cond_5

    const-string v4, "text"

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    :cond_5
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v4, :cond_9

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    nop

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_9

    iget-object v7, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-nez v7, :cond_7

    new-instance v7, Landroidx/slice/Slice$Builder;

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v8}, Landroidx/slice/widget/SliceViewUtil;->createIconFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v9

    const-string v10, "large"

    new-array v11, v2, [Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v7}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    iput-object v9, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    :cond_7
    iget-object v7, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v7, :cond_8

    new-instance v7, Landroidx/slice/Slice$Builder;

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    invoke-virtual {v7, v8, v3, v9}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v7}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    iput-object v3, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    :cond_8
    iget-object v3, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v3, :cond_9

    new-instance v3, Landroidx/slice/SliceItem;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-static {p1, v2, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v7}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v9

    const-string v10, "action"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    :cond_9
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public performClick()Z
    .locals 7

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->callOnClick()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/slice/widget/EventInfo;

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-direct {v0, v4, v2, v5, v1}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/slice/SliceItem;

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "slice"

    iget-object v6, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v6}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v4, v5, v3, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    iget-object v3, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v0, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ShortcutView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v2
.end method

.method public resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/ShortcutView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->removeAllViews()V

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->resetView()V

    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/ShortcutView;->determineShortcutItems(Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getColorItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const-string v2, "int"

    const-string v3, "color"

    invoke-static {v1, v2, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    :goto_0
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    const-string v5, "no_tint"

    invoke-virtual {v4, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/slice/widget/ShortcutView;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    const-string v5, "no_tint"

    invoke-virtual {v4, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v5, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    goto :goto_1

    :cond_4
    iget v5, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v7

    invoke-static {v6, v5, v7, v4, p0}, Landroidx/slice/widget/SliceViewUtil;->createCircledIcon(Landroid/content/Context;ILandroid/support/v4/graphics/drawable/IconCompat;ZLandroid/view/ViewGroup;)V

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    :goto_2
    return-void
.end method
