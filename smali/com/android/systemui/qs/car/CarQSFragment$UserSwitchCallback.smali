.class public Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;
.super Ljava/lang/Object;
.source "CarQSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/car/CarQSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSwitchCallback"
.end annotation


# instance fields
.field private mShowing:Z

.field final synthetic this$0:Lcom/android/systemui/qs/car/CarQSFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/car/CarQSFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->this$0:Lcom/android/systemui/qs/car/CarQSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->this$0:Lcom/android/systemui/qs/car/CarQSFragment;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/car/CarQSFragment;->access$000(Lcom/android/systemui/qs/car/CarQSFragment;Z)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->mShowing:Z

    return v0
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->this$0:Lcom/android/systemui/qs/car/CarQSFragment;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/car/CarQSFragment;->access$000(Lcom/android/systemui/qs/car/CarQSFragment;Z)V

    return-void
.end method
