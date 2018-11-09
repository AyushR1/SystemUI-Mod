.class Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;
.super Ljava/lang/Object;
.source "AmbientIndicationContainer.java"

# interfaces
.implements Lcom/android/systemui/AutoReinflateContainer$InflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ambient/play/AmbientIndicationContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientIndicationInflateListener"
.end annotation


# instance fields
.field private mContainer:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/systemui/ambient/play/AmbientIndicationContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/play/AmbientIndicationContainer;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;->this$0:Lcom/android/systemui/ambient/play/AmbientIndicationContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;->mContainer:Ljava/lang/Object;

    return-void
.end method

.method private setAmbientIndicationView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;->mContainer:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer;->updateAmbientIndicationView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onInflated(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ambient/play/AmbientIndicationContainer$AmbientIndicationInflateListener;->setAmbientIndicationView(Landroid/view/View;)V

    return-void
.end method
