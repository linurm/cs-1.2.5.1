.class Landroid/support/v4/net/TrafficStatsCompatIcs;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static clearThreadStatsTag()V
    .registers 0

    #@0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    #@3
    return-void
.end method

.method public static getThreadStatsTag()I
    .registers 1

    #@0
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static incrementOperationCount(I)V
    .registers 1

    #@0
    invoke-static {p0}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    #@3
    return-void
.end method

.method public static incrementOperationCount(II)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    #@3
    return-void
.end method

.method public static setThreadStatsTag(I)V
    .registers 1

    #@0
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    #@3
    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    #@3
    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    #@3
    return-void
.end method
