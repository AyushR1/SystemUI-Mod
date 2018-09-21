.class public final synthetic Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$VfeT6HygUNYTqb-KGjnpPirW-Z4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$VfeT6HygUNYTqb-KGjnpPirW-Z4;->f$0:Z

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$VfeT6HygUNYTqb-KGjnpPirW-Z4;->f$1:Z

    iput p3, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$VfeT6HygUNYTqb-KGjnpPirW-Z4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$VfeT6HygUNYTqb-KGjnpPirW-Z4;->f$0:Z

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$VfeT6HygUNYTqb-KGjnpPirW-Z4;->f$1:Z

    iget v2, p0, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$VfeT6HygUNYTqb-KGjnpPirW-Z4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->lambda$updateActivityLockScreenState$3(ZZI)V

    return-void
.end method
