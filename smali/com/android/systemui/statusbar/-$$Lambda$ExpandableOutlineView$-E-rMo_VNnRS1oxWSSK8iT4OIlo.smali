.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$ExpandableOutlineView$-E-rMo_VNnRS1oxWSSK8iT4OIlo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableOutlineView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->lambda$-E-rMo_VNnRS1oxWSSK8iT4OIlo(Lcom/android/systemui/statusbar/ExpandableOutlineView;F)V

    return-void
.end method
