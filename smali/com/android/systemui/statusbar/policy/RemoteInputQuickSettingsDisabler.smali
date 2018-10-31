.class public Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;
.super Ljava/lang/Object;
.source "RemoteInputQuickSettingsDisabler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastOrientation:I

.field mRemoteInputActive:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field misLandscape:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private recomputeDisableFlags()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(Z)V

    return-void
.end method


# virtual methods
.method public adjustDisableFlags(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->misLandscape:Z

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    return p1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->misLandscape:Z

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->recomputeDisableFlags()V

    :cond_1
    return-void
.end method

.method public setRemoteInputActive(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->recomputeDisableFlags()V

    :cond_0
    return-void
.end method
