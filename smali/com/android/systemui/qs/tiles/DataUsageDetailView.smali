.class public Lcom/android/systemui/qs/tiles/DataUsageDetailView;
.super Landroid/widget/LinearLayout;
.source "DataUsageDetailView.java"


# instance fields
.field private final FORMAT:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private formatBytes(J)Ljava/lang/String;
    .locals 9

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v2, v0

    const-wide/high16 v4, 0x4199000000000000L    # 1.048576E8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    long-to-double v2, v0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    const-string v4, "GB"

    :goto_0
    goto :goto_1

    :cond_0
    long-to-double v2, v0

    const-wide/high16 v4, 0x40f9000000000000L    # 102400.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    long-to-double v2, v0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    const-string v4, "MB"

    goto :goto_0

    :cond_1
    long-to-double v2, v0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    const-string v4, "KB"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->FORMAT:Ljava/text/DecimalFormat;

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_2

    const/4 v7, -0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :goto_2
    int-to-double v7, v7

    mul-double/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public bind(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-wide v5, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v7, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v5, v5, v7

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ltz v5, :cond_2

    iget-wide v10, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v5, v10, v6

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v10, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v5, v10, v12

    const v10, 0x7f110434

    const v11, 0x7f110436

    if-gtz v5, :cond_1

    const v5, 0x7f110439

    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long/2addr v12, v14

    new-array v14, v8, [Ljava/lang/Object;

    iget-wide v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v9

    invoke-virtual {v2, v11, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v2, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v5, 0x7f110438

    iget-wide v6, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    sub-long v12, v6, v12

    new-array v6, v8, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v11, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v2, v10, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    const v10, 0x1010543

    invoke-static {v7, v10}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    :cond_2
    :goto_0
    const v5, 0x7f110435

    iget-wide v12, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    const v6, 0x7f110437

    new-array v7, v8, [Ljava/lang/Object;

    iget-wide v10, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-direct {v0, v10, v11}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v3, :cond_3

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    :cond_3
    const v7, 0x1020016

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    const v10, 0x7f0a0388

    invoke-virtual {v0, v10}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-direct {v0, v12, v13}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->formatBytes(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v11, 0x7f0a0384

    invoke-virtual {v0, v11}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/DataUsageGraph;

    iget-wide v14, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    iget-wide v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    move-object/from16 v25, v2

    move/from16 v26, v3

    iget-wide v2, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-object/from16 v17, v11

    move-wide/from16 v18, v14

    move-wide/from16 v20, v8

    move-wide/from16 v22, v2

    invoke-virtual/range {v17 .. v23}, Lcom/android/systemui/qs/DataUsageGraph;->setLevels(JJJ)V

    const v2, 0x7f0a0383

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0387

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a0386

    invoke-virtual {v0, v8}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const/16 v14, 0x8

    :goto_2
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0a0385

    invoke-virtual {v0, v14}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    const/16 v15, 0x8

    :goto_3
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v27, v10

    iget-wide v9, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v15, 0x0

    cmp-long v9, v9, v15

    if-gtz v9, :cond_7

    iget-wide v9, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    cmp-long v9, v9, v15

    if-lez v9, :cond_6

    goto :goto_4

    :cond_6
    const/16 v24, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v24, 0x1

    :goto_5
    move/from16 v9, v24

    if-eqz v9, :cond_8

    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    const/16 v10, 0x8

    :goto_6
    invoke-virtual {v11, v10}, Lcom/android/systemui/qs/DataUsageGraph;->setVisibility(I)V

    if-nez v9, :cond_9

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f070354

    const v1, 0x1020016

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v1, 0x7f0a0388

    const v2, 0x7f070355

    invoke-static {p0, v1, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v1, 0x7f0a0383

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v1, 0x7f0a0386

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v1, 0x7f0a0387

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    const v1, 0x7f0a0385

    invoke-static {p0, v1, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    return-void
.end method
