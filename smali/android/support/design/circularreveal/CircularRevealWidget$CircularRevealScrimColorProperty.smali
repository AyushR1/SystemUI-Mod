.class public Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;
.super Landroid/util/Property;
.source "CircularRevealWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealScrimColorProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/design/circularreveal/CircularRevealWidget;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/design/circularreveal/CircularRevealWidget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    const-string v1, "circularRevealScrimColor"

    invoke-direct {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/design/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;
    .locals 1

    invoke-interface {p1}, Landroid/support/design/circularreveal/CircularRevealWidget;->getCircularRevealScrimColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/support/design/circularreveal/CircularRevealWidget;

    invoke-virtual {p0, p1}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->get(Landroid/support/design/circularreveal/CircularRevealWidget;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/design/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/design/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/design/circularreveal/CircularRevealWidget;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->set(Landroid/support/design/circularreveal/CircularRevealWidget;Ljava/lang/Integer;)V

    return-void
.end method
