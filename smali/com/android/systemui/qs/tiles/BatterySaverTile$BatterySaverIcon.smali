.class public Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "BatterySaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatterySaverIcon"
.end annotation


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;->mState:I

    return p1
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;

    iget v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;->mState:I

    invoke-static {p1, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;-><init>(Landroid/content/Context;I)V

    iget v1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverIcon;->mState:I

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->access$102(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatterySaverDrawable;->setPadding(IIII)V

    return-object v0
.end method
