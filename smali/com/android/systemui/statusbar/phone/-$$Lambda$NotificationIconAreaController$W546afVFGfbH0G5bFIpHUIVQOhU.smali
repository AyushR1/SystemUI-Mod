.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$W546afVFGfbH0G5bFIpHUIVQOhU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$W546afVFGfbH0G5bFIpHUIVQOhU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$W546afVFGfbH0G5bFIpHUIVQOhU;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$W546afVFGfbH0G5bFIpHUIVQOhU;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$W546afVFGfbH0G5bFIpHUIVQOhU;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$W546afVFGfbH0G5bFIpHUIVQOhU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateShelfIcons$0(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    return-object p1
.end method
