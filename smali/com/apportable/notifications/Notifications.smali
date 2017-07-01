.class public Lcom/apportable/notifications/Notifications;
.super Ljava/lang/Object;


# static fields
.field private static final LOCALNOTIFICATION_KEY:Ljava/lang/String; = "LocalNotification"

.field private static final TAG:Ljava/lang/String; = "Notifications"

.field private static localNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apportable/ui/LocalNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cancelAllLocalNotifications()V
    .registers 3

    #@0
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-static {}, Lcom/apportable/notifications/Notifications;->getScheduledLocalNotifications()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@a
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1f

    #@d
    invoke-static {}, Lcom/apportable/notifications/Notifications;->persistNotifications()V

    #@10
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@13
    move-result-object v0

    #@14
    new-instance v1, Landroid/content/Intent;

    #@16
    const-class v2, Lcom/apportable/notifications/LocalNotificationService;

    #@18
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@1b
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    :try_start_20
    const-class v1, Lcom/apportable/notifications/Notifications;

    #@22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1f

    #@23
    throw v0
.end method

.method private static deserializeObject(Ljava/lang/Class;[B)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B)TT;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    #@6
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@9
    :try_start_9
    new-instance v2, Ljava/io/ObjectInputStream;

    #@b
    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@e
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    #@15
    if-eqz v1, :cond_1d

    #@17
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_1a} :catch_24

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_3

    #@1d
    :cond_1d
    move-object v0, v1

    #@1e
    goto :goto_3

    #@1f
    :catch_1f
    move-exception v1

    #@20
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@23
    goto :goto_3

    #@24
    :catch_24
    move-exception v1

    #@25
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    #@28
    goto :goto_3
.end method

.method private static doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V
    .registers 14

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    const-string v0, "notification"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/NotificationManager;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v3

    #@d
    const-string v2, "notification_icon"

    #@f
    const-string v4, "drawable"

    #@11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_2e

    #@1b
    const-string v2, "Notifications"

    #@1d
    const-string v4, "Notification Icon not found!  Will use app icon for notification icon."

    #@1f
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    const-string v2, "icon"

    #@24
    const-string v4, "drawable"

    #@26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    move-result v2

    #@2e
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31
    move-result-wide v4

    #@32
    const-string v6, "app_name"

    #@34
    const-string v7, "string"

    #@36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    move-result v6

    #@3e
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@41
    move-result-object v3

    #@42
    const-string v6, "com.apportable.activity.VerdeActivity"

    #@44
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@47
    move-result-object v6

    #@48
    new-instance v7, Landroid/content/Intent;

    #@4a
    invoke-direct {v7, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@4d
    if-eqz p4, :cond_58

    #@4f
    const-string v6, "LocalNotification"

    #@51
    invoke-static {p4}, Lcom/apportable/notifications/Notifications;->serializeObject(Ljava/io/Serializable;)[B

    #@54
    move-result-object v8

    #@55
    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@58
    :cond_58
    const/4 v6, 0x0

    #@59
    const/high16 v8, 0x8000000

    #@5b
    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@5e
    move-result-object v6

    #@5f
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    #@61
    const/16 v8, 0x10

    #@63
    if-lt v7, v8, :cond_cb

    #@65
    new-instance v7, Landroid/app/Notification$Builder;

    #@67
    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@6a
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@6d
    move-result-object v7

    #@6e
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@75
    move-result-object v6

    #@76
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    #@81
    move-result-object v4

    #@82
    if-eqz p4, :cond_bb

    #@84
    invoke-virtual {p4}, Lcom/apportable/ui/LocalNotification;->getIcon()Landroid/graphics/Bitmap;

    #@87
    move-result-object v2

    #@88
    :goto_88
    if-eqz v2, :cond_8d

    #@8a
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@8d
    :cond_8d
    if-eqz p4, :cond_93

    #@8f
    invoke-virtual {p4}, Lcom/apportable/ui/LocalNotification;->getPicture()Landroid/graphics/Bitmap;

    #@92
    move-result-object v1

    #@93
    :cond_93
    if-eqz v1, :cond_bd

    #@95
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    #@97
    invoke-direct {v2, v4}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    #@9a
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1, v3}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    #@a1
    move-result-object v1

    #@a2
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {v1}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    #@a9
    move-result-object v1

    #@aa
    :goto_aa
    iget v2, v1, Landroid/app/Notification;->defaults:I

    #@ac
    or-int/lit8 v2, v2, 0x1

    #@ae
    iput v2, v1, Landroid/app/Notification;->defaults:I

    #@b0
    iget v2, v1, Landroid/app/Notification;->flags:I

    #@b2
    or-int/lit8 v2, v2, 0x10

    #@b4
    iput v2, v1, Landroid/app/Notification;->flags:I

    #@b6
    const/4 v2, 0x1

    #@b7
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    #@ba
    :goto_ba
    return-void

    #@bb
    :cond_bb
    move-object v2, v1

    #@bc
    goto :goto_88

    #@bd
    :cond_bd
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    #@bf
    invoke-direct {v1, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    #@c2
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    #@c9
    move-result-object v1

    #@ca
    goto :goto_aa

    #@cb
    :cond_cb
    new-instance v1, Landroid/app/Notification;

    #@cd
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    #@d0
    invoke-virtual {v1, p0, v3, p1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d3} :catch_d4

    #@d3
    goto :goto_aa

    #@d4
    :catch_d4
    move-exception v0

    #@d5
    const-string v1, "Notifications"

    #@d7
    const-string v2, "Exception posting notification:"

    #@d9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@dc
    goto :goto_ba
.end method

.method public static getActivityLocalNotification()Lcom/apportable/ui/LocalNotification;
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    const-string v1, "LocalNotification"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_12

    #@10
    const/4 v0, 0x0

    #@11
    :cond_11
    :goto_11
    return-object v0

    #@12
    :cond_12
    const-class v1, Lcom/apportable/ui/LocalNotification;

    #@14
    invoke-static {v1, v0}, Lcom/apportable/notifications/Notifications;->deserializeObject(Ljava/lang/Class;[B)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/apportable/ui/LocalNotification;

    #@1a
    if-nez v0, :cond_11

    #@1c
    const-string v1, "Notifications"

    #@1e
    const-string v2, "notification decoding failed"

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    goto :goto_11
.end method

.method public static getScheduledLocalNotifications()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/ui/LocalNotification;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    #@2
    if-nez v0, :cond_2c

    #@4
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@7
    move-result-object v0

    #@8
    :try_start_8
    const-string v1, "Notifications"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@d
    move-result-object v1

    #@e
    new-instance v2, Ljava/io/ObjectInputStream;

    #@10
    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    #@13
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/ArrayList;

    #@19
    sput-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    #@1b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    #@1e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_21} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_38

    #@21
    :goto_21
    sget-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    #@23
    if-nez v0, :cond_2c

    #@25
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    sput-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    #@2c
    :cond_2c
    sget-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    #@2e
    return-object v0

    #@2f
    :catch_2f
    move-exception v0

    #@30
    const-string v0, "Notifications"

    #@32
    const-string v1, "No notifications list exists yet."

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    goto :goto_21

    #@38
    :catch_38
    move-exception v0

    #@39
    const-string v1, "Notifications"

    #@3b
    const-string v2, "Exception loading notification list.  Will start new list."

    #@3d
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    goto :goto_21
.end method

.method protected static persistNotifications()V
    .registers 3

    #@0
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-static {}, Lcom/apportable/notifications/Notifications;->getScheduledLocalNotifications()Ljava/util/List;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    #@6
    :try_start_6
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@9
    move-result-object v0

    #@a
    const-string v1, "Notifications"

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, v1, v2}, Lcom/apportable/app/VerdeApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    #@10
    move-result-object v0

    #@11
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@13
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@16
    sget-object v2, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    #@18
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@1e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_21} :catch_25
    .catchall {:try_start_6 .. :try_end_21} :catchall_2e

    #@21
    :goto_21
    :try_start_21
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@23
    monitor-exit v0

    #@24
    return-void

    #@25
    :catch_25
    move-exception v0

    #@26
    const-string v1, "Notifications"

    #@28
    const-string v2, "Exception saving notification list.  Notifications may not be saved!"

    #@2a
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_21

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    const-class v1, Lcom/apportable/notifications/Notifications;

    #@31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_2e

    #@32
    throw v0
.end method

.method public static postLocalNotification(Landroid/content/Context;Lcom/apportable/ui/LocalNotification;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/apportable/ui/LocalNotification;->getAlertBody()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/apportable/ui/LocalNotification;->getSoundName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    invoke-static {p0, v0, v1, v2, p1}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    #@c
    return-void
.end method

.method public static postLocalNotification(Lcom/apportable/ui/LocalNotification;Z)V
    .registers 5

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getAlertBody()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getSoundName()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-static {v0, v1, v2, p1, p0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    #@f
    return-void
.end method

.method public static postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    #@0
    new-instance v0, Lcom/apportable/ui/LocalNotification;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/apportable/ui/LocalNotification;-><init>(I)V

    #@6
    invoke-virtual {v0, p3}, Lcom/apportable/ui/LocalNotification;->setPayload(Ljava/lang/String;)V

    #@9
    invoke-virtual {v0, p1}, Lcom/apportable/ui/LocalNotification;->setAlertBody(Ljava/lang/String;)V

    #@c
    invoke-virtual {v0, p2}, Lcom/apportable/ui/LocalNotification;->setSoundName(Ljava/lang/String;)V

    #@f
    const/4 v1, 0x1

    #@10
    invoke-static {p0, p1, p2, v1, v0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    #@13
    return-void
.end method

.method public static postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    #@4
    return-void
.end method

.method public static postNotification(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0, p2, v0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    #@4
    return-void
.end method

.method public static postNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v0, p0, p1, p2, v1}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    #@8
    return-void
.end method

.method public static postNotification(Ljava/lang/String;Z)V
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Lcom/apportable/notifications/Notifications;->postNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    #@7
    return-void
.end method

.method public static removeActivityLocalNotification()V
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    const-string v1, "LocalNotification"

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    #@d
    return-void
.end method

.method public static scheduleLocalNotification(Lcom/apportable/ui/LocalNotification;)V
    .registers 4

    #@0
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-static {}, Lcom/apportable/notifications/Notifications;->getScheduledLocalNotifications()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1c

    #@d
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@10
    move-result-object v0

    #@11
    new-instance v1, Landroid/content/Intent;

    #@13
    const-class v2, Lcom/apportable/notifications/LocalNotificationService;

    #@15
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@18
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    :try_start_1d
    const-class v1, Lcom/apportable/notifications/Notifications;

    #@1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1c

    #@20
    throw v0
.end method

.method private static serializeObject(Ljava/io/Serializable;)[B
    .registers 3

    #@0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@d
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    #@13
    move-result-object v0

    #@14
    :goto_14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@19
    const/4 v0, 0x0

    #@1a
    goto :goto_14
.end method
