.class public Lcom/apportable/notifications/NotificationsBootReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "NotificationsBootReceiver"

    #@2
    sput-object v0, Lcom/apportable/notifications/NotificationsBootReceiver;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    #@0
    sget-object v0, Lcom/apportable/notifications/NotificationsBootReceiver;->TAG:Ljava/lang/String;

    #@2
    const-string v1, "on-boot Intent received, running initial scheduling"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    new-instance v0, Landroid/content/Intent;

    #@9
    const-class v1, Lcom/apportable/notifications/LocalNotificationService;

    #@b
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@e
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    #@11
    return-void
.end method
