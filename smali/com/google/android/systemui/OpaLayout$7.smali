.class Lcom/google/android/systemui/OpaLayout$7;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/OpaLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$7;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$7;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v0}, Lcom/google/android/systemui/OpaLayout;->access$000(Lcom/google/android/systemui/OpaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$7;->this$0:Lcom/google/android/systemui/OpaLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/systemui/OpaLayout;->access$102(Lcom/google/android/systemui/OpaLayout;Z)Z

    :cond_0
    return-void
.end method
