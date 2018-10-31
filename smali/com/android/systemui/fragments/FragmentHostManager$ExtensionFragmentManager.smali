.class Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;
.super Ljava/lang/Object;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtensionFragmentManager"
.end annotation


# instance fields
.field private final mExtensionLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentHostManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/fragments/FragmentHostManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    return-void
.end method

.method private reloadFragments()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->access$700(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->access$800(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {v0, p2, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/plugins/Plugin;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/plugins/Plugin;

    iget-object v3, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->access$200(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p1, p2, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public setCurrentExtension(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p5, p4, v1}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->reloadFragments()V

    return-void
.end method
