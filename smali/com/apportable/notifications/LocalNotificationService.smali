.class public Lcom/apportable/notifications/LocalNotificationService;
.super Landroid/app/IntentService;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "LocalNotificationService"

    #@2
    sput-object v0, Lcom/apportable/notifications/LocalNotificationService;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const-string v0, "Local Notification Service"

    #@2
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    #@5
    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 10

    #@0
    invoke-static {}, Lcom/apportable/notifications/Notifications;->getScheduledLocalNotifications()Ljava/util/List;

    #@3
    move-result-object v1

    #@4
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@6
    monitor-enter v0

    #@7
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    const-string v0, "GMT"

    #@e
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@19
    move-result-wide v4

    #@1a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v3

    #@1e
    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3f

    #@24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/apportable/ui/LocalNotification;

    #@2a
    invoke-virtual {v0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    #@2d
    move-result-wide v6

    #@2e
    cmp-long v6, v4, v6

    #@30
    if-ltz v6, :cond_1e

    #@32
    const/4 v6, 0x0

    #@33
    invoke-static {v0, v6}, Lcom/apportable/notifications/Notifications;->postLocalNotification(Lcom/apportable/ui/LocalNotification;Z)V

    #@36
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_1e

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    const-class v1, Lcom/apportable/notifications/Notifications;

    #@3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3a

    #@3e
    throw v0

    #@3f
    :cond_3f
    :try_start_3f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v2

    #@43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_53

    #@49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Lcom/apportable/ui/LocalNotification;

    #@4f
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@52
    goto :goto_43

    #@53
    :cond_53
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@56
    move-result v0

    #@57
    if-lez v0, :cond_80

    #@59
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@5c
    const/4 v0, 0x0

    #@5d
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/apportable/ui/LocalNotification;

    #@63
    const-string v1, "alarm"

    #@65
    invoke-virtual {p0, v1}, Lcom/apportable/notifications/LocalNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@68
    move-result-object v1

    #@69
    check-cast v1, Landroid/app/AlarmManager;

    #@6b
    new-instance v2, Landroid/content/Intent;

    #@6d
    const-class v3, Lcom/apportable/notifications/NotificationsAlarmReceiver;

    #@6f
    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@72
    const/4 v3, 0x0

    #@73
    const/4 v4, 0x0

    #@74
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@77
    move-result-object v2

    #@78
    const/4 v3, 0x0

    #@79
    invoke-virtual {v0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    #@7c
    move-result-wide v4

    #@7d
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@80
    :cond_80
    invoke-static {}, Lcom/apportable/notifications/Notifications;->persistNotifications()V

    #@83
    const-class v0, Lcom/apportable/notifications/Notifications;

    #@85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3f .. :try_end_86} :catchall_3a

    #@86
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    #@3
    return-void
.end method
