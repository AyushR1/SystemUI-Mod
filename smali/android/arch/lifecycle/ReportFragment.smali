.class public Landroid/arch/lifecycle/ReportFragment;
.super Landroid/app/Fragment;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;
    }
.end annotation


# instance fields
.field private mProcessListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3

    invoke-virtual {p0}, Landroid/arch/lifecycle/ReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroid/arch/lifecycle/LifecycleRegistryOwner;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/arch/lifecycle/LifecycleRegistryOwner;

    invoke-interface {v1}, Landroid/arch/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void

    :cond_0
    instance-of v1, v0, Landroid/arch/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v1

    instance-of v2, v1, Landroid/arch/lifecycle/LifecycleRegistry;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-virtual {v2, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_1
    return-void
.end method

.method private dispatchCreate(Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;->onCreate()V

    :cond_0
    return-void
.end method

.method private dispatchResume(Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;->onResume()V

    :cond_0
    return-void
.end method

.method private dispatchStart(Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;->onStart()V

    :cond_0
    return-void
.end method

.method public static injectIfNeededIn(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroid/arch/lifecycle/ReportFragment;

    invoke-direct {v2}, Landroid/arch/lifecycle/ReportFragment;-><init>()V

    const-string v3, "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->mProcessListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatchCreate(Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->mProcessListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->mProcessListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatchResume(Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/arch/lifecycle/ReportFragment;->mProcessListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatchStart(Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;)V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ReportFragment;->dispatch(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
