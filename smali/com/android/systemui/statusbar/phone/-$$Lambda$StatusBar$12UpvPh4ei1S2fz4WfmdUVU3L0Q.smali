.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$12UpvPh4ei1S2fz4WfmdUVU3L0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$12UpvPh4ei1S2fz4WfmdUVU3L0Q;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$12UpvPh4ei1S2fz4WfmdUVU3L0Q;->f$1:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$12UpvPh4ei1S2fz4WfmdUVU3L0Q;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$12UpvPh4ei1S2fz4WfmdUVU3L0Q;->f$1:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$31(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/PendingIntent;)V

    return-void
.end method
