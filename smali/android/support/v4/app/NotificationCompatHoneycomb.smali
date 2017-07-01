.class Landroid/support/v4/app/NotificationCompatHoneycomb;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .registers 16

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    new-instance v0, Landroid/app/Notification$Builder;

    #@4
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@7
    iget-wide v4, p1, Landroid/app/Notification;->when:J

    #@9
    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@c
    move-result-object v0

    #@d
    iget v3, p1, Landroid/app/Notification;->icon:I

    #@f
    iget v4, p1, Landroid/app/Notification;->iconLevel:I

    #@11
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    #@14
    move-result-object v0

    #@15
    iget-object v3, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@17
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@1a
    move-result-object v0

    #@1b
    iget-object v3, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@1d
    invoke-virtual {v0, v3, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@20
    move-result-object v0

    #@21
    iget-object v3, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@23
    iget v4, p1, Landroid/app/Notification;->audioStreamType:I

    #@25
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    #@28
    move-result-object v0

    #@29
    iget-object v3, p1, Landroid/app/Notification;->vibrate:[J

    #@2b
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@2e
    move-result-object v0

    #@2f
    iget v3, p1, Landroid/app/Notification;->ledARGB:I

    #@31
    iget v4, p1, Landroid/app/Notification;->ledOnMS:I

    #@33
    iget v5, p1, Landroid/app/Notification;->ledOffMS:I

    #@35
    invoke-virtual {v0, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@38
    move-result-object v3

    #@39
    iget v0, p1, Landroid/app/Notification;->flags:I

    #@3b
    and-int/lit8 v0, v0, 0x2

    #@3d
    if-eqz v0, :cond_8d

    #@3f
    move v0, v1

    #@40
    :goto_40
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@43
    move-result-object v3

    #@44
    iget v0, p1, Landroid/app/Notification;->flags:I

    #@46
    and-int/lit8 v0, v0, 0x8

    #@48
    if-eqz v0, :cond_8f

    #@4a
    move v0, v1

    #@4b
    :goto_4b
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@4e
    move-result-object v3

    #@4f
    iget v0, p1, Landroid/app/Notification;->flags:I

    #@51
    and-int/lit8 v0, v0, 0x10

    #@53
    if-eqz v0, :cond_91

    #@55
    move v0, v1

    #@56
    :goto_56
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@59
    move-result-object v0

    #@5a
    iget v3, p1, Landroid/app/Notification;->defaults:I

    #@5c
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@6f
    move-result-object v0

    #@70
    iget-object v3, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@72
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@75
    move-result-object v0

    #@76
    iget v3, p1, Landroid/app/Notification;->flags:I

    #@78
    and-int/lit16 v3, v3, 0x80

    #@7a
    if-eqz v3, :cond_93

    #@7c
    :goto_7c
    invoke-virtual {v0, p8, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0, p9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@8b
    move-result-object v0

    #@8c
    return-object v0

    #@8d
    :cond_8d
    move v0, v2

    #@8e
    goto :goto_40

    #@8f
    :cond_8f
    move v0, v2

    #@90
    goto :goto_4b

    #@91
    :cond_91
    move v0, v2

    #@92
    goto :goto_56

    #@93
    :cond_93
    move v1, v2

    #@94
    goto :goto_7c
.end method
