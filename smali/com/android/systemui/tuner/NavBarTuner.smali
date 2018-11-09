.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "NavBarTuner.java"


# static fields
.field private static final ICONS:[[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTunables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    return-void

    :array_0
    .array-data 4
        0x7f080257
        0x7f110559
    .end array-data

    :array_1
    .array-data 4
        0x7f08013a
        0x7f110567
    .end array-data

    :array_2
    .array-data 4
        0x7f080277
        0x7f110564
    .end array-data

    :array_3
    .array-data 4
        0x7f0801a3
        0x7f110561
    .end array-data

    :array_4
    .array-data 4
        0x7f080279
        0x7f110568
    .end array-data

    :array_5
    .array-data 4
        0x7f0801b3
        0x7f110563
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    return-void
.end method

.method private varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keycode_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v8}, Lcom/android/systemui/tuner/NavBarTuner;->setupIcons(Landroid/support/v7/preference/ListPreference;)V

    new-instance v9, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$OO9apf0OQ_k5f52-B3z0sPWxq4Y;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$OO9apf0OQ_k5f52-B3z0sPWxq4Y;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v9, v1}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v9, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$addObFvLTzuE04K9maj0keVenxg;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    invoke-virtual {v0, v9}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v10, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$L8cT3y_Xey3yV0gzNMgaCqxduDs;

    move-object v1, v10

    move-object v3, v7

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$L8cT3y_Xey3yV0gzNMgaCqxduDs;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;)V

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private bindLayout(Landroid/support/v7/preference/ListPreference;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$S2jLo9__CXt1xH-Y0l__zpA7S6Y;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/ListPreference;)V

    const-string v1, "sysui_nav_bar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/tuner/NavBarTuner;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$xKs-3UbChwmRyuUfQ6nrgLk_wz4;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$bindButton$4(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V
    .locals 6

    move-object v0, p1

    if-nez v0, :cond_0

    move-object v0, p2

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "key"

    invoke-virtual {p3, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p4, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {p5, v4}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    invoke-virtual {p4, v4}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p5, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    invoke-virtual {p4, v2}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$bindButton$5(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$SHMBahM6FQXBhKLgycxQEP9MKcg;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$bindButton$6(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    invoke-direct {p0, p4}, Lcom/android/systemui/tuner/NavBarTuner;->updateSummary(Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method public static synthetic lambda$bindButton$7(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$LY1SqGQukLZwVkxUGh5npeYUH_E;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$bindButton$8(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v0, 0x42

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p3, p4, p2, p5}, Lcom/android/systemui/tuner/NavBarTuner;->setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method public static synthetic lambda$bindButton$9(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 10

    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v9, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$f5iTNvW7hFZFMmuMznH0p1eCwlI;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$bindLayout$1(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V
    .locals 1

    move-object v0, p0

    if-nez v0, :cond_0

    const-string v0, "default"

    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$bindLayout$2(Lcom/android/systemui/tuner/NavBarTuner;Landroid/support/v7/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;

    invoke-direct {v1, p3, p1}, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$4yjdjEjuBBM9Uve2djbFEJblmmM;-><init>(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$bindLayout$3(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "sysui_nav_bar"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$onDestroy$0(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 1

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private setValue(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;)V
    .locals 5

    invoke-virtual {p2}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    :try_start_0
    invoke-virtual {p3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupIcons(Landroid/support/v7/preference/ListPreference;)V
    .locals 11

    sget-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    nop

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    sget-object v6, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v6, v6

    if-ge v5, v6, :cond_0

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v8, v8, v5

    aget v8, v8, v4

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v7, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v7, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string v9, "  "

    invoke-virtual {v6, v9, v8, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string v9, " "

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v5

    aget v9, v9, v3

    invoke-virtual {p0, v9}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aput-object v6, v0, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v10, v10, v5

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/ListPreference;)V
    .locals 10

    const/high16 v0, 0x41600000    # 14.0f

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v1, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v6, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, v6, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string v8, "  "

    invoke-virtual {v5, v8, v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v8, v3

    :goto_0
    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    array-length v9, v9

    if-ge v8, v9, :cond_1

    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v8

    aget v9, v9, v3

    if-ne v9, v4, :cond_0

    sget-object v9, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v9, v9, v8

    aget v9, v9, v2

    invoke-virtual {p0, v9}, Lcom/android/systemui/tuner/NavBarTuner;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NavButton"

    const-string v2, "Problem with summary"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/NavBarTuner;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    invoke-super {p0, p1}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f150003

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->addPreferencesFromResource(I)V

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/NavBarTuner;->bindLayout(Landroid/support/v7/preference/ListPreference;)V

    const-string v0, "sysui_nav_bar_left"

    const-string v1, "space"

    const-string v2, "left"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sysui_nav_bar_right"

    const-string v1, "menu_ime"

    const-string v2, "right"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$tsKQ8HfwaDSvc3iDCsgHsW954hc;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
