.class Lcom/android/systemui/statusbar/phone/QuickStepController$2;
.super Landroid/util/FloatProperty;
.source "QuickStepController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickStepController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/systemui/statusbar/phone/QuickStepController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/phone/QuickStepController;)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->access$200(Lcom/android/systemui/statusbar/phone/QuickStepController;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController$2;->get(Lcom/android/systemui/statusbar/phone/QuickStepController;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/systemui/statusbar/phone/QuickStepController;F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/QuickStepController;->access$202(Lcom/android/systemui/statusbar/phone/QuickStepController;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->access$100(Lcom/android/systemui/statusbar/phone/QuickStepController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickStepController$2;->setValue(Lcom/android/systemui/statusbar/phone/QuickStepController;F)V

    return-void
.end method
