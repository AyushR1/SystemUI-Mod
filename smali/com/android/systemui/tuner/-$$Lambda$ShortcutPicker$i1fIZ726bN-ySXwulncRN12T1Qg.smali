.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$i1fIZ726bN-ySXwulncRN12T1Qg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$i1fIZ726bN-ySXwulncRN12T1Qg;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$i1fIZ726bN-ySXwulncRN12T1Qg;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/tuner/SelectablePreference;

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/ShortcutPicker;->lambda$onTuningChanged$2(Ljava/lang/String;Lcom/android/systemui/tuner/SelectablePreference;)V

    return-void
.end method
