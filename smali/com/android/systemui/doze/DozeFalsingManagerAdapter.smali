.class public Lcom/android/systemui/doze/DozeFalsingManagerAdapter;
.super Ljava/lang/Object;
.source "DozeFalsingManagerAdapter.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field private final mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    return-void
.end method

.method private isAodMode(Lcom/android/systemui/doze/DozeMachine$State;)Z
    .locals 2

    sget-object v0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;->isAodMode(Lcom/android/systemui/doze/DozeMachine$State;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingManager;->setShowingAod(Z)V

    return-void
.end method
