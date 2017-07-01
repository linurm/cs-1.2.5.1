.class Lcom/google/android/vending/expansion/downloader/SystemFacade;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    #@5
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    #@7
    const-string v1, "notification"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/NotificationManager;

    #@f
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    #@11
    return-void
.end method


# virtual methods
.method public cancelAllNotifications()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    #@5
    return-void
.end method

.method public cancelNotification(J)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    long-to-int v1, p1

    #@3
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    #@6
    return-void
.end method

.method public currentTimeMillis()J
    .registers 3

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getActiveNetworkType()Ljava/lang/Integer;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    #@3
    const-string v2, "connectivity"

    #@5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/ConnectivityManager;

    #@b
    if-nez v0, :cond_16

    #@d
    const-string v0, "LVLDL"

    #@f
    const-string v2, "couldn\'t get connectivity manager"

    #@11
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    move-object v0, v1

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@19
    move-result-object v0

    #@1a
    if-nez v0, :cond_1e

    #@1c
    move-object v0, v1

    #@1d
    goto :goto_15

    #@1e
    :cond_1e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@21
    move-result v0

    #@22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v0

    #@26
    goto :goto_15
.end method

.method public getMaxBytesOverMobile()Ljava/lang/Long;
    .registers 3

    #@0
    const-wide/32 v0, 0x7fffffff

    #@3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
    .registers 3

    #@0
    const-wide/32 v0, 0x200000

    #@3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public isNetworkRoaming()Z
    .registers 6

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    #@4
    const-string v1, "connectivity"

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/ConnectivityManager;

    #@c
    if-nez v0, :cond_16

    #@e
    const-string v0, "LVLDL"

    #@10
    const-string v1, "couldn\'t get connectivity manager"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    :cond_15
    :goto_15
    return v3

    #@16
    :cond_16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_37

    #@1c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_37

    #@22
    move v1, v2

    #@23
    :goto_23
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    #@25
    const-string v4, "phone"

    #@27
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@2d
    if-nez v0, :cond_39

    #@2f
    const-string v0, "LVLDL"

    #@31
    const-string v1, "couldn\'t get telephony manager"

    #@33
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_15

    #@37
    :cond_37
    move v1, v3

    #@38
    goto :goto_23

    #@39
    :cond_39
    if-eqz v1, :cond_15

    #@3b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_15

    #@41
    move v3, v2

    #@42
    goto :goto_15
.end method

.method public postNotification(JLandroid/app/Notification;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    long-to-int v1, p1

    #@3
    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    #@6
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@5
    return-void
.end method

.method public startThread(Ljava/lang/Thread;)V
    .registers 2

    #@0
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    #@3
    return-void
.end method

.method public userOwnsPackage(ILjava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@a
    move-result-object v1

    #@b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@d
    if-ne v1, p1, :cond_10

    #@f
    const/4 v0, 0x1

    #@10
    :cond_10
    return v0
.end method
