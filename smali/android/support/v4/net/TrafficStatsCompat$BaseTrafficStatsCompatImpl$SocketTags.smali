.class Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketTags"
.end annotation


# instance fields
.field public statsTag:I


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;->statsTag:I

    #@6
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>()V

    #@3
    return-void
.end method
