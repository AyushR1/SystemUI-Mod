.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Dvv0QT1UeQCNr4L03A_s1iD1MoU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Dvv0QT1UeQCNr4L03A_s1iD1MoU;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Dvv0QT1UeQCNr4L03A_s1iD1MoU;->f$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Dvv0QT1UeQCNr4L03A_s1iD1MoU;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Dvv0QT1UeQCNr4L03A_s1iD1MoU;->f$1:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$handleRemoteViewClick$37(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z

    move-result v0

    return v0
.end method
