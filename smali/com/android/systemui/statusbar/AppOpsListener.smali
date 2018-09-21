.class public Lcom/android/systemui/statusbar/AppOpsListener;
.super Ljava/lang/Object;
.source "AppOpsListener.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# static fields
.field protected static final OPS:[I


# instance fields
.field protected final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private final mFsc:Lcom/android/systemui/ForegroundServiceController;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/AppOpsListener;->OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x18
        0x1b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method public static synthetic lambda$onOpActiveChanged$0(Lcom/android/systemui/statusbar/AppOpsListener;IILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationsForAppOp(IILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onOpActiveChanged(IILjava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/ForegroundServiceController;->onAppOpChanged(IILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;-><init>(Lcom/android/systemui/statusbar/AppOpsListener;IILjava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/AppOpsListener;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/systemui/statusbar/AppOpsListener;->OPS:[I

    invoke-virtual {v0, v1, p0}, Landroid/app/AppOpsManager;->startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    return-void
.end method
