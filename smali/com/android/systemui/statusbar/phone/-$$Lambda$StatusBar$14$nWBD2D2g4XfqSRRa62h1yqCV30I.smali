.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$14$nWBD2D2g4XfqSRRa62h1yqCV30I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar$14;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$14$nWBD2D2g4XfqSRRa62h1yqCV30I;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$14;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$14$nWBD2D2g4XfqSRRa62h1yqCV30I;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$14;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$14;->lambda$onFinishedGoingToSleep$0(Lcom/android/systemui/statusbar/phone/StatusBar$14;)V

    return-void
.end method
