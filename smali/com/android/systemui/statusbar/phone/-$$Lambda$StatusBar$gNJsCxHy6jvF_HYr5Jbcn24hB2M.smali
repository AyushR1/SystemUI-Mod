.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gNJsCxHy6jvF_HYr5Jbcn24hB2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gNJsCxHy6jvF_HYr5Jbcn24hB2M;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$gNJsCxHy6jvF_HYr5Jbcn24hB2M;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$51(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
