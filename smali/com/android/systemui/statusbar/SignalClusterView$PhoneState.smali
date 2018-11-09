.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field public mActivityIn:Z

.field public mActivityOut:Z

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileActivityIn:Landroid/widget/ImageView;

.field private mMobileActivityOut:Landroid/widget/ImageView;

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingSpace:Landroid/view/View;

.field private mMobileSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field public mRoaming:Z

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00ce

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public apply(Z)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1400(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1500(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1600(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v3

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SignalClusterView"

    const-string v3, "mobile: %s sig=%d typ=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v5, :cond_4

    const-string v5, "VISIBLE"

    goto :goto_2

    :cond_4
    const-string v5, "GONE"

    :goto_2
    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingSpace:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mRoaming:Z

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_5

    :cond_8
    move v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    if-eqz v3, :cond_a

    move v1, v2

    nop

    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v0
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/graph/SignalDrawable;->setDarkIntensity(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1700(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1700(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1700(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$1700(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a01ff

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    const v0, 0x7f0a0201

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    const v0, 0x7f0a01fd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    const v0, 0x7f0a01fe

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingSpace:Landroid/view/View;

    const v0, 0x7f0a01fb

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    const v0, 0x7f0a01fc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
