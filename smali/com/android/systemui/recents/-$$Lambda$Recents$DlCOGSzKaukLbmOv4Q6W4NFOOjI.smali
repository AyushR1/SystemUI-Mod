.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$Recents$DlCOGSzKaukLbmOv4Q6W4NFOOjI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$DlCOGSzKaukLbmOv4Q6W4NFOOjI;->f$0:Lcom/android/systemui/recents/Recents;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$Recents$DlCOGSzKaukLbmOv4Q6W4NFOOjI;->f$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->lambda$toggleRecentApps$0(Lcom/android/systemui/recents/Recents;)V

    return-void
.end method
