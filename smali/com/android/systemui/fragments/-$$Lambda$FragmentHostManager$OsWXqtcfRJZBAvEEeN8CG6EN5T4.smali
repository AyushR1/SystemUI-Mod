.class public final synthetic Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$OsWXqtcfRJZBAvEEeN8CG6EN5T4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$OsWXqtcfRJZBAvEEeN8CG6EN5T4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$OsWXqtcfRJZBAvEEeN8CG6EN5T4;->f$1:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$OsWXqtcfRJZBAvEEeN8CG6EN5T4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/fragments/-$$Lambda$FragmentHostManager$OsWXqtcfRJZBAvEEeN8CG6EN5T4;->f$1:Landroid/app/Fragment;

    check-cast p1, Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->lambda$onFragmentViewCreated$0(Ljava/lang/String;Landroid/app/Fragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    return-void
.end method
