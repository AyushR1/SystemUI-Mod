.class public Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.super Ljava/lang/Object;
.source "DozeMachine.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    return-void
.end method

.method public requestWakeUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeMachine$Service;->requestWakeUp()V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    return-void
.end method
