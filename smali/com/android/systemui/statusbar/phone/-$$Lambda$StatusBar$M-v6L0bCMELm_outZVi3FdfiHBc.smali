.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$M-v6L0bCMELm_outZVi3FdfiHBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$M-v6L0bCMELm_outZVi3FdfiHBc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$M-v6L0bCMELm_outZVi3FdfiHBc;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$M-v6L0bCMELm_outZVi3FdfiHBc;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$M-v6L0bCMELm_outZVi3FdfiHBc;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$M-v6L0bCMELm_outZVi3FdfiHBc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$maybeEscalateHeadsUp$20(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method
