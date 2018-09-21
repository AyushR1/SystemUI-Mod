.class public Landroid/support/v17/leanback/widget/picker/DatePicker;
.super Landroid/support/v17/leanback/widget/picker/Picker;
.source "DatePicker.java"


# static fields
.field private static final DATE_FIELDS:[I


# instance fields
.field mColDayIndex:I

.field mColMonthIndex:I

.field mColYearIndex:I

.field mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

.field mCurrentDate:Ljava/util/Calendar;

.field final mDateFormat:Ljava/text/DateFormat;

.field private mDatePickerFormat:Ljava/lang/String;

.field mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mMaxDate:Ljava/util/Calendar;

.field mMinDate:Ljava/util/Calendar;

.field mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field mTempDate:Ljava/util/Calendar;

.field mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateCurrentLocale()V

    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbDatePicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_android_minDate:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_android_maxDate:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x76c

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x834

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/Calendar;->set(III)V

    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbDatePicker_datePickerFormat:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    move-object v3, v4

    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    return-void
.end method

.method private static isAnyOf(C[C)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-char v2, p1, v1

    if-ne p0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DatePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private setDate(III)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateCurrentLocale()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getDateConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V

    :cond_0
    return-void
.end method

.method private static updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMaxValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateSpinners(Z)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker$1;-><init>(Landroid/support/v17/leanback/widget/picker/DatePicker;Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method extractSeparators()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getBestYearMonthDayPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x6

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    move v5, v3

    move v3, v6

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    goto :goto_2

    :cond_0
    const/16 v9, 0x27

    if-ne v8, v9, :cond_2

    if-nez v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-static {v8, v4}, Landroid/support/v17/leanback/widget/picker/DatePicker;->isAnyOf(C[C)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eq v8, v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    move v5, v8

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :array_0
    .array-data 2
        0x59s
        0x79s
        0x4ds
        0x6ds
        0x44s
        0x64s
    .end array-data
.end method

.method getBestYearMonthDayPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Landroid/support/v17/leanback/widget/picker/PickerUtility;->SUPPORTS_BEST_DATE_TIME_PATTERN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "MM/dd/yyyy"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MM/dd/yyyy"

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public final onColumnValueChanged(II)V
    .locals 6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCurrentValue()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v5, p2, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v5, p2, v0

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int v5, p2, v0

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDate(III)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateSpinners(Z)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setDatePickerFormat(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->extractSeparators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_9

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setSeparators(Ljava/util/List;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x44

    if-eq v5, v6, :cond_6

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_4

    const/16 v6, 0x59

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v5, :cond_2

    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mYearColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const-string v6, "%d"

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setLabelFormat(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v5, :cond_5

    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMonthColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v6, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v5, :cond_7

    new-instance v5, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v5}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mDayColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const-string v6, "%02d"

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setLabelFormat(Ljava/lang/String;)V

    iput v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    nop

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "datePicker format error"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumns(Ljava/util/List;)V

    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateSpinners(Z)V

    return-void

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Separators size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " must equal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " the size of datePickerFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " + 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method updateSpinnersImpl(Z)V
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColDayIndex:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mColYearIndex:I

    const/4 v4, 0x2

    aput v1, v0, v4

    const/4 v1, 0x1

    const/4 v4, 0x1

    sget-object v5, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    :goto_0
    if-ltz v5, :cond_6

    const/4 v6, 0x0

    aget v7, v0, v5

    if-gez v7, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v7, Landroid/support/v17/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    aget v7, v7, v5

    aget v8, v0, v5

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getColumnAt(I)Landroid/support/v17/leanback/widget/picker/PickerColumn;

    move-result-object v8

    if-eqz v1, :cond_1

    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    goto :goto_1

    :cond_1
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v9

    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    :goto_1
    if-eqz v4, :cond_2

    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    goto :goto_2

    :cond_2
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    invoke-static {v8, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    move-result v9

    or-int/2addr v6, v9

    :goto_2
    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    and-int/2addr v1, v9

    iget-object v9, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    and-int/2addr v4, v9

    if-eqz v6, :cond_5

    aget v9, v0, v5

    invoke-virtual {p0, v9, v8}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V

    :cond_5
    aget v9, v0, v5

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {p0, v9, v10, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumnValue(IIZ)V

    :goto_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method
