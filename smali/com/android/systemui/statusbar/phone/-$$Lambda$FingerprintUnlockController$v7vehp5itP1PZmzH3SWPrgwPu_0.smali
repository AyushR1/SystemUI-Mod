.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$FingerprintUnlockController$v7vehp5itP1PZmzH3SWPrgwPu_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$FingerprintUnlockController$v7vehp5itP1PZmzH3SWPrgwPu_0;->f$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$FingerprintUnlockController$v7vehp5itP1PZmzH3SWPrgwPu_0;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$FingerprintUnlockController$v7vehp5itP1PZmzH3SWPrgwPu_0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$FingerprintUnlockController$v7vehp5itP1PZmzH3SWPrgwPu_0;->f$0:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$FingerprintUnlockController$v7vehp5itP1PZmzH3SWPrgwPu_0;->f$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$FingerprintUnlockController$v7vehp5itP1PZmzH3SWPrgwPu_0;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->lambda$startWakeAndUnlock$0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;ZZ)V

    return-void
.end method
