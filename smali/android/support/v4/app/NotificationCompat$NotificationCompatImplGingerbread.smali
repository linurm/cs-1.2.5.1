.class Landroid/support/v4/app/NotificationCompat$NotificationCompatImplGingerbread;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplGingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 8

    #@0
    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    #@2
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@4
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@6
    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@8
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@a
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@d
    iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    #@f
    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@11
    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    #@13
    iget-object v4, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@15
    iget-object v5, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@17
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatGingerbread;->add(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    #@1a
    move-result-object v0

    #@1b
    iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I

    #@1d
    if-lez v1, :cond_25

    #@1f
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@21
    or-int/lit16 v1, v1, 0x80

    #@23
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@25
    :cond_25
    return-object v0
.end method
