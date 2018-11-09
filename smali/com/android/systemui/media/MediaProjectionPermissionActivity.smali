.class public Lcom/android/systemui/media/MediaProjectionPermissionActivity;
.super Landroid/app/Activity;
.source "MediaProjectionPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mPackageName:Ljava/lang/String;

.field private mPermanentGrant:Z

.field private mService:Landroid/media/projection/IMediaProjectionManager;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MediaProjectionPermissionActivity"

    const-string v2, "Error granting projection permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    goto :goto_2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    nop

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v3, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v5, v0

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget v6, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v7, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_1

    iget v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v7, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v0, v7, v4}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_1
    nop

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_4

    invoke-virtual {v7, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->getType(I)I

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_3

    const/16 v12, 0xf

    if-eq v11, v12, :cond_3

    const/16 v12, 0xe

    if-ne v11, v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v9, v12

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\u2026"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v7, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    :cond_5
    const/high16 v10, 0x43fa0000    # 500.0f

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v0, v10, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f11035e

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v11, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_6

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v15, v16

    invoke-virtual {v14, v6, v15, v13, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f11035d

    invoke-virtual {v4, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0d013e

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->create()V

    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    const v6, 0x7f0a029e

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d3

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    const/high16 v6, 0x80000

    invoke-virtual {v4, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object v6, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void

    :catch_0
    move-exception v0

    const-string v4, "MediaProjectionPermissionActivity"

    const-string v6, "Error checking projection permissions"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void

    :catch_1
    move-exception v0

    const-string v4, "MediaProjectionPermissionActivity"

    const-string v5, "unable to look up package name"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
