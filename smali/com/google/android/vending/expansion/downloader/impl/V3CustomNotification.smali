.class public Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification$ICustomNotification;


# instance fields
.field mCurrentBytes:J

.field mIcon:I

.field mNotification:Landroid/app/Notification;

.field mPendingIntent:Landroid/app/PendingIntent;

.field mTicker:Ljava/lang/CharSequence;

.field mTimeRemaining:J

.field mTitle:Ljava/lang/CharSequence;

.field mTotalBytes:J


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    #@7
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    #@9
    new-instance v0, Landroid/app/Notification;

    #@b
    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    #@e
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    #@10
    return-void
.end method


# virtual methods
.method public setCurrentBytes(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    #@2
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    #@2
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-void
.end method

.method public setTicker(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTicker:Ljava/lang/CharSequence;

    #@2
    return-void
.end method

.method public setTimeRemaining(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    #@2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-void
.end method

.method public setTotalBytes(J)V
    .registers 4

    #@0
    iput-wide p1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    #@2
    return-void
.end method

.method public updateNotification(Landroid/content/Context;)Landroid/app/Notification;
    .registers 14

    #@0
    const/16 v10, 0x8

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mNotification:Landroid/app/Notification;

    #@6
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    #@8
    iput v0, v3, Landroid/app/Notification;->icon:I

    #@a
    iget v0, v3, Landroid/app/Notification;->flags:I

    #@c
    or-int/lit8 v0, v0, 0x2

    #@e
    iput v0, v3, Landroid/app/Notification;->flags:I

    #@10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@12
    const/16 v4, 0xa

    #@14
    if-le v0, v4, :cond_1c

    #@16
    iget v0, v3, Landroid/app/Notification;->flags:I

    #@18
    or-int/lit8 v0, v0, 0x8

    #@1a
    iput v0, v3, Landroid/app/Notification;->flags:I

    #@1c
    :cond_1c
    new-instance v4, Landroid/widget/RemoteViews;

    #@1e
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    sget v5, Lcom/android/vending/expansion/downloader/R$layout;->status_bar_ongoing_event_progress_bar:I

    #@24
    invoke-direct {v4, v0, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    #@27
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->title:I

    #@29
    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTitle:Ljava/lang/CharSequence;

    #@2b
    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@2e
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->description:I

    #@30
    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@33
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->description:I

    #@35
    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    #@37
    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    #@39
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    #@3c
    move-result-object v5

    #@3d
    invoke-virtual {v4, v0, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@40
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->progress_bar_frame:I

    #@42
    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@45
    sget v5, Lcom/android/vending/expansion/downloader/R$id;->progress_bar:I

    #@47
    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    #@49
    shr-long/2addr v6, v10

    #@4a
    long-to-int v6, v6

    #@4b
    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    #@4d
    shr-long/2addr v8, v10

    #@4e
    long-to-int v7, v8

    #@4f
    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    #@51
    const-wide/16 v10, 0x0

    #@53
    cmp-long v0, v8, v10

    #@55
    if-gtz v0, :cond_90

    #@57
    move v0, v1

    #@58
    :goto_58
    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    #@5b
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->time_remaining:I

    #@5d
    invoke-virtual {v4, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@60
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->time_remaining:I

    #@62
    sget v5, Lcom/android/vending/expansion/downloader/R$string;->time_remaining_notification:I

    #@64
    new-array v1, v1, [Ljava/lang/Object;

    #@66
    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTimeRemaining:J

    #@68
    invoke-static {v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    aput-object v6, v1, v2

    #@6e
    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@75
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->progress_text:I

    #@77
    iget-wide v6, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mCurrentBytes:J

    #@79
    iget-wide v8, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mTotalBytes:J

    #@7b
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@82
    sget v0, Lcom/android/vending/expansion/downloader/R$id;->appIcon:I

    #@84
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mIcon:I

    #@86
    invoke-virtual {v4, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    #@89
    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@8b
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/V3CustomNotification;->mPendingIntent:Landroid/app/PendingIntent;

    #@8d
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@8f
    return-object v3

    #@90
    :cond_90
    move v0, v2

    #@91
    goto :goto_58
.end method
