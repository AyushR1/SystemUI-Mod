.class public Lcom/android/systemui/classifier/HumanInteractionClassifier;
.super Lcom/android/systemui/classifier/Classifier;
.source "HumanInteractionClassifier.java"


# static fields
.field private static sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;


# instance fields
.field private final mBufferedEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentType:I

.field private final mDpi:F

.field private mEnableClassifier:Z

.field private final mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/systemui/classifier/Classifier;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    new-instance v2, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;-><init>(Lcom/android/systemui/classifier/HumanInteractionClassifier;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v2, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    new-instance v3, Lcom/android/systemui/classifier/ClassifierData;

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    invoke-direct {v3, v4}, Lcom/android/systemui/classifier/ClassifierData;-><init>(F)V

    iput-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    new-instance v3, Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-direct {v3}, Lcom/android/systemui/classifier/HistoryEvaluator;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/android/systemui/classifier/StrokeClassifier;

    new-instance v4, Lcom/android/systemui/classifier/AnglesClassifier;

    iget-object v5, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v5}, Lcom/android/systemui/classifier/AnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v4, v3, v0

    new-instance v4, Lcom/android/systemui/classifier/SpeedClassifier;

    iget-object v5, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v5}, Lcom/android/systemui/classifier/SpeedClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/systemui/classifier/DurationCountClassifier;

    iget-object v6, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v6}, Lcom/android/systemui/classifier/DurationCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-instance v4, Lcom/android/systemui/classifier/EndPointRatioClassifier;

    iget-object v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v7}, Lcom/android/systemui/classifier/EndPointRatioClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v7, 0x3

    aput-object v4, v3, v7

    new-instance v4, Lcom/android/systemui/classifier/EndPointLengthClassifier;

    iget-object v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v7}, Lcom/android/systemui/classifier/EndPointLengthClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v7, 0x4

    aput-object v4, v3, v7

    new-instance v4, Lcom/android/systemui/classifier/AccelerationClassifier;

    iget-object v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v7}, Lcom/android/systemui/classifier/AccelerationClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v7, 0x5

    aput-object v4, v3, v7

    new-instance v4, Lcom/android/systemui/classifier/SpeedAnglesClassifier;

    iget-object v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v7}, Lcom/android/systemui/classifier/SpeedAnglesClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/4 v7, 0x6

    aput-object v4, v3, v7

    new-instance v4, Lcom/android/systemui/classifier/LengthCountClassifier;

    iget-object v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v4, v7}, Lcom/android/systemui/classifier/LengthCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v4, v3, v1

    new-instance v1, Lcom/android/systemui/classifier/DirectionClassifier;

    iget-object v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v1, v4}, Lcom/android/systemui/classifier/DirectionClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    const/16 v4, 0x8

    aput-object v1, v3, v4

    iput-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    new-array v1, v6, [Lcom/android/systemui/classifier/GestureClassifier;

    new-instance v3, Lcom/android/systemui/classifier/PointerCountClassifier;

    iget-object v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v3, v4}, Lcom/android/systemui/classifier/PointerCountClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v3, v1, v0

    new-instance v3, Lcom/android/systemui/classifier/ProximityClassifier;

    iget-object v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-direct {v3, v4}, Lcom/android/systemui/classifier/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/ClassifierData;)V

    aput-object v3, v1, v5

    iput-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "HIC_enable"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/HumanInteractionClassifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->updateConfiguration()V

    return-void
.end method

.method private addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/ClassifierData;->update(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lcom/android/systemui/classifier/StrokeClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lcom/android/systemui/classifier/GestureClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ge v1, v0, :cond_7

    iget-object v5, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v5}, Lcom/android/systemui/classifier/ClassifierData;->getEndingStrokes()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/classifier/Stroke;

    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v7, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "stroke"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    nop

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v8, v7

    move v9, v6

    move v6, v2

    :goto_3
    if-ge v6, v8, :cond_5

    aget-object v10, v7, v6

    iget v11, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v10, v11, v5}, Lcom/android/systemui/classifier/StrokeClassifier;->getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F

    move-result v11

    sget-boolean v12, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v12, :cond_4

    invoke-virtual {v10}, Lcom/android/systemui/classifier/StrokeClassifier;->getTag()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v13, v11, v3

    if-ltz v13, :cond_3

    move-object v13, v12

    goto :goto_4

    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4
    add-float/2addr v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    sget-boolean v3, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v3, :cond_6

    const-string v3, " addTouchEvent"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v3, v9}, Lcom/android/systemui/classifier/HistoryEvaluator;->addStroke(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_8

    const/4 v5, 0x3

    if-ne v1, v5, :cond_e

    :cond_8
    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v6, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "gesture"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    nop

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v7, v6

    :goto_5
    if-ge v2, v7, :cond_c

    aget-object v8, v6, v2

    iget v9, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    invoke-virtual {v8, v9}, Lcom/android/systemui/classifier/GestureClassifier;->getFalseTouchEvaluation(I)F

    move-result v9

    sget-boolean v10, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v10, :cond_b

    invoke-virtual {v8}, Lcom/android/systemui/classifier/GestureClassifier;->getTag()Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v11, v9, v3

    if-ltz v11, :cond_a

    move-object v11, v10

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_b
    add-float/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    sget-boolean v2, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v2, :cond_d

    const-string v2, " addTouchEvent"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v2, v5}, Lcom/android/systemui/classifier/HistoryEvaluator;->addGesture(F)V

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {v2, p1}, Lcom/android/systemui/classifier/ClassifierData;->cleanUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;
    .locals 1

    sget-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    :cond_0
    sget-object v0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->sInstance:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    return-object v0
.end method

.method private updateConfiguration()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HIC_enable"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HIC"

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    return v0
.end method

.method public isFalseTouch()Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mHistoryEvaluator:Lcom/android/systemui/classifier/HistoryEvaluator;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HistoryEvaluator;->getEvaluation()F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sget-boolean v4, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v4, :cond_2

    const-string v4, "isFalseTouch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    move v1, v3

    nop

    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mStrokeClassifiers:[Lcom/android/systemui/classifier/StrokeClassifier;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mGestureClassifiers:[Lcom/android/systemui/classifier/GestureClassifier;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/android/systemui/classifier/Classifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mEnableClassifier:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    :goto_0
    new-instance v1, Lcom/android/systemui/classifier/Point;

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mDpi:F

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mBufferedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    :cond_2
    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->addTouchEvent(Landroid/view/MotionEvent;)V

    :goto_1
    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier;->mCurrentType:I

    return-void
.end method
