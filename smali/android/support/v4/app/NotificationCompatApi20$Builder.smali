.class public Landroid/support/v4/app/NotificationCompatApi20$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatApi20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 30

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v4, Landroid/app/Notification$Builder;

    #@5
    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@8
    iget-wide v6, p2, Landroid/app/Notification;->when:J

    #@a
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@d
    move-result-object v4

    #@e
    iget v5, p2, Landroid/app/Notification;->icon:I

    #@10
    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    #@12
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    #@15
    move-result-object v4

    #@16
    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@18
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@1b
    move-result-object v4

    #@1c
    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@1e
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@21
    move-result-object v4

    #@22
    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@24
    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    #@26
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    #@29
    move-result-object v4

    #@2a
    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    #@2c
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@2f
    move-result-object v4

    #@30
    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    #@32
    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    #@34
    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    #@36
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@39
    move-result-object v5

    #@3a
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@3c
    and-int/lit8 v4, v4, 0x2

    #@3e
    if-eqz v4, :cond_cd

    #@40
    const/4 v4, 0x1

    #@41
    :goto_41
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@44
    move-result-object v5

    #@45
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@47
    and-int/lit8 v4, v4, 0x8

    #@49
    if-eqz v4, :cond_d0

    #@4b
    const/4 v4, 0x1

    #@4c
    :goto_4c
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@4f
    move-result-object v5

    #@50
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@52
    and-int/lit8 v4, v4, 0x10

    #@54
    if-eqz v4, :cond_d3

    #@56
    const/4 v4, 0x1

    #@57
    :goto_57
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@5a
    move-result-object v4

    #@5b
    iget v5, p2, Landroid/app/Notification;->defaults:I

    #@5d
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@68
    move-result-object v4

    #@69
    move-object/from16 v0, p16

    #@6b
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@72
    move-result-object v4

    #@73
    move-object/from16 v0, p8

    #@75
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@78
    move-result-object v4

    #@79
    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@7b
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@7e
    move-result-object v5

    #@7f
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@81
    and-int/lit16 v4, v4, 0x80

    #@83
    if-eqz v4, :cond_d5

    #@85
    const/4 v4, 0x1

    #@86
    :goto_86
    move-object/from16 v0, p9

    #@88
    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    #@8b
    move-result-object v4

    #@8c
    move-object/from16 v0, p10

    #@8e
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@91
    move-result-object v4

    #@92
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@95
    move-result-object v4

    #@96
    move/from16 v0, p14

    #@98
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    #@9b
    move-result-object v4

    #@9c
    move/from16 v0, p15

    #@9e
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@a1
    move-result-object v4

    #@a2
    move/from16 v0, p11

    #@a4
    move/from16 v1, p12

    #@a6
    move/from16 v2, p13

    #@a8
    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@ab
    move-result-object v4

    #@ac
    move/from16 v0, p17

    #@ae
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    #@b1
    move-result-object v4

    #@b2
    move-object/from16 v0, p18

    #@b4
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    #@b7
    move-result-object v4

    #@b8
    move-object/from16 v0, p19

    #@ba
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@bd
    move-result-object v4

    #@be
    move/from16 v0, p20

    #@c0
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    #@c3
    move-result-object v4

    #@c4
    move-object/from16 v0, p21

    #@c6
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    #@c9
    move-result-object v4

    #@ca
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    #@cc
    return-void

    #@cd
    :cond_cd
    const/4 v4, 0x0

    #@ce
    goto/16 :goto_41

    #@d0
    :cond_d0
    const/4 v4, 0x0

    #@d1
    goto/16 :goto_4c

    #@d3
    :cond_d3
    const/4 v4, 0x0

    #@d4
    goto :goto_57

    #@d5
    :cond_d5
    const/4 v4, 0x0

    #@d6
    goto :goto_86
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .registers 7

    #@0
    new-instance v1, Landroid/app/Notification$Action$Builder;

    #@2
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@11
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_2b

    #@17
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    #@1e
    move-result-object v2

    #@1f
    array-length v3, v2

    #@20
    const/4 v0, 0x0

    #@21
    :goto_21
    if-ge v0, v3, :cond_2b

    #@23
    aget-object v4, v2, v0

    #@25
    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    #@28
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_21

    #@2b
    :cond_2b
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_38

    #@31
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    #@38
    :cond_38
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    #@3a
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    #@41
    return-void
.end method

.method public build()Landroid/app/Notification;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    #@2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi20$Builder;->b:Landroid/app/Notification$Builder;

    #@2
    return-object v0
.end method
