.class public Lcom/android/systemui/statusbar/AppOpsInfo;
.super Landroid/widget/LinearLayout;
.source "AppOpsInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppOps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUid:I

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnOk:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;

.field private mPkg:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$68oqrp8uVHC6FuhanxBqfZBzjSI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$68oqrp8uVHC6FuhanxBqfZBzjSI;-><init>(Lcom/android/systemui/statusbar/AppOpsInfo;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bindButtons()V
    .locals 3

    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$t2ZvU1jOw3dfO--nkIVBlcF8VwE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsInfo$t2ZvU1jOw3dfO--nkIVBlcF8VwE;-><init>(Lcom/android/systemui/statusbar/AppOpsInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0251

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnOk:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindHeader()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    const v3, 0xc2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppUid:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a026d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a026e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindPrompt()V
    .locals 2

    const v0, 0x7f0a0281

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/AppOpsInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->getPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private closeControls(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v1, 0x0

    const/16 v2, 0x541

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v3, v0, [I

    iget-object v4, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getLocationOnScreen([I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v0

    aget v0, v3, v1

    aget v6, v2, v1

    sub-int/2addr v0, v6

    add-int/2addr v0, v4

    const/4 v6, 0x1

    aget v7, v3, v6

    aget v6, v2, v6

    sub-int/2addr v7, v6

    add-int/2addr v7, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v6, v0, v7, v1, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method private getPrompt()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f11011f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110124

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110125

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110120

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110123

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f110121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic lambda$bindButtons$1(Lcom/android/systemui/statusbar/AppOpsInfo;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppUid:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;->onClick(Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/AppOpsInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/AppOpsInfo;->closeControls(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;",
            "Landroid/service/notification/StatusBarNotification;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iput-object p1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;

    iput-object p4, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppOps:Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindHeader()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindPrompt()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindButtons()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x541

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    return-void
.end method

.method public getActualHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AppOpsInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f1103b0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mContext:Landroid/content/Context;

    const v4, 0x7f1103af

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/AppOpsInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public willBeRemoved()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
