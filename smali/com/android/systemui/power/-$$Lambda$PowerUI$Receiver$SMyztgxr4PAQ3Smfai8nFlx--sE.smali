.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerUI$Receiver;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z

.field private final synthetic f$4:I

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerUI$Receiver;IZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iput p2, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$3:Z

    iput p5, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$4:I

    iput p6, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iget v1, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$1:I

    iget-boolean v2, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$2:Z

    iget-boolean v3, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$3:Z

    iget v4, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$4:I

    iget v5, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$SMyztgxr4PAQ3Smfai8nFlx--sE;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/power/PowerUI$Receiver;->lambda$onReceive$1(Lcom/android/systemui/power/PowerUI$Receiver;IZZII)V

    return-void
.end method
