.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$6-LaNwUHcRc1UGw8s8y1YCsTRbQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/TunerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$6-LaNwUHcRc1UGw8s8y1YCsTRbQ;->f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$TunerServiceImpl$6-LaNwUHcRc1UGw8s8y1YCsTRbQ;->f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->lambda$upgradeTuner$0(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    return-void
.end method
