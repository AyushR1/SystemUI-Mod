.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$2$zESedvrtrUKx0fqXwwlgga5A3WM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$2$zESedvrtrUKx0fqXwwlgga5A3WM;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$2$zESedvrtrUKx0fqXwwlgga5A3WM;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;->lambda$onReceive$0(Lcom/android/systemui/statusbar/KeyguardIndicationController$2;)V

    return-void
.end method
