.class public Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentKB:J

.field mIcon:I

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalKB:J


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    #@7
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    #@9
    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    #@2
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    #@2
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-void
.end method

.method setProgress(Landroid/app/Notification$Builder;)V
    .registers 2

    #@0
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    #@2
    return-void
.end method

.method public setTimeRemaining(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    #@2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-void
.end method

.method public setTotalBytes(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    #@2
    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 11

    #@0
    const/16 v8, 0x8

    #@2
    const/4 v7, 0x1

    #@3
    const/4 v6, 0x0

    #@4
    new-instance v0, Landroid/app/Notification$Builder;

    #@6
    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@9
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTitle:Ljava/lang/CharSequence;

    #@b
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@e
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-lez v1, :cond_65

    #@16
    const-wide/16 v2, -0x1

    #@18
    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-eqz v1, :cond_65

    #@1e
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    #@20
    shr-long/2addr v2, v8

    #@21
    long-to-int v1, v2

    #@22
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    #@24
    shr-long/2addr v2, v8

    #@25
    long-to-int v2, v2

    #@26
    invoke-virtual {v0, v1, v2, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@29
    :goto_29
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mCurrentKB:J

    #@2b
    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTotalKB:J

    #@2d
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@34
    sget v1, Lcom/android/vending/expansion/downloader/R$string;->time_remaining_notification:I

    #@36
    new-array v2, v7, [Ljava/lang/Object;

    #@38
    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTimeRemaining:J

    #@3a
    invoke-static {v4, v5}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    aput-object v3, v2, v6

    #@40
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@47
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    #@49
    if-eqz v1, :cond_69

    #@4b
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mIcon:I

    #@4d
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@50
    :goto_50
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@53
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mTicker:Ljava/lang/CharSequence;

    #@55
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@58
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V14CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    #@5a
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@5d
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@60
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@63
    move-result-object v0

    #@64
    return-object v0

    #@65
    :cond_65
    invoke-virtual {v0, v6, v6, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@68
    goto :goto_29

    #@69
    :cond_69
    const v1, 0x1080081

    #@6c
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@6f
    goto :goto_50
.end method
