.class public Lcom/android/keyguard/KeyguardSliceView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSliceView.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;,
        Lcom/android/keyguard/KeyguardSliceView$TitleView;,
        Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;,
        Lcom/android/keyguard/KeyguardSliceView$Row;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/arch/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;"
    }
.end annotation


# instance fields
.field private final mClickActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentChangeListener:Ljava/lang/Runnable;

.field private mDarkAmount:F

.field private mHasHeader:Z

.field private mIconSize:I

.field private mKeyguardSliceUri:Landroid/net/Uri;

.field private mLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mPulsing:Z

.field private mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

.field private mSlice:Landroidx/slice/Slice;

.field private mTextColor:I

.field mTitle:Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWeatherIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "keyguard_slice_uri"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v2, 0x113

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    const/4 v5, 0x2

    const-wide/16 v6, 0x226

    invoke-virtual {v1, v5, v6, v7}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    new-instance v2, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardSliceView$SliceViewTransitionListener;-><init>(Lcom/android/keyguard/KeyguardSliceView;Lcom/android/keyguard/KeyguardSliceView$1;)V

    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSliceView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSliceView;->findBestLineBreak(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static findBestLineBreak(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_5

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    :goto_2
    return-object v0
.end method

.method private showSlice()V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mPulsing:Z

    const/16 v2, 0x8

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v1, Landroidx/slice/widget/ListContent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    invoke-direct {v1, v3, v4}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->hasHeader()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content://com.android.systemui.keyguard/action"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    const/4 v7, 0x1

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v5, Landroidx/slice/widget/RowContent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    invoke-direct {v5, v8, v9, v7}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    invoke-virtual {v5}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v10, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v8

    iget-boolean v9, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    iget-object v10, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    if-lez v5, :cond_5

    move v2, v4

    nop

    :cond_5
    invoke-virtual {v10, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->setVisibility(I)V

    move v2, v9

    :goto_3
    if-ge v2, v5, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/slice/SliceItem;

    new-instance v11, Landroidx/slice/widget/RowContent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v10, v7}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "content://com.android.systemui.keyguard/weather"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v14, v12}, Lcom/android/keyguard/KeyguardSliceView$Row;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    if-nez v14, :cond_6

    new-instance v15, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v6}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;-><init>(Landroid/content/Context;)V

    move-object v14, v15

    xor-int/lit8 v6, v13, 0x1

    invoke-virtual {v14, v6}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setShouldTintDrawable(Z)V

    invoke-virtual {v14, v8}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setTextColor(I)V

    invoke-virtual {v14, v12}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setTag(Ljava/lang/Object;)V

    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    sub-int v6, v2, v6

    iget-object v15, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v15, v14, v6}, Lcom/android/keyguard/KeyguardSliceView$Row;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_6
    xor-int/lit8 v6, v13, 0x1

    invoke-virtual {v14, v6}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setShouldTintDrawable(Z)V

    :goto_4
    const/4 v6, 0x0

    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v6

    :cond_7
    iget-object v15, v0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v15, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v15

    if-nez v15, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v15}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v4, v16

    :goto_5
    invoke-virtual {v14, v4}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroidx/slice/widget/RowContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v10}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v7

    move-object/from16 v17, v1

    const-string v1, "image"

    invoke-static {v7, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v7

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    if-eqz v13, :cond_9

    iget v7, v0, Lcom/android/keyguard/KeyguardSliceView;->mWeatherIconSize:I

    goto :goto_6

    :cond_9
    iget v7, v0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    :goto_6
    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    move-object/from16 v19, v3

    const/4 v7, 0x1

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v13, :cond_a

    iget v7, v0, Lcom/android/keyguard/KeyguardSliceView;->mWeatherIconSize:I

    goto :goto_7

    :cond_a
    iget v7, v0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    :goto_7
    move/from16 v20, v1

    const/4 v1, 0x0

    invoke-virtual {v4, v1, v1, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_8

    :cond_b
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    const/4 v1, 0x0

    :goto_8
    const/4 v3, 0x0

    invoke-virtual {v14, v4, v3, v3, v3}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v6, :cond_c

    const/4 v7, 0x1

    goto :goto_9

    :cond_c
    move v7, v1

    :goto_9
    invoke-virtual {v14, v7}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    move-object/from16 v1, v17

    move-object/from16 v3, v19

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move v1, v4

    :goto_a
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    :cond_e
    const/4 v2, 0x1

    add-int/2addr v1, v2

    goto :goto_a

    :cond_f
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_10
    return-void

    :cond_11
    :goto_b
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method private updateTextColors()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSliceView$Row;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method getTextColor()I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    iget v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mHasHeader:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mSlice:Landroidx/slice/Slice;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->showSlice()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mClickActions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardSliceView"

    const-string v3, "Pending intent cancelled, nothing to launch"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07046a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mIconSize:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070462

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mWeatherIconSize:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0351

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSliceView$Row;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    const v1, 0x7f040392

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSliceView;->setupUri(Ljava/lang/String;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public setContentChangeListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mContentChangeListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mDarkAmount:F

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceView$Row;->setDarkAmount(F)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    return-void
.end method

.method public setPulsing(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mPulsing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSliceView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->showSlice()V

    if-nez p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSliceView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_1
    return-void
.end method

.method setTextColor(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView;->mTextColor:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView;->updateTextColors()V

    return-void
.end method

.method public setupUri(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "content://com.android.systemui.keyguard/main"

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSliceView;->mKeyguardSliceUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1, p0}, Landroid/arch/lifecycle/LiveData;->observeForever(Landroid/arch/lifecycle/Observer;)V

    :cond_2
    return-void
.end method
