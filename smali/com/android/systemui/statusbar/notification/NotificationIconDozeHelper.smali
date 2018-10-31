.class public Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
.super Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.source "NotificationIconDozeHelper.java"


# instance fields
.field private mColor:I

.field private final mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mImageDarkAlpha:I

.field private final mImageDarkColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkColor:I

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    return-void
.end method
