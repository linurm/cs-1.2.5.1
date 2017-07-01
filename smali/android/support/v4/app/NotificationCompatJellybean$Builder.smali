.class public Landroid/support/v4/app/NotificationCompatJellybean$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompatJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private b:Landroid/app/Notification$Builder;

.field private mActionExtrasList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 30

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v4, Ljava/util/ArrayList;

    #@5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mActionExtrasList:Ljava/util/List;

    #@a
    new-instance v4, Landroid/app/Notification$Builder;

    #@c
    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@f
    iget-wide v6, p2, Landroid/app/Notification;->when:J

    #@11
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@14
    move-result-object v4

    #@15
    iget v5, p2, Landroid/app/Notification;->icon:I

    #@17
    iget v6, p2, Landroid/app/Notification;->iconLevel:I

    #@19
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    #@1c
    move-result-object v4

    #@1d
    iget-object v5, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1f
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@22
    move-result-object v4

    #@23
    iget-object v5, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@25
    invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@28
    move-result-object v4

    #@29
    iget-object v5, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@2b
    iget v6, p2, Landroid/app/Notification;->audioStreamType:I

    #@2d
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    #@30
    move-result-object v4

    #@31
    iget-object v5, p2, Landroid/app/Notification;->vibrate:[J

    #@33
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    #@36
    move-result-object v4

    #@37
    iget v5, p2, Landroid/app/Notification;->ledARGB:I

    #@39
    iget v6, p2, Landroid/app/Notification;->ledOnMS:I

    #@3b
    iget v7, p2, Landroid/app/Notification;->ledOffMS:I

    #@3d
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    #@40
    move-result-object v5

    #@41
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@43
    and-int/lit8 v4, v4, 0x2

    #@45
    if-eqz v4, :cond_f0

    #@47
    const/4 v4, 0x1

    #@48
    :goto_48
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    #@4b
    move-result-object v5

    #@4c
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@4e
    and-int/lit8 v4, v4, 0x8

    #@50
    if-eqz v4, :cond_f3

    #@52
    const/4 v4, 0x1

    #@53
    :goto_53
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    #@56
    move-result-object v5

    #@57
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@59
    and-int/lit8 v4, v4, 0x10

    #@5b
    if-eqz v4, :cond_f6

    #@5d
    const/4 v4, 0x1

    #@5e
    :goto_5e
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@61
    move-result-object v4

    #@62
    iget v5, p2, Landroid/app/Notification;->defaults:I

    #@64
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6f
    move-result-object v4

    #@70
    move-object/from16 v0, p16

    #@72
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@75
    move-result-object v4

    #@76
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@79
    move-result-object v4

    #@7a
    move-object/from16 v0, p8

    #@7c
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@7f
    move-result-object v4

    #@80
    iget-object v5, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@82
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@85
    move-result-object v5

    #@86
    iget v4, p2, Landroid/app/Notification;->flags:I

    #@88
    and-int/lit16 v4, v4, 0x80

    #@8a
    if-eqz v4, :cond_f9

    #@8c
    const/4 v4, 0x1

    #@8d
    :goto_8d
    move-object/from16 v0, p9

    #@8f
    invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    #@92
    move-result-object v4

    #@93
    move-object/from16 v0, p10

    #@95
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    #@9c
    move-result-object v4

    #@9d
    move/from16 v0, p14

    #@9f
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    #@a2
    move-result-object v4

    #@a3
    move/from16 v0, p15

    #@a5
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    #@a8
    move-result-object v4

    #@a9
    move/from16 v0, p11

    #@ab
    move/from16 v1, p12

    #@ad
    move/from16 v2, p13

    #@af
    invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    #@b2
    move-result-object v4

    #@b3
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    #@b5
    new-instance v4, Landroid/os/Bundle;

    #@b7
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@ba
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@bc
    if-eqz p18, :cond_c5

    #@be
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@c0
    move-object/from16 v0, p18

    #@c2
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@c5
    :cond_c5
    if-eqz p17, :cond_cf

    #@c7
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@c9
    const-string v5, "android.support.localOnly"

    #@cb
    const/4 v6, 0x1

    #@cc
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@cf
    :cond_cf
    if-eqz p19, :cond_e4

    #@d1
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@d3
    const-string v5, "android.support.groupKey"

    #@d5
    move-object/from16 v0, p19

    #@d7
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@da
    if-eqz p20, :cond_fb

    #@dc
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@de
    const-string v5, "android.support.isGroupSummary"

    #@e0
    const/4 v6, 0x1

    #@e1
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@e4
    :cond_e4
    :goto_e4
    if-eqz p21, :cond_ef

    #@e6
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@e8
    const-string v5, "android.support.sortKey"

    #@ea
    move-object/from16 v0, p21

    #@ec
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@ef
    :cond_ef
    return-void

    #@f0
    :cond_f0
    const/4 v4, 0x0

    #@f1
    goto/16 :goto_48

    #@f3
    :cond_f3
    const/4 v4, 0x0

    #@f4
    goto/16 :goto_53

    #@f6
    :cond_f6
    const/4 v4, 0x0

    #@f7
    goto/16 :goto_5e

    #@f9
    :cond_f9
    const/4 v4, 0x0

    #@fa
    goto :goto_8d

    #@fb
    :cond_fb
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@fd
    const-string v5, "android.support.useSideChannel"

    #@ff
    const/4 v6, 0x1

    #@100
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@103
    goto :goto_e4
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mActionExtrasList:Ljava/util/List;

    #@2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    #@4
    invoke-static {v1, p1}, Landroid/support/v4/app/NotificationCompatJellybean;->writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@b
    return-void
.end method

.method public build()Landroid/app/Notification;
    .registers 7

    #@0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    #@2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@9
    move-result-object v2

    #@a
    new-instance v3, Landroid/os/Bundle;

    #@c
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@e
    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@11
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mExtras:Landroid/os/Bundle;

    #@13
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v4

    #@1b
    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_31

    #@21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/lang/String;

    #@27
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_1b

    #@2d
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@30
    goto :goto_1b

    #@31
    :cond_31
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@34
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->mActionExtrasList:Ljava/util/List;

    #@36
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;

    #@39
    move-result-object v0

    #@3a
    if-eqz v0, :cond_45

    #@3c
    invoke-static {v1}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3f
    move-result-object v2

    #@40
    const-string v3, "android.support.actionExtras"

    #@42
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@45
    :cond_45
    return-object v1
.end method

.method public getBuilder()Landroid/app/Notification$Builder;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->b:Landroid/app/Notification$Builder;

    #@2
    return-object v0
.end method
