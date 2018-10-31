.class public final Lcom/android/systemui/ForegroundServicesDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ForegroundServicesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

.field private mAppClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPackages:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Lcom/android/systemui/ForegroundServicesDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ForegroundServicesDialog$1;-><init>(Lcom/android/systemui/ForegroundServicesDialog;)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAppClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ForegroundServicesDialog;)Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/Dependency;->initDependencies(Landroid/content/Context;)V

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAppClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0068

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const v1, 0x10401c5

    invoke-virtual {p0, v1}, Lcom/android/systemui/ForegroundServicesDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/ForegroundServicesDialog;->updateApps(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "ForegroundServicesDialog"

    const-string v2, "No packages supplied"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->setupAlert()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/ForegroundServicesDialog;->updateApps(Landroid/content/Intent;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x3b0

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(I)V

    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x3b0

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    :cond_0
    return-void
.end method

.method updateApps(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "packages"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog;->mAdapter:Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    iget-object v1, p0, Lcom/android/systemui/ForegroundServicesDialog;->mPackages:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->setPackages([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
