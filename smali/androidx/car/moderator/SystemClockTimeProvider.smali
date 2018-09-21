.class Landroidx/car/moderator/SystemClockTimeProvider;
.super Ljava/lang/Object;
.source "SystemClockTimeProvider.java"

# interfaces
.implements Landroidx/car/moderator/ContentRateLimiter$ElapsedTimeProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
