.class public Lcom/android/systemui/statusbar/policy/SmartReplyView;
.super Landroid/view/ViewGroup;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    }
.end annotation


# static fields
.field private static final DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEASURE_SPEC_ANY_WIDTH:I


# instance fields
.field private final mBreakIterator:Ljava/text/BreakIterator;

.field private mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private mCurrentBackgroundColor:I

.field private final mDefaultBackgroundColor:I

.field private final mDefaultStrokeColor:I

.field private final mDefaultTextColor:I

.field private final mDefaultTextColorDarkBg:I

.field private final mDoubleLineButtonPaddingHorizontal:I

.field private final mHeightUpperLimit:I

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private final mMinStrokeContrast:D

.field private final mRippleColor:I

.field private final mRippleColorDarkBg:I

.field private final mSingleLineButtonPaddingHorizontal:I

.field private final mSingleToDoubleLineButtonWidthIncrease:I

.field private mSmartReplyContainer:Landroid/view/View;

.field private final mSpacing:I

.field private final mStrokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    nop

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_WIDTH:I

    sget-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;

    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    const-class v0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v1, 0x7f0703f2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    const v0, 0x7f06017c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v1, 0x7f06017e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v1, 0x7f06017f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v1, 0x7f06017d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v1, 0x7f06013e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/android/systemui/R$styleable;->SmartReplyView:[I

    const/4 v5, 0x0

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move v7, v2

    move v2, v1

    move v1, v0

    move v0, v5

    :goto_0
    if-ge v0, v6, :cond_0

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    goto :goto_1

    :pswitch_3
    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    const/4 v0, 0x2

    sub-int v5, v7, v2

    mul-int/2addr v0, v5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v3, p1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    invoke-interface {v2, v1, v3}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v6, v4}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v6, v7}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v6}, Ljava/text/BreakIterator;->next()I

    move-result v6

    if-ne v6, v7, :cond_1

    return v7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v8}, Ljava/text/BreakIterator;->current()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v4, v9, v8, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v10

    nop

    invoke-static {v4, v8, v5, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v12

    cmpl-float v13, v10, v11

    if-eqz v13, :cond_a

    cmpl-float v13, v10, v11

    if-lez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move v13, v9

    :goto_1
    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMaxSqueezeRemeasureAttempts()I

    move-result v15

    move/from16 v16, v12

    move v12, v9

    :goto_2
    if-ge v12, v15, :cond_9

    if-eqz v13, :cond_3

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v14}, Ljava/text/BreakIterator;->previous()I

    move-result v14

    goto :goto_3

    :cond_3
    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v14}, Ljava/text/BreakIterator;->next()I

    move-result v14

    :goto_3
    if-ne v14, v7, :cond_4

    goto :goto_7

    :cond_4
    invoke-static {v4, v9, v14, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v7

    nop

    invoke-static {v4, v14, v5, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v17

    cmpg-float v18, v17, v16

    if-gez v18, :cond_9

    move/from16 v16, v17

    if-eqz v13, :cond_6

    cmpg-float v18, v7, v9

    if-gtz v18, :cond_5

    :goto_4
    const/16 v18, 0x1

    goto :goto_6

    :cond_5
    nop

    :goto_5
    const/16 v18, 0x0

    goto :goto_6

    :cond_6
    cmpl-float v18, v7, v9

    if-ltz v18, :cond_7

    goto :goto_4

    :cond_7
    goto :goto_5

    :goto_6
    if-eqz v18, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_9
    :goto_7
    move/from16 v12, v16

    :cond_a
    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v7, v13

    return v7
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 3

    nop

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0153

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    return-object v0
.end method

.method public static synthetic lambda$inflateReplyButton$1(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;ILandroid/widget/Button;Landroid/app/RemoteInput;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/statusbar/SmartReplyController;->smartReplySent(Lcom/android/systemui/statusbar/NotificationData$Entry;ILjava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p5}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/app/RemoteInput;

    const/4 v4, 0x0

    aput-object p5, v3, v4

    invoke-static {v3, v1, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-static {v1, v2}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setHasSentReply()V

    :try_start_0
    invoke-virtual {p7, p8, v4, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SmartReplyView"

    const-string v5, "Unable to send smart reply"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    return v4
.end method

.method public static synthetic lambda$inflateReplyButton$2(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private markButtonsWithPendingSqueezeStatusAs(II)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reallocateCandidateButtonQueueForSqueezing()V
    .locals 3

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    return-void
.end method

.method private remeasureButtonsIfNecessary(II)V
    .locals 9

    nop

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const/4 v5, 0x1

    const v6, 0x7fffffff

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    if-eq v7, p1, :cond_4

    const/4 v5, 0x1

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_3

    iget v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    if-ne p1, v7, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    sub-int/2addr v6, v7

    goto :goto_1

    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    add-int/2addr v6, v7

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v3, p1, v7, p1, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v7, p2, :cond_5

    const/4 v5, 0x1

    :cond_5
    if-eqz v5, :cond_6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v7, v0}, Landroid/view/View;->measure(II)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private resetButtonsLayoutParams()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$202(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setColors(Landroid/widget/Button;IIII)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    invoke-virtual {v4, v5, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private squeezeButton(Landroid/widget/Button;I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButtonToTextWidth(Landroid/widget/Button;II)I

    move-result v1

    return v1
.end method

.method private squeezeButtonToTextWidth(Landroid/widget/Button;II)I
    .locals 6

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, p2}, Landroid/widget/Button;->measure(II)V

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/Button;->getLineCount()I

    move-result v5

    if-gt v5, v2, :cond_2

    if-lt v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    sub-int v2, v0, v3

    return v2

    :cond_2
    :goto_0
    const/4 v2, 0x3

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object v0
.end method

.method public getHeightUpperLimit()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    return v0
.end method

.method inflateReplyButton(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/CharSequence;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/widget/Button;
    .locals 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v10, p0

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0152

    const/4 v2, 0x0

    move-object/from16 v11, p2

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v13, p4

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v14, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;

    move-object v0, v14

    move-object v1, v10

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p3

    move-object v5, v12

    move-object/from16 v6, p5

    move-object v7, v13

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;ILandroid/widget/Button;Landroid/app/RemoteInput;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$oc5xsdTBKPaigeImxuPKm7py0NE;

    invoke-direct {v0, v10, v14}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$oc5xsdTBKPaigeImxuPKm7py0NE;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget v2, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iget v3, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget v4, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    iget v5, v10, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    move-object v0, v10

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setColors(Landroid/widget/Button;IIII)V

    return-object v12
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    move-object v0, p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v1, v3

    sub-int v4, p4, p2

    if-eqz v1, :cond_1

    iget v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingRight:I

    sub-int v5, v4, v5

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingLeft:I

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v6

    move v7, v5

    move v5, v2

    :goto_2
    if-ge v5, v6, :cond_5

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v1, :cond_3

    sub-int v12, v7, v10

    goto :goto_3

    :cond_3
    move v12, v7

    :goto_3
    add-int v13, v12, v10

    invoke-virtual {v8, v12, v2, v13, v11}, Landroid/view/View;->layout(IIII)V

    iget v13, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    add-int/2addr v13, v10

    if-eqz v1, :cond_4

    sub-int/2addr v7, v13

    goto :goto_4

    :cond_4
    add-int/2addr v7, v13

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resetButtonsLayoutParams()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SmartReplyView"

    const-string v4, "Single line button queue leaked between onMeasure calls"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    :cond_1
    iget v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingLeft:I

    iget v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingRight:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v7

    move v9, v5

    move v5, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_f

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_e

    instance-of v12, v10, Landroid/widget/Button;

    if-nez v12, :cond_2

    nop

    :goto_2
    move/from16 v22, v7

    goto/16 :goto_9

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v10, v6, v12, v6, v13}, Landroid/view/View;->setPadding(IIII)V

    sget v12, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_WIDTH:I

    invoke-virtual {v10, v12, v1}, Landroid/view/View;->measure(II)V

    move-object v12, v10

    check-cast v12, Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getLineCount()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_e

    const/4 v14, 0x2

    if-le v12, v14, :cond_3

    goto :goto_2

    :cond_3
    if-ne v12, v13, :cond_4

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    move-object v8, v10

    check-cast v8, Landroid/widget/Button;

    invoke-virtual {v15, v8}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_4
    move v8, v4

    move v15, v5

    move/from16 v16, v6

    if-nez v9, :cond_5

    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    iget v13, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    :goto_3
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int v18, v13, v17

    add-int v5, v5, v18

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v19, v4

    iget v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    if-ne v6, v4, :cond_7

    const/4 v4, 0x2

    if-eq v12, v4, :cond_6

    if-le v5, v2, :cond_7

    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_8

    add-int/lit8 v18, v9, 0x1

    move/from16 v20, v4

    iget v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    mul-int v18, v18, v4

    add-int v5, v5, v18

    iget v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    goto :goto_5

    :cond_8
    move/from16 v20, v4

    :goto_5
    if-le v5, v2, :cond_d

    move/from16 v4, v19

    :goto_6
    if-le v5, v2, :cond_b

    move/from16 v21, v6

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    move/from16 v22, v7

    invoke-direct {v0, v6, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButton(Landroid/widget/Button;I)I

    move-result v7

    move-object/from16 v23, v10

    const/4 v10, -0x1

    if-eq v7, v10, :cond_9

    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v5, v7

    :cond_9
    nop

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v10, v23

    goto :goto_6

    :cond_a
    move/from16 v22, v7

    move-object/from16 v23, v10

    goto :goto_7

    :cond_b
    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, v10

    :goto_7
    if-le v5, v2, :cond_c

    move v5, v15

    move v4, v8

    move/from16 v6, v16

    const/4 v7, 0x3

    invoke-direct {v0, v7, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(II)V

    goto :goto_a

    :cond_c
    const/4 v6, 0x2

    invoke-direct {v0, v6, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(II)V

    goto :goto_8

    :cond_d
    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, v10

    move/from16 v4, v19

    :goto_8
    const/4 v6, 0x1

    invoke-static {v11, v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$202(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v21

    goto :goto_9

    :cond_e
    move/from16 v22, v7

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v22

    goto/16 :goto_1

    :cond_f
    move/from16 v22, v7

    :goto_a
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    invoke-direct {v0, v6, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->remeasureButtonsIfNecessary(II)V

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v7, p1

    invoke-static {v3, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resolveSize(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getSuggestedMinimumHeight()I

    move-result v8

    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingTop:I

    add-int/2addr v10, v4

    iget v11, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingBottom:I

    add-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resolveSize(II)I

    move-result v8

    invoke-virtual {v0, v3, v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundTintColor(I)V
    .locals 12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->isColorLight(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    :goto_0
    const/high16 v2, -0x1000000

    or-int v3, p1, v2

    invoke-static {v1, v3, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    or-int/2addr v2, p1

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    invoke-static {v3, v2, v0, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->ensureContrast(IIZD)I

    move-result v2

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    :goto_1
    move v9, v3

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    move v10, v4

    if-ge v10, v3, :cond_3

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/Button;

    move-object v4, p0

    move-object v5, v11

    move v6, p1

    move v7, v2

    move v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setColors(Landroid/widget/Button;IIII)V

    add-int/lit8 v4, v10, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public setRepliesFromRemoteInput(Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/View;)V
    .locals 13

    move-object v9, p0

    move-object/from16 v10, p5

    iput-object v10, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->removeAllViews()V

    iget v0, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    iput v0, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v12, v0

    array-length v0, v11

    if-ge v12, v0, :cond_0

    nop

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getContext()Landroid/content/Context;

    move-result-object v1

    aget-object v4, v11, v12

    move-object v0, v9

    move-object v2, v9

    move v3, v12

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateReplyButton(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/CharSequence;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v12, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v9}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void
.end method
