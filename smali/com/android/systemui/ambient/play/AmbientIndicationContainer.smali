.class public Lcom/android/systemui/ambient/play/AmbientIndicationContainer;
.super Lcom/android/systemui/AutoReinflateContainer;
.source "AmbientIndicationContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;
    }
.end annotation


# instance fields
.field private mAmbientIndication:Landroid/view/View;

.field private mArtist:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mSong:Ljava/lang/String;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/AutoReinflateContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hideIndication()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public initializeView(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;-><init>(Lcom/android/systemui/ambient/play/AmbientIndicationContainer;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->addInflateListener(Lcom/android/systemui/AutoReinflateContainer$InflateListener;)V

    return-void
.end method

.method public setIndication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mSong:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mArtist:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mSong:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->hideIndication()V

    :cond_1
    return-void
.end method

.method public showIndication()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mSong:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mSong:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mArtist:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateAmbientIndicationView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mAmbientIndication:Landroid/view/View;

    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mText:Landroid/widget/TextView;

    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mSong:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->mArtist:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->setIndication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
