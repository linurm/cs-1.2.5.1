.class Landroid/support/v4/app/NotificationCompatIceCreamSandwich;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;
    .registers 21

    #@0
    new-instance v4, Landroid/app/Notification$Builder;

    #@2
    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@5
    iget-wide v6, p1, Landroid/app/Notification;->when:J

    #@7
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@a
    move-result-object v4

    #@b
    iget v5, p1, Landroid/app/Notification;->icon:I

    #@d
    iget v6, p1, Landroid/app/Notification;->iconLevel:I

    #@f
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    #@12
    move-result-object v4

    #@13
    iget-object v5, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@15
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@18
    move-result-object v4

    #@19
    iget-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@1b
    invoke-virtual {v4, v5, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@1e
    move-result-object v4

    #@1f
    iget-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@21
    iget v6, p1, Landroid/app/Notification;->audioStreamType:I

    #@23
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    #@26
    move-result-object v4

    #@27
    iget-object v5, p1, Landroid/app/Notification;->vibrate:[J

    #@29
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@2c
    move-result-object v4

    #@2d
    iget v5, p1, Landroid/app/Notification;->ledARGB:I

    #@2f
    iget v6, p1, Landroid/app/Notification;->ledOnMS:I

    #@31
    iget v7, p1, Landroid/app/Notification;->ledOffMS:I

    #@33
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@36
    move-result-object v5

    #@37
    iget v4, p1, Landroid/app/Notification;->flags:I

    #@39
    and-int/lit8 v4, v4, 0x2

    #@3b
    if-eqz v4, :cond_9a

    #@3d
    const/4 v4, 0x1

    #@3e
    :goto_3e
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@41
    move-result-object v5

    #@42
    iget v4, p1, Landroid/app/Notification;->flags:I

    #@44
    and-int/lit8 v4, v4, 0x8

    #@46
    if-eqz v4, :cond_9c

    #@48
    const/4 v4, 0x1

    #@49
    :goto_49
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@4c
    move-result-object v5

    #@4d
    iget v4, p1, Landroid/app/Notification;->flags:I

    #@4f
    and-int/lit8 v4, v4, 0x10

    #@51
    if-eqz v4, :cond_9e

    #@53
    const/4 v4, 0x1

    #@54
    :goto_54
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@57
    move-result-object v4

    #@58
    iget v5, p1, Landroid/app/Notification;->defaults:I

    #@5a
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@5d
    move-result-object v4

    #@5e
    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@6d
    move-result-object v4

    #@6e
    iget-object v5, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@70
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@73
    move-result-object v5

    #@74
    iget v4, p1, Landroid/app/Notification;->flags:I

    #@76
    and-int/lit16 v4, v4, 0x80

    #@78
    if-eqz v4, :cond_a0

    #@7a
    const/4 v4, 0x1

    #@7b
    :goto_7b
    move-object/from16 v0, p8

    #@7d
    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    #@80
    move-result-object v4

    #@81
    move-object/from16 v0, p9

    #@83
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@86
    move-result-object v4

    #@87
    invoke-virtual {v4, p6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@8a
    move-result-object v4

    #@8b
    move/from16 v0, p10

    #@8d
    move/from16 v1, p11

    #@8f
    move/from16 v2, p12

    #@91
    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    #@98
    move-result-object v4

    #@99
    return-object v4

    #@9a
    :cond_9a
    const/4 v4, 0x0

    #@9b
    goto :goto_3e

    #@9c
    :cond_9c
    const/4 v4, 0x0

    #@9d
    goto :goto_49

    #@9e
    :cond_9e
    const/4 v4, 0x0

    #@9f
    goto :goto_54

    #@a0
    :cond_a0
    const/4 v4, 0x0

    #@a1
    goto :goto_7b
.end method
